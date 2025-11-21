Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68635CFC28A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Nov 2025 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=souSJZswmG1XaJn+Xwu3GnBFVH6dsrN1XLwFpyeOqJ8=; b=BwBxJe4fsxd/iM+JW+DgQjq/jz
	tNz95mOxwERcxihu6mYFb6IrcxkrcLMOk1Yg8Hv2TiH4ScnbNR9/4/2zvcWjXu2tXlD2g/P3Qljom
	7D651EzeTLGMNxW8IQ/2zjC3l6GVMv+NLFbDlnGzhP3F5UgmYSibbIhQJrD+wEFMAxeTo5exUWfLg
	G0MW+GBULwfT78+Ydrkh4PFO57h7WfRN2OB3RcblXWHJfMshdVPVppiqgmIE00+IX/VVA3DFsnQj3
	KD3KiThvRcqj3h+O4SbY3yYJjif+8BtDbRBUTuGDgeoN06JSb60OdfQg1ZwtbTDV4sen9pRDYWuSR
	KzbO2WMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSWm-00000008YLC-20Sm;
	Fri, 21 Nov 2025 14:54:24 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMSWj-00000008YJx-3OCF
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Nov 2025 14:54:23 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-477b5e0323bso17372265e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Nov 2025 06:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763736860; x=1764341660; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=el6fFxeBIhECIp1WdMk0ohsmkhZ41j6JsvgoYS+w9EFItT7+MoPauQgX0cnT0a1sKR
         60NRyn42nuEWKTAIQogtJTWes+WN1onUH0jmHBLNZtQw5wSACzIRRVU5Uz9CJPqzh6X5
         kd/SBzWqhnig4ZYD+TMLhN/qWdSvDP8payLl9Su1QdpluXXJfblp2HCYlh7YAlpYEbnJ
         eChNkTD2uxEKfOHoEWr9R2kywORrZTADUIfCPZLnHdRWfWSwQNiR+UH0Yv0V9TI6n+ge
         SmaSIuY3shiXNEtR3aNhMrXONW/3rVAbebGj/CEKgfrFq9b8WsqleVVUweffWcP5YkZi
         46mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736860; x=1764341660;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=GOxGqeldk2g0UpEMcgakBYMFbWw1WAud8Wz1Xhlw47qHd2I5iNU0RJfqBls9N63Fll
         XccnaD2GgGBn9nwbXfswihN/quf/o0SC3bTeMLWgMyI3Kqn9i4sUrYR6nRgOwPL4PkmI
         s/J7/80gUESH+pVF9fec9zM1JNdnFXmXZcTp+TovAKhZinh9eHD7Jw2/FdmmRyNoPgbc
         2qb9XdSRH5ducedfJZtMmlfYmcc4TxO/VCn10c5heUytrx0YWkCfgQwxaX1dORjCanSe
         2FF7EFtJC03W4LimKPNDFk3fqr0EcDa5fVIpPalBKPi/I2282c3gZkcBs/jvnVzb/53R
         Hr1g==
X-Forwarded-Encrypted: i=1; AJvYcCVwx4GwWFRX0z1bvTuHM9+5DEEKfwjgGfQ0i2salhimpUKEs+4Ovyk887gtYStl2+KOVhZP7OwWRr20oOZUVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFxIbClvSLVZ9a5Mo6NY3nVF+ZW7kbT26VqxHC0P1BKPbLHcCH
	tBF1VrEDvYOx7//7vLTefxM3hjsd7o9yDlUFuf5BCWsDBzncBcD3s/DJrywOih1SVFw=
X-Gm-Gg: ASbGncs+DGryocBolRqINDPM/NJp5WnbNRPq5/jv+z4+5elJlmDTCj76R5PmbQgNUXL
	/xsQTwTLO6DJxe/novkdE5/09FigIWKYW1YBRcNFttZlHbbJ9CtO9i87w0Uxsx2vI1MQgRR+FMB
	ptj1fBJkHpob3zaxmN2pJCJS761Y+YRLiBOv0vuz9u9Blxw1imtY+9rprN16a60u+46pKSnOEHj
	TCfNuwYst0+Y08grEeeplXwSD/xi9BQd1NIgAd9ewt6bx7QqPtb7U3ZtZvCx7ItbtueMC8h/aYx
	jSLToOW9Ea3v1WoIna2hUDPp+M4j9EOEVgo/toknpOL0ugWoEfipvAntlsUY9C7iN2GO+gLiapL
	juCt1gKTdytr8ostg3HxCVkpvrdnjmeZ0i9GR56fuqH7SxZonaABgEKR6chb34GyDqcm+/3iXwb
	LM1XDdxwzkOx3FLH7tGwExdnA9318lflCvzJZ/lmAQEHbiqQT1oJqECt5M4xU+vdU=
