Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B16C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 12:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIMDPyN+24FiZrSLmgh14AcyqEaexUDaqU1k1ADWCVI=; b=YMQqTr/jvsOUyU
	KFLh8KIzBJnF+qGEVhnu2Jt2YOdpKew4Pram8cZlR9j7sDL9idbfH4nsEOkeZnu+3CMAucDN75qMd
	KZcYRCEzJGfjcYhZ+ARYgJMoY6fGomTYCLitz+blaAVJTWj2QPsfhrLrX5eLBrraHGJFnXRgywSIV
	xX9ZxouEI0okZX2qHp7bfyfhasc9ADAWmRO60GwqbG/kp55gFGxdF0P3coavc1WNmrLyR5HgPPzJj
	ijUJugvh6uYc5h42b8QVQYYx0d7pmhSlMxhjPTql3pBJ3i/VVs35kcHZS6vU9oJ+nS12zWF/xi5Ee
	+BYqhAafAKuPvtzvflfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyufO-00D2AE-PK; Wed, 08 Jun 2022 12:20:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyufM-00D29g-AX; Wed, 08 Jun 2022 12:20:05 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1nyufE-0006gv-Ao; Wed, 08 Jun 2022 14:19:56 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>, linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd@collabora.com>
Cc: kernel@collabora.com, Akash Gajjar <akash@openedev.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-s add more peripherals
Date: Wed, 08 Jun 2022 14:19:55 +0200
Message-ID: <2759751.88bMQJbFj6@diego>
In-Reply-To: <3576f2af98a0d9e7128568777d85af3bfbab801d.camel@collabora.com>
References: <20220606082629.79682-1-sjoerd@collabora.com> <4731d47f-ef02-d512-c599-274f8208f845@wolfvision.net> <3576f2af98a0d9e7128568777d85af3bfbab801d.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_052004_414967_558C74EB 
X-CRM114-Status: GOOD (  19.29  )
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

Am Mittwoch, 8. Juni 2022, 14:07:33 CEST schrieb Sjoerd Simons:
> Hey Michael,
> 
> On Mon, 2022-06-06 at 14:00 +0200, Michael Riesch wrote:
> > 
> > > +       aliases {
> > > +               ethernet0 = &gmac;
> > > +               mmc0 = &emmc;
> > > +               mmc1 = &sdmmc;
> > 
> > Sure? emmc is at address ff49000 which is larger than sdmmc's address
> > ff480000. I believe the aliases should be sorted w.r.t. addresses.
> 
> Do you have a reference about this sorting requirement? 

I do believe we used that mmcx -> *mmc-device sorted by address
when the aliases still were in the main soc dtsi. Simply because one
couldn't really know what was available on a specific board
(no emmc for example).

I guess now on a per-board level we could actually do that more relaxed
and let that be the decision of the board submitter ;-) .

Heiko

> Also do you mean that mmc0 should be &sdmmc *or* that the aliases
> should have mmc1 listed first.
> 
> For reference the reason is that mmc0 is emmc is because it seems more
> logical to have the builtin devices come first (e.g. as mmcblk0) 
> 
> 
> > Best regards,
> > Michael
> > 
> > > +       };
> > > +
> > >         chosen {
> > >                 stdout-path = "serial0:1500000n8";
> > >         };
> > > @@ -132,6 +138,15 @@ &emmc {
> > >         status = "okay";
> > >  };
> > >  
> > > +&gmac {
> > > +       clock_in_out = "output";
> > > +       phy-supply = <&vcc_io>;
> > > +       snps,reset-gpio = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> > > +       snps,reset-active-low;
> > > +       snps,reset-delays-us = <0 50000 50000>;
> > > +       status = "okay";
> > > +};
> > > +
> > >  &i2c1 {
> > >         status = "okay";
> > >  };
> > > @@ -195,10 +210,47 @@ &sdmmc {
> > >         status = "okay";
> > >  };
> > >  
> > > +&u2phy {
> > > +       status = "okay";
> > > +
> > > +       u2phy_host: host-port {
> > > +               phy-supply = <&vcc5v0_otg>;
> > > +               status = "okay";
> > > +       };
> > > +
> > > +       u2phy_otg: otg-port {
> > > +               phy-supply = <&vcc5v0_otg>;
> > > +               status = "okay";
> > > +       };
> > > +};
> > > +
> > >  &uart0 {
> > >         status = "okay";
> > >  };
> > >  
> > >  &uart4 {
> > >         status = "okay";
> > > +
> > > +       bluetooth {
> > > +               compatible = "realtek,rtl8723bs-bt";
> > > +               device-wake-gpios = <&gpio4 RK_PB3
> > > GPIO_ACTIVE_HIGH>;
> > > +               host-wake-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
> > > +       };
> > > +};
> > > +
> > > +&usb_host_ehci {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&usb_host_ohci {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&usb20_otg {
> > > +       dr_mode = "peripheral";
> > > +       status = "okay";
> > > +};
> > > +
> > > +&wdt {
> > > +       status = "okay";
> > >  };
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
