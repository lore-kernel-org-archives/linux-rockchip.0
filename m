Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF135C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 20:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJ956OKgv+BhZ7sL4Pqaw2NZF+/ePNDfOX4VyIrtGww=; b=1BtxKf8U0DAt/U
	WDW8tVPyKaew7R1fh8yqP5QB1tWgilLsZJV82yfu916JAF4nVgtLjQHvngCx8zgRgZ4u5KxVw0dju
	DXs5Tw49MnsVvl5FeuG6qP37oNd2ucxIGXETGfPtPFhGuPsVnSuzdW+WnPaHpi78jO2UkhgfA4JOb
	1IQS5Zw8IqVbLe11LzjJ0FAibrBDednb8ify9tbW+OimzGQPWuBofXsQ1WB6XYS+KTL1VH//UM/6z
	DMk4g7iCenNnAVQzjJoTioom+nP2LDlthwQ+cCKVPbXIuMJOtDNdvh3gBhbKySkrt5i3E1SZgrhkO
	E0OEvM7c1gEDmW1p3F/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhMr-0000000GI7m-2t6y;
	Mon, 27 May 2024 20:54:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhMp-0000000GI7M-0Sdd;
	Mon, 27 May 2024 20:54:52 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBhMi-0004Xw-Qy; Mon, 27 May 2024 22:54:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@web.de>, Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add CM3588 NAS board
Date: Mon, 27 May 2024 22:54:43 +0200
Message-ID: <3609340.LM0AJKV5NW@diego>
In-Reply-To: <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
References: <20240526214340.8459-1-seb-dev@web.de> <20240526214820.9381-1-seb-dev@web.de>
 <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_135451_270293_DF6DA082 
X-CRM114-Status: GOOD (  28.67  )
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

Am Montag, 27. Mai 2024, 21:02:02 CEST schrieb Jonas Karlman:
> Hi Sebastian,
> 
> On 2024-05-26 23:48, Sebastian Kropatsch wrote:
> > The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
> > the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.
> > 
> > Hardware features:
> >     - Rockchip RK3588 SoC
> >     - 4GB/8GB/16GB LPDDR4x RAM
> >     - 64GB eMMC
> >     - MicroSD card slot
> >     - 1x RTL8125B 2.5G Ethernet
> >     - 4x M.2 M-Key with PCIe 3.0 x1 (via bifurcation) for NVMe SSDs
> >     - 2x USB 3.0 (USB 3.1 Gen1) Type-A, 1x USB 2.0 Type-A
> >     - 1x USB 3.0 Type-C with DP AltMode support
> >     - 2x HDMI 2.1 out, 1x HDMI in
> >     - MIPI-CSI Connector, MIPI-DSI Connector
> >     - 40-pin GPIO header
> >     - 4 buttons: power, reset, recovery, MASK, user button
> >     - 3.5mm Headphone out, 2.0mm PH-2A Mic in
> >     - 5V Fan connector, PWM buzzer, IR receiver, RTC battery connector
> > 
> > PCIe bifurcation is used to handle all four M.2 sockets at PCIe 3.0 x1
> > speed. Data lane mapping in the DT is done like described in commit
> > f8020dfb311d ("phy: rockchip-snps-pcie3: fix bifurcation on rk3588").
> > 
> > This device tree includes support for eMMC, SD card, ethernet, all USB2
> > and USB3 ports, all four M.2 slots, GPU, RTC, buzzer, UART debugging as
> > well as the buttons and LEDs.
> > The GPIOs are labeled according to the schematics.
> > 
> > Signed-off-by: Sebastian Kropatsch <seb-dev@web.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
> >  .../boot/dts/rockchip/rk3588-cm3588-nas.dts   | 1269 +++++++++++++++++
> >  2 files changed, 1270 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
> 
> Because the CM3588 is a SoM and the NAS is a carrier board this should
> probably be split in two, cm3588.dtsi and cm3588-nas.dts.

also, because of that way too generic name "cm", please incorporate the
company name in the filename as well. For the same reason we named
the rk3568-wolfvision-pf5.dts that way ;-) [Wolfvision being the company]

So maybe:
rk3588-friendlyelec-cm3588.dtsi and rk3588-friendlyelec-cm3588-nas.dts

 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index c544ff507d20..f1ff58bdf2cd 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-cm3588-nas.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
> > new file mode 100644
> > index 000000000000..6c45b376d001
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts
> > @@ -0,0 +1,1269 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2023 FriendlyElec Computer Tech. Co., Ltd.
> > + * Copyright (c) 2023 Thomas McKahan
> > + * Copyright (c) 2024 Sebastian Kropatsch
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> > +#include <dt-bindings/usb/pd.h>
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	model = "FriendlyElec CM3588 NAS";
> > +	compatible = "friendlyarm,cm3588-nas", "rockchip,rk3588";
> 
> Maybe this should be something like:
> 
>   "friendlyarm,cm3588-nas", "friendlyarm,cm3588", "rockchip,rk3588";

This also needs an update of the binding document. Please use a similar
notion as the other som + baseboard entries
(const for the som + enum with one entry with the baseboard)

[...]


> > +/* Connected to 5V Fan */
> > +&pwm1 {
> > +	pinctrl-0 = <&pwm1m1_pins>;
> 
> pinctrl-names is missing, should typically always be defined together
> with pinctrl-X props, same for multiple nodes.

A rationale being that you don't want the soc dtsi in a later stage adding
a possible pinctrl-1 with the board only overriding the pinctrl-0.
When you set the pinctrl-names as well, you get independent from that.


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
