From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
Date: Mon, 6 Jan 2020 08:52:35 +0100
Message-ID: <20200106085235.0e639ecb@collabora.com>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191213125414.90725-7-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 13 Dec 2019 13:54:13 +0100
Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:

> +static int rkvdec_try_capture_fmt(struct file *file, void *priv,
> +				  struct v4l2_format *f)
> +{
> +	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
> +	const struct rkvdec_coded_fmt_desc *coded_desc;
> +	u32 fourcc, width, height;
> +	unsigned int i;
> +
> +	/*
> +	 * The codec context should point to a coded format desc, if the format
> +	 * on the coded end has not been set yet, it should point to the
> +	 * default value.
> +	 */
> +	coded_desc = ctx->coded_fmt_desc;
> +	if (WARN_ON(!coded_desc))
> +		return -EINVAL;
> +
> +	fourcc = f->fmt.pix_mp.pixelformat;
> +	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
> +		if (coded_desc->decoded_fmts[i] == fourcc)
> +			break;
> +	}
> +
> +	if (i == coded_desc->num_decoded_fmts)
> +		return -EINVAL;
> +
> +	/* Save the original width/height before aligning them. */
> +	width = f->fmt.pix_mp.width;
> +	height = f->fmt.pix_mp.height;
> +
> +	/* Always apply the frmsize constraint of the coded end. */
> +	v4l2_apply_frmsize_constraints(&f->fmt.pix_mp.width,
> +				       &f->fmt.pix_mp.height,
> +				       &coded_desc->frmsize);
> +
> +	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp, fourcc, f->fmt.pix_mp.width,
> +			    f->fmt.pix_mp.height);
> +
> +	/*
> +	 * Now that we have computed sizeimage and bytesperline we can restore
> +	 * the original width/height (before macro block alignment).
> +	 */
> +	f->fmt.pix_mp.width = width;
> +	f->fmt.pix_mp.height = height;

Looks like restoring the original width/height was a bad idea (it
breaks the odd_size tests of the VP9 testsuite [1]). I'll adjust the
test in validate_dec_params() [2] to align the ctrl width/height params
on a superblock size (64 pixels) instead.

> +
> +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> +
> +	return 0;
> +}

[1]https://storage.googleapis.com/downloads.webmproject.org/vp9/decoder-test-streams/Profile_0_8bit.zip
[2]https://patchwork.kernel.org/patch/11290603/
