Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3604FA372C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DJb7Misl73X5nCL3+A1Cd75XIFzIU1+mpOpsOsB5T+Q=; b=s52sAoSXdqHc78qM6FsatI95lj
	oukIuxalyGb9LjRHEhmdEZYqn+i62qne4dpSkexvgFa8R69CRn8WbTyylTZDVBRb8htcp1OBjpv7N
	GFskPlbS99THw0uWEqkuiuqDGkhFw2r7o6SUFLokMBkMDa2HMEDwqMLD954/XVPshFjKz4RH1wWmC
	5qNI9zdYq9sE8Q0vFZOwO4R7u5J8IRsngWYt1osfQlSI2VNwHVP3APbxUbEnLHG8nib0S39Kn+ot7
	ruA+jfeH41dpTsiAKCRDRmuQp0+eCahUaQKUqUrCFLqfLKEwp3UoN54RGxzt8PiVBKKWU18FclGoj
	XIokEIsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Ml-0000000FIMa-0aOd;
	Fri, 13 Sep 2024 08:09:19 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1KG-0000000FHn7-3V32
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 08:06:46 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-374c1e5fe79so1360967f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 01:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726214803; x=1726819603; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TqZBhFB8cimpwzbXgNKnIbtzzD95dG7Ue+nxOw3CDQA=;
        b=zdhRJ99y4NBkKn44lh1AOa2ZQl/HqgDLyplfiq6ivoFTzUf4DlUXVsm0muBlZaE7I9
         2IxoESqhVKG9DxxzwV3cwWL66cBJvqQBYXiIeeJg9nPxNBZY8zxpfLyaewYUbBZx5L2G
         UVk6rEwsgpzbpUF8vkViO7oKomx9LtF7OnIoX9OQE48fEuJDX6KdTi6RvCmfvtlUfhZD
         v+WZ/lSGkfFw/mmpsPHhoJGIyEE4RA2wDR+jPBdZSDARoMyK4W/Tco3u/KuiN8v3dLGU
         kimYJcX3INlaxDqYFu3ikUPgRyMqLqZ++op1MOt5f+luKwgORPXPB2hj7O1aqxQqiH56
         jlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726214803; x=1726819603;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TqZBhFB8cimpwzbXgNKnIbtzzD95dG7Ue+nxOw3CDQA=;
        b=rjVNR2UZNg7y18HXVKMCVzO3bW29c4IoXbuv5bXk5pOZppPSRKJS5lkbuFwOpr3PX7
         Pdh2SlXP/IZJLiEzoAYkagfU5HYVxDnbXn8pq7l8m4rHxnG0my+DAcBsYnWXk8M+3wh2
         pCnqstsFPBkOrS9mxrdynvg8jh9miJwNEHoF9JPLhKQSuRhX84kr+gbKoU6Y4hEx/GJi
         UZCgPQuQyHHgUyMHdraDjRfy2KoqmqibFyPo3P/E2ngW8l7LEMgEWykNSdZ/p5T4ZfQb
         /DetycxlDvdP5ZgVC6YLeaa+yxprTUc6xXbypYQtgoHvTocPwwNcYBy8arvSob4ETNP/
         oEqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo0h0y4xUd9CgBDgrbnjP1oPFh05Or46PMkHaaJWc0TjmUrVxx/YTkE9eka1WkO0gXmIdRRDn0snsz93xGBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1WVUI1IboiS+/rbdfyAMtcHHdgrYHrCC8Yik5NjElHJxzn1wY
	G/vMga0W6/whnhta6gH/zro+Wo3B1RtOYXaNDhbn2I2/2yi55J9IQbxlNW7euqU=
X-Google-Smtp-Source: AGHT+IHvWtfMha2KoMqPuP5/ukwrpi/HAR3rzVEdnlOieo8WnEC/635MZTdG6ngo/RnXP69csoG+mw==
X-Received: by 2002:a5d:4e42:0:b0:374:bb2b:e7c4 with SMTP id ffacd0b85a97d-378c2d62438mr3242559f8f.57.1726214802860;
        Fri, 13 Sep 2024 01:06:42 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42d9b16bfb4sm15121095e9.28.2024.09.13.01.06.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 01:06:42 -0700 (PDT)
Message-ID: <ff114d4e-11f6-4fe7-9963-a30874f4df17@linaro.org>
Date: Fri, 13 Sep 2024 10:06:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 05/10] drm: bridge: dw_hdmi: Fold poweron and setup
 functions
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-6-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-6-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_010644_911200_B851C701 
X-CRM114-Status: GOOD (  16.98  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 08/09/2024 15:28, Jonas Karlman wrote:
> Fold the poweron and setup functions into one function and use the
> adjusted_mode directly from the new crtc_state to remove the need of
> storing previous_mode.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: No change
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 21 ++++++++-------------
>   1 file changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 87fb6fd5cffd..1eefa633ff78 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2236,9 +2236,9 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
>   		    HDMI_IH_MUTE_FC_STAT2);
>   }
>   
> -static int dw_hdmi_setup(struct dw_hdmi *hdmi,
> -			 const struct drm_connector *connector,
> -			 const struct drm_display_mode *mode)
> +static int dw_hdmi_poweron(struct dw_hdmi *hdmi,
> +			   const struct drm_connector *connector,
> +			   const struct drm_display_mode *mode)
>   {
>   	const struct drm_display_info *display = &connector->display_info;
>   	int ret;
> @@ -2378,15 +2378,6 @@ static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
>   	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
>   }
>   
> -static void dw_hdmi_poweron(struct dw_hdmi *hdmi)
> -{
> -	/*
> -	 * The curr_conn field is guaranteed to be valid here, as this function
> -	 * is only be called when !hdmi->disabled.
> -	 */
> -	dw_hdmi_setup(hdmi, hdmi->curr_conn, &hdmi->previous_mode);
> -}
> -
>   static void dw_hdmi_poweroff(struct dw_hdmi *hdmi)
>   {
>   	if (hdmi->phy.enabled) {
> @@ -2936,15 +2927,19 @@ static void dw_hdmi_bridge_atomic_enable(struct drm_bridge *bridge,
>   {
>   	struct dw_hdmi *hdmi = bridge->driver_private;
>   	struct drm_atomic_state *state = old_state->base.state;
> +	const struct drm_display_mode *mode;
>   	struct drm_connector *connector;
> +	struct drm_crtc *crtc;
>   
>   	connector = drm_atomic_get_new_connector_for_encoder(state,
>   							     bridge->encoder);
> +	crtc = drm_atomic_get_new_connector_state(state, connector)->crtc;
> +	mode = &drm_atomic_get_new_crtc_state(state, crtc)->adjusted_mode;
>   
>   	mutex_lock(&hdmi->mutex);
>   	hdmi->disabled = false;
>   	hdmi->curr_conn = connector;
> -	dw_hdmi_poweron(hdmi);
> +	dw_hdmi_poweron(hdmi, connector, mode);
>   	dw_hdmi_update_phy_mask(hdmi);
>   	handle_plugged_change(hdmi, true);
>   	mutex_unlock(&hdmi->mutex);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
