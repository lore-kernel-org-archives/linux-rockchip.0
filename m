Return-Path: <SRS0=ACC0=PK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E05C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Oct 2021 11:26:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B29860F4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Oct 2021 11:26:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9B29860F4F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D9t13mBXfxr7fRf5gOzDq/66nXS31t7cZwEpIOfIGQ=; b=uDeRhkaBwA+PFV
	bVsRbkrf/XQJJEGAB0v3dcff2sutG8eOdyyLkKQ3qIDfzG3IXieCZ7ELjvQKSHSeMwH2JxrIutBXR
	mOKaaPE4qssAVYLhTY4WMCMP9lqZSl67C23PFmEN7NPwowSoAN0M5rFdtG9KIn+BlvBqvLHTQkwA4
	SthaWAR6jCa4l83lQaT/iB5PIbjcyocQl5JKfWiAVRwz7tHr3aMlGg068pUdR/zOp5hV6+RNrQFH6
	Xa2/as3aq7Vp4+uKydON10cJl5uTGHH8sHBdf06f9ZKLKPIcg8v155ocKdgXt0Abqpsbp7TzQwSmt
	oSC0KDnVUyQr1NaeFzUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdsgr-00Ae1n-4o; Fri, 22 Oct 2021 11:26:25 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdsgn-00Ae0V-Be; Fri, 22 Oct 2021 11:26:23 +0000
Received: by mail-yb1-xb30.google.com with SMTP id t127so6073549ybf.13;
 Fri, 22 Oct 2021 04:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4+1iWewdO/AOypFcUk7ro7SB4/2etVS8UVIHu5F//bk=;
 b=lzSpt3xjpHPhIjHkqPYMJ8yopGn3Hg78ECzZvlXCiSVzaSPXgf1aQPT4wkfSBGmtwN
 F87lcG0fJOR1L7P9URqtYYzAS5CDO59Jm7COtML/qyZYZM22rlmZ0Who7gqiOkLoHCxH
 X+xaB6nv6Syj3kS9VhTF/4uFmB7a/IbJhg5BM+TqHfPlDH84kxZz7UH1CWMNpTzt0yrX
 6wfFzdojQVFG+Tfo99gyM18ePlzUWrC3g3dVdg7Jigjjq0OJ/N/z6Y4zhaZAhtuKg2gZ
 x/9EqHGYWVjkqldEOxteS0AQ0XKnkrGWsyLoiFWX3U3F42ok5sa20fq/1a+sqN2Iw18G
 3QPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4+1iWewdO/AOypFcUk7ro7SB4/2etVS8UVIHu5F//bk=;
 b=EQywpbsZ3dHEsRacFVJm58f9OdOHeoFWQ2FGIEJT4HxIKdE0o6D/N4fHoRkgn9xTqC
 jvt7cLC1Ibi3v15nGiK4t5mEUTNwbMunoTclFmL/Pti1cagqVnBu8lTqfZtYA3NRfCTP
 LMJuonbz/JrdbI8S8PF89RjswLe/xot/6dnCObSeWLJQ3ygFLT3qwt5iM1UV1HjMtFm/
 NE6VWD1ugOVERuagQ7lao0XduVlaAvSUaHJwfCEy+gQj9hkhJs8XJIQWxX6oj0jdGhrk
 TIIeheqCxQGKrjCIIY5/ZsZ82MpWVSM6mIi79LNCM7qKXZoKPb2Oz6WL9swzxFnjR0FR
 jIVw==
X-Gm-Message-State: AOAM530o7sMOHFa3hecae2NZgBmEuG6MlYmCPM2PM2GV1nY41iGCi7+S
 ekdugg+YKPX8GBYc1qbmj1hfxNtM3ZOf6oLIyLI=
X-Google-Smtp-Source: ABdhPJy1gOHdMe1MOq61g6BzYs93uYXzWyK00GdYBEiqUQwvh0oI7LkwOW8smQ4Hz7ZNjhHfOfh0MJi3Uoq0xtlKazM=
X-Received: by 2002:a25:1c02:: with SMTP id c2mr13902799ybc.218.1634901978978; 
 Fri, 22 Oct 2021 04:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <20211013101938.28061-1-yifeng.zhao@rock-chips.com>
 <20211013101938.28061-3-yifeng.zhao@rock-chips.com> <YXKXULdyPuv1BirB@matsya>
In-Reply-To: <YXKXULdyPuv1BirB@matsya>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 22 Oct 2021 07:26:07 -0400
Message-ID: <CAMdYzYqJs_uT1DT9EFydAmWCoRuizkA==HoMW8VTd68dg0hQ2A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy/rockchip: add naneng combo phy for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 "Kishon Vijay Abraham, I" <kishon@ti.com>, p.zabel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_042621_430193_B74A74BC 
X-CRM114-Status: GOOD (  26.76  )
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

