Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9798FF885A
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 21:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/BXb/2+AfZfMWKNz/mhYKY0dQrxTWH9H1DTJ2+Ta840=; b=lkbqcPkhQNRPGWaQ7y5B1vygGF
	z1BAUTkdovA/4Wn99TijqzUfU+AMBhiY3VZsQfMpGp6a6Tx/Q9mcIIBaP/emHVXK4delVDXcZsS3I
	WYSaHUTtRLQ5Xk6oJMy2ilnsByjQNuJwNy7T9/VAX//e2Yf23sCXSUDUPmFd7fbvv80CNHhquEvMc
	gWHXxvPPoVQ6IiaWHU2b5rqIFGn97y1OozXDD2uVRF/PSG0sY7USFjAFfgRyouCfxf6Kp2ix/dWO5
	7/3+FMd9PJRkfCZkK1UZ+8Ca7d+bI/eMhGRY0axy1rChXFit9eW3bm8VrpNMNMGMpNNTBJG6V5KNJ
	g3INDZLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK0js-0000000ENQm-08jg;
	Mon, 04 May 2026 21:22:04 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK0jo-0000000ENOb-1h60
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 21:22:01 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-48d146705b4so2819355e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 May 2026 14:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1777929718; x=1778534518; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nv307eZOcQfpf3d08YRaeg3RgbkORKK7jsD1l1EktYs=;
        b=U8B4UhKizbHXmNKINOb7GI2y1uNdL41oQC6QwJCxoXd57XZizlgRJ5d8925PGT9Ft6
         xh+Ry6B/sKN6FUUu04pkqxwrKoWMiYrVwQGGt1BrjTaGoCIV8QD9q9WdHhaJmy2fKDJR
         oDMfphWqMd0K/KhrSQgTF1vpXbgc1awbuIpG+3YT12iraNGOf3I6HvylWM1Vl37B9gPr
         QXpNYLp6ISPz+HUuAdBROfjd0cbkp5ZwW+eSVwHoGNW76v4DMMoYhHefH/t3yJ9JYomv
         Z7lm8hrbbOTPgO5rY9JruQ8kTsTiyII4AcIyrZRmvgWrEKaiGkDnERSYPfrrAjNeH0vx
         CcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777929718; x=1778534518;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nv307eZOcQfpf3d08YRaeg3RgbkORKK7jsD1l1EktYs=;
        b=Lovvp4S6Tlvdscdf2ucGkZiFRrhTlu6b8JFrOrFNnmvVkggUvDeaEia2XEY8NXCBVf
         acZnTL2Hk+7bls2nlhkzhBVi5pz2o+LyHsLVqJ8u6FEFgIeqgZvhq4a8TMcINO/GXYLw
         S1g4ierprCBkDdt80KIU9l9z9zWTOBPvnYFg3bR/Kwe0fkttyClxbnsMxtcHaOJZTuQD
         gZxU5nRU9g3BCMbzcYMlaazHMj6YAI7VjC8Wg7sSogygqwzxbYXR3XjgvIEky/A5uRbR
         eKNhpQi6FLPUkWShBRJxg4tFCoPIZdJyF6xtoBfizygwHYXLC/GxU1OWygM+40MBy5SO
         n9sg==
X-Forwarded-Encrypted: i=1; AFNElJ/vii9a849q2pxm+0rWesg5w71em8kZAmqYybwtSnIsNvQ96qbmBuQfJnveiRNaDOxyTpNfB3RHD5gkeSeSag==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxktby/UhC8Zq4crVDFyYPzawCyhYVUIcTvQMrcd0DLbBYEHVmz
	1DjGsqi61cLcbtU90ZjHqwvv+DnOF5iQJyg9t9+gRI6xCu94HFLR0XsyOUloumE4GY0=
X-Gm-Gg: AeBDievIvZFoKPmJuTPlHxoIh97ePMg0wSYaKOrbL/yTzuzMWTr2U7zI9fA2YdZjWDk
	5AQaDYq45MoOyE+n+A/68eoSdG6u4RaV4prxlEQHBis0pKXLUk4Am5RJdj65vj6MmsiaQgz1FFL
	KP/67gy6z1QKyPixXhEsVQZQE89vD+PmudG1B1RXw54wBJQYFiFNWv3cvGP0tAhUB+zgvwVRAf3
	1Dm2j303z+22P9f/TWYPdCX//w0mE7octvgW7gecIUYZRmg/ijERWCHfZ9WYv00CUowN9KNBHle
	V5sJa4kRGprtFMYRdBaA2cYgdXuQStCV4y48J1Q64veU2K8R9DakM8yNVDH1lbQ7JWe6KjgUy8e
	7GPj67BKCdsGQ8N6jVIRVfvEttXm4d2DtQzEouAHWLAdX41CuTjPs6+vaRNNEOTe3tuw0Pj4bZo
	MpLdGgqg00jKNwMel1KanzKq4k5+Lfcf/UILuLedN8VN2z06DrtoOD0b2CH167r7lovSOM8Kojc
	TzW7JlVQ5oeXMxaYQ==
X-Received: by 2002:a05:600c:c16a:b0:489:1cda:bbb7 with SMTP id 5b1f17b1804b1-48d18ceb33dmr2855065e9.25.1777929717835;
        Mon, 04 May 2026 14:21:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:4086:6e90:21c8:1555? ([2a01:e0a:106d:1080:4086:6e90:21c8:1555])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48d149de41asm5820225e9.2.2026.05.04.14.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2026 14:21:57 -0700 (PDT)
