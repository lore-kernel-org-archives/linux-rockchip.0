Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 16:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/0BKdRzmJnfJeRrYaPOeVUNjEMq1DqX6ykDBIBgo2U=; b=smwTYx8L6wFBSP
	E9YvC2Dg6x8DWX4adgC8lkXyeKZu3CMVW5bghvQTe5ynETCxH5c1NHC8KAvtvGdx9hqEiPViZOcDv
	fxVunvV6SS6kkC8LhxdbUF3WlRtNDwVBxES14ktcDa7L/xYtqI5i3jkJZ8fVyBhYuYbFgiuhqapTZ
	5Yy7jhyh//5/jewEWQrHWwjaa8U7b4fFRiRGXD6m9PhHQA0Ykk+74Ib7hoYevNsxXMoaLz4jl0u5/
	HQq5nICtwsHopzTXizhZU4xMT5nep/6TL1WE9++Jn+vO6W/GpHADpDS6LEx8VNF+PKLRS8MbBEPKq
	LgT2epl4hyujK7bINP/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIo6-00AZA0-Vt; Fri, 30 Sep 2022 16:24:11 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIo3-00AZ73-5D
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 16:24:09 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 35C5620005;
	Fri, 30 Sep 2022 16:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664555040;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CjAkxQQAQT/7lvZKaZ2Zb5spM7B1YjHYNdMuf/Z9B4o=;
	b=Nm33xjSK6gwp7AwvvGvR6AqEEmFD5kMIFVPDAPfMgsw1nMvKIDYUBS2u0O3ki6YOqaRJTe
	hGHK6VdvOmh2t0t4tyiS1OgFVDv+0UPlrspAAZSPbBnCN/pyavIjQclCUrsXow7i1YQN7y
	oAqdDQeawXsste2QJITeCoxprluhFtM+kuJJ6cCwFEtNZY3KDT8Oqb5PFb72T3T1YwY4CF
	rCnkyNThKBoXuc3Pyo6rTJxXPr7JstMJ+0sFPAktuGe68Ec9wkILgP6bv5mAey/tMZoFAS
	SWbTnsdXz8y11KHWuuCkvCzfmstGppxKcvEmwQ/qPibJUPwjHvyeq+/coISFtg==
Date: Fri, 30 Sep 2022 18:23:58 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
Message-ID: <20220930182358.65da06dd@booty>
In-Reply-To: <20220930102620.1568864-1-jay.xu@rock-chips.com>
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_092407_656575_A36A7869 
X-CRM114-Status: GOOD (  20.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Jianqun Xu,

On Fri, 30 Sep 2022 18:26:20 +0800
Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Part of pins from RK3308 SoCs have two registers to do pinmux, one is
> the origin register with 2bits named by gpioxx_sel, and another with
> 3bits and named by gpioxx_sel_plus.

Are the "plus" registers documented anywhere?

The reference manual I have does not mention them.

> The default value is 2bits. But Rockchip downstream pinctrl driver has a
> soc init for RK3308 to switch to the 3bits path. The first patch
> upstream the support for RK3308 pinctrl but drop the soc init codes.
> 
> The commit 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits") try
> to fix back to 2 bits path, but that will makes some iomux not be
> supported.

Sorry about that, of course I could not know because my documentation
does not mention those registers.

> @@ -3014,6 +3014,50 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
>  			 rockchip_pinctrl_resume);
>  
> +
> +static int rk3308_soc_data_init(struct rockchip_pinctrl *info)
> +{
> +	int ret;
> +
> +	#define RK3308_GRF_SOC_CON13	(0x608)
> +	#define RK3308_GRF_SOC_CON15	(0x610)
> +
> +	/* RK3308_GRF_SOC_CON13 */
> +	#define RK3308_GRF_I2C3_IOFUNC_SRC_CTRL	(BIT(16 + 10) | BIT(10))
> +	#define RK3308_GRF_GPIO2A3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
> +	#define RK3308_GRF_GPIO2A2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
> +
> +	/* RK3308_GRF_SOC_CON15 */
> +	#define RK3308_GRF_GPIO2C0_SEL_SRC_CTRL	(BIT(16 + 11) | BIT(11))
> +	#define RK3308_GRF_GPIO3B3_SEL_SRC_CTRL	(BIT(16 + 7)  | BIT(7))
> +	#define RK3308_GRF_GPIO3B2_SEL_SRC_CTRL	(BIT(16 + 3)  | BIT(3))
> +
> +	/*
> +	 * Enable the special ctrl of selected sources.
> +	 *
> +	 * Example reference to GRF_SOC_CON13 description:
> +	 *
> +	 * gpio2a2_sel_src_ctrl
> +	 * IOMUX control source selection.
> +	 * 1'b0: use basic GPIO2A_IOMUX[gpio2a2_sel]
> +	 * 1'b1: use gpio2a2_sel_plus instead of GPIO2A_IOMUX[gpio2a2_sel]
> +	 */
> +
> +	ret = regmap_write(info->regmap_base, RK3308_GRF_SOC_CON13,
> +			   RK3308_GRF_I2C3_IOFUNC_SRC_CTRL |
> +			   RK3308_GRF_GPIO2A3_SEL_SRC_CTRL |
> +			   RK3308_GRF_GPIO2A2_SEL_SRC_CTRL);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(info->regmap_base, RK3308_GRF_SOC_CON15,
> +			   RK3308_GRF_GPIO2C0_SEL_SRC_CTRL |
> +			   RK3308_GRF_GPIO3B3_SEL_SRC_CTRL |
> +			   RK3308_GRF_GPIO3B2_SEL_SRC_CTRL);
> +
> +	return ret;
> +}

This is new code, not code that my patch has removed. Is it needed? How
did the driver work before without this code?

I think we need to clarify those registers before applying a fix that
might create other problems.

Best regards.
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
