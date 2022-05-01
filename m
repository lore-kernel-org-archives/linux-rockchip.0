Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8140AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuZgxpez2VPWkFJaoyWL7RVHm8uhBLnqVR3eIzu9MF8=; b=WZCjGnGxcjtkWN
	+AyIUA+GFjFpoj4FP9aIE0B1DYu1Ap+wQuFDrMJxexuELTwMW0Bdud3xSEBcbDM9XeRR3ZSlGKHkg
	o1pgFOkqX8rwgbGdo1xAc/lVHKiRmt+7e7Vz29Xi+hc3Jr+V3NrmBCAbe7pO064xARy0KdMVjdpyf
	mbYqvAfu6Ez2VcfhfnA2qYxcbDNt1a19aslcepM2e7t3PFExBcJxLi5m7HXVg6RoUrAgRZWI57jfH
	/88q5CKU3l+DqfITTKlIG/vK5ezC1HZMiDfrBQaRUenZLLpWubQicbJutjQMzyfLBqDTpE+6oH/Yl
	nH2oJzx17DSLWo7nFqsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl8LG-00GK6L-7k; Sun, 01 May 2022 12:06:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl8JZ-00GHcv-9b; Sun, 01 May 2022 12:04:40 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nl8JX-0005z2-51; Sun, 01 May 2022 14:04:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
Date: Sun, 01 May 2022 14:04:34 +0200
Message-ID: <1911020.usQuhbGJ8B@diego>
In-Reply-To: <CAMdYzYpStDyKxrWgeMyQNs6tGzzVKCbVR_8JZck8Q_0NVU6jxQ@mail.gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
 <3428030.iIbC2pHGDl@diego>
 <CAMdYzYpStDyKxrWgeMyQNs6tGzzVKCbVR_8JZck8Q_0NVU6jxQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_050437_378635_275658F7 
X-CRM114-Status: GOOD (  31.39  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 1. Mai 2022, 13:48:02 CEST schrieb Peter Geis:
> On Sun, May 1, 2022 at 7:31 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Am Sonntag, 1. Mai 2022, 09:06:33 CEST schrieb Johan Jonker:
> > >
> > > On 4/29/22 13:52, Peter Geis wrote:
> > > > Add a device tree for the Pine64 Quartz64 Model B single board comp=
uter.
> > > > This board ouputs debug on uart2 and supports the following compone=
nts:
> > > > Gigabit Ethernet
> > > > USB2 x2 (one port otg capable)
> > > > USB3
> > > > PCIe/SATA M2
> > > > HDMI
> > > > DSI (RPi compatible pinout)
> > > > CSI (RPi compatible pinout)
> > > > A/B/G/N WiFi
> > > > Bluetooth
> > > > SDMMC
> > > > eMMC
> > > > SPI Flash
> > > > PI-40 compatible pin header
> > > >
> > > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > > >  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 615 ++++++++++++++=
++++
> > > >  2 files changed, 616 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.=
dts
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boo=
t/dts/rockchip/Makefile
> > > > index 4ae9f35434b8..252ee47b8a1d 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > @@ -59,5 +59,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-p=
i-n10.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.2.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-quartz64-a.dtb
> > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-quartz64-b.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-evb1-v10.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-bpi-r2-pro.dtb
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > > > new file mode 100644
> > > > index 000000000000..184ab7e1d178
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > > > @@ -0,0 +1,615 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +/*
> > > > + *
> > > > + */
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include <dt-bindings/gpio/gpio.h>
> > > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > > +#include "rk3566.dtsi"
> > > > +
> > > > +/ {
> > > > +   model =3D "Pine64 RK3566 Quartz64-B Board";
> > > > +   compatible =3D "pine64,quartz64-b", "rockchip,rk3566";
> > > > +
> > >
> > > [..]
> > >
> > > > +
> > > > +&mdio1 {
> > >
> > > > +   rgmii_phy1: ethernet-phy@0 {
> > > > +           compatible =3D "ethernet-phy-ieee802.3-c22";
> > > > +           reg =3D <0x1>;
> > >
> > > Hi,
> > >
> > > The reg value doesn't match the node name.
> > > Other 2 boards use "reg =3D <0>" with label "rgmii_phy1".
> > > Could you check?
> >
> > I do have an older Quartz-B in my boardfarm and in that older
> > devicetree the phy-reg also is "0" instead of the "1" used here.
> >
> > Is that a hardware-change?
> =

> The ethernet maintainers previously brought up that 0x0 is the
> broadcast address for the mdio-bus. They requested we put the actual
> bus id of the phy even on single phy busses. This is the first one
> I've confirmed the bus address on.
> =

> Though I realized ethernet-phy@0 should be ethernet-phy@1 since you
> mentioned this. Strange dtbs-check doesn't catch this, would you fix
> it in line Heiko

no that's ok, I can fix that up. Just wanted to clarify what the intention
was first :-)

> or do you want another revision?
> =

> >
> > Thanks
> > Heiko
> >
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
