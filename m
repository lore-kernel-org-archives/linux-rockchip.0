Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3314C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:49:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F7A961428
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:49:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F7A961428
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cF0dT35daEcy0/rTqcFeYXBEaQoJ3yP3gFIv923dBwE=; b=QtZjBfTzCxVVQ2FI/Kh7uP/iS
	xy5m7vXn5x5jFpOkxwh+V8bUp0KSX2uhnf0O5a16wDhRRp6S4bSkeEi4t9XVVJ5oFYCKLgl4CfsRL
	+hTk4iqzGnGCAO6c9RWOvsaWo824MC2FIhtfGrSEGu4OGm+rg9vgVK2PNrUJBEZHAvZNdPh+ho2gJ
	NFb2s0j2Hn5d/mcTtu+zx4i/eeSeWxa3MZ8JgrJjdKPUkpMe15Z6qdGS6jpdRLJFSaqTR0UllXphS
	2yL6EiHvDVgtJ2hYcoJ2///VkrSx8InCDPI1aIHBZkWJ3NbrYL0tk/4ttHOqGCgCaS9ZxKZsFoMgn
	AEOQaP74Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZJnD-00FBCb-3v; Wed, 21 Apr 2021 20:49:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJnA-00FBBc-Ld
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 20:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=7l+9imnPAQTV01gj5+Xj5zW2sUUBl6VFTSmn6QnuBUY=; b=WyAE3dSkrU8EXqH8s+hFDAvieT
 OpwDk1ILEvzwEBYJ8Lp/vIXT4bfbH6/7cSeFtLQ/xpi3WtBr7xcaqmJUM7rLQhtkn3S/8CeHZkhli
 vQbpmbHSRAtElf1+VouiMm8fzW4Cnj73AgmyJ6LyaWTFel7JacBHPk7Rhu8GaIzlFY9+ZgUQR/CAh
 S6zQKbnZ6iSTZ9n/L/zvv2Agc1pN+KvWMQ+6eO3syz2WB95oeGE/EYCk0XKIwQbLNyHi+MP6HDhNc
 HPyHYPE6o/0AKIwdGh8uC0Wsbq+yTuUiMS8KIfpXrxmVe4oCFs5TN28gsSK56YE75/1ntjdBsLHpV
 SiX0tQ7Q==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJn7-00DBWu-Jr
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 20:49:47 +0000
Received: by mail-ed1-x52f.google.com with SMTP id j12so25871417edy.3
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 13:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7l+9imnPAQTV01gj5+Xj5zW2sUUBl6VFTSmn6QnuBUY=;
 b=amop35T3o4RAk1g6DtqEJXe1mZqtWWGZvN/mF8EADmmXFCSQXwXCeb8vH9+o11s4LN
 EBJmVxv15mJzxOmxrC52S0EsBolyWLXpEyc2N5jrwHSOMjvFLZAhwv5BJs58Ds4bKPk3
 jUcZw/0H2i+svMM6/7G1a4lpqUtpL0haFK4cD2L9vudaXvxr4BE3Vzmp4TQBm17tfOzb
 2fWxG0c3Zxz8TTJQEEEHsvvyE4IAKBZwY97bS4AbQqCw1l2u8N7W8IZ5Nmpr5jUPB2h3
 7IhYw4cfGnMBI75X/TQH2bGI46wOHO2N83BJJJtKp+IYylUCP+Hr3YeLe3ueLdl6Cn3p
 C0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7l+9imnPAQTV01gj5+Xj5zW2sUUBl6VFTSmn6QnuBUY=;
 b=AafP/hi7zh7Wx3yHtk1KSYrLqhDs2+NtGeW6Wof4MOvEBYggQYstuawOJa1TPZhfxv
 Xw0RiNWRRJBsNG99yFPL+yljVKfPlB6K6j3SaW2Avedg5mmAsnpDN7aiFh+HROQerOGr
 6m/7CcDvRcMKTyw8k1jBLgiMsy5DvZlwzTQg2JrG0bqZf2by5Djd3LgCmZaVzUgvZtiT
 MdlrEqH0r/UTTpZdW8uT5SPO1vhrjC+kD4GqO4cf3SC1CnbWibzEQDs/4LcjdIYtZ0cW
 qkm+TtYo52lkMeeaXNcoOTw3iTmF8A/ne55KQAAOl0Mkk+UtRbqr2x8Wqr5X+Ld1n73o
 k32g==