X-Google-Smtp-Source: AGHT+IEGzoj+G1XJyD7HRZUpDf/Nmo3R0LQETO+OA2bCF/axjJi8k5L8RSAIauSreqKt4GiwYJQXaA==
X-Received: by 2002:a05:600c:1d14:b0:477:9d88:2da6 with SMTP id 5b1f17b1804b1-477c026ed62mr28503395e9.0.1763736859683;
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f3635bsm11604067f8f.17.2025.11.21.06.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Message-ID: <cd200f33-dd6f-4eb3-b2d9-8f41d0dde992@linaro.org>
Date: Fri, 21 Nov 2025 15:54:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v10 04/11] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-5-kernel@airkyi.com>
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
In-Reply-To: <20251120022343.250-5-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_065421_908941_0C2B86FE 
X-CRM114-Status: GOOD (  21.79  )
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

On 11/20/25 03:23, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The drm_aux_bridge_register() uses the device->of_node as the
> bridge->of_node.
> 
> This patch adds drm_aux_bridge_register_from_node() to allow
> specifying the of_node corresponding to the bridge.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>   drivers/gpu/drm/bridge/aux-bridge.c | 24 ++++++++++++++++++++++--
>   include/drm/bridge/aux-bridge.h     |  6 ++++++
>   2 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
> index b3e4cdff61d6..52dff4601c2d 100644
> --- a/drivers/gpu/drm/bridge/aux-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-bridge.c
> @@ -35,6 +35,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>   /**
>    * drm_aux_bridge_register - Create a simple bridge device to link the chain
>    * @parent: device instance providing this bridge
> + * @np: device node pointer corresponding to this bridge instance
>    *
>    * Creates a simple DRM bridge that doesn't implement any drm_bridge
>    * operations. Such bridges merely fill a place in the bridge chain linking
> @@ -42,7 +43,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>    *
>    * Return: zero on success, negative error code on failure
>    */
> -int drm_aux_bridge_register(struct device *parent)
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
>   {
>   	struct auxiliary_device *adev;
>   	int ret;
> @@ -62,7 +63,10 @@ int drm_aux_bridge_register(struct device *parent)
>   	adev->dev.parent = parent;
>   	adev->dev.release = drm_aux_bridge_release;
>   
> -	device_set_of_node_from_dev(&adev->dev, parent);
> +	if (np)
> +		device_set_node(&adev->dev, of_fwnode_handle(np));
> +	else
> +		device_set_of_node_from_dev(&adev->dev, parent);
>   
>   	ret = auxiliary_device_init(adev);
>   	if (ret) {
> @@ -80,6 +84,22 @@ int drm_aux_bridge_register(struct device *parent)
>   
>   	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
>   }
> +EXPORT_SYMBOL_GPL(drm_aux_bridge_register_from_node);
> +
> +/**
> + * drm_aux_bridge_register - Create a simple bridge device to link the chain
> + * @parent: device instance providing this bridge
> + *
> + * Creates a simple DRM bridge that doesn't implement any drm_bridge
> + * operations. Such bridges merely fill a place in the bridge chain linking
> + * surrounding DRM bridges.
> + *
> + * Return: zero on success, negative error code on failure
> + */
> +int drm_aux_bridge_register(struct device *parent)
> +{
> +	return drm_aux_bridge_register_from_node(parent, NULL);
> +}
>   EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
>   
>   struct drm_aux_bridge_data {
> diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> index c2f5a855512f..7dd1f17a1354 100644
> --- a/include/drm/bridge/aux-bridge.h
> +++ b/include/drm/bridge/aux-bridge.h
> @@ -13,11 +13,17 @@ struct auxiliary_device;
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
>   int drm_aux_bridge_register(struct device *parent);
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np);
>   #else
>   static inline int drm_aux_bridge_register(struct device *parent)
>   {
>   	return 0;
>   }
> +
> +static inline int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
> +{
> +	return 0;
> +}
>   #endif
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)

Looks fine:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
