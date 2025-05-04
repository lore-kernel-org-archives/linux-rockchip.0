Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E9AFC369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 14:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O31z4gWudKw3jB3hYvqsNFA4173kmWpYs7FL2yqDVCw=; b=wcV1zON+tqD2D4
	mn1F95N2qMtSkCB5oqZTF27Hy2dchKr32SMu/fUP7TWSiXWUU1lT64V10Mk02xRvlpYN8XjnnW34k
	IgGZac6ZStuHl8/XRyHTO0FlQvPRpyXa6XdRFaXYN0wmR6KCBePkUHMrE54n+TRoxpZLXeSYi7sDv
	x2IhWSwEFt27t/TtgpronZoa9NIW846J6owg6/5UUhz+bwY/mAlRTIzduuCy/2AGUanWfn+iRRWT8
	rH4SbeUQn4WJwpT8unmQwox8hVNEv0CvAzAteGUf0dUIKMP53jveND+FT83y5wY3r2oRjbT7E+Fwa
	QawkzN+1a4KUP4kHpiSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBa5E-00000005NUC-2uej;
	Sun, 04 May 2025 14:12:44 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBa59-00000005NTI-38Qc;
	Sun, 04 May 2025 14:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=TzNUiPHYqKLKNt/h1EVZBJxW8aJwF1vX/txgWZiJsu0=; b=Bb7gjwRWfwJ0JouMGasFpiS43u
	2IVy3h2C3iqVfvL2e+Arxxj2/qvCygXe080JqRUEM2fgGLgQyoUhQzLvXmj6w8MHFE3UM4x/FmclU
	UXEFo7P/YG2GXi2IA5E0J6SRER3/SL/qm0tMnbdKCBpIVF77bFt7uHjrwNV2Hx78akqM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uBa4q-00BWXL-Q4; Sun, 04 May 2025 16:12:20 +0200
Date: Sun, 4 May 2025 16:12:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: John Clark <inindev@gmail.com>, heiko@sntech.de, robh@kernel.org,
	conor+dt@kernel.org, detlev.casanova@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
Message-ID: <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_071239_785432_228BEBB4 
X-CRM114-Status: GOOD (  10.99  )
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

> > +&gmac0 {
> > +	clock_in_out = "output";
> > +	phy-handle = <&rgmii_phy0>;
> > +	phy-mode = "rgmii-rxid";
> 
> See Andrew's remark on v1 of this patch.

Hi John

If you have questions, please ask. It is not a good idea to silently
ignore reviewers comments. Either do something about it, ask
questions, or politely argue why the reviewer is wrong, because
sometimes we are.

> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&eth0m0_miim
> > +		     &eth0m0_tx_bus2
> > +		     &eth0m0_rx_bus2
> > +		     &eth0m0_rgmii_clk
> > +		     &eth0m0_rgmii_bus
> > +		     &ethm0_clk0_25m_out>;
> > +	snps,reset-gpio = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
> > +	snps,reset-active-low;
> > +	snps,reset-delays-us = <0 20000 100000>;
> 
> The snps,reset- props are depracated, please move to reset props in the
> Ethernet PHY node.

FYI: snps,dwmac.yaml says:

snps,reset-gpio:
    deprecated: true
    maxItems: 1
    description:
      PHY Reset GPIO

Anything with 'deprecated: true' you should not be using in new DT
blobs. Don't blindly copy vendor DT, you need to verify it is up to
Mainline quality, and if not, bring it up to Mainline quality.

> > +	tx_delay = <0x20>;

This property probably plays a role in the issue with phy-mode.

arch/arm64/boot/dts/rockchip$ grep "rgmii-id" *
rk3328-orangepi-r1-plus-lts.dts:	phy-mode = "rgmii-id";
rk3566-bigtreetech-cb2.dtsi:	phy-mode = "rgmii-id";
rk3566-nanopi-r3s.dts:	phy-mode = "rgmii-id";
rk3566-odroid-m1s.dts:	phy-mode = "rgmii-id";
rk3566-orangepi-3b.dtsi:	phy-mode = "rgmii-id";
rk3566-radxa-zero-3e.dts:	phy-mode = "rgmii-id";
rk3566-rock-3c.dts:	phy-mode = "rgmii-id";
rk3568-evb1-v10.dts:	phy-mode = "rgmii-id";
rk3568-evb1-v10.dts:	phy-mode = "rgmii-id";
...
etc.

You might be able to learn something from these.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
