Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F974C04ABA
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 17:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIV/Ilp/DtMNMY73XSxfGfxbgx1bqGrQzMzLisjmZ+I=; b=On/dP8R0DVEuQv
	F+QbLtoan09srOTI86e036PA7MAzdJi2dJMFyj/FPR9m6imPjQIJ08XdODwlLNCaUJvnRKmRfg+0r
	xCYvvFz6kSSO2Opwqa9qeZrwzomsA5oYVIYZFjWED7E8XRHnqU/Q9Sm7U48Th/T+WuRW6ARWLrC4/
	xtsJby+eQn3V5P5TIeipSzgqMA4qrZhYXqDUSn5XV1pz/Ai2IbtzaO5qwzxaqwuazMbyM5Gk4HTrI
	x3YXVF4pmeN1P/U/dhzBwolbzvzBwT9/mkKnz//27hLng87sHMhESSgQ31gp6WkXxukDbg1/7oH8y
	FAQxRu1vnq6ToRHob5Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0ni-003imR-1z;
	Wed, 20 Sep 2023 17:15:46 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0nf-003ilZ-0s;
	Wed, 20 Sep 2023 17:15:44 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9aa0495f9cfso260969666b.1;
        Wed, 20 Sep 2023 10:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695230139; x=1695834939; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7BA/1TKZ7fFQpqXSbCVNQn/zfVi+d+HyfuxOxnEyY4I=;
        b=d6jey/32gln19xztt8oI1+oUa7JMyAVnpZBAllCl1Q7kToODTWxdbdXGBBp6kyESX4
         IbTTY6RNKSy/U5XFtd+09jW2TVfNf5jMboh/2Wdlyq5Nv1jJEG739gmSRz+jLEY95yEj
         oZr2LoIQY0ByhvcKXMHIzYwaofyuzOhqMyAgqutIu2xlQbyY51n/8pYm5zpc43etnCJJ
         CzN3MbkDWCQSowcHBpON8ngXgYWUeFep4ts5ynmUPgt6bgsmcziF0E6hISwjVUQjZNWs
         4FzkVn22pF3t65GMKKXYRRD4Pr8Nf3yHRtOYNq/NfDvOUVl4TKPCzQhScGLtp6h2EK0o
         Gk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695230139; x=1695834939;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7BA/1TKZ7fFQpqXSbCVNQn/zfVi+d+HyfuxOxnEyY4I=;
        b=fPNb0nhVOXOLJO6kEkcmgreCajKEwj09whHZ5qGckWMe/pWCXHgq16skanqverbbIi
         TzrYS3LJ23Tp3biJUuSmFhdmyWhEhSSmM7uziIT3LAESVnf01anWf5Rwa7GvgRt4d+rO
         UFtMg6fmAcRlQ0e2SQQsiRFP85s3/Y3/jr/w/EHeM2Z4x7XfWO5bh+ObDnFXtBcS6OOr
         DNonaf1jXuooFTDRxWZyWepG1ENEOzmS5TBfGgZgsGK1au8HePPETehxbSZpBSjSmc4x
         +ry7LaLGcoDltw78VZvus9sJQr+Zj62fhAHlMDs+dSbJtDnQn2iLYaQ7RIViMaBvzvdZ
         qFEQ==
X-Gm-Message-State: AOJu0Yz8ue10ufsFEnrwC1iFUXh4CsYlroT1KtRCJYJwZwxawkMoaNEm
	FU3U0MhZ8oOgLtT9W0a89BA=
X-Google-Smtp-Source: AGHT+IEQhqAdu9sZQ70y0DS8nngdK+Mk0pkfbWS4qneo1KxLRSZ3qBsiVtqIu4sC8i/YErZyL1rzjQ==
X-Received: by 2002:a17:906:3147:b0:993:eee4:e704 with SMTP id e7-20020a170906314700b00993eee4e704mr4288238eje.38.1695230139300;
        Wed, 20 Sep 2023 10:15:39 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id lx12-20020a170906af0c00b00988f168811bsm9649634ejb.135.2023.09.20.10.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 10:15:38 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RFC v2 07/37] drm/connector: hdmi: Add HDMI compute clock helper
Date: Wed, 20 Sep 2023 19:15:37 +0200
Message-ID: <1967070.usQuhbGJ8B@jernej-laptop>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-7-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
 <20230920-kms-hdmi-connector-state-v2-7-17932daddd7d@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_101543_449344_126853CF 
X-CRM114-Status: GOOD (  19.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maxime!

Dne sreda, 20. september 2023 ob 16:35:22 CEST je Maxime Ripard napisal(a):
> A lot of HDMI drivers have some variation of the formula to calculate
> the TMDS character rate from a mode, but few of them actually take all
> parameters into account.
> 
> Let's create a helper to provide that rate taking all parameters into
> account.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_connector.c | 31 +++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h     |  5 +++++
>  2 files changed, 36 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index b01cb4783ea6..4c1af97971bb 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -2944,6 +2944,37 @@ void drm_connector_update_privacy_screen(const struct drm_connector_state *conne
>  }
>  EXPORT_SYMBOL(drm_connector_update_privacy_screen);
>  
> +/**
> + * drm_connector_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
> + * @mode: Display mode to compute the clock for
> + * @bpc: Bits per character
> + * @fmt: Output Pixel Format used
> + *
> + * Returns the TMDS Character Rate for a given mode, bpc count and output format.
> + *
> + * RETURNS:
> + * The TMDS Character Rate, in Hertz
> + */
> +unsigned long long
> +drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +				      unsigned int bpc,
> +				      enum hdmi_colorspace fmt)
> +{
> +	unsigned long long clock = mode->clock * 1000ULL;
> +
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		clock = clock * 2;
> +
> +	if (fmt == HDMI_COLORSPACE_YUV422)
> +		bpc = 8;

I think you're missing YUV420 handling, which needs half of clock speed. But
this is a thing of HDMI2.

Best regards,
Jernej

> +
> +	clock = clock * bpc;
> +	do_div(clock, 8);
> +
> +	return clock;
> +}
> +EXPORT_SYMBOL(drm_connector_hdmi_compute_mode_clock);
> +
>  int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>  				    struct drm_property *property,
>  				    uint64_t value)
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index a66cb4e35d7b..d74e9c64ee88 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -38,6 +38,7 @@ struct drm_connector_helper_funcs;
>  struct drm_modeset_acquire_ctx;
>  struct drm_device;
>  struct drm_crtc;
> +struct drm_display_mode;
>  struct drm_encoder;
>  struct drm_panel;
>  struct drm_property;
> @@ -2115,6 +2116,10 @@ void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
>  void drm_connector_attach_privacy_screen_provider(
>  	struct drm_connector *connector, struct drm_privacy_screen *priv);
>  void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
> +unsigned long long
> +drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +				      unsigned int bpc,
> +				      enum hdmi_colorspace fmt);
>  
>  /**
>   * struct drm_tile_group - Tile group metadata
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
