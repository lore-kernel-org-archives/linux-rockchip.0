Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379B1C38150
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 07:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS02LPb09/yUcqmFOx1OyakM9//G92Dl262zDtv23Rk=; b=qFQw4lV5LNDgeM
	LF0G+iLgJgfGmaKiNTvw6L5wklLIcwerx/mDhSRTpfTIIygkmUSAPe6cRh338cpU9GyCERTg/758+
	F3zbfKY9Tzk7OnGISNpvGbo+Xk/QMYqL3ImxOSH5o0bkXjRfxynWxPGByfVSBn3KfVZwwJR8p2orJ
	iGka1erf8NHV3na0SxOT+G5NX9GJFYr58ODcruACunuFBaOtppMExuebvKZg/T5Mkt5xFIBaZ760e
	TnaaWSJGStJ3TjMchAQRyQYa5qyv0Ou1Sb2HMGNI/K1QN8EwbeHVH4idkV8alGQon3hAuez9wDCuw
	GQ/YRDe5SlW2LQD9vIDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRS6t-00000009mwC-19M7;
	Wed, 10 Jul 2024 07:51:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRS6c-00000009msc-0prT;
	Wed, 10 Jul 2024 07:51:15 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRS6O-0005Or-Ip; Wed, 10 Jul 2024 09:51:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/6] Binding and driver for "dumb" clock generators
Date: Wed, 10 Jul 2024 09:50:59 +0200
Message-ID: <4022386.ZaRXLXkqSa@diego>
In-Reply-To: <CANAwSgQGoeyy3V9hBNcxFynRgR-rUanUzVN41uFxu0-_OqKKZg@mail.gmail.com>
References: <20240709123121.1452394-1-heiko@sntech.de>
 <CANAwSgQGoeyy3V9hBNcxFynRgR-rUanUzVN41uFxu0-_OqKKZg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_005114_299791_7B47B46B 
X-CRM114-Status: GOOD (  33.21  )
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

Hi Anand,

Am Mittwoch, 10. Juli 2024, 05:02:57 CEST schrieb Anand Moon:
> On Tue, 9 Jul 2024 at 18:02, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) have
> > external clock generators on the board to generate the needed 100MHz
> > reference clock the PCIe3 controller needs.
> >
> > Often these clock generators need supplies to be enabled to run.
> >
> > Modelling this clock has taken a number of shapes:
> > - The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" [0]
> >   &pcie30phy {
> >         phy-supply = <&vcc3v3_pi6c_03>;
> >         status = "okay";
> >   };
> >   which is of course not part of the binding
> >
> > - On the Rock-5-ITX the supply of the clock generator is controlled by
> >   the same gpio as the regulator supplying the the port connected to the
> >   pcie30x4 controller, so if this controller probes first, both
> >   controllers will just run. But if the pcie30x2 controller probes first
> >   (which has a different supply), the controller will stall at the first
> >   dbi read.
> >
> > - Recent Theobroma-Systems boards (Jaguar and Tiger) modelled their
> >   generator as a combination of fixed clock and gpio-gate, which works
> >   because the generator's vdd-supply is always on and only the output-
> >   enable pin needs to be toggled.
> >
> >
> > So this series attempts to improve the situation by allowing to model
> > these clock generators as actual entities in the devicetree, to not have
> > them just accidentially work or break bindings.
> >
> 
> I was wondering if these changes apply to Radxa Rock 5b SbC, it does not have
> pi6c557 clock generator but the schematic supports GEN_CLK_100MHZ is
> input to CLKin0 which is generated via the VCC3V3_PI6C_05 (100MHz,3.3V,3225)
> regulator.

yes, that is the same setup as on the Rock 5 ITX, see it's patch in
this series.

The difference being that for your Rock 5b it already works by accident,
as the pcie30x4 port-supply and the supply for the clock-generator are
controlled by the same gpio.

So it does make sense to model this correctly for correctness sake, but
there is no immediate need for action, as there is no fault happening
like on the Rock 5 ITX with its two separate ports.


Heiko


> > [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts#n605
> >
> > Heiko Stuebner (6):
> >   dt-bindings: clocks: add binding for generic clock-generators
> >   clk: add driver for generic clock generators
> >   arm64: dts: rockchip: fix the pcie clock generator on Rock 5 ITX
> >   arm64: dts: rockchip: use clock-generator for pcie-refclk on
> >     rk3588-jaguar
> >   arm64: dts: rockchip: use clock-generator for pcie-refclk on
> >     rk3588-tiger
> >   arm64: dts: rockchip: add pinctrl for clk-generator gpio on
> >     rk3588-tiger
> >
> >  .../bindings/clock/clock-generator.yaml       |  62 ++++++++
> >  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |  13 +-
> >  .../boot/dts/rockchip/rk3588-rock-5itx.dts    |  34 ++++-
> >  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |  21 +--
> >  drivers/clk/Kconfig                           |   7 +
> >  drivers/clk/Makefile                          |   1 +
> >  drivers/clk/clk-generator.c                   | 133 ++++++++++++++++++
> >  7 files changed, 251 insertions(+), 20 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml
> >  create mode 100644 drivers/clk/clk-generator.c
> >
> > --
> > 2.39.2
> >
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
