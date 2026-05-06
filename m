Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E22BCD3440
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 15:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hyCvTzZTBM5yf8GZCBO0j3vEKrWUhcaT627tKE3lqLs=; b=gqNQ3/QCywhSQ69v6ykr5mi1fy
	sI5p3Wo8wjSuib8DJrNxAZloNLTH23dQgUYiQUqNVMlSXtoeuYYajiKyfQOb9G62qPBYboWoc2URk
	IiJ0ewtZHmOTYjy0iISmMjNxLKH74TfVO/P71wUNkYJY05EJ23vXnG84UXEgAE/mkhILRFC+IaGbr
	9dTbclLaWkTxnrf3tyWbxhzWDPmnyJj0oCy3PQraDyFPwXXrBqoIq+cQgcYCaP6u7DXG36HlKYklE
	y9F5l3CzINNK0C1zQUrZGh0pox6tVWou6ftlJuw4E3qDnZLBlFc0j0QfYawLOMJVRF9ydsp8ZGfV5
	mzbqk8Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdk5-00000001DUM-2Nni;
	Wed, 06 May 2026 15:00:53 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdk4-00000001DSl-3SkR
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 15:00:52 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-43d77f6092eso4122246f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 08:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079651; x=1778684451; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/W7qZT5O8z085sn4mW/UkbICY8RKtYfsrB4Yj1GnNQ=;
        b=UYPSC9K1HhAD56HRaAtuUjnlMNWneIHALp1h7eUPcxAxpRAK64XoddBmRBYWNZKt9+
         Yn69ByOBY+Ab8ANQMclTw9ch/b2r23l4N541d81PdUn6KzrZtQU+3x+1W6CSRUtmEbhI
         5RjiTJSUk/eMclwWcxT0x4Zk9zwpaOcYwn4Zv3dHuhn2b/cXKfG/6f9RNpW/lI8wZiH9
         CeHu4NdqnW/bmapBgUuhbXM05/mS/awa+eNEj40L7bB7vNU7lZnhwPnKOVQh/kKKZ8fV
         KA1w5AL0o6qlcuaZWt9jEs7RSCEsWUUtJURIkI0sXjv7GnjYobWfSEATbUXEzt+sE52W
         tfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079651; x=1778684451;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/W7qZT5O8z085sn4mW/UkbICY8RKtYfsrB4Yj1GnNQ=;
        b=cKwwIlreCuuvEbnPFY3lH3P/qsqRYQQxNedySFq757Ojfz9bEkIxcuIOrerQJhTUbN
         wCW47NLyET+jWU2uGqA91WDI7NQ+Dg/5+YjHpiSXb2uTcIuiBm9/Zwb8nv7TrvoBkSc6
         Nj5vykmk3X7LhX8QY2wlVtIQ5hwzllq78peubp1MguI7/ORuaXB5nDGaVSaJnVla2RQS
         ll9NH8roPo3oy/A9vJ+6k4lhHgRtcnV4MMJhGs0+dao/7aGCQZBY9jrwt0Lb7HK1HM1N
         tVqiJdnFowIX2E9hh6FXfwwnG4czmVGHT6r0mHeAdqzMos8bwenLLTHOOILB92ueCbSo
         5zNg==
X-Forwarded-Encrypted: i=1; AFNElJ+ERZLyt76UOQB1UJp0WFMdC08qF7Dj48hSUVwY6zm9zKOZ2Um5v6P9HbJ7uFsMQQldHuyvf8+JhhCPbhiaMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJTDtscFC0FSN2XfB4mEs7Pa8J6KWL+HPka7nLkqrCnvKRE3aZ
	QazFaXnMVEy87Fg93a/WTSVK6MGGz1YQoSPls0Rll2tnHeniLgpzpkCH8BIWE61s8UA=
X-Gm-Gg: AeBDieus1b+ofrvLVg0boIpq77Shvs+ylxSNuWGXOspFw/7f7ImPKT/ulYcN02Sk+oy
	Bjy4+5kS+K/CbiYM2+FZMd8nvwcODdjCyYw+odnrdt1axCbDXvbVNdIyklsjEnBYv7pTR+720SX
	xPHBuYy9R1TRJIdRoxtZH8C5Pezcg6bxC6855+7eAe1Xc7KHrt4fqtLHnNmoPUEFieGYavA9Rl+
	NQnrwtrvVmb4sTZ0n0NKp35dIGB6Gml5RBgSKV1lVlH21mBrd0/C6Gl6DNp7bbIH+fokyYsZgi5
	3CJ0nzuQ228OVHr1PJlm9Zu3MSXWfpZbLXI39rZYSC6L15P06lor1ifwJRrpDQkIkRejqBC4L2R
	Tm20LwlCPIsOQRpFQ7RVgln6YUwiEQGHX3iBeKMAHlALNJvWpOeKIMPlmPArqNM7vqTDjjLM0+c
	h6AMncv9z057nB3/u2rxBUZ3FZvk1Z8cvuaYjQMMHM5b0fMvmstEIpMduE5xsSTM5aYJ3KZ0wDy
	9/vHgPUBamcgQ0Bd3+5usEz96vX
