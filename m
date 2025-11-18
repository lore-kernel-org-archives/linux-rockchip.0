Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E847CEBF92
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 09:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hw45ANBU/Xn2n2rWN7Rtd3zcN2xyS0qU4i6BRfM5gw4=; b=NG3y/IY4Y1qWO7
	tAjy8jXgKK0VlISchzm81FjlyJxZajhhWl9iNtybKKbZF3pmVZHamz14b5cpkwyeLg0n3f6aZ/mBZ
	daJwwkNDTxBW3QAdOMhesvh9+4Y9bzyMX4VTcUdJtESVzOxaSZRvR2dm2LiVzxoBygzRnEVK36Osr
	+px8zOebSGBNJW7BAlGIZqyK5w2e8V1AZJqe8rzDs8LfUKm/l3QyAds5JtQBilNxHG8Qkw2z4OyFw
	XD78PUQL+g32Vdnb+9mXC6Euf9dShZpfnZNdcBoDJZsuIXHhtllOy28L/7zwv8N0rtBFF+0EcfcUC
	udLjMwahBu2YuTd7ia/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHle-000000008iQ-0Q85;
	Tue, 18 Nov 2025 09:12:54 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHlb-000000008gf-1chR
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 09:12:53 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4774f41628bso33298765e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 01:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763457169; x=1764061969; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsbUZq12GH8jSgBm1055puXBgPzLYHPQmArZG1I4wqA=;
        b=P0j6PixRVwsYaau8YORuhRDqtCqeY+iZno4hGCxlLGxwRs1k9ypVW4ePRzpefuej08
         3j55tnqNUJcH0GIAYHg9z7jONe0blTHs7zrrxe8MDpEW7rO6ETnvn31WSq9UT1ykosKf
         vHzgzg3X6mR13PDVPS3uAfP5ZjCMzAHUQafEJYY1x2le/hGHGIs4euIJ4yCdIJeuvIgi
         /MJrchmcAQpBg7A+Eo/STvsySSUTwnqWZEdqof9VtBYhQioqDo+rtqXeQMEe3kuMPVq4
         fpjeTaknOyaAaWJrn207hTEZKHI+7AWfullAlZg/fxPzAmF1U+CHZs6rRKDZHmQ0y+tp
         wTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763457169; x=1764061969;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GsbUZq12GH8jSgBm1055puXBgPzLYHPQmArZG1I4wqA=;
        b=bKggJn8vo5ul6D+tsRaP+e4wUP4fCGcENBU/QZkr1slywcyptyiorszIJNLkkHR0/Z
         GCOZlmDCp6PN9lR+Yu/lNx8Z5GO+jAw8XNxi+E1rC6RvffXMvd5Sp3Vj+DCihdTW7P2a
         hlVEMjvPhk/NWnnE71enY1zR5cxtV0oKre7VmohZoCBJr+xUIfjRXBFoyV5KV/uiIkUd
         NW1mNRVdAs/2DJtirLciELjK0LuMrRui90wbkzUsHZibd3l8J3eayds6DCm/OIL/kQBY
         ixnUIeH9IYGjD+xrh1qbwxapPX9aqL9UkZAPIritC31SRl+Nv06rMpELkvIHPpmBIjWh
         4DtA==
X-Forwarded-Encrypted: i=1; AJvYcCUfvlsFxeKjQHUjixPuydXQfDjH1sB3tlS3upjpnzbgmeXAZ0RDa/vQwyniTZwMmWN+5Vkwa/SHyJOgTTTNjg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt3u7mrLJ4oUKYjubi4Lf6myDwQmOzK7mF183M21cMzo0e0W3e
	kpy/3NiOcDqFZfmRoa8k2w21cD1k7tUMW74ouQ0gDkqQELDGKi69inHkdxM33WTPKgw=
X-Gm-Gg: ASbGncsTWsyo2XECA+S6xHk+n4GpzI1uWyWHDjK5AsY1OBcACKX2RvPtTPtqd12kOah
	CJXui5jsWMXI4Zksi6dbTJxjESg4Nu2Cj6elLW8kqX3jNLIkNfznIyR1ubxSxM42FByOWzgtN8M
	QbPzKePQOKSdzJQ9XrHo9/xClsHNBfVnQy+oEw8TUF1ZtN6yP29ihS1AaNDpxEzpwTRlUV+aqQa
	3CZwFnvKM6nCkFv53Hv5dQrJv8/HaUsk+515dJSqmzdrlcoxIEjrObeC2M4wADyahU59SJsSBk4
	7ckTJboxS8K9l9nAhTkmgML2ZJ1kLr6vHc2YEIUSl88VqDTl9+NL98CSCEWNFATL6jqtpjKf464
	VYs5L832YCS7pzciH7XZBaKZAPL4XbWMqjd5Z7oYV78kfsfUgB7keGbAMUGm+GSU40JBTZFxWDr
	lKEJeGXYclnCrE4D8MVuFcs/cIhfCCDvo/VaMhxZ3YYVg7RESf0UaTBSX4enPbReSFOEAGkw+hv
	g==
X-Google-Smtp-Source: AGHT+IFLWIbKy5iYyYGBqFd+tt7NLXABbN0modVFRv0VlJwVt0Qh9TTTSA9l9Sw1Gv8SWS/Tv7D3jQ==
X-Received: by 2002:a05:600c:19c6:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-477a94fc3eamr20486455e9.13.1763457169335;
        Tue, 18 Nov 2025 01:12:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e442c2sm362834385e9.7.2025.11.18.01.12.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:12:48 -0800 (PST)
Message-ID: <70a23bf8-6648-489e-908f-d7727f5cccd3@linaro.org>
Date: Tue, 18 Nov 2025 10:12:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix PCIe L1ss support
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1763004478-218446-1-git-send-email-shawn.lin@rock-chips.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <1763004478-218446-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_011251_454452_6D9C3393 
X-CRM114-Status: GOOD (  13.85  )
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

On 11/13/25 04:27, Shawn Lin wrote:
> Need to control the delay PLL turnoff time if PCIe works on
> L1 PM substates.

Can you elaborate ?

> 
> Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index af9a5c7..5b6f80e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -106,6 +106,10 @@
>   #define RK3568_PHYREG18				0x44
>   #define RK3568_PHYREG18_PLL_LOOP		0x32
>   
> +#define RK3568_PHYREG30				0x74
> +#define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
> +#define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
> +
>   #define RK3568_PHYREG32				0x7C
>   #define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
>   #define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
> @@ -665,6 +669,11 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   	case REF_CLOCK_100MHz:
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>   		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
> +						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
> +						 RK3568_PHYREG30);
> +
>   			/* PLL KVCO tuning fine */
>   			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
>   					 RK3568_PHYREG33_PLL_KVCO_VALUE);

Please use proper patch versioning when sending a new version, with a proper
changelog.

Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
