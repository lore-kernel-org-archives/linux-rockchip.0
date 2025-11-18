Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 093D0CEDD8A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3yAyGUYrK5YDSpp+7f2xBgM+sWq9DiBcv2+DH26NGOI=; b=ES4pm1DnOZ9UfGIZfyWUqCBFA+
	1+0MGtG5ERLqxa/7wW/k7KuloD1QjxREIQYp0UxtVa0+rtWXAck92xczwYW9asKqYKVD+5H0cE2/b
	IpiFVyTuh4xAcLLoGS0ra16DB21zmiFHmHWDaX6xJYOo6FOztq0soGDrRCFlIZC2y1KrIH8uuQu2w
	CA/Aa1vjVN3i0VpBzlrJxOjoMB+hW1Ty76fKs1JE3cC6lbzbvNwmyF3Itieki6yTvZEO3EpE4WPiz
	k4AduZgKMhpQePg24LYCg4uZ2lEKibJEsO2Dwx5VyNfKEsCudTyWKFs5V7gLDRM8Li4yN8WclunwW
	Nr5ZT80g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3r-00000000U00-2qCN;
	Tue, 18 Nov 2025 13:47:59 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLM3o-00000000Tyq-2KAr
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 13:47:58 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso29072605e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 05:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763473675; x=1764078475; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9zWMsWqR7g9/bro/jqzvtjPju/05qtW6o1cFZvse410=;
        b=S/KcUuVdU98LWG2wxSZIWEag8wqcXkv2RcRD/tZsyK4Fp/OajPJ6PJ8SPSZ4N5qNp9
         Q8eJfmXVut4IgAUkdZXfwEDpnFua+8OUMvpIhHYREzQVRF9n2P1QqSWEvGs5hAC1ljEe
         qowMpuKqNdBGcu9N9IC6dS+rCIkOvtpeIo8ZEF6S/t5uUDkk7z8kBYgzdcdY6Howv3rH
         vm3KTB+jC5M5XZBkHOoDEG+23ccaDQ3JQsY5r4a2vPPP8/v+G81RkrDyIkTpaS2myioe
         moY2JA5PPMP9TXzRg2iCUbg8AI7kBoBi19c5laaY9/Whos7NiDPjez8Ig8rlMX26sDWP
         HioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473675; x=1764078475;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9zWMsWqR7g9/bro/jqzvtjPju/05qtW6o1cFZvse410=;
        b=S/D3PX1063aI5ZvMwwzFVRcZ6UGCGDKDsQCyspTHrwRoUgOB+i3/3q1jk8XgdO4YJ1
         djXrs+Vl79WTOJt2aHKJIlnj7A+7XEKaqFS+gU1yqMLBz7GMo1iC91//Q/7FkYlbT5WL
         IYeHfOtEoa4R6xim5qQZkAzuAGIDMaorc+kANm21bidniWYgjaQwKLTQBfxu61sRQMnD
         bxvSc1o511a3stG+U1yKBi0FE8bdqDbJ8YCd9h9enui7sW7NF67RZZom3ol4ERjP+nv+
         +GrbUOOm1fKKC4wRknF8nnLtN/sp1s5LZWCHgIE/pkZqo+ahtaboPA6PRbT469YthH7A
         v2Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXnFMdTKBkbdbWmhtTJo4zHCYhySI6NSXT2rFfduMeCBzgZmN3lZGb6ft1QCM5msKhgCsLOVf6VVYiTOnEIJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkWLgLlUI1dTCT6p8tKHFHBYVZEqc6K5lecZk14twGA1qLaIRc
	8xxuBhewDTM/teMCgsegopTcJuW+FN2hociJ/Gy7sTo7wwGTEPRj04Xps192m2i4XXY=
X-Gm-Gg: ASbGncuivgexIHJPKc0r/tZ7ZV21TpaXvnGqkqDJvEUf4zIIzPlO9OLQKrZitVMrQr2
	CaVMXtsjS5ydxctXEZb0bwID5fG19Y7p5cVKBoRkRGs21alYTlgcI7SOVfzauCAPTo4ymWRvcWN
	qbGKyUAGw/spzms9Xz0dLSTt+IHdFdzon8LfxFYFwaVkchgQHwfPwuCmj4aDQLNQnN7FHH1TKRH
	ECmn7ITEqFYBl/AmvsEpDWTJPh6gs7h6O2g3D2uufjcr98T37tZlwLfH0vwevAkqBlJevPeueRe
	3fFB5YAkjveRWtMFeQTlHlE5OT7/Z9vKlRRWOB/VqhwBDmb3mUgI98dEWSCH6F380f7fz7O9snq
	i6wbR4K4qH0A3j/mOZ4TnVHI7e2FmrfBJD81tfb0W7vPwWSTBoPKVDPDr4st9GXFeADF2tzty77
	XEcbP2/ihqPeUoDHJcmu4AaV7kXC22VZ/iWNDGTmQNauYXNcdwrR968aa2pSmfz+NYrBVethQIE
	Q==
X-Google-Smtp-Source: AGHT+IGqfgOR82Uy2i1IiBEEfDoHNM7EiN7YLlgbDZ+Lf/4M0/HFhAKStzngiUha2MqfbrbaLWBF/A==
X-Received: by 2002:a05:600c:a49:b0:477:55c9:c3ea with SMTP id 5b1f17b1804b1-4778feaa94amr139177665e9.35.1763473674740;
        Tue, 18 Nov 2025 05:47:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779b509a5esm189194275e9.2.2025.11.18.05.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:47:54 -0800 (PST)
Message-ID: <6e166ac1-6c36-482d-9d0d-1cb841f2286d@linaro.org>
Date: Tue, 18 Nov 2025 14:47:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss
 support RK3562
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
 <1763459526-35004-2-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1763459526-35004-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_054756_628580_3FC05671 
X-CRM114-Status: GOOD (  15.22  )
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
> Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v2:
> - add more commit message
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index e303bec..7f8fc8e 100644
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
> @@ -664,6 +668,10 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   	case REF_CLOCK_100MHz:
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
>   		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
> +						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
> +						 RK3568_PHYREG30);
>   			/* PLL KVCO tuning fine */
>   			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
>   					 RK3568_PHYREG33_PLL_KVCO_VALUE);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
