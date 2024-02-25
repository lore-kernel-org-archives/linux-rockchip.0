Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E9E6C54E49
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Feb 2024 13:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9/1r5ACh0z3ccHo6qy7wBPxQ6jZRHaKnU8HaBfVKug=; b=TSjd7QigoALpup
	zK6tV3vzBdnRhr4Sr/Z3AQlCD3gY2ig05hLnbJG6HMsCR2+v2V0dprWFKWVrfDDBzsKT9rAG8pbJw
	JbpWYK8v2ZH/5NiR0+fgvMyNFoo9fMiFTh+exkqwLEKJZaat+ocA1Cpd4mbwyZOyYx9dHJzf/fhO3
	4vSq6+sWyOLFMzXdqYnZpUx3MrHkl8JJ5+3WB1qvOHySVGrs8GQB2sGUxA/CDaxI+ssl2A1z5Bb/1
	GAIyrq+xIjNQZo1PQHigZXzKuwFIkFohDfcNMtn387XBNw9kNypL6OuXF7aHuw9vkBa/k62ykxhPF
	GKQ1aoKjPC2g6Gxd2k1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reEzN-0000000F1Bq-1Gi4;
	Sun, 25 Feb 2024 13:56:21 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reEz9-0000000F17C-0cW7;
	Sun, 25 Feb 2024 13:56:10 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-412a482eb2bso1107665e9.0;
        Sun, 25 Feb 2024 05:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708869364; x=1709474164; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AGnq5BBZkr2hGrDZl5ODTAPalninzQXJFAE9hJDSqN8=;
        b=epyI1wEtqq6mr5TyIul/w8GHKLQVx29h/bU1uajHoLmtaP0tbMhJoL3biCC4VDM3Fh
         dGGRRlcw8T1qivhI7v6CEZL5IlG2T+I2nSTjLxCCdgMmLBmx9IAm6u8j+kMLjaJJxhD9
         KuzUXm/fatupuCVOxcSbu3wu8gttgpGs0Tw2YjYg1RTr66x7qfieqNvp0bmuMHsD1Mgz
         KvZCzXjULH4rinYSRGgj+IjPCrp1KO5n9lbzeGW8FqMvghfY2FJvFkQiqTqOBsBN1C7X
         KFHdmn1+GLgHheHqkNRHBni8nn4Q+0VZBmhFG0H0OnvG4LSGrmx2EsD7L3MFPphM0lFb
         AunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708869364; x=1709474164;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AGnq5BBZkr2hGrDZl5ODTAPalninzQXJFAE9hJDSqN8=;
        b=LuXyeBRHIXo7bLVvE9xr8rNxmEh19uTz1uosaeqruZwitUesNdjKDiSua3q6FFKzgo
         FfSLkJpAgG471q4BeSsB34bhQ3K1Rd104SHqiklEJYjYn3yxVg98oYRArzRTlTB71nkZ
         fiEeVewdRX/H5qLZ6t0YG8EwWDX4PzW/689Q41ZO652GhdKnVQTMAIS/cLV9CujURu0P
         /KvyV6WxttET3pJ43+RNPoxf+y0JC3mfJ+UM72S6J38A47HwO1xLD54IzK1+aVf9zQNp
         dfCbctw/J7gPD1o3XSYzdFhSNMpaRwOBPnr22AtyLrk21VGV9wuTSczkT8rGGJFY2zd6
         pBeQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8BWjKdatZby4R7BKSfKDIKQxs4OEkUokupPfqP6+nO+CQq3d1xhgwtSZIlPmbGASdPj41H9qs5soch+AtjK0MdKZg7Z4hwez52dpTy8Uv/L6TMOLZF3OC+HvNOjwG0p6DN7B+JA8CTYACWEXqximQNsQp2HYjGGY=
X-Gm-Message-State: AOJu0Yxi0O5TsUlC98YxhVgBizeAl4lo5D1n8csU1unOv44Zk+9NF5lr
	70RHXQ5wn7nygGDuzLwBHjDMv8QGVWniiWiP6WAlLnAmNJxSG24=
