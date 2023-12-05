Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19141C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 07:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vi4BNKyGCHTFb7zPgnUguhmgSDxesSfARulWSTG0qI8=; b=hOjfbSmGPsLg+5AYEnT9E5mPS0
	oMGF40H7yH12OK6bFzjRQgByk8AuRcFlqRV70BpJFKVNpaKaRFpmBMUGldWKXcauZAWJ+FB9FDJJq
	0lm4aJd0CK+SeiutOhsTYT9glSPCXWSoS1t2U1pDa9gbh1gWbbFB1gMklMSwyTvtZjMoAHYE9j5Vy
	tA+ZZ1dc0GqY3932ryy9ISZrvXCDYpMOI4K5BTVwh3OILfQIynHAO2j/Z1CbveQnd0NtBJEiVWWUf
	+IAVm4dPEzFovJe4G+3ihfGop2oL5jEbMZJjO2nNHCievKhev/cYP3GbszzXtubM0Z7vakxNp/N31
	ApKTB7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQHg-006Ykm-1v;
	Tue, 05 Dec 2023 07:56:00 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQHd-006YiV-1u
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 07:55:59 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c0f3a7717so11999105e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 23:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701762954; x=1702367754; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tzcmZffbYx5/tNtAx6xcxlIAc5PghrZPFARiIkWCcG4=;
        b=GFKXWwQSFxoE5so02rW08xXptiGtz6gSfk1cRILKyOZUYn95GSdreCujZyxVWMd2Pr
         iLBsCtvirNbHhtJCr9pojSfyOGN6zPILo33FbLTYSjYkcbdVFLEL/EMSxZ3Wxrvmxs79
         v1JMyEz9vyeqBsytSulHq2EXBdEnpKSCosoFZyfVBkv666wM/wOMV2VUvBZjPMKUYHSo
         vJOt18pt6rlayur1Tu1KD9FLRvAQA3Z+SlpeAmpkZjDQpaAtVywVGHVqLE/YB5R3Cn7k
         f8VPjNP2hBiZ9OWgTy20oZ4nYdD3s8ppdFKc7twOZgzjK2FYCsjUIMLDlGFyEejbpfkZ
         W0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701762954; x=1702367754;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tzcmZffbYx5/tNtAx6xcxlIAc5PghrZPFARiIkWCcG4=;
        b=KOe5tjvaJrX05BKWv65BougAKqYyGSlAWR7/+GOM21qVya5aprlALStTyzUTz9LSCY
         TloYyGsYi+SBZUjM5uFMUW17xwAcIsaZ4t6dCipAqxIOaVm/VxnrckEN0FH/P6IRp+NG
         O1FJYImdxY74qQjMIu8J7Mfvn9ihcq4l4NltSwW+4mJ1SVyOd/590sPSxGsLALd+Bsvk
         bdB/o2OVyD9nSx0mSd6qgdUCrT4dJNTxggDxh/IkEVTvCL3DM41gP90ca4YgBx0k4MWy
         VSCa+GWvRPVaT2JS6Ib8kVWx83Ve5FXlj/oWW9qFUXV5tFxRo8LQP900i65zef8AB+yj
         IRUg==
X-Gm-Message-State: AOJu0YxpZT9Zk50tRJ6mV+UYfBQv146z1DFN2k9CPQigneG15zB7UvG4
	+J9x4rUCMMV93ITedbPdODp0lQ==
X-Google-Smtp-Source: AGHT+IGj0QWa5dXQAF81+oHycch4XYGtWZwVER3ydaII5Y478qsGTyrMo2LxZzhBfx9sGHj97fWCsg==
X-Received: by 2002:a05:600c:4ecf:b0:40b:5e22:30a with SMTP id g15-20020a05600c4ecf00b0040b5e22030amr1676069wmq.118.1701762954374;
        Mon, 04 Dec 2023 23:55:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id fm19-20020a05600c0c1300b004060f0a0fd5sm17803498wmb.13.2023.12.04.23.55.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 23:55:53 -0800 (PST)
Message-ID: <802900cc-b47b-4340-a391-1d96b5a9959c@linaro.org>
Date: Tue, 5 Dec 2023 08:55:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 01/10] drm/panel: himax-hx8394: Drop prepare/unprepare
 tracking
Content-Language: en-US, fr
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
 <20231204185719.569021-2-macroalpha82@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231204185719.569021-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235557_631284_C9278E0B 
X-CRM114-Status: GOOD (  13.24  )
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

On 04/12/2023 19:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Drop the panel specific prepare/unprepare logic. This is now tracked
> by the DRM stack [1].
> 
> [1] commit d2aacaf07395 ("drm/panel: Check for already prepared/enabled in
> drm_panel")
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index c73243d85de7..3823ff388b96 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -68,7 +68,6 @@ struct hx8394 {
>   	struct gpio_desc *reset_gpio;
>   	struct regulator *vcc;
>   	struct regulator *iovcc;
> -	bool prepared;
>   
>   	const struct hx8394_panel_desc *desc;
>   };
> @@ -262,16 +261,11 @@ static int hx8394_unprepare(struct drm_panel *panel)
>   {
>   	struct hx8394 *ctx = panel_to_hx8394(panel);
>   
> -	if (!ctx->prepared)
> -		return 0;
> -
>   	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
>   
>   	regulator_disable(ctx->iovcc);
>   	regulator_disable(ctx->vcc);
>   
> -	ctx->prepared = false;
> -
>   	return 0;
>   }
>   
> @@ -280,9 +274,6 @@ static int hx8394_prepare(struct drm_panel *panel)
>   	struct hx8394 *ctx = panel_to_hx8394(panel);
>   	int ret;
>   
> -	if (ctx->prepared)
> -		return 0;
> -
>   	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
>   
>   	ret = regulator_enable(ctx->vcc);
> @@ -301,8 +292,6 @@ static int hx8394_prepare(struct drm_panel *panel)
>   
>   	msleep(180);
>   
> -	ctx->prepared = true;
> -
>   	return 0;
>   
>   disable_vcc:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
