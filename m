Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16292C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 08:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rQ0iRyePxGP7xi6ODgh1TX9QLukScrrtNlGA6hz2ns8=; b=bccgrD4/SjgYg0N64QkRrhGCS6
	9EVk0b/NcnpBxz2XiEbdsYkUGq3K36Ca4mFTa1pfdG7iYHWx83HDt8qaeacD/HJhhooGwcpyZGFGo
	kp46FyONGeGI7Du+odVUDp7AmtMRVNSR70ebEKutOYVwjKceSFf1llsnQeT6ql/CU8DQ9DEePbnYx
	Agsc0p34xTepnNyOLBkBEvzuw5GtYsCRwgYFJ5zIb5BB8UGWc+5PXr33HyfzEeDLY5bGE9KIVk9AR
	X+c1PC44C//TLXbIKiilWpxaag1ltbFwHp+HqqX9yEIWN3OT0bIhjqSmklVFy/R15xDBEP0mttEKR
	pTfoSqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBukq-002beP-SC; Mon, 24 Jan 2022 08:31:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBukn-002bcA-61
 for linux-rockchip@lists.infradead.org; Mon, 24 Jan 2022 08:31:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBukh-00077b-Eo; Mon, 24 Jan 2022 09:31:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBukg-0005yn-2z; Mon, 24 Jan 2022 09:31:02 +0100
Date: Mon, 24 Jan 2022 09:31:02 +0100
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Bananapi R2 Pro
Message-ID: <20220124083102.GW23490@pengutronix.de>
References: <20220123135116.136846-1-linux@fw-web.de>
 <20220123135116.136846-3-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220123135116.136846-3-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:22:14 up 44 days, 17:07, 74 users,  load average: 0.10, 0.26, 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_003109_262918_CABF606C 
X-CRM114-Status: GOOD (  26.48  )
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

On Sun, Jan 23, 2022 at 02:51:16PM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This patch adds Devicetree for Bananapi R2 Pro based on RK3568.
> Add uart/sd/emmc/i2c/rk809/tsadc nodes for basic function.
> Gmac0 is directly connected to wan-port so usable without additional
> driver.
> On gmac1 there is a switch (rtl8367rb) connected which have not yet a
> driver in mainline.
> 
> Patch also prepares nodes for GPIO header.
> 
> Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> +&gmac0 {
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> +	clock_in_out = "input";
> +	phy-handle = <&rgmii_phy0>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +
> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */

Is this really a rtl8211f? I don't know and it could indeed be a
rtl8211f, I'm just asking because the comment is copy pasted from
the Quartz64 board.

> +	snps,reset-delays-us = <0 20000 100000>;
> +
> +&mdio0 {
> +	rgmii_phy0: ethernet-phy@0 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x0>;
> +	};

0 is the broadcast address. I'm not sure if it's a good idea to use it.
There should be another address the phy listens on.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