X-Received: by 2002:a05:6000:18a6:b0:43d:761d:5423 with SMTP id ffacd0b85a97d-4515ad767eamr7192146f8f.16.1778079650163;
        Wed, 06 May 2026 08:00:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45054b03df9sm12728674f8f.24.2026.05.06.08.00.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 08:00:49 -0700 (PDT)
Message-ID: <4d77bbef-6350-48e1-93a5-d256fc8bc8cd@linaro.org>
Date: Wed, 6 May 2026 17:00:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: rockchip: inno-hdmi: Change TMDS rate handling to
 configure() ops
To: Jonas Karlman <jonas@kwiboo.se>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260503172936.194003-1-jonas@kwiboo.se>
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
In-Reply-To: <20260503172936.194003-1-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_080052_906696_A82E4B95 
X-CRM114-Status: GOOD (  23.41  )
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

On 5/3/26 19:29, Jonas Karlman wrote:
> The commit 10ed34d6eaaf ("phy: Add HDMI configuration options")
> introduced a way for HDMI PHYs to be configured through the generic
> phy_configure() function.
> 
> This driver currently derives the TMDS character rate from the pixel
> clock and the PHY bus width setting. However, no in-tree consumer of
> this PHY has ever called phy_set_bus_width() to change the TMDS rate.
> 
> Change the TMDS character rate handling to depend on the configure() ops
> before any PHY consumer needs to configure a TMDS character rate that is
> different from the pixel clock rate.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> A near future drm/rockchip: dw_hdmi: series plans to include a call to
> phy_configure() to configure this HDMI PHYs TMDS character rate.
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++---------
>   1 file changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index 1483907413fa..7f0563d4d482 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -245,6 +245,7 @@ struct inno_hdmi_phy {
>   	struct clk *phyclk;
>   	unsigned long pixclock;
>   	unsigned long tmdsclock;
> +	struct phy_configure_opts_hdmi hdmi_cfg;
>   };
>   
>   struct pre_pll_config {
> @@ -554,19 +555,10 @@ static inline void inno_update_bits(struct inno_hdmi_phy *inno, u8 reg,
>   static unsigned long inno_hdmi_phy_get_tmdsclk(struct inno_hdmi_phy *inno,
>   					       unsigned long rate)
>   {
> -	int bus_width = phy_get_bus_width(inno->phy);
> -
> -	switch (bus_width) {
> -	case 4:
> -	case 5:
> -	case 6:
> -	case 10:
> -	case 12:
> -	case 16:
> -		return (u64)rate * bus_width / 8;
> -	default:
> -		return rate;
> -	}
> +	if (inno->hdmi_cfg.tmds_char_rate)
> +		return inno->hdmi_cfg.tmds_char_rate;
> +
> +	return rate;

Can't you keep both until dw-hdmi calls the configure op ?

>   }
>   
>   static irqreturn_t inno_hdmi_phy_rk3328_hardirq(int irq, void *dev_id)
> @@ -602,6 +594,16 @@ static irqreturn_t inno_hdmi_phy_rk3328_irq(int irq, void *dev_id)
>   	return IRQ_HANDLED;
>   }
>   
> +static int inno_hdmi_phy_configure(struct phy *phy,
> +				   union phy_configure_opts *opts)
> +{
> +	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
> +
> +	inno->hdmi_cfg = opts->hdmi;
> +
> +	return 0;
> +}
> +
>   static int inno_hdmi_phy_power_on(struct phy *phy)
>   {
>   	struct inno_hdmi_phy *inno = phy_get_drvdata(phy);
> @@ -668,6 +670,7 @@ static int inno_hdmi_phy_power_off(struct phy *phy)
>   
>   static const struct phy_ops inno_hdmi_phy_ops = {
>   	.owner = THIS_MODULE,
> +	.configure = inno_hdmi_phy_configure,
>   	.power_on = inno_hdmi_phy_power_on,
>   	.power_off = inno_hdmi_phy_power_off,
>   };
> @@ -1392,7 +1395,6 @@ static int inno_hdmi_phy_probe(struct platform_device *pdev)
>   	}
>   
>   	phy_set_drvdata(inno->phy, inno);
> -	phy_set_bus_width(inno->phy, 8);
>   
>   	if (inno->plat_data->ops->init) {
>   		ret = inno->plat_data->ops->init(inno);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
