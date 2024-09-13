Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF9DFA372B
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 08:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AGxNrAv4D3BIzxY+HjEHziYbpCgMmjvLf8beBAzThBw=; b=ChUoZoVG3L7I0wi4MwgpqG+CE1
	xR4ol/SaZ5dVkmzTpvpLcZbV2425Zhc5Vh0aTkf5CUn7uPFB82cw2hgwOsj7YTzghXwb/A4krTxeK
	wAaSQ/UY74g72QMGqQWt5VkgmATu6NxjxOW0xhsKXnxE+zMV+8t1lAbGt5oZR4gO+QV/Lf7moUTgL
	z3VLvFYHGryfCqZ0JHxzZDInfi/Ji3GSWbI5FGAiSQE0Wsr8yT206jcC+pIyJTOKpVYTlUIXKOGOr
	Kkw+ZYOB9I1kdeNSnb3ZkUSXwK5lr9zZskuBgo4PXVDF5AAvVwW7a/iMADsWwRHK0gaHc7l8lPZHZ
	K6kSWP0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Mk-0000000FIMI-3E4h;
	Fri, 13 Sep 2024 08:09:18 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1JT-0000000FHav-3cw8
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 08:05:57 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-374c1120a32so1286569f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 01:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726214754; x=1726819554; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YpaBa3rXzcmPvmVGwgNwO7QYicep+zX2dSIy24NgTYE=;
        b=U/+3mVrgQ+vEq2iDonJDNMDZ1Io+RY3fqPfOZaIH4/1Q8o2gcsT/tzlSpQH5PJ4eqD
         0vTxG4h5nEETK6YdBAPD7w0RonrNtNCYBiP7YsvR8JQ6syCPFaYYQlr2d60YmIPuc4Al
         PkR0ArWmTgZG+H80dVWwjMzebo1ylJLbzf3RieQp2xa85+kzV7RQAIJ9U51wFeKGR513
         7Z8naUK6FjtBwxP3nUT/0vk4c+IBX/QBCeVyxuYs42WidkMvLeCaf+R2/FRnh/A307Fw
         FlHpnyiKO6aCOL+nb2xQY4Jwn2nILNDbuanZhVHyWDZZASYNth7io6SSTabm7jeJg+w5
         ue5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726214754; x=1726819554;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YpaBa3rXzcmPvmVGwgNwO7QYicep+zX2dSIy24NgTYE=;
        b=CrHGyUExv252FdRFWOil3EAV0LhpdC9RymbiI94Lg1Jo2FVAVsD53FzTjcXSOHeemP
         rxX/Dhi7D7ftbtySeyroMH8uBN5in1zt26dVa386uLtDv1BF7hNbt1vuLxUaQXb8kww2
         VppDNxjuVnWM3fU6luJlvuEr9mjhTauMRW9d+5/u8hHEDM4B9vzWnyG/DCiJ14Te3XX+
         p1XmmREshohr2pBXiQxAZAd5GDo4QC0BDmcsehi3WBJneyVj9uFTjD4TjopBOgeglXlh
         ZDWX2lF7tGTdmyOJjog78iGAJqzVqOWOJ2BzuNPJGVLv7Ln2jw83DB2ii2i14pUeVDgR
         /4rg==
X-Forwarded-Encrypted: i=1; AJvYcCUVX3GgidqafrzUmQujLQHYBRAAVh0jROMTiCwaKlKdLPWUfZ1ZmiXOKCSUU6eD5RLyHZlpcY0uOJP0mu7sDw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7cC8uf0qT86NHx1b4L6SfEPk7UmU27wy3JKWJu67JdC5yDhnq
	xpi+rWhYCUl+EIAOmVPDb7Z/Fauq5IrcsKpac8UMcSUHfORgZHbJBlPJi/IJUrg=
X-Google-Smtp-Source: AGHT+IFL22svDjzCRrUXs2QqC+xPgNTUGDJOJrl+aZeS9c8hKYkQUJ+F4J7YvEpATOxHxMm5RmaV9w==
X-Received: by 2002:adf:efca:0:b0:371:9362:c286 with SMTP id ffacd0b85a97d-378c2cd3ee8mr3375083f8f.4.1726214753750;
        Fri, 13 Sep 2024 01:05:53 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3789564a1a0sm16047177f8f.23.2024.09.13.01.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 01:05:53 -0700 (PDT)
Message-ID: <8a7da0a7-1234-4343-8538-9f7230024ca7@linaro.org>
Date: Fri, 13 Sep 2024 10:05:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 03/10] drm: bridge: dw_hdmi: Call poweron/poweroff from
 atomic enable/disable
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
 <20240908132823.3308029-4-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_010555_944091_62C53C6D 
