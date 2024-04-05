Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08C0C67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffkPbcl/d1z7cFnRT0y/dTyLjIbXTBCdxSVfD54PiE4=; b=DvkVQLrNRroAoo
	LH2BBu4xHTMGYV6c7o9DMwkWesNZVYazlQ76VC6Kcu4Z9nzFyL/YtV1tYjfht/sC2lfVbfvTFIhHD
	LCv4eLeZ2T/VSd+AORhy5LluHjZIoYd0VRYq6c2JW34xw9XUCGsyxjuLRmYUEaljaWrtFUJ+Ge/PX
	C27kukzsLXn+W7TLm/nB7tKcsnelxUl9fxMDyT+GwH5f49cqxmAUB5ujZp884pqZrjKiVLkC5xYTB
	F8AEQ94DOVK0wDeZpupgQUXa+iIRJ+rt1OW703Gr48X7p8uRXwlNPKhuPXWYN6amqNTwPfNCJ5H1x
	RLVJ8rKn7ZF198dHvihw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgVZ-00000006MKj-2YcR;
	Fri, 05 Apr 2024 10:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgVV-00000006MID-37bf
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 10:09:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVO-0003n8-Ol; Fri, 05 Apr 2024 12:09:06 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVN-00AY48-7T; Fri, 05 Apr 2024 12:09:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVN-00Fea4-0P;
	Fri, 05 Apr 2024 12:09:05 +0200
Date: Fri, 5 Apr 2024 12:09:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Message-ID: <Zg_NwfxLhzdCjN87@pengutronix.de>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
 <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_030913_794164_E199891B 
X-CRM114-Status: GOOD (  22.63  )
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

On Thu, Apr 04, 2024 at 05:10:41PM +0200, Andrew Lunn wrote:
> > +&gmac1 {
> > +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> > +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> > +	phy-handle = <&rgmii_phy1>;
> > +	phy-mode = "rgmii";
> > +	clock_in_out = "output";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac1m1_miim
> > +		     &gmac1m1_tx_bus2
> > +		     &gmac1m1_rx_bus2
> > +		     &gmac1m1_rgmii_clk
> > +		     &gmac1m1_clkinout
> > +		     &gmac1m1_rgmii_bus>;
> > +	status = "okay";
> > +	tx_delay = <0x30>;
> > +	rx_delay = <0x10>;
> > +};
> 
> There was a discussion about phy-mode = "rgmii"; and these
> tx/rx_delays last month. Please could you go read that discussion and
> them make use of rgmii-id, and change the delays.

Ok, I'll switch to rgmii-id.

> 
> Also, where did you copy this from? If possible, it would be good to
> fix the example everybody copies into new DT blobs.

These are the default values used in over a dozen boards and a also
given in the example in
Documentation/devicetree/bindings/net/rockchip-dwmac.yaml.
These are also the default values the driver uses when tx_delay and
rx_delay are not given in the device tree.

I can prepare a patch to fix the example.

Do you have a pointer why setting the delays in the phy is preferred
over setting them in the network driver? In the end this requires us
to have the correct phy driver whereas setting them in the network
driver would just work for any phy driver?

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
