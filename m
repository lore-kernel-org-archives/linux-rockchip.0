Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37FEECCA481
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 11:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS1OzzTsxgGMN8+U0KDI4V1b10IUTtMLAgIHxGheseI=; b=DJj2PVJ2OAw4Ou
	406L52lwHMcKEHp0CW/Q8x9CwAgUhuKPgiGehG+LlGOv9d2d5iobKa0Zug9bcNFcOerpsp4WS++se
	/hqmcR2qnDvriz9a8KrlahKTbJBHelt0fQoAY0XKb5HPQ4oqLscZP61r8z33NWPiaJy2c9vbRs535
	DkJhFHrUMgtxJB0bf+5/NtjeBidUd8SsNAgbV+MTGWL+vUAyyoz+C92hQfIaCzaI/9sHbhkGGd/4M
	jT7zBxtEqCUo/EH8CTq6bey9/NcTPWabmboumS2ABtBhIttZYavTIdtDJp5VrDAzf0T0tuArwQJ4Y
	RSyPBoyCyMTxQznun2SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCgQt-00FsyA-N9; Sat, 16 Jul 2022 11:58:03 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCgQr-00Fswa-1f; Sat, 16 Jul 2022 11:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657972653;
	bh=mr/pCYiVaMNMV+tbkPhD40SBlpbSeCNm1zKJ+o4vbaM=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=k35R4OnElnQiIEBbrBO2jLhjxs/arS4e9u8sBwC7wxXWp7z9QVZQjpn20Xw4yASl9
	 D43cI7VbghaqzWgFB3ZnLSjMre1XiR4LxpsxSBk3yrDInhWgd/xFGsnDKwe2BikAQA
	 PZG5dalEB/VLrWFyxkQT5CxhGLsNsDmAjr9kdq6c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.159] ([80.245.77.159]) by web-mail.gmx.net
 (3c-app-gmx-bap26.server.lan [172.19.172.96]) (via HTTP); Sat, 16 Jul 2022
 13:57:33 +0200
MIME-Version: 1.0
Message-ID: <trinity-7c08bee0-07dc-4e45-8157-50aa7fa7c3cc-1657972653195@3c-app-gmx-bap26>
From: Frank Wunderlich <frank-w@public-files.de>
To: Vinod Koul <vkoul@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker
 <jbx6244@gmail.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, Simon Xue <xxm@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn
 Lin <shawn.lin@rock-chips.com>, Liang Chen <cl@rock-chips.com>
