Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 050E8C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+T0LeNQeNH4PY8BurP2T0a4+Y6VrRN8y6OuVNE7aVUg=; b=BGGsldMFUEMcpV
	dD2WkInpxVtQsYydVLdBidj9nniH0WoYlPB/hjoYsinv4WY2X7+wQMQN7aBqCLwBwzFNgtzDmiKQc
	ROBK4NNHrqvhKJK706GoBRbNDntuaLqg4RhhL2ROY1vFmC21lPzL1vNiMhY067iOgfBjF7oNXsvT0
	lVpK+L0gceZQnd8a8uwdn0XcW1cIi379J7jVTVUSYbAa68BHH2XyzlwYyV4bXDGqyCWkTsZe6bVbc
	+QFvAVGUCu4g91pInReslaGtriIOmXhJtMzPuAPBgRzRILc6G8g6/vpKkIHOSKvihFqywzjjebHVD
	LFHdEjf0IXUlazo9WfaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4tV-00000005ihF-2346;
	Thu, 23 May 2024 09:37:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4tQ-00000005idV-1L2U
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:37:50 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2e1fa824504so72408411fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716457066; x=1717061866; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SbtplpmpPo1tIVSyyQuZaq4Je2fwXqMCocDbrqYpVcE=;
        b=Mp+QYBMF9G3bM6wBVJhKgLMkfMtVViIJp0YlnCI6xMT1H8fcL6sn8bdd6g9Z74E9jK
         8pD65umtEM15VY4JYlNq3nkO9TpWVC2P+llYXFfN0zRsSaJe/lgP3sz5/KsomWo6R5DJ
         y3NspHhgZCIX8/+7/B6OK7C38ct6tJxOwRMpacNLGz2bu96byVg3Wv0jic41dtsks5VJ
         Fnc/6rJJQVYkr6Jvb8MTAvepNWnLys9GnTUmcMWW9OOPFK3FfGQzF8tT0GG3Eb8b4A9O
         mncw/0PIAXMutOLwSfa1DXrufA8PJoxa9HG7PWseWakfjrV/bpPK/t0NE7Aa8gBSxB0o
         6buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716457066; x=1717061866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SbtplpmpPo1tIVSyyQuZaq4Je2fwXqMCocDbrqYpVcE=;
        b=rrpvNtPGdaDYSBpYQDqYZUHNeA/X+twJbItj9Pq2e+xoivd9uqJuyu1iFEl00RGjM9
         647H1bABTPrlw5b64KYbOLgHIEIw+4KQr3QbI8ZkNnbB6vYDX58TNof0CrbSyLDwy3xG
         9b7rGVVrKRtTSpneRj6QOdfGER8f2BnLXNdE+59fUgOJwftyHTdrM2hNS9kNQwzqBF7S
         99P4Q/mR9q/nEc/u6BlOZv6uDFb50j+PMqmd6LfLFuHfdcgw0xFsmLs080geApV/gHSm
         oPwCxfM23aKk5M+1Bmfc+gfoNL/xNiKAXVptwSUKfWDye+d+joAx4fSJvrSzCr6u7XVA
         kW3Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4l53nfvRydEl/lcjIpraIr6ZdnDp4V18BwzPAypUnCwEB8aHhMeF2RlMwKjERu3JsPjdswM6bQsVCqyGR3RlYgEf3Csd3LW/0fegUDPItGWlz
X-Gm-Message-State: AOJu0YxDHsdgs5fbO8+OLmTGsVAN/u8gLWEtSBc6Slp6/yC6KGhtyIoZ
	U0RrKTESXi0oNr06L510MeWovuYXbyQhLDGjTnTYZCiu1gTW52tPPUIRtZxSJ/w=
X-Google-Smtp-Source: AGHT+IHqJtv15hUgyIuf/PqlwYbirx+pXbxomvRBOWOOi94YU/Q64qb1oAcP8REV+yec+knrG9zq/Q==
X-Received: by 2002:a2e:9dc8:0:b0:2e1:18d:5b4f with SMTP id 38308e7fff4ca-2e949540b40mr26515691fa.42.1716457065632;
        Thu, 23 May 2024 02:37:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d0bbcba8sm42053591fa.2.2024.05.23.02.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:37:45 -0700 (PDT)
Date: Thu, 23 May 2024 12:37:43 +0300
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
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v14 09/28] drm/display: hdmi: Add HDMI compute clock
 helper
