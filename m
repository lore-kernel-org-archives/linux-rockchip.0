Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87D4CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 11:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hq81Y7A7T/EyOyoIgOkJ45lO/ZujDxRRLEjgbFzWg8I=; b=e8H5oyQlhYusnI
	yddPLU1cL+jLMKGJJg1Ok3sokNoDASIecSOouUX229GeIq2CPZnDIBQprHvH3uDRgxHaFC8veLrEi
	s/JmsC4PaESyBZm62ToZ4gj7KlC+omEz0JJuvP84e+lucH/mG273CuxjpbmPwfCYOq9Wswp10IUxh
	EHYUAgH65/uzQlr5dKPsTYUjd797OVNJOt86TQNknIRv9iT5kkhmSBbJCR3PGV0E9nXiJBvpP/Dgb
	TgqCciB8hXMUl7/9IoEAA9GCpfm3JnlXgPpGMotQO2n0AAgsLETjs2QfTMrEur39pXrG1OAXLu66x
	/3rDP27CzOvz492br+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl7nY-00G8UQ-8W; Sun, 01 May 2022 11:31:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl7nV-00G8Ti-Je; Sun, 01 May 2022 11:31:31 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nl7nP-0005rq-Um; Sun, 01 May 2022 13:31:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
Date: Sun, 01 May 2022 13:31:23 +0200
Message-ID: <3428030.iIbC2pHGDl@diego>
In-Reply-To: <46548c93-4e6d-858c-8b79-03be9326c92a@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
 <20220429115252.2360496-6-pgwipeout@gmail.com>
 <46548c93-4e6d-858c-8b79-03be9326c92a@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_043129_693649_BC6613AD 
X-CRM114-Status: GOOD (  23.13  )
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

Am Sonntag, 1. Mai 2022, 09:06:33 CEST schrieb Johan Jonker:
> 
> On 4/29/22 13:52, Peter Geis wrote:
> > Add a device tree for the Pine64 Quartz64 Model B single board computer.
> > This board ouputs debug on uart2 and supports the following components:
> > Gigabit Ethernet
> > USB2 x2 (one port otg capable)
> > USB3
> > PCIe/SATA M2
> > HDMI
> > DSI (RPi compatible pinout)
> > CSI (RPi compatible pinout)
> > A/B/G/N WiFi
> > Bluetooth
> > SDMMC
> > eMMC
> > SPI Flash
> > PI-40 compatible pin header
> > 
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 615 ++++++++++++++++++
> >  2 files changed, 616 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4ae9f35434b8..252ee47b8a1d 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -59,5 +59,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > new file mode 100644
> > index 000000000000..184ab7e1d178
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > @@ -0,0 +1,615 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +	model = "Pine64 RK3566 Quartz64-B Board";
> > +	compatible = "pine64,quartz64-b", "rockchip,rk3566";
> > +
> 
> [..]
> 
> > +
> > +&mdio1 {
> 
> > +	rgmii_phy1: ethernet-phy@0 {
> > +		compatible = "ethernet-phy-ieee802.3-c22";
> > +		reg = <0x1>;
> 
> Hi,
> 
> The reg value doesn't match the node name.
> Other 2 boards use "reg = <0>" with label "rgmii_phy1".
> Could you check?

I do have an older Quartz-B in my boardfarm and in that older
devicetree the phy-reg also is "0" instead of the "1" used here.

Is that a hardware-change?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
