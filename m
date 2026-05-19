Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB15CD4F57
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 07:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eXOGHQNNwDXNVcUpWyRj8vhr3y63f4cc9GdjBmpXFpg=; b=q0vuxQ8BCc1op99aLsu3EuenDf
	4Zp5SCojYrUCcKW4NhhokjHydkZjAXWBYd9yRIFI60Ko6mL6JPvpLYcD5LeIYQV1DN7piA3vxTwqG
	sYUgKq5/6P7RBjJmsKaWeti4H6AuwUpBMruYaz84KZkSBMGKj3xtSR/Tt9gqK9QgCuJbrB6kpdWe/
	ed1teORaHhuNUiSKHXb6j68CHmZVthjxENigKFb/LgleKjrjiaw0KuHWipu809GA4GASy14AMvwXG
	JSxWwufAjFkgIn9OVdXcr5GjtLXwkHgzyIUUaNhFr8G5skrUxxtFVxKiwoMUvp2e2vveV5WSlABWt
	8tHhL8Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEx0-00000000Vt7-366F;
	Tue, 19 May 2026 07:33:14 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEwx-00000000VrG-20VC
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 07:33:12 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48e8132c6d0so20313645e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 May 2026 00:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779175990; x=1779780790; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WT2XihSgFDy/lOv8L6CXXNwwAVk4RQea7wu+1npHTP8=;
        b=XVcsT5k/vsdFpkPE3o6X0mNezq2ofxJ9C92/3hEQxULToZQha49BV6K2sKGcP7iAEV
         XtIpyGbjFhvVfiYJXh5KCgeu3Go9W161+jgsozxyjchZV8ACb2Kfn4AT5G07TjSlDy7T
         Vy7ooKqQzhScq56aglztUk11tmvOWh8mRq8OXvXAGUybXQ1Ccq6ZpVfXWeI8eYpcECCq
         8qvo66/mQQW8kj9mztOq1NIvkHOgdb/4swrwB+ZEvb5bxh7i0GLggfrMzSRGkAbzm478
         2w2RJXyB/J2vRqBO7suGBncRKZvEzmlDhRN3lG1OrXqF8OfYZCu2EjLm1EPB9XFLUseL
         foxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779175990; x=1779780790;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WT2XihSgFDy/lOv8L6CXXNwwAVk4RQea7wu+1npHTP8=;
        b=sxexKzCXWGYZq/Aiy4GyxB04zCOlmsqxYkEx7WjyGdG8YdGWLFCi9Hadjp16Jxb/kZ
         mE0EijVTO2pGBVqslyDo5Le9qvkID26nyIpD8KHTPVOicdXaWDIQ31qilhLt2IVnt+wZ
         kvgJyUXsK8o0elHM27pr255FCc6V8LCRUFi6yRMIiDditkVTLCviRdWenlHmHG2P9bOZ
         qEaSems9Wz4py5W61Kcz3u03n3bIjGDZoVUFEgjBP6Z6vU+bHsbGdGKi69lfD+Jb65eu
         ukXejnueJfCMU6Vc7YFGmnrUPwLQCyMS2nIUarJWX6SLYXmykSVcUz4H1bLjsdf2t9SZ
         mvIg==
X-Forwarded-Encrypted: i=1; AFNElJ/dHF+D4uTx5l6rxqkTk6Tm0Pr00pb0rWopkOAVEOJHNWhwjQJr52sm2G25G2zCzeMu2hVtzd000aCvMr88gQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx56Uo6IQH8/R81hNWPWkch5xBrouAoLWBDUzDvblqpSO+BwYXv
	DrY6lT/8UaBjxf9u0LH3AaNl6WwnAmhMzo+ui585i7mZ2ofvy4PnT05iDTEez27kXF8=
X-Gm-Gg: Acq92OFbqzRtG2UzUeUt3Ix3jzeRBWye6GU68s667H0onq6a/sYWyOpVozs8VAGRTnS
	Mfls9rcVWHzN7RHtRmMNMOAmKVBSQ/XaOYv5iLbEfmUIs2MFrr5XwpX3t+DYAamwS8Yu74yEMvn
	t2PpmrqsfYiDWoPg1fuixS2lmm0nRs6hEQ+HtNEZWvaPbCnvKTDJd5Vri69IrVk5T9WpEZCxwY8
	zJjBxIhTC8g4/1sJDLmyDhdSC8wFsfyEf8MYoCnGSFrXmZPTB+9D0lVPQjY2MRqaaQu2U1EdiIs
	L7vqK730Izq2p03LEhwZonpHC+5GYl8LnoZGqbNNVmHIJl320FbRZ7+I3IzPDALJSJhbxZzfVvQ
	k1UC6Z9Ne82dPc5O3Vb6BcDcaMg1OLPyvGYDQQeAYY3IG30cJn4ohEHhjuDdReJfIr7LH1whK4K
	mpQxhIWxS+/PdSj9S3jOe124eknlbKSmh5SXM1Xw4evWOLYx35N0ATb5dJWVpsHnklNaGfg/TCe
	rZ/zHp5RrACCmo=
X-Received: by 2002:a05:600c:858d:b0:48e:82b4:b54 with SMTP id 5b1f17b1804b1-48fe6514873mr222865245e9.23.1779175989618;
        Tue, 19 May 2026 00:33:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:1d4b:274c:94d:a69f? ([2a01:e0a:106d:1080:1d4b:274c:94d:a69f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48ff43f213esm136408795e9.1.2026.05.19.00.33.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 00:33:09 -0700 (PDT)
Message-ID: <4ed0c9c4-6a48-4c25-9caa-16914587e580@linaro.org>
Date: Tue, 19 May 2026 09:33:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 08/13] drm/meson: dw-hdmi: Use local dev variable
 consistently in bind()
To: Jonas Karlman <jonas@kwiboo.se>, Kevin Hilman <khilman@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260518194744.2483580-1-jonas@kwiboo.se>
 <20260518194744.2483580-9-jonas@kwiboo.se>
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
In-Reply-To: <20260518194744.2483580-9-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_003311_548283_85DF9457 
X-CRM114-Status: GOOD (  14.48  )
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

On 5/18/26 21:47, Jonas Karlman wrote:
> Replace indirect struct device accesses via pdev->dev with the local dev
> parameter already available in meson_dw_hdmi_bind(), for consistency and
> readability.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>   drivers/gpu/drm/meson/meson_dw_hdmi.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index 30099bf71aad..fcd2426af9fc 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -671,9 +671,9 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>   
>   	DRM_DEBUG_DRIVER("\n");
>   
> -	match = of_device_get_match_data(&pdev->dev);
> +	match = of_device_get_match_data(dev);
>   	if (!match) {
> -		dev_err(&pdev->dev, "failed to get match data\n");
> +		dev_err(dev, "failed to get match data\n");
>   		return -ENODEV;
>   	}
>   
> @@ -771,7 +771,7 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>   		return PTR_ERR(meson_dw_hdmi->hdmi);
>   	}
>   
> -	meson_dw_hdmi->bridge = of_drm_find_and_get_bridge(pdev->dev.of_node);
> +	meson_dw_hdmi->bridge = of_drm_find_and_get_bridge(dev->of_node);
>   	if (!meson_dw_hdmi->bridge) {
>   		devm_free_irq(dev, irq, meson_dw_hdmi);
>   		dw_hdmi_remove(meson_dw_hdmi->hdmi);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
