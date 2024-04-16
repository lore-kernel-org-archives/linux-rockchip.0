Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C81FC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsZZqmPYS7AYTW3OJqMUbVsF9oYBxx5JUMXX7IvskU0=; b=vzNqSP+0+tDTZJ
	GaD8UkhSl255n9x8+kWdbtxtVORijFuSxvOzEGkAQPU1RvwvGc5UYozRNebiAnKHjMQbWOIbaOJFm
	lHlm3G40RfKibbcJalUpDyDFk07+YYYw0S3VZrGRLLmf07rn/may48uDgff8OV+oo7866BsHXQrBI
	NGciZ1o1pwAq8q+xWipcL/hTcSBRN2cyG3O9J0llrFHOBQRVpTy+RT4sZ3a4hCZvjNU9vxFaTpfgv
	c8lGtFgifGRSik8xc59IQv2JixY9ccJ7/Z9U6qOrk7XfH6J57pLx/Tr7bBVM3YBznVOEfCp+F7ye0
	DMeIwxkExUydUkca/6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj6u-0000000CMvX-2DUY;
	Tue, 16 Apr 2024 13:44:32 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwj6r-0000000CMuO-2CLE;
	Tue, 16 Apr 2024 13:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713275070; x=1744811070;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=yIT1Hq1Q+QFvhkrUGnRLbVn2bvPzGMAzhArPVhVcvS4=;
  b=bszWqjK3kBqDD+BWpefs6c27HnlLJpqGzxxVXgeLfOTEqKj7c3zKC/iF
   zWTTWzUVNc/8hDanCq2krjBY6CEpClvLwY1Spmpibgm5rBHuFVw0nKcZK
   5KnIbO0r1HWE3kC+Eu2jb3Xgw5nX/vMbiNz481iRsQQ/je9NSgS74pZ34
   O/5pgtCCJqzX5RJZCIXkR/dZRTVzD8PlZWJpP/j5nBhjE/WA88elo/OAh
   qb9eT2wNiHUh+Ek3kL3jUIzSJx4wrV852RVXnyzgrWSH2/6Ib89lLiFwc
   kQPn9Zca5dtCV0SmlHiG5Dx3nuk63b0w/NGwLXOIGrIrH5/FQM06tQ8P3
   A==;
X-CSE-ConnectionGUID: Mz+cll0YTPS0mk/0MVcshQ==
X-CSE-MsgGUID: ohPzhJ5TQnCsvwPPFX9+cw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8823869"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8823869"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:44:26 -0700
X-CSE-ConnectionGUID: 6KgPAxkdTZi56IQwb7BkxQ==
X-CSE-MsgGUID: 8H3eU6/hQGW/35RqtA+D7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="22330276"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 16 Apr 2024 06:44:15 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 16 Apr 2024 16:44:14 +0300
Date: Tue, 16 Apr 2024 16:44:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Sebastian Wick <sebastian.wick@redhat.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v11 09/28] drm/display: hdmi: Add HDMI compute clock
 helper
Message-ID: <Zh6Ars8z1ESz-LQO@intel.com>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
 <20240326-kms-hdmi-connector-state-v11-9-c5680ffcf261@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-9-c5680ffcf261@kernel.org>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_064429_634609_57A7C29E 
