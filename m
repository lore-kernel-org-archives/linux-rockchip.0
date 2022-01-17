Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39A5C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 21:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hQpzEKnviUddgDyTplG04geEvVcjvty5/mbgkTCyx8=; b=gMmX8SXr+FPP5u
	rFo008l26ejYNYfe4n6oIKRRwSqLK8R+kTAebusd3DucPN+VhBNlbpkzre40YWtnO0CEFYun91oxk
	33HK7hXYCnzvead2cpOmrayKcRCi0t3SQAqKj0yTowbtyMz3NJiIfaWGh1utGiuN9SbP0fBkneDJX
	NVdjbC0GgFHPcPcGEwPaAgyQVGFNKgyOKLUcmEnf5rP+qlPvABTwLYMLObbijGewP+Kj5ls+UsYgK
	2PnfM2SCv/5QBiPfg395IASLO7RGldGiabcz4ha2kWMngFXQJhY/DAlIM9cpv6vDGO+SSrGcIrKn5
	m/I/6GDoHwh9sS2y7OrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9ZC6-00GOKv-Jv; Mon, 17 Jan 2022 21:05:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9ZC4-00GOKY-Ec; Mon, 17 Jan 2022 21:05:38 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n9ZBz-0001NU-2L; Mon, 17 Jan 2022 22:05:31 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Frank Wunderlich <frank-w@public-files.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Johan Jonker <jbx6244@gmail.com>, Frank Wunderlich <linux@fw-web.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
Date: Mon, 17 Jan 2022 22:05:29 +0100
Message-ID: <236548630.RelmrRfzIS@diego>
In-Reply-To: <CAMdYzYrNQCcOiLf=jUGtCTM44SU8bUpBBOac6_SGJtqX+hvUuA@mail.gmail.com>
References: <20220116124911.65203-1-linux@fw-web.de>
 <trinity-5a2f356e-2777-4624-b921-f8f56ce282c7-1642420742957@3c-app-gmx-bap64>
 <CAMdYzYrNQCcOiLf=jUGtCTM44SU8bUpBBOac6_SGJtqX+hvUuA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_130536_556609_1D4336E2 
X-CRM114-Status: GOOD (  38.87  )
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

Am Montag, 17. Januar 2022, 19:26:27 CET schrieb Peter Geis:
> On Mon, Jan 17, 2022 at 6:59 AM Frank Wunderlich
> <frank-w@public-files.de> wrote:
> >
> > Hi
> >
> > > Gesendet: Montag, 17. Januar 2022 um 11:47 Uhr
> > > Von: "Johan Jonker" <jbx6244@gmail.com>
> > > Hi Frank,
> > >
> > > Despite that the DT is hosted in the kernel tree
> > > DT and mainline kernel driver support are 2 separate things.
> > > PCLK_XPCS might be in use elsewhere.
> > >
> > > Given the link below pclk_xpcs is only needed for rk3568.
> > > Maybe gmac1 should have a PCLK_XPCS too, because one can select between
> > > them.
> > >
> > > ethernet: stmicro: stmmac: Add SGMII/QSGMII support for RK3568
> > > https://github.com/rockchip-linux/kernel/commit/1fc7cbfe9e227c700c692f1de3137914b3ea6ca6
> > >
> > > The original dtsi did have PCLK_XPCS in both nodes.
> > > https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L2121
> > > https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L1492
> > >
> > > Maybe fix the document or leave it as it is for now as long the driver
> > > isn't updated and someone has tested it.
> > > That's up to the DT maintainer.
> > >
> > > Johan
> >
> > as far as i understand, the PCLK_XPCS is part of the naneng combphy, which is not yet available in mainline.
> > Naneng driver needs some changes and imho this should be part of it (including change documentation). That also makes it clear why this clock is added.
> > But leaving an unused property with sideeffects is imho no good choice.
> >
> > So this was the easiest way to fix the dtbs_check. Else i got no usable result for it. Maybe adding it to Documentation is also easy, but have not yet looked into it as it currently unused from my POV.
> >
> > But i leave it as decision for Maintainer to drop this patch as it is not needed for my Board DTS.
> 
> As both the current submission of the combophy driver and the gmac
> driver do not support xpcs, I elected to remove the clock vice adding
> documentation for something which is not currently supported.
> This is especially true as it only leaked through for the gmac0 port,
> the gmac1 port is modeled to the current support level.
> 
> Once xpcs support is introduced, the clock can be added to the
> documentation and both controllers as part of the same patch series.
> 
> Do you concur, Heiko?

Did you see my own reply from some hours ago?
From looking at the documentation I got the impression that the
pclk_xpcs is related to the separate qsgmii_pcs in the memory map.

So yes, I fully agree to dropping this clock from here and then adding
them to whatever ip block really needs it.


Heiko


> > > ===
> > >
> > > XPCS is also part of PD_PIPE.
> > > See Rockchip RK3568 TRM Part1 V1.0-20210111.pdf page 475.
> > > Please advise if the power-domain@RK3568_PD_PIPE does need a PCLK_XPCS
> > > fix or is PCLK_PIPE enough in combination with a PHY driver?
> > >
> > > PD_PIPE:
> > >
> > > BIU_PIPE
> > > USB3OTG
> > > PCIE20
> > > PCIE30
> > > SATA
> > > XPCS
> > >
> > >
> > >       power-domain@RK3568_PD_PIPE {
> > >               reg = <RK3568_PD_PIPE>;
> > >               clocks = <&cru PCLK_PIPE>;
> > >               pm_qos = <&qos_pcie2x1>,
> > >                        <&qos_pcie3x1>,
> > >                        <&qos_pcie3x2>,
> > >                        <&qos_sata0>,
> > >                        <&qos_sata1>,
> > >                        <&qos_sata2>,
> > >                        <&qos_usb3_0>,
> > >                        <&qos_usb3_1>;
> > >               #power-domain-cells = <0>;
> > >       };
> >
> > PD_PIPE is imho also part of Naneng. But more for usage as USB3/SATA/... phy. This is not part of Mainline too.
> >
> > But thanks for pointing.
> >
> > regards Frank
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
