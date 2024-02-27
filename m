Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28138C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 14:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YnKlAQiqT7EffII6hhgOttlGDy24Mm0oYQsiNHGjJBE=; b=Zs2oVLWuLzAMAknZeF7RN7Gd2F
	rayfFXFpZa+j6BY+4+twLMIvc4Yd2B3WmeCqy9yph5OAzZCiotiac6ggOCbnGDYo0MwGiENUO+XJY
	A7NdvJM1WmotX25cxB4KC4Op5A6dkD9ORhmFAoxLn+qLEUJQjPYXw3O8empuPl62UddYH7gMtXeJJ
	GS4cQuYxbIo2AK0HyvximkXwSwdoGyE48zUc7kmuQgxGpvVQAFgvQvvpZ6nhr3WKJcsn0+1rAozsq
	rsBaixY0uRODzjXt2OxNU3bJf+5H1asn9K+RyLxuCaSLwoOIf4qwSqinoIx02UljhZ6cM6AI7yyUN
	P5QigbFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rey1W-00000005V5v-1VsM;
	Tue, 27 Feb 2024 14:01:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rey1S-00000005V4O-0TwW;
	Tue, 27 Feb 2024 14:01:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7C959612A3;
	Tue, 27 Feb 2024 14:01:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C63BFC433A6;
	Tue, 27 Feb 2024 14:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709042489;
	bh=xCkbRrGm9KUzkhAwbM6To2Tg2wmXxpHrMpykco6RiTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p33FKrElIhnO0+GzW7v95ecGNxi2xlWdfACIJ9+rCODu23YXF1i/U0loqeowLj84C
	 qE6SLxpSV9oNwcGsiNZFQ1KKLRLf4YVyPfa7O8VkLxx5+QHXAgW0qJQhI6gFt6Ge+D
	 lq4RhnOMlMc9FgPDkmsEo8IDRRGU6fUj7EMQxtBStiDAYmla5WXJ/TR5Sxj34h5M4q
	 Cl6BpbMd0j+dw/8bgmrqiFRXIGt9LqPZcMTCh+n/OpI2oQIE9X/8ACIXU+CMXLEk24
	 Z+CtdpBqZacoDkMufgdizq5qXbaPf/SVe3ShBuwFdeTffz1kc5436fwY+HOQXAPPRx
	 OUhjcEXEF+prA==
Date: Tue, 27 Feb 2024 15:01:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v7 19/36] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <vsetubfn5uvdczjrhyu6jprefdqqglpkgyw6ejbxbjypxqaxrs@u6g7cwbawrih>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-19-8f4af575fce2@kernel.org>
 <67e9fbc5-ed7f-48b9-ae2a-e07c5fbd2218@gmail.com>
