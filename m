Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 855AAC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUG35rCYSEuqU+ljCY8DNwCRDxbLhIZGtbSDoTmwCjs=; b=XrMoQ9tyUHIryI
	Efp8jmXxk1Bs6nn2NGNCs3vPc9Mm9hI8Uzs5w3YcQRaUE7Z25jSeLfZGKVLZYtEaxnu6UGW1qvMcd
	LDFT/YdnhE340OKYu2Ubbz7koSwufcB7Sa9FbAK+cwiYo6pIMcp8YPij08Ot2DAKw21jWq6n9Gul3
	tajz3Kxv3GUf7bu7CmEBLDbyUpNMoElGmzKXjgSHe9K/UqWNJP4yyaqTzAXPyQFetYkyR0tC75bFY
	RmWQgClEFkuKvDxA/84u3p4/yN9RcT/ZqQIfG3SNok6Ryux6YFXRQNBTAza6xGHWVGQ7/J3ADU1Vi
	tFpLErYGMmxyu4MUnRRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5Tc-00000005pub-3TkX;
	Thu, 23 May 2024 10:15:12 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5TX-00000005pqx-0AON
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:15:09 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-523b017a5c6so11024655e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716459304; x=1717064104; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9QM5VzG76QHcCqcCe0wnilEYwkFQSlzi+agUdhNJ33A=;
        b=UStdWhCPGXYLr7my6m7h86Zfzbz4xfStiKWCFlcLTgr/1aht84dC7hDQbn3djk7tVH
         yU+Mrc4x+g7SzRa1YNp0xfhTGufIxCaRScEjTru5wfONJ+vCVDLrLRBnV+SWhTbnETK4
         eqXDVeVIqUi7+mYv7e+WAPzfOF5/Z3gr8AANIUTgvuAXceRpYCeyoaw77WgRz2yahWTh
         scRK0m1EdXFY4X+xfmQBAVUkhAPXcrC6TqERdVS1cnDeeK0x6lsv32pOZ1Wsatp027eC
         bgm7xxV0/71g5fajvRB4bAi6+tQvk1UypPeWlZfus7jVP2EEyrgMt916z4ZFLRl94Wcu
         eXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716459304; x=1717064104;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9QM5VzG76QHcCqcCe0wnilEYwkFQSlzi+agUdhNJ33A=;
        b=ZnnEmX6nxqi1XamoPGZ6Kbtk3/7J4Pbg2ybbJ+ergmWWoXksZ16mQXQ+p9ogp6AVBn
         cXcAvfN6sHw4SagXxvxt4vSJxrjcH1i77DGkwz8B49GhkqsJrKmC6SnRIedOV9I8EUFj
         Ym1UtMl+3+D/c3GJN9GV1FxYxYf88QsNwTg6GL2opdvvHVS1ePn4q+oWm/KA4YChWdFC
         aQw+XDLnc0JM22QS1/XW7dAlYKO94T2UA7m7U75RlbkJ5Lb+hhfeeih3laIQ0CwK3OjN
         aXLGahG+aifMm6p2SxkCmyMNo9yrFN0+gGj8TmVeVHRQrLTxonSZ3WfXVi8cbn17xQW4
         U6Kw==
X-Forwarded-Encrypted: i=1; AJvYcCUoD29QkOeFTtkZ0JKduN0K8hMIPCNw373xQ08+eFguySqdEy+1EMtAEyVpqOytuLqEB44XulTmItbOpNaLr7TkfhfWQ3uU2v0/xnQVq3OsJoCl
X-Gm-Message-State: AOJu0YyaetlCZwgNvjU+w7wLHo5eRn7uGOCvyWFQdLXy2sQFcOswuuGg
	P8iEuKsPZgXlEYT9JxPuEyedyqwMmzcVq6KogoqIcRRPprJlJBTRqZyypGeFIV0=
X-Google-Smtp-Source: AGHT+IFqFUUscVGR4pTWOYTK8QhbkEvk/NnBZ8osOoAj1j6Q5OEEzJWbkn/agprLrWF0VJh5udjbWw==
X-Received: by 2002:a19:6a0c:0:b0:51d:9291:6945 with SMTP id 2adb3069b0e04-526c0b5dbbcmr3664728e87.44.1716459304484;
        Thu, 23 May 2024 03:15:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52753dd576bsm390832e87.108.2024.05.23.03.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:15:03 -0700 (PDT)
Date: Thu, 23 May 2024 13:15:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v14 15/28] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <utfnjwl42bhkol6ppp5el4rcbk2uyr4eet5um6v3mce6orfeyi@47ocf53ycmnt>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-15-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-15-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_031507_106385_BD114E0F 
X-CRM114-Status: GOOD (  35.01  )
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

On Tue, May 21, 2024 at 12:13:48PM +0200, Maxime Ripard wrote:
> Now that we have all the infrastructure needed, we can add some code
> that will, for a given connector state and mode, compute the best output
> format and bpc.
> =

> The algorithm is equivalent to the one already found in i915 and vc4.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 205 +++++++++++++++=
+++++-
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  25 ++-
>  2 files changed, 218 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gp=
u/drm/display/drm_hdmi_state_helper.c
> index 063421835dba..93cb30dba86e 100644
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
> @@ -46,10 +48,118 @@ connector_state_get_mode(const struct drm_connector_=
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
> +		drm_dbg_kms(dev, "%s format unsupported by the connector.\n",
> +			    drm_hdmi_connector_get_output_format_name(format));
> +		return false;
> +	}
> +
> +	switch (format) {
> +	case HDMI_COLORSPACE_RGB:
> +		drm_dbg_kms(dev, "RGB Format, checking the constraints.\n");
> +
> +		/*
> +		 * In some cases, like when the EDID readout fails, or
> +		 * is not an HDMI compliant EDID for some reason, the
> +		 * color_formats field will be blank and not report any
> +		 * format supported. In such a case, assume that RGB is
> +		 * supported so we can keep things going and light up
> +		 * the display.
> +		 */
> +		if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444))
> +			drm_warn(dev, "HDMI Sink doesn't support RGB, something's wrong.\n");
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

Maybe I'm misunderstanding the spec for YUV 4:2:2

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

So for 4:2:0 this code will always return false? I think a dev_dbg /
todo / comment would be nice. There is a todo later on, but it is in a
different code block.

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
> @@ -90,10 +200,101 @@ hdmi_compute_clock(const struct drm_connector *conn=
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
> @@ -113,13 +314,11 @@ int drm_atomic_helper_connector_hdmi_check(struct d=
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

> 2.45.0
> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