On Fri, Oct 22, 2021 at 6:51 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 13-10-21, 18:19, Yifeng Zhao wrote:
> > This patch implements a combo phy driver for Rockchip SoCs
> > with NaNeng IP block. This phy can be used as pcie-phy, usb3-phy,
> > sata-phy or sgmii-phy.
> >
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > ---
> >
> > Changes in v2:
> > - Using api devm_platform_get_and_ioremap_resource.
> > - Modify rockchip_combphy_set_Mode.
> > - Add some PHY registers definition.
> >
> >  drivers/phy/rockchip/Kconfig                  |   8 +
> >  drivers/phy/rockchip/Makefile                 |   1 +
> >  .../rockchip/phy-rockchip-naneng-combphy.c    | 650 ++++++++++++++++++
> >  3 files changed, 659 insertions(+)
> >  create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> >
> > diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> > index e812adad7242..9022e395c056 100644
> > --- a/drivers/phy/rockchip/Kconfig
> > +++ b/drivers/phy/rockchip/Kconfig
> > @@ -66,6 +66,14 @@ config PHY_ROCKCHIP_INNO_DSIDPHY
> >         Enable this to support the Rockchip MIPI/LVDS/TTL PHY with
> >         Innosilicon IP block.
> >
> > +config PHY_ROCKCHIP_NANENG_COMBO_PHY
> > +     tristate "Rockchip NANENG COMBO PHY Driver"
> > +     depends on ARCH_ROCKCHIP && OF
> > +     select GENERIC_PHY
> > +     help
> > +       Enable this to support the Rockchip PCIe/USB3.0/SATA/QSGMII
> > +       combo PHY with NaNeng IP block.
> > +
> >  config PHY_ROCKCHIP_PCIE
> >       tristate "Rockchip PCIe PHY Driver"
> >       depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
> > diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
> > index f0eec212b2aa..a5041efb5b8f 100644
> > --- a/drivers/phy/rockchip/Makefile
> > +++ b/drivers/phy/rockchip/Makefile
> > @@ -6,6 +6,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_CSIDPHY)       += phy-rockchip-inno-csidphy.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY)      += phy-rockchip-inno-dsidphy.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI) += phy-rockchip-inno-hdmi.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2) += phy-rockchip-inno-usb2.o
> > +obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)  += phy-rockchip-naneng-combphy.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_PCIE)              += phy-rockchip-pcie.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)     += phy-rockchip-typec.o
> >  obj-$(CONFIG_PHY_ROCKCHIP_USB)               += phy-rockchip-usb.o
> > diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> > new file mode 100644
> > index 000000000000..fbfc5fbbd5b8
> > --- /dev/null
> > +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> > @@ -0,0 +1,650 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Rockchip PIPE USB3.0 PCIE SATA combphy driver
> > + *
> > + * Copyright (C) 2021 Rockchip Electronics Co., Ltd.
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/kernel.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <dt-bindings/phy/phy.h>
> > +
> > +#define BIT_WRITEABLE_SHIFT          16
> > +#define REF_CLOCK_24MHz                      24000000
> > +#define REF_CLOCK_25MHz                      25000000
> > +#define REF_CLOCK_100MHz             100000000
> > +/* RK3568 T22 COMBO PHY REG */
> > +#define RK3568_T22_PHYREG5           (0x5 << 2)
> > +#define T22_PHYREG5_PLL_DIV_MASK     GENMASK(7, 6)
> > +#define T22_PHYREG5_PLL_DIV_SHIFT    6
> > +#define T22_PHYREG5_PLL_DIV_2                1
> > +
> > +#define RK3568_T22_PHYREG6           (0x6 << 2)
> > +#define T22_PHYREG6_TX_RTERM_MASK    GENMASK(7, 4)
> > +#define T22_PHYREG6_TX_RTERM_SHIFT   4
> > +#define T22_PHYREG6_TX_RTERM_50OHM   0x8
> > +#define T22_PHYREG6_RX_RTERM_MASK    GENMASK(3, 0)
> > +#define T22_PHYREG6_RX_RTERM_SHIFT   0
> > +#define T22_PHYREG6_RX_RTERM_44OHM   0xF
> > +
> > +#define RK3568_T22_PHYREG7           (0x7 << 2)
>
> Pls use GENMASK for these?
>
> > +#define T22_PHYREG7_SSC_EN           BIT(4)
> > +
> > +#define RK3568_T22_PHYREG10          (0xA << 2)
> > +#define T22_PHYREG10_SU_TRIM_0_7     0xF0
> > +
> > +#define RK3568_T22_PHYREG11          (0xB << 2)
> > +#define T22_PHYREG11_PLL_LPF_ADJ     0x4
> > +
> > +#define RK3568_T22_PHYREG12          (0xC << 2)
> > +#define T22_PHYREG12_RESISTER_MASK   GENMASK(5, 4)
> > +#define T22_PHYREG12_RESISTER_SHIFT  0x4
>
> bitfield.h has nice helpers which can extract/program values and avoid
> one to define these shifts

They aren't values, they are registers.
This is a remnant from the downstream driver's attempt at obfuscating
the register it's touching.
Please define these correctly.

> --
> ~Vinod
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
