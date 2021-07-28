Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AEEC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:35:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BD496103E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:35:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5BD496103E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ccakmhl9TlhRHECZQjMpwbW3W3iFWhQSa6Ak5BhIdNI=; b=dlIalZDaZwI1j9
	PtqabTC9RKc0LpLuFFJndtGhXq9jStxRG1dnqSlKRN0LmiS/YhKkem6fo2GA3vFJt++FjWubTspFo
	geilDepQs7Y3A4Bjuz84wCG+exxHhk0ncpHGsY0AiAtTAOVEX89g9drVMQywHOF2VqEQZSToW4yx7
	UjdLUvrcNpqqzMscnwwTiO7tdUL6yrRggyZRz9rC5cVtEknIo67Ti6SZlVDXrfFYUupCWQsb/YaMS
	Ux/j2/5rj0aKRoMqI8nIbIDz7/qJF9YqJhAk1i7b14xSMxWTYlEWnbcl3cTbsO6yuD/1rzttfZDv5
	yVJjZm7x7H2wErQVPUtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nSP-001qww-7V; Wed, 28 Jul 2021 17:35:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nSB-001qv1-Ra; Wed, 28 Jul 2021 17:34:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8nS6-000730-28; Wed, 28 Jul 2021 19:34:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add gmac0 node to rk3568
Date: Wed, 28 Jul 2021 19:34:41 +0200
Message-ID: <814179037.0ifERbkFSE@diego>
In-Reply-To: <2193550.atdPhlSkOF@diego>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-2-michael.riesch@wolfvision.net>
 <2193550.atdPhlSkOF@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_103447_937201_C330FCC5 
X-CRM114-Status: GOOD (  18.74  )
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

Am Mittwoch, 28. Juli 2021, 18:43:24 CEST schrieb Heiko St=FCbner:
> Hi,
> =

> Am Mittwoch, 28. Juli 2021, 18:10:19 CEST schrieb Michael Riesch:
> > While both RK3566 and RK3568 feature the gmac1 node, the gmac0
> > node is exclusive to the RK3568.
> > =

> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 51 ++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot=
/dts/rockchip/rk3568.dtsi
> > index da01a59f6f26..ec39a2c593b6 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> > @@ -22,6 +22,57 @@
> >  		compatible =3D "rockchip,rk3568-qos", "syscon";
> >  		reg =3D <0x0 0xfe190200 0x0 0x20>;
> >  	};
> > +
> > +	gmac0: ethernet@fe2a0000 {
> > +		compatible =3D "rockchip,rk3568-gmac", "snps,dwmac-4.20a";
> > +		reg =3D <0x0 0xfe2a0000 0x0 0x10000>;
> > +		interrupts =3D <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
> > +			     <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> > +		interrupt-names =3D "macirq", "eth_wake_irq";
> > +		rockchip,grf =3D <&grf>;

Johan thankfully pointed out that the grf is hiding up here, so this should
move below reset-names ;-)


Heiko


> > +		clocks =3D <&cru SCLK_GMAC0>, <&cru SCLK_GMAC0_RX_TX>,
> > +			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_MAC0_REFOUT>,
> > +			 <&cru ACLK_GMAC0>, <&cru PCLK_GMAC0>,
> > +			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>,
> > +			 <&cru PCLK_XPCS>;
> > +		clock-names =3D "stmmaceth", "mac_clk_rx",
> > +			      "mac_clk_tx", "clk_mac_refout",
> > +			      "aclk_mac", "pclk_mac",
> > +			      "clk_mac_speed", "ptp_ref",
> > +			      "pclk_xpcs";
> > +		resets =3D <&cru SRST_A_GMAC0>;
> > +		reset-names =3D "stmmaceth";
> > +
> =

> is this missing a rockchip,grf phandle?
> =

> gmac1 has one and the driver side also does want to access the grf for bo=
th
> controllers.
> =

> =

> Heiko
> =

> > +		snps,mixed-burst;
> > +		snps,tso;
> > +
> > +		snps,axi-config =3D <&gmac0_stmmac_axi_setup>;
> > +		snps,mtl-rx-config =3D <&gmac0_mtl_rx_setup>;
> > +		snps,mtl-tx-config =3D <&gmac0_mtl_tx_setup>;
> > +		status =3D "disabled";
> > +
> > +		mdio0: mdio {
> > +			compatible =3D "snps,dwmac-mdio";
> > +			#address-cells =3D <0x1>;
> > +			#size-cells =3D <0x0>;
> > +		};
> > +
> > +		gmac0_stmmac_axi_setup: stmmac-axi-config {
> > +			snps,wr_osr_lmt =3D <4>;
> > +			snps,rd_osr_lmt =3D <8>;
> > +			snps,blen =3D <0 0 0 0 16 8 4>;
> > +		};
> > +
> > +		gmac0_mtl_rx_setup: rx-queues-config {
> > +			snps,rx-queues-to-use =3D <1>;
> > +			queue0 {};
> > +		};
> > +
> > +		gmac0_mtl_tx_setup: tx-queues-config {
> > +			snps,tx-queues-to-use =3D <1>;
> > +			queue0 {};
> > +		};
> > +	};
> >  };
> >  =

> >  &cpu0_opp_table {
> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
