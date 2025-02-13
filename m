Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC937C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 21:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQtuZyN0cTN87nAdMy8BYRDNZMFJ88zpvvVSQrhOG7A=; b=3JEqgeaDmWuipN
	UyztgCAE+4xdKAOhl9LHqBIw2/aOhHhUmRRrRnYE4IlmkfyYB8FsEqz7cSwSfif60osb8q8hGxfyk
	0kEWyI7DnPwJPeRnIXEW8ibpJ+FTNHNXsPfRajtUSmjg0zZPjhQbm0Pk/nYxF3UlLy6VvFB9RAfZP
	EEhgambx1WtfjDq4Uup7yNUMZdPuVeSzvpMaAMpG9D+mA6MiuG4XeW2tr5bySgdtYkj1gy5tjvrjk
	c849pMo7/7gF0XfHAFfFyFYCwd7k5nPvzsTTW3OEbhmkaJGxXCBpwptZe2aJ9b35dLyaOni+V8kq5
	ztRVWru1AdUdDyjFjHuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tigUR-0000000Cf5V-2XAH;
	Thu, 13 Feb 2025 21:11:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tifL6-0000000CTXg-3sMP;
	Thu, 13 Feb 2025 19:57:38 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739476614; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=esEGgr+Zc+tPVkIqhiCRV6/3ZsxDc/b/7YtkV3+NUknz0FJERHv4WjoZqgMDr0iDTIxSacyj5IPlCpt8EstN0ogUpvFHCO6Ksp0+hnliTj7wgOIMrvQdvM58YdUb1EBBZDXO2aeKLvNS2t5IrlANkgPMrKZlEmuKcOaOeJOaMv4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739476614; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=O9GUvvUpHX6LI0qZKWX7RNV6qQdN4u6UV5/FG212X8k=; 
	b=UBUcN6htqFck41lfia/orvBJrZzH5gpvWL+MwUU7ojHmx+66zbMewaJEXL/ZRJyWve49TjgYNRjL2P0vaAdPK2OYYJgowrz0ZFKSyBDU4zl/aH4Konvn2RGJLFn2VQxYQEZY8au4FdJ9Et/985IvHoaa7AOjOSVVPHPx7dX1MR8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739476614;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=O9GUvvUpHX6LI0qZKWX7RNV6qQdN4u6UV5/FG212X8k=;
	b=Q8JxXioJ4lXs0iSCkgZYzAYIWz6Xdvv38+VFAq1AWFxHY2R8ItKJ6JvNt55lWScE
	bpnnMnehSwgma3fPFQvuLapE7XTGq1PPmnWWSzq/gNM0A7aBnTrD2ix6ArooKh8Cw+X
	dB7WkHBWQz34nQuKkmOdnyO8Fk0bPKmBcNhiK1XE=
Received: by mx.zohomail.com with SMTPS id 1739476611230565.2581804087819;
	Thu, 13 Feb 2025 11:56:51 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>,
 Chris Morgan <macromorgan@hotmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, Tim Lunn <tim@feathertop.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Elon Zhang <zhangzj@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, Stephen Chen <stephen@radxa.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 4D device tree
Date: Thu, 13 Feb 2025 14:56:48 -0500
Message-ID: <5973630.DvuYhMxLoT@trenzalore>
In-Reply-To: <b5977d21-aa39-4e91-863b-cc7f9dc6938c@kwiboo.se>
References: <20250213145921.133412-1-detlev.casanova@collabora.com>
 <20250213145921.133412-3-detlev.casanova@collabora.com>
 <b5977d21-aa39-4e91-863b-cc7f9dc6938c@kwiboo.se>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_115737_010080_24692501 
X-CRM114-Status: GOOD (  25.75  )
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

Hi Jonas,

On Thursday, 13 February 2025 10:48:10 EST Jonas Karlman wrote:
> Hi Detlev,
> 
> On 2025-02-13 15:57, Detlev Casanova wrote:
> > From: Stephen Chen <stephen@radxa.com>
> > 
> > The Radxa ROCK 4D board is based on the Rockchip rk3576 SoC.
> > 
> > The device tree adds support for basic devices:
> >  - UART
> >  - SD Card
> >  - Ethernet
> >  - USB
> >  - RTC
> > 
> > It has 4 USB ports but only 3 are usable as the top left one is used
> > for maskrom.
> > 
> > It has a USB-C port that is only used for powering the board.
> > 
> > Signed-off-by: Stephen Chen <stephen@radxa.com>
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3576-rock-4d.dts      | 651 ++++++++++++++++++
> >  2 files changed, 652 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> > b/arch/arm64/boot/dts/rockchip/Makefile index
> > def1222c1907e..a112aeb37948a 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -132,6 +132,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=
> > rk3568-wolfvision-pf5-display-vz.dtbo> 
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
> > 
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-rock-4d.dtb
> > 
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> > b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts new file mode 100644
> > index 0000000000000..f356742f9d643
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> > @@ -0,0 +1,651 @@
> 
> [snip]
> 
> > +&gmac0 {
> > +	phy-mode = "rgmii-id";
> > +	clock_in_out = "output";
> > +
> > +	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> > +	snps,reset-active-low;
> > +	snps,reset-delays-us = <0 20000 100000>;
> 
> The snps,reset- props are deprecated and should be changed to reset-
> props in the phy node.

Arg, second time I use deprectated props on new things. Are there plans or 
ways to make dtbs_check warn about those ?

> > +
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&eth0m0_miim
> > +		     &eth0m0_tx_bus2
> > +		     &eth0m0_rx_bus2
> > +		     &eth0m0_rgmii_clk
> > +		     &eth0m0_rgmii_bus
> > +		     &ethm0_clk0_25m_out>;
> > +
> > +	phy-handle = <&rgmii_phy0>;
> > +	status = "okay";
> > +};
> 
> [snip]
> 
> > +&mdio0 {
> > +	rgmii_phy0: phy@1 {
> 
> Maybe ethernet-phy@1 ?

Indeed.

> > +		compatible = "ethernet-phy-ieee802.3-c22";
> > +		reg = <0x1>;
> > +		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
> 
> Please add reset- props here.
> 
> Changing to use reset- props may cause issue if a RTL8211F PHY is used
> on the board. Use a ethernet-phy-id compatible or mainline U-Boot to
> ensure the Ethernet PHY can be discovered during probe.

Using downstream u-boot, with the RTL8211F PHY, linux can still detect the PHY 
and use it correctly, even with reset-* props at the PHY level.

I guess I can keep those there then, unless the issues you mention are more 
subtle than that ?


Detlev.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