X-Gm-Message-State: AOAM531MarL5Z+ZxLakTqx15INiX3UKQBaGhrBgVQjuk9pwSk64PgzEj
 379jjdDdzYBMUZuY4xHAUXuj5pJG/su1Iig1
X-Google-Smtp-Source: ABdhPJyUFJHoA+7z8clL9UILjD9u5kHwBxvRg6p13ulO3jgawsw4RQqDZIwKyv/hKZOXrpPNobhEbg==
X-Received: by 2002:a05:6402:382:: with SMTP id
 o2mr34387052edv.370.1619038184161; 
 Wed, 21 Apr 2021 13:49:44 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z22sm474319edm.57.2021.04.21.13.49.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 13:49:43 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] net: stmmac: Add RK3566 SoC support
To: Ezequiel Garcia <ezequiel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, kernel@collabora.com
References: <20210421203409.40717-1-ezequiel@collabora.com>
 <20210421203409.40717-4-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <a3cef507-6480-eff8-625c-c5167db718f3@gmail.com>
Date: Wed, 21 Apr 2021 22:49:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210421203409.40717-4-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_134945_690215_3978F0D6 
X-CRM114-Status: GOOD (  25.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/21/21 10:34 PM, Ezequiel Garcia wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add constants and callback functions for the dwmac present
> on RK3566 SoCs. As can be seen, the base structure
> is the same, only registers and the bits in them moved slightly.
> 
> The dwmac IP core version v5.1, and so the compatible string
> is expected to be:
> 
>   compatible = "rockchip,rk3566-gmac", "snps,dwmac-4.20a";
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> [Ezequiel: Separate rk3566-gmac support]
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/net/rockchip-dwmac.txt           |  1 +
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 89 +++++++++++++++++++
>  2 files changed, 90 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> index 3b71da7e8742..3bd4bbcd6c65 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.txt
> @@ -12,6 +12,7 @@ Required properties:
>     "rockchip,rk3366-gmac": found on RK3366 SoCs
>     "rockchip,rk3368-gmac": found on RK3368 SoCs
>     "rockchip,rk3399-gmac": found on RK3399 SoCs

> +   "rockchip,rk3566-gmac", "snps,dwmac-4.20a": found on RK3566 SoCs

This is still a text document.
rob+dt has now scripts that check for undocumented compatibility
strings, so first convert rockchip-dwmac.txt to YAML and then add this
in a separated patch.

Johan

>     "rockchip,rv1108-gmac": found on RV1108 SoCs
>   - reg: addresses and length of the register sets for the device.
>   - interrupts: Should contain the GMAC interrupts.
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> index d2637d83899e..a8850bcd980f 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> @@ -948,6 +948,94 @@ static const struct rk_gmac_ops rk3399_ops = {
>  	.set_rmii_speed = rk3399_set_rmii_speed,
>  };
>  
> +#define RK3568_GRF_GMAC0_CON0		0x0380
> +#define RK3568_GRF_GMAC0_CON1		0x0384
> +#define RK3568_GRF_GMAC1_CON0		0x0388
> +#define RK3568_GRF_GMAC1_CON1		0x038c
> +
> +/* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
> +#define RK3568_GMAC_PHY_INTF_SEL_RGMII	\
> +		(GRF_BIT(4) | GRF_CLR_BIT(5) | GRF_CLR_BIT(6))
> +#define RK3568_GMAC_PHY_INTF_SEL_RMII	\
> +		(GRF_CLR_BIT(4) | GRF_CLR_BIT(5) | GRF_BIT(6))
> +#define RK3568_GMAC_FLOW_CTRL			GRF_BIT(3)
> +#define RK3568_GMAC_FLOW_CTRL_CLR		GRF_CLR_BIT(3)
> +#define RK3568_GMAC_RXCLK_DLY_ENABLE		GRF_BIT(1)
> +#define RK3568_GMAC_RXCLK_DLY_DISABLE		GRF_CLR_BIT(1)
> +#define RK3568_GMAC_TXCLK_DLY_ENABLE		GRF_BIT(0)
> +#define RK3568_GMAC_TXCLK_DLY_DISABLE		GRF_CLR_BIT(0)
> +
> +/* RK3568_GRF_GMAC0_CON0 && RK3568_GRF_GMAC1_CON0 */
> +#define RK3568_GMAC_CLK_RX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 8)
> +#define RK3568_GMAC_CLK_TX_DL_CFG(val)	HIWORD_UPDATE(val, 0x7F, 0)
> +
> +static void rk3566_set_to_rgmii(struct rk_priv_data *bsp_priv,
> +				int tx_delay, int rx_delay)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +
> +	if (IS_ERR(bsp_priv->grf)) {
> +		dev_err(dev, "Missing rockchip,grf property\n");
> +		return;
> +	}
> +
> +	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
> +		     RK3568_GMAC_RXCLK_DLY_ENABLE |
> +		     RK3568_GMAC_TXCLK_DLY_ENABLE);
> +
> +	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON0,
> +		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
> +		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
> +}
> +
> +static void rk3566_set_to_rmii(struct rk_priv_data *bsp_priv)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +
> +	if (IS_ERR(bsp_priv->grf)) {
> +		dev_err(dev, "%s: Missing rockchip,grf property\n", __func__);
> +		return;
> +	}
> +
> +	regmap_write(bsp_priv->grf, RK3568_GRF_GMAC1_CON1,
> +		     RK3568_GMAC_PHY_INTF_SEL_RMII);
> +}
> +
> +static void rk3566_set_gmac_speed(struct rk_priv_data *bsp_priv, int speed)
> +{
> +	struct device *dev = &bsp_priv->pdev->dev;
> +	unsigned long rate;
> +	int ret;
> +
> +	switch (speed) {
> +	case 10:
> +		rate = 2500000;
> +		break;
> +	case 100:
> +		rate = 25000000;
> +		break;
> +	case 1000:
> +		rate = 125000000;
> +		break;
> +	default:
> +		dev_err(dev, "unknown speed value for GMAC speed=%d", speed);
> +		return;
> +	}
> +
> +	ret = clk_set_rate(bsp_priv->clk_mac_speed, rate);
> +	if (ret)
> +		dev_err(dev, "%s: set clk_mac_speed rate %ld failed %d\n",
> +			__func__, rate, ret);
> +}
> +
> +static const struct rk_gmac_ops rk3566_ops = {
> +	.set_to_rgmii = rk3566_set_to_rgmii,
> +	.set_to_rmii = rk3566_set_to_rmii,
> +	.set_rgmii_speed = rk3566_set_gmac_speed,
> +	.set_rmii_speed = rk3566_set_gmac_speed,
> +};
> +
>  #define RV1108_GRF_GMAC_CON0		0X0900
>  
>  /* RV1108_GRF_GMAC_CON0 */
> @@ -1512,6 +1600,7 @@ static const struct of_device_id rk_gmac_dwmac_match[] = {
>  	{ .compatible = "rockchip,rk3366-gmac", .data = &rk3366_ops },
>  	{ .compatible = "rockchip,rk3368-gmac", .data = &rk3368_ops },
>  	{ .compatible = "rockchip,rk3399-gmac", .data = &rk3399_ops },
> +	{ .compatible = "rockchip,rk3566-gmac", .data = &rk3566_ops },
>  	{ .compatible = "rockchip,rv1108-gmac", .data = &rv1108_ops },
>  	{ }
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