X-Google-Smtp-Source: AGHT+IEcB5AtKv1xpKR/8Sb1OXcSBocoyAK3YbemvY3uOxPu2h0msOFMH1lBOExgoNpnrasxnS3OKw==
X-Received: by 2002:a05:600c:3112:b0:40f:b0bf:6abf with SMTP id g18-20020a05600c311200b0040fb0bf6abfmr3221669wmo.17.1708869363720;
        Sun, 25 Feb 2024 05:56:03 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4600:feda:c5dd:ebff:fee5? ([2a02:810b:f40:4600:feda:c5dd:ebff:fee5])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d4304000000b0033d6c928a95sm5167542wrq.63.2024.02.25.05.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Feb 2024 05:56:03 -0800 (PST)
Message-ID: <67e9fbc5-ed7f-48b9-ae2a-e07c5fbd2218@gmail.com>
Date: Sun, 25 Feb 2024 14:56:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 19/36] drm/connector: hdmi: Compute bpc and format
 automatically
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-19-8f4af575fce2@kernel.org>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-19-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240225_055607_254162_7A5B8573 
X-CRM114-Status: GOOD (  30.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime,

Am 22.02.24 um 19:14 schrieb Maxime Ripard:
> Now that we have all the infrastructure needed, we can add some code
> that will, for a given connector state and mode, compute the best output
> format and bpc.
> 
> The algorithm is equivalent to the one already found in i915 and vc4.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   drivers/gpu/drm/drm_atomic_state_helper.c          | 184 ++++++++++++++++++++-
>   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |  25 ++-
>   2 files changed, 197 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 448b4a73d1c8..9f517599f117 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -31,6 +31,7 @@
>   #include <drm/drm_connector.h>
>   #include <drm/drm_crtc.h>
>   #include <drm/drm_device.h>
> +#include <drm/drm_edid.h>
>   #include <drm/drm_framebuffer.h>
>   #include <drm/drm_plane.h>
>   #include <drm/drm_print.h>
> @@ -662,6 +663,96 @@ connector_state_get_mode(const struct drm_connector_state *conn_state)
>   	return &crtc_state->mode;
>   }
>   
> +static bool
> +sink_supports_format_bpc(const struct drm_connector *connector,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode,
> +			 unsigned int format, unsigned int bpc)
> +{
> +	struct drm_device *dev = connector->dev;
> +	u8 vic = drm_match_cea_mode(mode);
> +
> +	if (vic == 1 && bpc != 8) {
> +		drm_dbg(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
> +		return false;
> +	}
> +
> +	if (!info->is_hdmi &&
> +	    (format != HDMI_COLORSPACE_RGB || bpc != 8)) {
> +		drm_dbg(dev, "DVI Monitors require an RGB output at 8 bpc\n");
> +		return false;
> +	}
> +
> +	if (!(connector->hdmi.supported_formats & BIT(format))) {
> +		drm_dbg(dev, "%s format unsupported by the connector.\n",
> +			drm_hdmi_connector_get_output_format_name(format));
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case HDMI_COLORSPACE_RGB:
> +		drm_dbg(dev, "RGB Format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444))
> +			return false;
> +
> +		if (bpc == 10 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30)) {
> +			drm_dbg(dev, "10 BPC but sink doesn't support Deep Color 30.\n");
> +			return false;
> +		}
> +
> +		if (bpc == 12 && !(info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36)) {
> +			drm_dbg(dev, "12 BPC but sink doesn't support Deep Color 36.\n");
> +			return false;
> +		}
> +
> +		drm_dbg(dev, "RGB format supported in that configuration.\n");
> +
> +		return true;
> +
> +	case HDMI_COLORSPACE_YUV422:
> +		drm_dbg(dev, "YUV422 format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_YCBCR422)) {
> +			drm_dbg(dev, "Sink doesn't support YUV422.\n");
> +			return false;
> +		}
> +
> +		if (bpc != 12) {
> +			drm_dbg(dev, "YUV422 only supports 12 bpc.\n");
> +			return false;
> +		}
> +
I'm not sure this check is really necessary/helpful.
In [0] you are quoting HDMI specs which are saying that YUV422 is just
always 12 bpc - which I guess is correct. The problem I'm seeing here:
There are HDMI 1.4 controllers, like Rockchip Inno HDMI, that support
YUV422 but do not support any other color depth than 8 bpc for RGB or
YUV444. In drmm_connector_hdmi_init you are expecting to give the max bpc
as parameter and (if I'm getting it correctly) I'd had to set it to 12 to
also get YUV422 modes, but I'd also get RGB/YUV444 with bpc > 8 modes which
are not supported by this controller. I guess the same applies to other
HDMI 1.4 controllers that support YUV422. Or would I have to filter it out
myself?
So I guess the easiest way around is to drop the above check since it is
just always 12 bpc for YUV422 and there is no need to filter out anything.
(Same applies to the similar check in [0]).

Regards,
Alex

[0] 
https://lore.kernel.org/lkml/20240222-kms-hdmi-connector-state-v7-13-8f4af575fce2@kernel.org/
> +		drm_dbg(dev, "YUV422 format supported in that configuration.\n");
> +
> +		return true;
> +
> +	case HDMI_COLORSPACE_YUV444:
> +		drm_dbg(dev, "YUV444 format, checking the constraints.\n");
> +
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_YCBCR444)) {
> +			drm_dbg(dev, "Sink doesn't support YUV444.\n");
> +			return false;
> +		}
> +
> +		if (bpc == 10 && !(info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_30)) {
> +			drm_dbg(dev, "10 BPC but sink doesn't support Deep Color 30.\n");
> +			return false;
> +		}
> +
> +		if (bpc == 12 && !(info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID_HDMI_DC_36)) {
> +			drm_dbg(dev, "12 BPC but sink doesn't support Deep Color 36.\n");
> +			return false;
> +		}
> +
> +		drm_dbg(dev, "YUV444 format supported in that configuration.\n");
> +
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>   static enum drm_mode_status
>   hdmi_clock_valid(const struct drm_connector *connector,
>   		 const struct drm_display_mode *mode,
> @@ -706,6 +797,95 @@ hdmi_compute_clock(const struct drm_connector *connector,
>   	return 0;
>   }
>   
> +static bool
> +hdmi_try_format_bpc(const struct drm_connector *connector,
> +		    struct drm_connector_state *state,
> +		    const struct drm_display_mode *mode,
> +		    unsigned int bpc, enum hdmi_colorspace fmt)
> +{
> +	const struct drm_display_info *info = &connector->display_info;
> +	struct drm_device *dev = connector->dev;
> +	int ret;
> +
> +	drm_dbg(dev, "Trying %s output format\n",
> +		drm_hdmi_connector_get_output_format_name(fmt));
> +
> +	if (!sink_supports_format_bpc(connector, info, mode, fmt, bpc)) {
> +		drm_dbg(dev, "%s output format not supported with %u bpc\n",
> +			drm_hdmi_connector_get_output_format_name(fmt), bpc);
> +		return false;
> +	}
> +
> +	ret = hdmi_compute_clock(connector, state, mode, bpc, fmt);
> +	if (ret) {
> +		drm_dbg(dev, "Couldn't compute clock for %s output format and %u bpc\n",
> +			drm_hdmi_connector_get_output_format_name(fmt), bpc);
> +		return false;
> +	}
> +
> +	drm_dbg(dev, "%s output format supported with %u (TMDS char rate: %llu Hz)\n",
> +		drm_hdmi_connector_get_output_format_name(fmt), bpc, state->hdmi.tmds_char_rate);
> +
> +	return true;
> +}
> +
> +static int
> +hdmi_compute_format(const struct drm_connector *connector,
> +		    struct drm_connector_state *state,
> +		    const struct drm_display_mode *mode,
> +		    unsigned int bpc)
> +{
> +	struct drm_device *dev = connector->dev;
> +
> +	if (hdmi_try_format_bpc(connector, state, mode, bpc, HDMI_COLORSPACE_RGB)) {
> +		state->hdmi.output_format = HDMI_COLORSPACE_RGB;
> +		return 0;
> +	}
> +
> +	if (hdmi_try_format_bpc(connector, state, mode, bpc, HDMI_COLORSPACE_YUV422)) {
> +		state->hdmi.output_format = HDMI_COLORSPACE_YUV422;
> +		return 0;
> +	}
> +
> +	drm_dbg(dev, "Failed. No Format Supported for that bpc count.\n");
> +
> +	return -EINVAL;
> +}
> +
> +static int
> +hdmi_compute_config(const struct drm_connector *connector,
> +		    struct drm_connector_state *state,
> +		    const struct drm_display_mode *mode)
> +{
> +	struct drm_device *dev = connector->dev;
> +	unsigned int max_bpc = clamp_t(unsigned int,
> +				       state->max_bpc,
> +				       8, connector->max_bpc);
> +	unsigned int bpc;
> +	int ret;
> +
> +	for (bpc = max_bpc; bpc >= 8; bpc -= 2) {
> +		drm_dbg(dev, "Trying with a %d bpc output\n", bpc);
> +
> +		ret = hdmi_compute_format(connector, state, mode, bpc);
> +		if (ret)
> +			continue;
> +
> +		state->hdmi.output_bpc = bpc;
> +
> +		drm_dbg(dev,
> +			"Mode %ux%u @ %uHz: Found configuration: bpc: %u, fmt: %s, clock: %llu\n",
> +			mode->hdisplay, mode->vdisplay, drm_mode_vrefresh(mode),
> +			state->hdmi.output_bpc,
> +			drm_hdmi_connector_get_output_format_name(state->hdmi.output_format),
> +			state->hdmi.tmds_char_rate);
> +
> +		return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>   /**
>    * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
>    * @connector: DRM Connector
> @@ -729,9 +909,7 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
>   		connector_state_get_mode(new_state);
>   	int ret;
>   
> -	ret = hdmi_compute_clock(connector, new_state, mode,
> -				 new_state->hdmi.output_bpc,
> -				 new_state->hdmi.output_format);
> +	ret = hdmi_compute_config(connector, new_state, mode);
>   	if (ret)
>   		return ret;
>   
> diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> index 5a8750153510..f010fde0eb69 100644
> --- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> @@ -70,9 +70,6 @@ static int light_up_connector(struct kunit *test,
>   	conn_state = drm_atomic_get_connector_state(state, connector);
>   	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, conn_state);
>   
> -	conn_state->hdmi.output_bpc = connector->max_bpc;
> -	conn_state->hdmi.output_format = HDMI_COLORSPACE_RGB;
> -
>   	ret = drm_atomic_set_crtc_for_connector(conn_state, crtc);
>   	KUNIT_EXPECT_EQ(test, ret, 0);
>   
> @@ -251,10 +248,15 @@ static void drm_test_check_output_bpc_crtc_mode_changed(struct kunit *test)
>   						     10);
>   	KUNIT_ASSERT_NOT_NULL(test, priv);
>   
> +	conn = &priv->connector;
> +	ret = set_connector_edid(test, conn,
> +				 test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz,
> +				 ARRAY_SIZE(test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz));
> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
>   	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
>   	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
>   
> -	conn = &priv->connector;
>   	preferred = find_preferred_mode(conn);
>   	KUNIT_ASSERT_NOT_NULL(test, preferred);
>   
> @@ -272,11 +274,11 @@ static void drm_test_check_output_bpc_crtc_mode_changed(struct kunit *test)
>   	old_conn_state = drm_atomic_get_old_connector_state(state, conn);
>   	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, old_conn_state);
>   
> -	new_conn_state->hdmi.output_bpc = 8;
> +	new_conn_state->max_requested_bpc = 8;
>   
>   	KUNIT_ASSERT_NE(test,
> -			old_conn_state->hdmi.output_bpc,
> -			new_conn_state->hdmi.output_bpc);
> +			old_conn_state->max_requested_bpc,
> +			new_conn_state->max_requested_bpc);
>   
>   	ret = drm_atomic_check_only(state);
>   	KUNIT_ASSERT_EQ(test, ret, 0);
> @@ -320,10 +322,15 @@ static void drm_test_check_output_bpc_crtc_mode_not_changed(struct kunit *test)
>   						     10);
>   	KUNIT_ASSERT_NOT_NULL(test, priv);
>   
> +	conn = &priv->connector;
> +	ret = set_connector_edid(test, conn,
> +				 test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz,
> +				 ARRAY_SIZE(test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz));
> +	KUNIT_ASSERT_EQ(test, ret, 0);
> +
>   	ctx = drm_kunit_helper_acquire_ctx_alloc(test);
>   	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
>   
> -	conn = &priv->connector;
>   	preferred = find_preferred_mode(conn);
>   	KUNIT_ASSERT_NOT_NULL(test, preferred);
>   
> @@ -670,7 +677,7 @@ static void drm_test_check_format_value(struct kunit *test)
>   
>   	conn = &priv->connector;
>   	conn_state = conn->state;
> -	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, HDMI_COLORSPACE_RGB);
> +	KUNIT_EXPECT_EQ(test, conn_state->hdmi.output_format, 0);
>   }
>   
>   /*
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
