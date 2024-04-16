Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79939C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXWHxGzzeGSDxVNao6dmZcjNcX445afXEz2lvgtcgJs=; b=3f8lPuw+Z+8cbL
	qR5SVfbbtV7MC+DUneTaV7LKEV6WE5kXRCTim1D6RuEwhLYWcONQNWQGQtFAUJLYR9n3luheYD7AF
	UtMS3Sdr4w9Vw7N5n5kgq5nP1Zo+5dwEJ4y11Uy7jV04ry7HhD1gxjvkC2WAtY487r56qOo7Np+Pc
	+x7lEnUnrvcRJfDAucn0uBgmBJxBGWNjHhzh8cStSS42s4bSe19mmC1V7VVIp5GE3sNEHO/o/jUSK
	b9xddwPVIh5nDIn4G+y0bnyd+/nY+DZRg8CDllBMDMkfSHrefDXbl6YubBMa73GG4uw4DPDFNPbf3
	L0mq1wAPmqP0OGVtrwKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjDI-0000000CNi0-1IJv;
	Tue, 16 Apr 2024 13:51:08 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjDF-0000000CNh5-1NTV;
	Tue, 16 Apr 2024 13:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1713275465; x=1744811465;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=0w4Qc7WXMLbaRzifUCliR1koxDw/02VJz+GXV0lhkDc=;
  b=g8DGBmgMlBqfJTeP0sSOktZeWZ5BqBKVB22+5sdDKakNn1HIp++/n1oS
   dJWgVfbrgZVoXk31bjhLbeM5xHJe1HNPa+xlIcpV0MU/I7QfgsZ/E2j95
   XFuH96eBLVcmnuMjMNKV989RldtuWocXmnP2GhoCCAZBBcc2XkGdKZCoW
   qyfhiUsKSg1mGFIlab5sUPIW5p/JTrSWTpfMjUQW8zINvoNUZggiUrrPQ
   9HDMKG5AM6s38kXVy8wn1jytbrK/aS57iIx06OJJDdOegp1dRhFp0bbub
   jbYYXZ+1DWtaBoKG3ZpxtkcjltwVCSfuejPldulUAHUgrxYdLMGDQhOLe
   g==;
X-CSE-ConnectionGUID: 76n7VdJNQK2ajDTFVTYjfg==
X-CSE-MsgGUID: fxifJTHdTDqU2CtlF0/GzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8824661"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8824661"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2024 06:51:04 -0700
X-CSE-ConnectionGUID: c+JjeaBqTCWC77Oty0dwcw==
X-CSE-MsgGUID: Tagd3zvzR26QEzV5CtxoYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="22331130"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by fmviesa008.fm.intel.com with SMTP; 16 Apr 2024 06:50:59 -0700
Received: by stinkbox (sSMTP sendmail emulation); Tue, 16 Apr 2024 16:50:58 +0300
Date: Tue, 16 Apr 2024 16:50:58 +0300
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
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v11 15/28] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <Zh6CQhD-2Yl5LUVb@intel.com>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
 <20240326-kms-hdmi-connector-state-v11-15-c5680ffcf261@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-15-c5680ffcf261@kernel.org>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_065105_486723_E7EA13D7 
X-CRM114-Status: GOOD (  35.18  )
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

On Tue, Mar 26, 2024 at 04:40:19PM +0100, Maxime Ripard wrote:
> Now that we have all the infrastructure needed, we can add some code
> that will, for a given connector state and mode, compute the best output
> format and bpc.
> =

> The algorithm is equivalent to the one already found in i915 and vc4.
> =

> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 197 +++++++++++++++=
+++++-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  25 ++-
>  2 files changed, 210 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gp=
u/drm/display/drm_hdmi_state_helper.c
> index 063421835dba..b9bc0fb027ea 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> @@ -1,9 +1,11 @@
>  // SPDX-License-Identifier: MIT
>  =

>  #include <drm/drm_atomic.h>
>  #include <drm/drm_connector.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
>  =

>  #include <drm/display/drm_hdmi_helper.h>
>  #include <drm/display/drm_hdmi_state_helper.h>
>  =

