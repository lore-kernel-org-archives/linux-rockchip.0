Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D2BCED63B
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 13:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B4oD2blrGpGE62ggXk9Lyah2WxwLfP5jpWtZVduF0OM=; b=q7x4HALOaLOMSul3iX7IR+vDLF
	SOFdYG2Ytvuv6jrqTS8R6FyrkxWtDh0AdRYMMpBPup86kD+fnfveB1QVqnWFNuySHEK5mvKW3Acbc
	CqhEWkW/05cOEy+CBF3I5fHxP1YSw6FfVJ/2+thO8lREyOG/3KhfJiviJiEjITYLSEFuzR4s8QTdg
	oiQzYLEApzvZs1K6c5qW0UYUSsUhtWweCg2dsJ23UhhcF+mEV0hKS2Fv0Cp5JHuB2UmH9n6hcOh1a
	DH3pt45DfSpe+NGfGAMoIro4n7aL4uYLq5o706dLszkpbEkEgLWgvn5x28kaoxr2vFd9x20UPubwH
	SqAqB5SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3e-00000000Tx1-0tCb;
	Tue, 18 Nov 2025 13:47:46 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3b-00000000TwH-33xB
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 13:47:44 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so32158305e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 05:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763473662; x=1764078462; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SOAQ2n6EEpjk8DTRUlw6XgNbg43EhpQzQqXyghLPIsg=;
        b=C5j4ebJ/Q0Qs2TsImlZe9E8w3lx9u8SX5svYYHhAXUmSlyq6Jze8hFwMADg+VZix35
         ke5VyKjamKtunLx0lsj52LDH8O9P2HbDUwKAc7nS6W8LTLpyJRjJqVO09iZrDDFmnrIk
         WR4wUEn6fPQ2/1+XOMAtwyx2cEx1a7SaSB+ev5W7hQXnckbRpP+8zRSgMhvO4k5bLrqD
         oqSTJ8ShgEGX6BhHxdL4UrnRag5IvR5HrslDBjYxYMeeYhE70cNqUcwQeBGIa6XQD+5Y
         LZzXYJlnflXarsW37uSNxrRlGCyM8zNENNWLyUyhztf9XmZZHNUyq8AWURKn5VHisSrt
         WTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473662; x=1764078462;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SOAQ2n6EEpjk8DTRUlw6XgNbg43EhpQzQqXyghLPIsg=;
        b=UwMr+PPd7wvlJDSC+zpcOV2+5g9SMe9eZxpw194TOdXz7R7hwhWdk+91xkRB8cMWvR
         lGROJRYtyKUvvpqKmzvsf0BKkfxBp187zrYK1z8A9MAbUwX4V8vjon0cgMommqBa6rGG
         d6M/8OGMo4QPU6F4rpRTTgVVA8Ue0/BOiCnnsMQInXC6d/KxW2uzHx74IvF5tWg3oZvR
         DavS9kWA+8ZEjirAPbzwn+tPk0kiovyVN3CAHGe6hF1mFaRT5OVQMO2xHa3NceHGvCKF
         aa1MInRT/HUWliWpt4uHUBRBR8t9HXQHw3zQycBeN5Cp3vanAGWghklFaFUE57uHGEwU
         4cdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDQnjIh4m1W7IUxErgRb6GClMc0I1VCFJq/ckUaqaKULBRWHqYLr+OuweZ7R/w+WpgFhbR/XSNQVQlii7j/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhKkcI5meoE7BRZ3Q/YjSI8a8S3S8H9zzcEJoxj6x1QmVmD6Qf
	kpahALLNJxre+0cT1p1yb/nhJ/9xsy4vwrbo6RBqxqF/DUgFrJChWDiuy6Qf3BllhOg=
X-Gm-Gg: ASbGncvfegfsq4B5Ot3QF7fZSTDY/07UJJfDWyM9o8WAhH5j0WBsojLLXfbTp0CT76t
	qcbhWMcL3SxNOF58HaU2AEq+uBgG0yD94ziihNyat/lI/vustb78ym0TE0jGhxFVTKxbrU+MKa3
	RMAsYM2SC5c1DNOj6WGcJR1mxIErPC0FifueDhS49+xnDNrj6tNlR1Ou9cMMAx9iAsPciGHMoml
	RVgcqR1fxRbN0JYwNZu0usgGzuOyt4v0E1DRpGP2scJ1UBYFUyVwSs3DES2Gf+kO4VuAxaURoiB
	zDSUJ4FAA6rIgSG0jIjOtn6ByGzC/b1h8J0+TVKB6ihhwL7DpWMy8yTaIkgrXAUi1FUze8JzWBU
	XhN18waDKeiLQzfMBHVfaDB99B+pOao9UYJWc/V9jI/fN0GKH85/fLlq+5ebeCbpHk9hY/nKUkY
	4GsSTeA07TFilbdPPvixybc+vOMoNCcxKslX7mJP2/kAtyu2cniQuBZDXicuR0yFsNx0PHGv1o6
	w==
X-Google-Smtp-Source: AGHT+IHStjCD11Ovvx/lChTWfDpyulB8oz3/xSa7FVs/MgoULLIe2WkcLzWewB9yyCcoEjbA2g4HEg==
X-Received: by 2002:a05:600c:6289:b0:477:54cd:200a with SMTP id 5b1f17b1804b1-4778fe50f5emr147143385e9.6.1763473661641;
        Tue, 18 Nov 2025 05:47:41 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e84b12sm33751627f8f.15.2025.11.18.05.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:47:41 -0800 (PST)
Message-ID: <710f2b4a-b443-44cd-aec8-ce9a8630dfbc@linaro.org>
Date: Tue, 18 Nov 2025 14:47:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss
 support RK3528
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_054743_841940_C53476A6 
X-CRM114-Status: GOOD (  15.62  )
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

On 11/18/25 10:52, Shawn Lin wrote:
> When PCIe link enters L1 PM substates, the PHY will turn off its
> PLL for power-saving. However, it turns off the PLL too fast which
> leads the PHY to be broken. According to the PHY document, we need
> to delay PLL turnoff time.
> 
> Fixes: bbcca4fac873 ("phy: rockchip: naneng-combphy: Add RK3528 support")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v2:
> - add more commit message
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index a3ef198..e303bec 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -21,6 +21,9 @@
>   #define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
>   
>   /* RK3528 COMBO PHY REG */
> +#define RK3528_PHYREG5				0x14
> +#define RK3528_PHYREG5_GATE_TX_PCK_SEL		BIT(3)
> +#define RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF	BIT(3)
>   #define RK3528_PHYREG6				0x18
>   #define RK3528_PHYREG6_PLL_KVCO			GENMASK(12, 10)
>   #define RK3528_PHYREG6_PLL_KVCO_VALUE		0x2
> @@ -504,6 +507,10 @@ static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
>   	case REF_CLOCK_100MHz:
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>   		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, RK3528_PHYREG5_GATE_TX_PCK_SEL,
> +						 RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF, RK3528_PHYREG5);
> +
>   			/* PLL KVCO tuning fine */
>   			val = FIELD_PREP(RK3528_PHYREG6_PLL_KVCO, RK3528_PHYREG6_PLL_KVCO_VALUE);
>   			rockchip_combphy_updatel(priv, RK3528_PHYREG6_PLL_KVCO, val,

Thanks for updating, it's clearer now !

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