X-CRM114-Status: GOOD (  20.08  )
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
> Change to only call poweron/poweroff from atomic_enable/atomic_disable
> ops instead of trying to be clever by keeping a bridge_is_on state and
> poweron/off in the hotplug irq handler.
> 
> The bridge is already enabled/disabled depending on connection state
> with the call to drm_helper_hpd_irq_event() in hotplug irq handler.
> 
> A benefit of this is that drm mode_config mutex is always held at
> poweron/off, something that may reduce the need for our own mutex.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: Update commit message
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 33 ++---------------------
>   1 file changed, 2 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 055fc9848df4..5b67640b1d0a 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -169,7 +169,6 @@ struct dw_hdmi {
>   	enum drm_connector_force force;	/* mutex-protected force state */
>   	struct drm_connector *curr_conn;/* current connector (only valid when !disabled) */
>   	bool disabled;			/* DRM has disabled our bridge */
> -	bool bridge_is_on;		/* indicates the bridge is on */
>   	bool rxsense;			/* rxsense state */
>   	u8 phy_mask;			/* desired phy int mask settings */
>   	u8 mc_clkdis;			/* clock disable register */
> @@ -2382,8 +2381,6 @@ static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
>   
>   static void dw_hdmi_poweron(struct dw_hdmi *hdmi)
>   {
> -	hdmi->bridge_is_on = true;
> -
>   	/*
>   	 * The curr_conn field is guaranteed to be valid here, as this function
>   	 * is only be called when !hdmi->disabled.
> @@ -2397,30 +2394,6 @@ static void dw_hdmi_poweroff(struct dw_hdmi *hdmi)
>   		hdmi->phy.ops->disable(hdmi, hdmi->phy.data);
>   		hdmi->phy.enabled = false;
>   	}
> -
> -	hdmi->bridge_is_on = false;
> -}
> -
> -static void dw_hdmi_update_power(struct dw_hdmi *hdmi)
> -{
> -	int force = hdmi->force;
> -
> -	if (hdmi->disabled) {
> -		force = DRM_FORCE_OFF;
> -	} else if (force == DRM_FORCE_UNSPECIFIED) {
> -		if (hdmi->rxsense)
> -			force = DRM_FORCE_ON;
> -		else
> -			force = DRM_FORCE_OFF;
> -	}
> -
> -	if (force == DRM_FORCE_OFF) {
> -		if (hdmi->bridge_is_on)
> -			dw_hdmi_poweroff(hdmi);
> -	} else {
> -		if (!hdmi->bridge_is_on)
> -			dw_hdmi_poweron(hdmi);
> -	}
>   }
>   
>   /*
> @@ -2545,7 +2518,6 @@ static void dw_hdmi_connector_force(struct drm_connector *connector)
>   
>   	mutex_lock(&hdmi->mutex);
>   	hdmi->force = connector->force;
> -	dw_hdmi_update_power(hdmi);
>   	dw_hdmi_update_phy_mask(hdmi);
>   	mutex_unlock(&hdmi->mutex);
>   }
> @@ -2954,7 +2926,7 @@ static void dw_hdmi_bridge_atomic_disable(struct drm_bridge *bridge,
>   	mutex_lock(&hdmi->mutex);
>   	hdmi->disabled = true;
>   	hdmi->curr_conn = NULL;
> -	dw_hdmi_update_power(hdmi);
> +	dw_hdmi_poweroff(hdmi);
>   	dw_hdmi_update_phy_mask(hdmi);
>   	handle_plugged_change(hdmi, false);
>   	mutex_unlock(&hdmi->mutex);
> @@ -2973,7 +2945,7 @@ static void dw_hdmi_bridge_atomic_enable(struct drm_bridge *bridge,
>   	mutex_lock(&hdmi->mutex);
>   	hdmi->disabled = false;
>   	hdmi->curr_conn = connector;
> -	dw_hdmi_update_power(hdmi);
> +	dw_hdmi_poweron(hdmi);
>   	dw_hdmi_update_phy_mask(hdmi);
>   	handle_plugged_change(hdmi, true);
>   	mutex_unlock(&hdmi->mutex);
> @@ -3072,7 +3044,6 @@ void dw_hdmi_setup_rx_sense(struct dw_hdmi *hdmi, bool hpd, bool rx_sense)
>   		if (hpd)
>   			hdmi->rxsense = true;
>   
> -		dw_hdmi_update_power(hdmi);
>   		dw_hdmi_update_phy_mask(hdmi);
>   	}
>   	mutex_unlock(&hdmi->mutex);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