X-CRM114-Status: GOOD (  26.19  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Mar 26, 2024 at 04:40:13PM +0100, Maxime Ripard wrote:
> A lot of HDMI drivers have some variation of the formula to calculate
> the TMDS character rate from a mode, but few of them actually take all
> parameters into account.
> =

> Let's create a helper to provide that rate taking all parameters into
> account.
> =

> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_helper.c | 70 +++++++++++++++++++++++++=
++++++
>  include/drm/display/drm_hdmi_helper.h     |  4 ++
>  2 files changed, 74 insertions(+)
> =

> diff --git a/drivers/gpu/drm/display/drm_hdmi_helper.c b/drivers/gpu/drm/=
display/drm_hdmi_helper.c
> index faf5e9efa7d3..2518dd1a07e7 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_helper.c
> @@ -193,5 +193,75 @@ void drm_hdmi_avi_infoframe_content_type(struct hdmi=
_avi_infoframe *frame,
>  	}
>  =

>  	frame->itc =3D conn_state->content_type !=3D DRM_MODE_CONTENT_TYPE_NO_D=
ATA;
>  }
>  EXPORT_SYMBOL(drm_hdmi_avi_infoframe_content_type);
> +
> +/**
> + * drm_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
> + * @mode: Display mode to compute the clock for
> + * @bpc: Bits per character
> + * @fmt: Output Pixel Format used
> + *
> + * Returns the TMDS Character Rate for a given mode, bpc count and outpu=
t format.
> + *
> + * RETURNS:
> + * The TMDS Character Rate, in Hertz, or 0 on error.

Everything generally uses kHz. Sticking to common units
would be better.

> + */
> +unsigned long long
> +drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +			    unsigned int bpc, enum hdmi_colorspace fmt)
> +{
> +	unsigned long long clock =3D mode->clock * 1000ULL;
> +	unsigned int vic =3D drm_match_cea_mode(mode);
> +
> +	/*
> +	 * CTA-861-G Spec, section 5.4 - Color Coding and Quantization
> +	 * mandates that VIC 1 always uses 8 bpc.
> +	 */
> +	if (vic =3D=3D 1 && bpc !=3D 8)
> +		return 0;
> +
> +	/*
> +	 * HDMI 2.0 Spec, section 7.1 - YCbCr 4:2:0 Pixel Encoding
> +	 * specifies that YUV420 encoding is only available for those
> +	 * VICs.
> +	 */
> +	if (fmt =3D=3D HDMI_COLORSPACE_YUV420 &&
> +	    !(vic =3D=3D 96 || vic =3D=3D 97 || vic =3D=3D 101 ||
> +	      vic =3D=3D 102 || vic =3D=3D 106 || vic =3D=3D 107))
> +		return 0;

I believe that is already outdated. I would just rip this out since the =

sink is anyway required to declare for which timings it will support
4:2:0 via the Y420CMDB/VDB data blocks (see
drm_mode_is_420_{only,also}().

> +
> +	if (fmt =3D=3D HDMI_COLORSPACE_YUV422) {
> +		/*
> +		 * HDMI 1.4b Spec, section 6.2.3 - Pixel Encoding Requirements
> +		 * specifies that YUV422 is 36-bit only.
> +		 */
> +		if (bpc !=3D 12)
> +			return 0;
> +
> +		/*
> +		 * HDMI 1.0 Spec, section 6.5 - Pixel Encoding
> +		 * specifies that YUV422 requires two 12-bits components per
> +		 * pixel clock, which is equivalent in our calculation to three
> +		 * 8-bits components
> +		 */
> +		bpc =3D 8;
> +	}
> +
> +	/*
> +	 * HDMI 2.0 Spec, Section 7.1 - YCbCr 4:2:0 Pixel Encoding
> +	 * specifies that YUV420 encoding is carried at a TMDS Character Rate
> +	 * equal to half the pixel clock rate.
> +	 */
> +	if (fmt =3D=3D HDMI_COLORSPACE_YUV420)
> +		clock =3D clock / 2;
> +
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		clock =3D clock * 2;
> +
> +	clock =3D clock * bpc;
> +	do_div(clock, 8);

IMO one shouldn't use bare do_div(). There are
more sensible wrappers for it.

In this case I would use DIV_ROUND_CLOSEST_ULL().

Although the 64bit math is not even required if you
just stick to kHz like everyone else.

> +
> +	return clock;
> +}
> +EXPORT_SYMBOL(drm_hdmi_compute_mode_clock);
> diff --git a/include/drm/display/drm_hdmi_helper.h b/include/drm/display/=
drm_hdmi_helper.h
> index 76d234826e22..57e3b18c15ec 100644
> --- a/include/drm/display/drm_hdmi_helper.h
> +++ b/include/drm/display/drm_hdmi_helper.h
> @@ -22,6 +22,10 @@ drm_hdmi_infoframe_set_hdr_metadata(struct hdmi_drm_in=
foframe *frame,
>  				    const struct drm_connector_state *conn_state);
>  =

>  void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *fram=
e,
>  					 const struct drm_connector_state *conn_state);
>  =

> +unsigned long long
> +drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +			    unsigned int bpc, enum hdmi_colorspace fmt);
> +
>  #endif
> =

> -- =

> 2.44.0

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
