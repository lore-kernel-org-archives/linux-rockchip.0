Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB47E8783D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 15:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPQKgcv+62Pi8Uu5PTMVHf9T2/hItWXO/kiSnXl7wrQ=; b=AdOBV0E/uo+pyr
	bhqsvwQ4ZdKdP/pfOzfXSosSH5/pG5I0K49jP2G9bCV8vrMlMZBNMyuPbexwz7xgc0jFg8UodlADy
	l9esAu9zwjzVQVTRtjwomDDRJS+JjIg0On12+EbNaXkI+KNE2PySVcMxb544QiIFVimBxmIlLC0f8
	b8vLYAqdv+5uia809v2H2rCDV7UJVSLhbUxG2IXRz0ElBC2IZlUSVzlacroaNf6MSdx38+UneUWFu
	aIv7h9AZKVkgirFwJ6BpJ8GvFKP4P9V/46QPUNe5l6pgqFxwFCUsSMjxhr2RNexznuBEAVnoExd6s
	86RkSyJCRcXjN/t6bpxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnI2u-00000006ot8-04tu;
	Tue, 03 Feb 2026 15:10:28 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnI2q-00000006osQ-39rl
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 15:10:26 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-29f102b013fso59678485ad.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Feb 2026 07:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770131423; x=1770736223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MK5oboaEkHiYwSTjLFoCDPQwjjJ04uX2RfYZ7bqzPwQ=;
        b=N5ybamT47rzRDafkTZcFlwlXP4nljkf1uQhWvkGgKRkf33jp5bME/L6BjGkmFGgifR
         Ear/Jb6KxrZ5nkVkvbD9+yaSYx3UQRzUBsMzeTms/HNM/YI8wyzXTFV0b9AiuC3Pswzi
         Blgm01+ulAPZTqqwLGRuN5kR9LcJrxaMR+wW8Z/cUOB3Fcur5hZ2QMBp0JGFdrRH09Ny
         56ZWcXX//bmhtMTHepwLwBn+Zb2N0W1QJ9QO5rRNXd++OH7UQ5IfTzCd/Yib8HRwVvNh
         VoDtEJ8L8PDEgZZCTiDOYN6PlTVvtp7I98VdWTYnnae7ce+fEvQzJUDJv3ZXDO0aP5lm
         MKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770131423; x=1770736223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MK5oboaEkHiYwSTjLFoCDPQwjjJ04uX2RfYZ7bqzPwQ=;
        b=b62WzqFyHbP7yUHg1e+WTwUUGJpdL1pT8U+Ngi6M5Xb96TqhkNDrkVLZjMXE71+fwp
         o4YHqTVdzkgRJd+qE86N0QawWpO2HhBTuB6qM2sPSh0UX4VrgE/Git5Z+b8njb3lSFs0
         goKv5r47vX9blIM5iYlI09Yhi4DNkTXAtFQtCElf3deV9f/E4I6uVE8mGlyeVkxsdJm6
         1btiMCx3PWWVghAu2n0w9AWMBN+eR2sV+BvBC70rtJJ0K6Oqo2ts3MOSGhuQgchlu2c5
         ZMeVW+QsRVH1PI3oE18nSzCT5OtEJnM/cxs4n+Rex2Qu2SKjjfL0pWzJgFK81gwGX6O3
         Aw/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbzO7DJDeyIUamwb2GsWpOnpAsNbcbgpJPBy7qxP+K14sBiIfQmq7inubvBDEqpu5dEfTAP9wjWXbpq664Sg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdIaptXpi5Ml1FpZ2ZGg8p4tIqSBNOhXVoxT5au4ywSGNxDTU+
	mbs1We5mWCDdVg7998zsc2wW4FfRDIUSDHOcbx6BTfaWUmzH2bllkRVh
X-Gm-Gg: AZuq6aKpCQqEkZ8oiiOPyBNfM1KOtvXQYVJM+knaDiShL2Aa9C3d8Imw8CoTlD+qnYv
	AqTXIZYXnYh9vum0s+IV7TsthVLf0c0QUGf5MBsoYvbNGW9l3yhXotz8FoqkEYiH2XbULLNNOKt
	/TOUb4zcN9Do/EnqoAucxuXxnus0MYXBPdaRn5xZIgX4tA2WoF/hyxuil+WjaiZ1NQ5YX30Zvm2
	C7w5TU14BK8R9wC3eayRsJFbyk9ucJogOdGOjfVDmJ2lTNOMNhb1XXpH3o9ClKQ0AXv6KTJZp0t
	DSDXtFtS1msAZCZcTNRR+grPhHGvcg0bcZlZa+kn9amFBNNCtiES5uN/IoiQ73s71J2B6kpPGu9
	vMTVRZ43DRKp7rJULbqfVNcEAIKBgl2CvzY5PTyX7YyRAAkkdWt2ivOP3R9WZPk8IKdxGNOtHGE
	ckKTUmNjfS
X-Received: by 2002:a17:903:1112:b0:2a0:d33d:a8f0 with SMTP id d9443c01a7336-2a8d993d3b3mr134577365ad.50.1770131422758;
        Tue, 03 Feb 2026 07:10:22 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3e04sm172196585ad.46.2026.02.03.07.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 07:10:22 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: dsimic@manjaro.org
Cc: alchark@gmail.com,
	andyshrk@163.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series 
Date: Tue,  3 Feb 2026 23:10:13 +0800
Message-ID: <20260203151013.305032-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
References: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_071024_799934_57220DBC 
X-CRM114-Status: GOOD (  27.65  )
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

> Hello Jun,
> 
> On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > 
> > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > identical in all other specifications.
> > 
> >   Specification:
> >     - Rockchip RK3566
> >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> >     - eMMC 8GB
> >     - Gigabit Ethernet port x 1
> >     - USB 3.0 port x 1
> >     - USB-C 2.0 port x 1
> >     - 12V DC Power supply
> >     - SATA 3.0 connector x 1
> > 
> > These devices do not have a PMIC, and their hardware circuit design
> > is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> > are not available at this time, with the vendor firmware dts available
> > for reference[2].
> > 
> > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > 
> > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> > 
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
> >  2 files changed, 313 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4d384f153c13..234fa53abe17 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > new file mode 100644
> > index 000000000000..2007b93e190e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > @@ -0,0 +1,312 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC/OEC-turbo";
> > +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";
> 
> Thanks for the v3!  After thinking a bit more about it, it would be better
> to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
> part, because the only difference between the board variants is the amount
> of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
> and the single compatible renamed to "onething,edge-cube", because I see no
> need to have an additional compatible, which may be added later if really
> needed for some unforeseen differentiating purpose.
> 
> Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
> combined name, because "Edge Cube" is more self-descriptive than just "OEC",
> which may also help with various search engines down the road.

Sorry for the quick follow-up.
In official documentation (Most of it is in Chinese) from OneThing Tech[1], 
the designations "OEC/OEC-turbo" are more commonly and widely used.
for this reason, I propose retaining the "OEC/OEC-turbo" naming in the model 
property.

[1] https://help.onethingcloud.com/be81/OEC1/80c5

Best regards,
Jun Yan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