Message-ID: <80fb7a31-3a85-48d5-a971-4e7632778f0c@linaro.org>
Date: Mon, 4 May 2026 23:21:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 12/17] drm: bridge: dw_hdmi: Use generic CEC notifier
 helpers
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Liu Ying <victor.liu@nxp.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@kernel.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20260504191059.275928-1-jonas@kwiboo.se>
 <20260504191059.275928-13-jonas@kwiboo.se>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260504191059.275928-13-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_142200_533387_0F42BF21 
X-CRM114-Status: GOOD (  20.16  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/4/26 21:10, Jonas Karlman wrote:
> The commit 8b1a8f8b2002 ("drm/display: add CEC helpers code") added
> generic CEC helpers to be used by HDMI drivers.
> 
> Replace the open-coded CEC notifier handling with use of the generic CEC
> notifier helpers. Ensure DRM_DISPLAY_HDMI_CEC_NOTIFIER_HELPER is also
> selected when DRM_DW_HDMI_CEC is enabled so that the CEC helpers is
> available.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v4: New patch
> ---
>   drivers/gpu/drm/bridge/synopsys/Kconfig   |  1 +
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 32 ++++-------------------
>   2 files changed, 6 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
> index a46df7583bcf..e6723af03b43 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Kconfig
> +++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
> @@ -49,6 +49,7 @@ config DRM_DW_HDMI_CEC
>   	depends on DRM_DW_HDMI
>   	select CEC_CORE
>   	select CEC_NOTIFIER
> +	select DRM_DISPLAY_HDMI_CEC_NOTIFIER_HELPER
>   	help
>   	  Support the CE interface which is part of the Synopsys
>   	  Designware HDMI block.
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 4c712aa07a89..0aa29b92327e 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -23,12 +23,11 @@
>   #include <linux/dma-mapping.h>
>   #include <linux/spinlock.h>
>   
> -#include <media/cec-notifier.h>
> -
>   #include <linux/media-bus-format.h>
>   #include <linux/videodev2.h>
>   
>   #include <drm/bridge/dw_hdmi.h>
> +#include <drm/display/drm_hdmi_cec_helper.h>
>   #include <drm/display/drm_hdmi_helper.h>
>   #include <drm/display/drm_scdc_helper.h>
>   #include <drm/drm_atomic.h>
> @@ -183,8 +182,6 @@ struct dw_hdmi {
>   	void (*enable_audio)(struct dw_hdmi *hdmi);
>   	void (*disable_audio)(struct dw_hdmi *hdmi);
>   
> -	struct cec_notifier *cec_notifier;
> -
>   	hdmi_codec_plugged_cb plugged_cb;
>   	struct device *codec_dev;
>   	enum drm_connector_status last_connector_result;
> @@ -2453,7 +2450,7 @@ dw_hdmi_connector_status_update(struct drm_connector *connector,
>   
>   	if (status == connector_status_disconnected) {
>   		drm_edid_connector_update(connector, NULL);
> -		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
> +		drm_connector_cec_phys_addr_invalidate(connector);
>   		return;
>   	}
>   
> @@ -2462,8 +2459,7 @@ dw_hdmi_connector_status_update(struct drm_connector *connector,
>   	drm_edid_free(drm_edid);
>   
>   	if (status == connector_status_connected)
> -		cec_notifier_set_phys_addr(hdmi->cec_notifier,
> -				connector->display_info.source_physical_address);
> +		drm_connector_cec_phys_addr_set(connector);
>   }
>   
>   static enum drm_connector_status
> @@ -2539,8 +2535,6 @@ static const struct drm_connector_helper_funcs dw_hdmi_connector_helper_funcs =
>   static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
>   {
>   	struct drm_connector *connector = &hdmi->connector;
> -	struct cec_connector_info conn_info;
> -	struct cec_notifier *notifier;
>   
>   	if (hdmi->version >= 0x200a)
>   		connector->ycbcr_420_allowed =
> @@ -2571,15 +2565,8 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
>   
>   	drm_connector_attach_encoder(connector, hdmi->bridge.encoder);
>   
> -	cec_fill_conn_info_from_drm(&conn_info, connector);
> -
> -	notifier = cec_notifier_conn_register(hdmi->dev, NULL, &conn_info);
> -	if (!notifier)
> -		return -ENOMEM;
> -
> -	hdmi->cec_notifier = notifier;
> -
> -	return 0;
> +	return drmm_connector_hdmi_cec_notifier_register(connector, NULL,
> +							 hdmi->dev);
>   }
>   
>   /* -----------------------------------------------------------------------------
> @@ -2887,14 +2874,6 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
>   	return dw_hdmi_connector_create(hdmi);
>   }
>   
> -static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
> -{
> -	struct dw_hdmi *hdmi = bridge->driver_private;
> -
> -	cec_notifier_conn_unregister(hdmi->cec_notifier);
> -	hdmi->cec_notifier = NULL;
> -}
> -
>   static enum drm_mode_status
>   dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
>   			  const struct drm_display_info *info,
> @@ -2972,7 +2951,6 @@ static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
>   	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
>   	.atomic_reset = drm_atomic_helper_bridge_reset,
>   	.attach = dw_hdmi_bridge_attach,
> -	.detach = dw_hdmi_bridge_detach,
>   	.atomic_check = dw_hdmi_bridge_atomic_check,
>   	.atomic_get_output_bus_fmts = dw_hdmi_bridge_atomic_get_output_bus_fmts,
>   	.atomic_get_input_bus_fmts = dw_hdmi_bridge_atomic_get_input_bus_fmts,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