MIME-Version: 1.0
In-Reply-To: <67e9fbc5-ed7f-48b9-ae2a-e07c5fbd2218@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_060130_275302_43116312 
X-CRM114-Status: GOOD (  41.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8825341720805290246=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8825341720805290246==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nj3gdbp5aimebgk5"
Content-Disposition: inline


--nj3gdbp5aimebgk5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sun, Feb 25, 2024 at 02:56:02PM +0100, Alex Bee wrote:
> Am 22.02.24 um 19:14 schrieb Maxime Ripard:
> > Now that we have all the infrastructure needed, we can add some code
> > that will, for a given connector state and mode, compute the best output
> > format and bpc.
> >=20
> > The algorithm is equivalent to the one already found in i915 and vc4.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >   drivers/gpu/drm/drm_atomic_state_helper.c          | 184 ++++++++++++=
++++++++-
> >   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |  25 ++-
> >   2 files changed, 197 insertions(+), 12 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/dr=
m/drm_atomic_state_helper.c
> > index 448b4a73d1c8..9f517599f117 100644
> > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > @@ -31,6 +31,7 @@
> >   #include <drm/drm_connector.h>
> >   #include <drm/drm_crtc.h>
> >   #include <drm/drm_device.h>
> > +#include <drm/drm_edid.h>
> >   #include <drm/drm_framebuffer.h>
> >   #include <drm/drm_plane.h>
> >   #include <drm/drm_print.h>
> > @@ -662,6 +663,96 @@ connector_state_get_mode(const struct drm_connecto=
r_state *conn_state)
> >   	return &crtc_state->mode;
> >   }
> > +static bool
> > +sink_supports_format_bpc(const struct drm_connector *connector,
> > +			 const struct drm_display_info *info,
> > +			 const struct drm_display_mode *mode,
> > +			 unsigned int format, unsigned int bpc)
> > +{
> > +	struct drm_device *dev =3D connector->dev;
> > +	u8 vic =3D drm_match_cea_mode(mode);
> > +
> > +	if (vic =3D=3D 1 && bpc !=3D 8) {
> > +		drm_dbg(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
> > +		return false;
> > +	}
> > +
> > +	if (!info->is_hdmi &&
> > +	    (format !=3D HDMI_COLORSPACE_RGB || bpc !=3D 8)) {
> > +		drm_dbg(dev, "DVI Monitors require an RGB output at 8 bpc\n");
> > +		return false;
> > +	}
> > +
> > +	if (!(connector->hdmi.supported_formats & BIT(format))) {
> > +		drm_dbg(dev, "%s format unsupported by the connector.\n",
> > +			drm_hdmi_connector_get_output_format_name(format));
> > +		return false;
> > +	}
> > +
> > +	switch (format) {
> > +	case HDMI_COLORSPACE_RGB:
> > +		drm_dbg(dev, "RGB Format, checking the constraints.\n");
> > +
> > +		if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444))
> > +			return false;
> > +
> > +		if (bpc =3D=3D 10 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HD=
MI_DC_30)) {
> > +			drm_dbg(dev, "10 BPC but sink doesn't support Deep Color 30.\n");
> > +			return false;
> > +		}
> > +
> > +		if (bpc =3D=3D 12 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HD=
MI_DC_36)) {
> > +			drm_dbg(dev, "12 BPC but sink doesn't support Deep Color 36.\n");
> > +			return false;
> > +		}
> > +
> > +		drm_dbg(dev, "RGB format supported in that configuration.\n");
> > +
> > +		return true;
> > +
> > +	case HDMI_COLORSPACE_YUV422:
> > +		drm_dbg(dev, "YUV422 format, checking the constraints.\n");
> > +
> > +		if (!(info->color_formats & DRM_COLOR_FORMAT_YCBCR422)) {
> > +			drm_dbg(dev, "Sink doesn't support YUV422.\n");
> > +			return false;
> > +		}
> > +
> > +		if (bpc !=3D 12) {
> > +			drm_dbg(dev, "YUV422 only supports 12 bpc.\n");
> > +			return false;
> > +		}
> > +
> I'm not sure this check is really necessary/helpful.
> In [0] you are quoting HDMI specs which are saying that YUV422 is just
> always 12 bpc - which I guess is correct. The problem I'm seeing here:
> There are HDMI 1.4 controllers, like Rockchip Inno HDMI, that support
> YUV422 but do not support any other color depth than 8 bpc for RGB or
> YUV444. In drmm_connector_hdmi_init you are expecting to give the max bpc
> as parameter and (if I'm getting it correctly) I'd had to set it to 12 to
> also get YUV422 modes, but I'd also get RGB/YUV444 with bpc > 8 modes whi=
ch
> are not supported by this controller. I guess the same applies to other
> HDMI 1.4 controllers that support YUV422. Or would I have to filter it out
> myself?
> So I guess the easiest way around is to drop the above check since it is
> just always 12 bpc for YUV422 and there is no need to filter out anything.
> (Same applies to the similar check in [0]).

So, let's tackle drm_connector_hdmi_compute_mode_clock() first, and then
I'll try to answer most of your question there.

If drm_connector_hdmi_compute_mode_clock() is called with the YCbCr422
format and a bpc !=3D 12, what should we return if not an error?

It's the only bpc count allowed by the spec and for which we have a
formula for. I just can't return the character rate of YCbCr422 with 8
bpc, I have no idea what it should be.

And now pivoting to the block of code you commented on, there's two
things to consider here. Eventually, the userspace is in charge of
limiting the bpc count, and we have to take it into account.

If the userspace limits us to below 12bpc, we fall back to the
discussion above: we simply have no way to tell how it works out for
YCbCr422, and RGB is the only solution we have.

In your particular case, what you actually want is to prevent RGB 10 and
12bpc to be used. I guess we could create a new driver hook or extend
the one that checks for the code you pointed out to check whether the
driver supports it (possibly turned into a helper), but there's no other
way around it I think.

Maxime

--nj3gdbp5aimebgk5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZd3rNQAKCRDj7w1vZxhR
xSMeAQCznapx1KyjndzP2EVcJy12qE1B9F+D8X9w5siGsAvSoQD+M22Fg/bWZcFS
1T5GE+QJEPAzWkUzJT1TOEwa3EPalAM=
=YL5c
-----END PGP SIGNATURE-----

--nj3gdbp5aimebgk5--


--===============8825341720805290246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8825341720805290246==--

