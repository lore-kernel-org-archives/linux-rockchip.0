Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D78A9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 08:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mcj+cCH/yp4WgQDnehDwQ5nucKmeehhcyTc8azmica0=; b=Y8SO9hNzCXisjr
	DOz/RXirwNvraQy9a/1Vj53uHb9fNNbJP+DbVBkEB328tYthHTasCr+EOOGsRzEMUS4P7n7VuTHFz
	um1qTjUhHDDGxkYCJcw+8j3yMz0eEGbFRZTcgrG4h3p1ZdSy0oELXvU2COFnEiTlh6eYJ3vRG2TE8
	LmTK3l4vLjgujxDuwGwcVkWVTiySNRnVwkcXSasEwhH1ZeLYS9nxdoFaoE+s2v4Ll2uG+G9AY5YMU
	9CHOBwmUTsXnZ1hAcie/Wjpw1nDpGT/FnuNY/DQW4/3rI9jfN44iI5fx25Xo/5f0iGOQTMV2OIZce
	c1ow0vSJwb6jX61Vay2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBv8K-002gfs-Hc; Mon, 24 Jan 2022 08:55:28 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBv8H-002gdK-8x; Mon, 24 Jan 2022 08:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643014505;
 bh=9GE6/HhU03ye1tHqFSMbTSMegWHrLXW6xFPGDsUr8xM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QUh+1xtexuxipdL236MxFYyHzhPxnzCKu96XdjalgAlH630DHbEOqlpnxlwd/fp9c
 cBgdUqlXrqmRf7bmbPVeB4x1zgX15AUy+8pPamZWjkIuSq5aWekYyiUFWcBxWcCuAX
 njwz1Li5KYV2K3lM8WT785YI6yoAKRd3Dk9R1Oys=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.70] ([80.245.79.70]) by web-mail.gmx.net
 (3c-app-gmx-bs10.server.lan [172.19.170.61]) (via HTTP); Mon, 24 Jan 2022
 09:55:05 +0100
MIME-Version: 1.0
Message-ID: <trinity-2e9cf5db-4c9b-4ad7-b684-74541e639edf-1643014505272@3c-app-gmx-bs10>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Peter
 Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Aw: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Bananapi R2 Pro
Date: Mon, 24 Jan 2022 09:55:05 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220124083102.GW23490@pengutronix.de>
References: <20220123135116.136846-1-linux@fw-web.de>
 <20220123135116.136846-3-linux@fw-web.de>
 <20220124083102.GW23490@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Je7aAK7RjPFg0XaJcEiMbvJFAZZll0ExxcjcIROYGq8ZJ+yJhJihQ0DH8cXaUjJApV+Sq
 vtI1A7TR+ffLQap/cfhT093HzRJKZolw/7vnIh2TtHGAooQMcDd1u4Tyxw6k6eWe5fW2/2jcRSX6
 +NKoaY/X7gnLUNh4PHOYMgdlTu0Pw2oSNJsuF46ghBkkkRqurG3yj4avwXZxJg+8Rg3sP39vGA1Q
 +qJZx9kky3hznHpPz01NcySxy7ytuGGHWEZNVSyFUByvzW+uqONUQnVL0bzcesBFxiKgCROgOSG0
 aw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:35Zn1CJ4Kws=:FmdPaVG2vDoyBYTlDJ+9xT
 mpXPYJicuxSkBD50ZR4K7GG/9pR9hiuV7B44aHcLlIGvRU+fxFK03lJHKWVtSialWwl5zmhx4
 YB4X9SxyhadWUYtwHzaEkQIz7S3y7cE12uqFmORT232FGsn+faJTAFwcENzTzSHjxv+tJStDS
 iUccLfyKO/v3EGrk5UdlJx3hQHV1103cxQC4q8OqQYsZV0umTCMD3K3xZChHE6SMsXC8k3ETU
 52zDzHcR8g88vTtxdRS1ZG66hATckhIOfnU/AAM2a5pJELAy5Wo5bQ/TLlrkv53gn5HBwel8G
 Oi0bbPxw51D+I5U7/pTS2weHFoh4M4gjZUIu03IjAtA5tpWrJvbIQwIzh5otTv30/1DXbZGQu
 M2Vx1NkCcg53ZGHAvf1sen/I0lsDAaxnoQKPjicUWYxS0e6MODarfTClIL4KUByGXkcMvU+3q
 m5WLhsU0Vuoy2K6T8eakhmPTU32KP3KH3wYCdSNvmhcDg33v1wXLwIu/eLS05vvmmOPDXoZqL
 9XtNZ02P8blO8ICEkRMjK4wq9O8YYV9B1BJAlUBCh1Qhi2rIydH9HA14z62EzjpWl3gSBHHeR
 ljy27JzOdFgFEsVz6IQqofCuxw0MIBq2CijzPvC41JexzORKTqeP4QIIkiamxuzy/O2UG5ij0
 8CONA2uJ8m0pv/LXvmYeBld0DoVBa/JrPvGEyRdYk6m4VeA4XONiKeux/XGauXEEuFk2LzTwu
 OlTJ4NNZrJmD6VT9cvolNivSh30DtAOO7Rh6JfvGuGZ8C9+4JAneWAKbitkPSRxgWAmT7VJUR
 RcVA7Ur
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_005525_658288_1E8F8898 
X-CRM114-Status: GOOD (  23.16  )
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