Subject: Aw: Re: [PATCH v4 3/5] phy: rockchip: Support PCIe v3
Date: Sat, 16 Jul 2022 13:57:33 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <YtFTrEzefxIYswnj@matsya>
References: <20220619082605.7935-1-linux@fw-web.de>
 <20220619082605.7935-4-linux@fw-web.de> <YtFTrEzefxIYswnj@matsya>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Ll0lW5FfOy8PK39ATKJ4/5EoQQotC9SLpE+mR2q2O3zLIVgoCKp1HAEYafnZ2klS2sSAg
 rOHkZVbW243ld09DQApdR5rPZOgmo3j8OZAfCIN8ObpP9JzuULItUViL2vPtyhGjcHC952WOQydW
 pSbIgnn/ufx/w9G/WaWKaPl/D8V0lFf6QHSkCv2vqFFAOmRgph11FjcSIxMnzsLmlkPYUQT6jsrW
 EAfi17jfK9lzMkTfvzY3BqosHPZ2AzpEryhLVO+GVCdCFPw4DnSgTLBuUZCdjgiQtoHwrhEMlf+r
 wk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:WtWHZiRozh8=:gbLjeos4Y+pt3jyN6qW9cs
 gYBkeTFO9vX/UGcr7AzIYKcMm9zvwZk0fAwkWac5adpiV2lm4J2ynqjJaNvuv0coQ9Pc1WNwY
 oqGG2uCUNi2eZRNatQu2i9+ThGdvgsPuE8KIaKvWzkf5rNnRdiZT3MhZDqT6dhBR5DCkvNXGd
 Qvc0DpsYMq9FTYGnbP2sVLij3jj798d92c6ELBK2465eT8MZSHxwIywCK281T5J4FjqOfadN5
 SBtarvHQ7r2oXUO7ZQNywMw7F8fDtaZM/OGswmz60F7RtO1EbqZ2XuaYnF08OdDu7SDgsvDET
 iUKKmY4bvfFT8rrJGooZq2rRi6sCQ9iHs1jPJGUxd+jWg7pECVoP7pNm5Xe5JjBA3P8aS/OgM
 J6idQYvrc/BpeN6WQ6Zzx3p0477/UEBnTxN/IURgxdzkUWdtKm1ZcNby0c2zcPdq+XjP8iv3O
 mYBWbKB1VFqsMp/CBZb7lInSwB2NzC+BkdpCsB/8ij/ELFz9yBnqSCdKM2BIhjThD1sVSXPvb
 TCNb5bPW9jf/9gZiUWDhkPyPZ0VkMpQ+phJA00M4OB1zhv+kPWgZ8d1ysWP2gT6aCotlUnn+3
 mOgcLP1W2NcB+kerxAlVbwCLKJbbuUp0GWH7kpqmasyWeUcTnGaq1wfZvDs7DPjRuIxoWB8yy
 Dwp1akwpexbmyIY+Wlkr0tMFpq2sEXkrgycwJAWChf2RKuxSNF4FMopu55hx1rhpm5vKcnKor
 YN1eNE25CdlB4jMynamVbJ41Db86oxrgoGzKSIsri4HHbWfNmWndEvV9XIFC8q8xwmPMgXhTu
 oimi6gI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220716_045801_428121_CEA8DC30 
X-CRM114-Status: GOOD (  22.62  )
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

Hi

thanks for review.

> Gesendet: Freitag, 15. Juli 2022 um 13:46 Uhr
> Von: "Vinod Koul" <vkoul@kernel.org>
> > + * Copyright (C) 2020 Rockchip Electronics Co., Ltd.
>
> 2022 now :)

ok, i change it

> > +	/* Deassert PCIe PMA output clamp mode */
> > +	regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON9, BIT(15) | BIT(31));
>
> Can we define these bits..?

i have no naming found for it as these are not described in the TRM

maybe Peter or Liang/Shawn has these?

> > +
> > +	for (int i = 0; i < priv->num_lanes; i++) {
> > +		dev_info(&phy->dev, "lane number %d, val %d\n", i, priv->lanes[i]);
> > +		if (priv->lanes[i] > 1)
> > +			bifurcation = true;
> > +	}
> > +
> > +	/* Set bifurcation if needed, and it doesn't care RC/EP */
> > +	if (bifurcation) {
> > +		dev_info(&phy->dev, "bifurcation enabled\n");
> > +		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON6,
> > +			     (0xf << 16) | RK3568_BIFURCATION_LANE_0_1);
>
> upper word 0xf?

afaik yes (write-enable), is there any other more readable way?

> > +		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON1,
> > +			     BIT(15) | BIT(31));
>
> again define bits please

these are not documented too

> > +	} else {
> > +		dev_info(&phy->dev, "bifurcation disabled\n");
>
> debug level?

i made them same as the "bifurcation enabled" to have always an info about it in dmesg.

> > +	if (ret)
> > +		pr_err("%s: lock failed 0x%x, check input refclk and power supply\n",
> > +		       __func__, reg);
>
> Can this be made dev_err too, I still see bunch of pr_ and at least here
> you have driver context... while at it drop the __func__ from these logs
> too please

ok, i'll change it

> > diff --git a/include/linux/phy/pcie.h b/include/linux/phy/pcie.h
> > new file mode 100644
> > index 000000000000..93c997f520fe
> > --- /dev/null
> > +++ b/include/linux/phy/pcie.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>
> Header is 2021 !

i'll change

> --
> ~Vinod

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