>  /**
> @@ -46,10 +48,110 @@ connector_state_get_mode(const struct drm_connector_=
state *conn_state)
>  		return NULL;
>  =

>  	return &crtc_state->mode;
>  }
>  =

> +static bool
> +sink_supports_format_bpc(const struct drm_connector *connector,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode,
> +			 unsigned int format, unsigned int bpc)
> +{
> +	struct drm_device *dev =3D connector->dev;
> +	u8 vic =3D drm_match_cea_mode(mode);
> +
> +	/*
> +	 * CTA-861-F, section 5.4 - Color Coding & Quantization states
> +	 * that the bpc must be 8, 10, 12 or 16 except for the default
> +	 * 640x480 VIC1 where the value must be 8.
> +	 *
> +	 * The definition of default here is ambiguous but the spec
> +	 * refers to VIC1 being the default timing in several occasions
> +	 * so our understanding is that for the default timing (ie,
> +	 * VIC1), the bpc must be 8.
> +	 */
> +	if (vic =3D=3D 1 && bpc !=3D 8) {
> +		drm_dbg_kms(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
> +		return false;
> +	}
> +
> +	if (!info->is_hdmi &&
> +	    (format !=3D HDMI_COLORSPACE_RGB || bpc !=3D 8)) {
> +		drm_dbg_kms(dev, "DVI Monitors require an RGB output at 8 bpc\n");
> +		return false;
> +	}
> +
> +	if (!(connector->hdmi.supported_formats & BIT(format))) {

These are the capabilities of the souce I take it?

> +		drm_dbg_kms(dev, "%s format unsupported by the connector.\n",
> +			    drm_hdmi_connector_get_output_format_name(format));
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case HDMI_COLORSPACE_RGB:
> +		drm_dbg_kms(dev, "RGB Format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444))
> +			return false;

and this is the sink.

Maybe we should use the same bits for both? Anyways, that seems like
material for a followup series.

> +
> +		if (bpc =3D=3D 10 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI=
_DC_30)) {
> +			drm_dbg_kms(dev, "10 BPC but sink doesn't support Deep Color 30.\n");
> +			return false;
> +		}
> +
> +		if (bpc =3D=3D 12 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI=
_DC_36)) {
> +			drm_dbg_kms(dev, "12 BPC but sink doesn't support Deep Color 36.\n");
> +			return false;
> +		}
> +
> +		drm_dbg_kms(dev, "RGB format supported in that configuration.\n");
> +
> +		return true;
> +
> +	case HDMI_COLORSPACE_YUV422:
> +		drm_dbg_kms(dev, "YUV422 format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_YCBCR422)) {
> +			drm_dbg_kms(dev, "Sink doesn't support YUV422.\n");
> +			return false;
> +		}
> +
> +		if (bpc !=3D 12) {
> +			drm_dbg_kms(dev, "YUV422 only supports 12 bpc.\n");
> +			return false;
> +		}

Did something change around here from the last time?

> +
> +		drm_dbg_kms(dev, "YUV422 format supported in that configuration.\n");
> +
> +		return true;
> +
> +	case HDMI_COLORSPACE_YUV444:
> +		drm_dbg_kms(dev, "YUV444 format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_YCBCR444)) {
> +			drm_dbg_kms(dev, "Sink doesn't support YUV444.\n");
> +			return false;
> +		}
> +
> +		if (bpc =3D=3D 10 && !(info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HD=
MI_DC_30)) {
> +			drm_dbg_kms(dev, "10 BPC but sink doesn't support Deep Color 30.\n");
> +			return false;
> +		}
> +
> +		if (bpc =3D=3D 12 && !(info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HD=
MI_DC_36)) {
> +			drm_dbg_kms(dev, "12 BPC but sink doesn't support Deep Color 36.\n");
> +			return false;
> +		}
> +
> +		drm_dbg_kms(dev, "YUV444 format supported in that configuration.\n");
> +
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  static enum drm_mode_status
>  hdmi_clock_valid(const struct drm_connector *connector,
>  		 const struct drm_display_mode *mode,
>  		 unsigned long long clock)
>  {
> @@ -90,10 +192,101 @@ hdmi_compute_clock(const struct drm_connector *conn=
ector,
>  	conn_state->hdmi.tmds_char_rate =3D clock;
>  =

>  	return 0;
>  }
>  =

> +static bool
> +hdmi_try_format_bpc(const struct drm_connector *connector,
> +		    struct drm_connector_state *conn_state,
> +		    const struct drm_display_mode *mode,
> +		    unsigned int bpc, enum hdmi_colorspace fmt)
> +{
> +	const struct drm_display_info *info =3D &connector->display_info;
> +	struct drm_device *dev =3D connector->dev;
> +	int ret;
> +
> +	drm_dbg_kms(dev, "Trying %s output format\n",
> +		    drm_hdmi_connector_get_output_format_name(fmt));
> +
> +	if (!sink_supports_format_bpc(connector, info, mode, fmt, bpc)) {
> +		drm_dbg_kms(dev, "%s output format not supported with %u bpc\n",
> +			    drm_hdmi_connector_get_output_format_name(fmt),
> +			    bpc);
> +		return false;
> +	}
> +
> +	ret =3D hdmi_compute_clock(connector, conn_state, mode, bpc, fmt);
> +	if (ret) {
> +		drm_dbg_kms(dev, "Couldn't compute clock for %s output format and %u b=
pc\n",
> +			    drm_hdmi_connector_get_output_format_name(fmt),
> +			    bpc);
> +		return false;
> +	}
> +
> +	drm_dbg_kms(dev, "%s output format supported with %u (TMDS char rate: %=
llu Hz)\n",
> +		    drm_hdmi_connector_get_output_format_name(fmt),
> +		    bpc, conn_state->hdmi.tmds_char_rate);
> +
> +	return true;
> +}
> +
> +static int
> +hdmi_compute_format(const struct drm_connector *connector,
> +		    struct drm_connector_state *conn_state,
> +		    const struct drm_display_mode *mode,
> +		    unsigned int bpc)
> +{
> +	struct drm_device *dev =3D connector->dev;
> +
> +	/*
> +	 * TODO: Add support for YCbCr420 output for HDMI 2.0 capable
> +	 * devices, for modes that only support YCbCr420.
> +	 */
> +	if (hdmi_try_format_bpc(connector, conn_state, mode, bpc, HDMI_COLORSPA=
CE_RGB)) {
> +		conn_state->hdmi.output_format =3D HDMI_COLORSPACE_RGB;
> +		return 0;
> +	}
> +
> +	drm_dbg_kms(dev, "Failed. No Format Supported for that bpc count.\n");
> +
> +	return -EINVAL;
> +}
> +
> +static int
> +hdmi_compute_config(const struct drm_connector *connector,
> +		    struct drm_connector_state *conn_state,
> +		    const struct drm_display_mode *mode)
> +{
> +	struct drm_device *dev =3D connector->dev;
> +	unsigned int max_bpc =3D clamp_t(unsigned int,
> +				       conn_state->max_bpc,
> +				       8, connector->max_bpc);
> +	unsigned int bpc;
> +	int ret;
> +
> +	for (bpc =3D max_bpc; bpc >=3D 8; bpc -=3D 2) {
> +		drm_dbg_kms(dev, "Trying with a %d bpc output\n", bpc);
> +
> +		ret =3D hdmi_compute_format(connector, conn_state, mode, bpc);
> +		if (ret)
> +			continue;
> +
> +		conn_state->hdmi.output_bpc =3D bpc;
> +
> +		drm_dbg_kms(dev,
> +			    "Mode %ux%u @ %uHz: Found configuration: bpc: %u, fmt: %s, clock:=
 %llu\n",
> +			    mode->hdisplay, mode->vdisplay, drm_mode_vrefresh(mode),
> +			    conn_state->hdmi.output_bpc,
> +			    drm_hdmi_connector_get_output_format_name(conn_state->hdmi.output=
_format),
> +			    conn_state->hdmi.tmds_char_rate);
> +
> +		return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  /**
>   * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI conne=
ctor atomic state
>   * @connector: DRM Connector
>   * @state: the DRM State object
>   *
> @@ -113,13 +306,11 @@ int drm_atomic_helper_connector_hdmi_check(struct d=
rm_connector *connector,
>  		drm_atomic_get_new_connector_state(state, connector);
>  	const struct drm_display_mode *mode =3D
>  		connector_state_get_mode(new_conn_state);
>  	int ret;
>  =

> -	ret =3D hdmi_compute_clock(connector, new_conn_state, mode,
> -				 new_conn_state->hdmi.output_bpc,
> -				 new_conn_state->hdmi.output_format);
> +	ret =3D hdmi_compute_config(connector, new_conn_state, mode);
>  	if (ret)
>  		return ret;
>  =

>  	if (old_conn_state->hdmi.output_bpc !=3D new_conn_state->hdmi.output_bp=
c ||
>  	    old_conn_state->hdmi.output_format !=3D new_conn_state->hdmi.output=
_format) {
> diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers=
/gpu/drm/tests/drm_hdmi_state_helper_test.c
> index ead998a691e7..a49a544d7b49 100644
> --- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> @@ -70,13 +70,10 @@ static int light_up_connector(struct kunit *test,
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, state);
>  =

>  	conn_state =3D drm_atomic_get_connector_state(state, connector);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
>  =

> -	conn_state->hdmi.output_bpc =3D connector->max_bpc;
> -	conn_state->hdmi.output_format =3D HDMI_COLORSPACE_RGB;
> -
>  	ret =3D drm_atomic_set_crtc_for_connector(conn_state, crtc);
>  	KUNIT_EXPECT_EQ(test, ret, 0);
>  =

>  	crtc_state =3D drm_atomic_get_crtc_state(state, crtc);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, crtc_state);
> @@ -251,14 +248,19 @@ static void drm_test_check_output_bpc_crtc_mode_cha=
nged(struct kunit *test)
>  	priv =3D drm_atomic_helper_connector_hdmi_init(test,
>  						     BIT(HDMI_COLORSPACE_RGB),
>  						     10);
>  	KUNIT_ASSERT_NOT_NULL(test, priv);
>  =

> +	conn =3D &priv->connector;
> +	ret =3D set_connector_edid(test, conn,
> +				 test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz,
> +				 ARRAY_SIZE(test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz));
> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
>  	ctx =3D drm_kunit_helper_acquire_ctx_alloc(test);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
>  =

> -	conn =3D &priv->connector;
>  	preferred =3D find_preferred_mode(conn);
>  	KUNIT_ASSERT_NOT_NULL(test, preferred);
>  =

>  	drm =3D &priv->drm;
>  	crtc =3D priv->crtc;
> @@ -272,15 +274,15 @@ static void drm_test_check_output_bpc_crtc_mode_cha=
nged(struct kunit *test)
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, new_conn_state);
>  =

>  	old_conn_state =3D drm_atomic_get_old_connector_state(state, conn);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, old_conn_state);
>  =

> -	new_conn_state->hdmi.output_bpc =3D 8;
> +	new_conn_state->max_requested_bpc =3D 8;
>  =

>  	KUNIT_ASSERT_NE(test,
> -			old_conn_state->hdmi.output_bpc,
> -			new_conn_state->hdmi.output_bpc);
> +			old_conn_state->max_requested_bpc,
> +			new_conn_state->max_requested_bpc);
>  =

>  	ret =3D drm_atomic_check_only(state);
>  	KUNIT_ASSERT_EQ(test, ret, 0);
>  =

>  	old_conn_state =3D drm_atomic_get_old_connector_state(state, conn);
> @@ -320,14 +322,19 @@ static void drm_test_check_output_bpc_crtc_mode_not=
_changed(struct kunit *test)
>  	priv =3D drm_atomic_helper_connector_hdmi_init(test,
>  						     BIT(HDMI_COLORSPACE_RGB),
>  						     10);
>  	KUNIT_ASSERT_NOT_NULL(test, priv);
>  =

> +	conn =3D &priv->connector;
> +	ret =3D set_connector_edid(test, conn,
> +				 test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz,
> +				 ARRAY_SIZE(test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz));
> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
>  	ctx =3D drm_kunit_helper_acquire_ctx_alloc(test);
>  	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
>  =

> -	conn =3D &priv->connector;
>  	preferred =3D find_preferred_mode(conn);
>  	KUNIT_ASSERT_NOT_NULL(test, preferred);
>  =

>  	drm =3D &priv->drm;
>  	crtc =3D priv->crtc;
> @@ -670,11 +677,11 @@ static void drm_test_check_format_value(struct kuni=
t *test)
>  						     8);
>  	KUNIT_ASSERT_NOT_NULL(test, priv);
>  =

>  	conn =3D &priv->connector;
>  	conn_state =3D conn->state;
> -	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, HDMI_COLORSPACE_R=
GB);
> +	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, 0);
>  }
>  =

>  /*
>   * Test that the value of the output format property out of reset is set
>   * to 0, and will be computed at atomic_check time.
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