Hi

> Gesendet: Montag, 24. Januar 2022 um 09:31 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> An: "Frank Wunderlich" <linux@fw-web.de>
> Cc: linux-rockchip@lists.infradead.org, "Frank Wunderlich" <frank-w@public-files.de>, "Rob Herring" <robh+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Peter Geis" <pgwipeout@gmail.com>, "Johan Jonker" <jbx6244@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
> Betreff: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Bananapi R2 Pro
>
> On Sun, Jan 23, 2022 at 02:51:16PM +0100, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > This patch adds Devicetree for Bananapi R2 Pro based on RK3568.
> > Add uart/sd/emmc/i2c/rk809/tsadc nodes for basic function.
> > Gmac0 is directly connected to wan-port so usable without additional
> > driver.
> > On gmac1 there is a switch (rtl8367rb) connected which have not yet a
> > driver in mainline.
> >
> > Patch also prepares nodes for GPIO header.
> >
> > Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > ---
> > +&gmac0 {
> > +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> > +	clock_in_out = "input";
> > +	phy-handle = <&rgmii_phy0>;
> > +	phy-mode = "rgmii";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac0_miim
> > +		     &gmac0_tx_bus2
> > +		     &gmac0_rx_bus2
> > +		     &gmac0_rgmii_clk
> > +		     &gmac0_rgmii_bus>;
> > +
> > +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> > +	snps,reset-active-low;
> > +	/* Reset time is 20ms, 100ms for rtl8211f */
>
> Is this really a rtl8211f? I don't know and it could indeed be a
> rtl8211f, I'm just asking because the comment is copy pasted from
> the Quartz64 board.

i know thats a RTL8211 phy, but i see no additional letter on the chip, based on shematics it's a RTL8211F-CG

> > +	snps,reset-delays-us = <0 20000 100000>;
> > +
> > +&mdio0 {
> > +	rgmii_phy0: ethernet-phy@0 {
> > +		compatible = "ethernet-phy-ieee802.3-c22";
> > +		reg = <0x0>;
> > +	};
>
> 0 is the broadcast address. I'm not sure if it's a good idea to use it.
> There should be another address the phy listens on.

took this from the 3568-EVB (like the most parts, as the board is mostly the same), and in linux it's the same and working. The switch have also phy-id 0 on mdio bus #1, are you sure this is invalid?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