Message-ID: <vjsv2fn4wdlzkcu6bkssbzv26hjihzrjvzzoynyabuju7sigo6@gnmyc4nqfk22>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-9-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-9-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_023748_639874_E4CE02DA 
X-CRM114-Status: GOOD (  25.85  )
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

On Tue, May 21, 2024 at 12:13:42PM +0200, Maxime Ripard wrote:
> A lot of HDMI drivers have some variation of the formula to calculate
> the TMDS character rate from a mode, but few of them actually take all
> parameters into account.
> 
> Let's create a helper to provide that rate taking all parameters into
> account.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_helper.c | 57 +++++++++++++++++++++++++++++++
>  include/drm/display/drm_hdmi_helper.h     |  4 +++
>  2 files changed, 61 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_hdmi_helper.c b/drivers/gpu/drm/display/drm_hdmi_helper.c
> index faf5e9efa7d3..679eb3e81393 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_helper.c
> @@ -193,5 +193,62 @@ void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *frame,
>  	}
>  
>  	frame->itc = conn_state->content_type != DRM_MODE_CONTENT_TYPE_NO_DATA;
>  }
>  EXPORT_SYMBOL(drm_hdmi_avi_infoframe_content_type);
> +
> +/**
> + * drm_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
> + * @mode: Display mode to compute the clock for
> + * @bpc: Bits per character
> + * @fmt: Output Pixel Format used
> + *
> + * Returns the TMDS Character Rate for a given mode, bpc count and output format.
> + *
> + * RETURNS:
> + * The TMDS Character Rate, in Hertz, or 0 on error.
> + */
> +unsigned long long
> +drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +			    unsigned int bpc, enum hdmi_colorspace fmt)
> +{
> +	unsigned long long clock = mode->clock * 1000ULL;
> +	unsigned int vic = drm_match_cea_mode(mode);
> +
> +	/*
> +	 * CTA-861-G Spec, section 5.4 - Color Coding and Quantization
> +	 * mandates that VIC 1 always uses 8 bpc.
> +	 */
> +	if (vic == 1 && bpc != 8)
> +		return 0;
> +
> +	if (fmt == HDMI_COLORSPACE_YUV422) {
> +		/*
> +		 * HDMI 1.4b Spec, section 6.2.3 - Pixel Encoding Requirements

This is probably 6.2.4, but it doesn't specify that it is 36-bit _only_.

> +		 * specifies that YUV422 is 36-bit only.
> +		 */
> +		if (bpc != 12)
> +			return 0;

6.5.1 allows using less than 12 bits (If fewer than 12 bits are
used...). So I think it would be more correct to allow less than 12 bpc,
but we'd still have to use 8 for the matter of the calculating the
clock.

> +
> +		/*
> +		 * HDMI 1.0 Spec, section 6.5 - Pixel Encoding
> +		 * specifies that YUV422 requires two 12-bits components per
> +		 * pixel clock, which is equivalent in our calculation to three
> +		 * 8-bits components
> +		 */
> +		bpc = 8;
> +	}
> +
> +	/*
> +	 * HDMI 2.0 Spec, Section 7.1 - YCbCr 4:2:0 Pixel Encoding
> +	 * specifies that YUV420 encoding is carried at a TMDS Character Rate
> +	 * equal to half the pixel clock rate.
> +	 */
> +	if (fmt == HDMI_COLORSPACE_YUV420)
> +		clock = clock / 2;
> +
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		clock = clock * 2;
> +
> +	return DIV_ROUND_CLOSEST_ULL(clock * bpc, 8);
> +}
> +EXPORT_SYMBOL(drm_hdmi_compute_mode_clock);
> diff --git a/include/drm/display/drm_hdmi_helper.h b/include/drm/display/drm_hdmi_helper.h
> index 76d234826e22..57e3b18c15ec 100644
> --- a/include/drm/display/drm_hdmi_helper.h
> +++ b/include/drm/display/drm_hdmi_helper.h
> @@ -22,6 +22,10 @@ drm_hdmi_infoframe_set_hdr_metadata(struct hdmi_drm_infoframe *frame,
>  				    const struct drm_connector_state *conn_state);
>  
>  void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *frame,
>  					 const struct drm_connector_state *conn_state);
>  
> +unsigned long long
> +drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +			    unsigned int bpc, enum hdmi_colorspace fmt);
> +
>  #endif
> 
> -- 
> 2.45.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
