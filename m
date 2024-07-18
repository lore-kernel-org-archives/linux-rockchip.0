Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA62C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 09:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guKQ5cK0QTZb8T2Vxrm4rXISIMINZJf2GGmeIo6sraI=; b=SNyd4Lm2Gb0d0S
	RAJzaCmNmt/sRaZH7AcOtBZQQczIIPWtTVZ53uT2DtI8gc8MG5qTJGTK+yKHvo6PJldFvs2a8UHcq
	PThWBpCOIImzKdgzUvy9TwODxPj9NKtc5653oMTin3JSanSas3Kic9/yTuaZGuo5cbYRlf18lLlX/
	9UcDOwo/a7lE9ON17MDGG7J8k/pCJi3VfAWuYBUiG9z5Y9u5xDUZDogaIMPTNP3f2yDeftf9073IC
	14xHYcNACYfEOQQn4VPloP9rzdPks8edcW1UmtERaKVaLQLmJjefentXtOdEeGZOmy0IqUSIp1/5F
	6wNLeRv37ErM9duSZlag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNSA-0000000GZ36-3n69;
	Thu, 18 Jul 2024 09:29:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNRo-0000000GYxu-2jNQ;
	Thu, 18 Jul 2024 09:29:13 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sUNRf-0003M8-Iy; Thu, 18 Jul 2024 11:29:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Anand Moon <linux.amoon@gmail.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock oscillator on
 Rock 5 ITX
Date: Thu, 18 Jul 2024 11:29:02 +0200
Message-ID: <1829575.Zkmt1EvEu4@diego>
In-Reply-To: <CANAwSgS7qFZ4wbvLOxZ+9k=F7c3mFGo=Ab4aJjLgVu+JhfQneg@mail.gmail.com>
References: <20240715110251.261844-1-heiko@sntech.de>
 <72b84761ef93c1d4d6d61b16ef1bb1ce@manjaro.org>
 <CANAwSgS7qFZ4wbvLOxZ+9k=F7c3mFGo=Ab4aJjLgVu+JhfQneg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_022912_721495_339EC047 
X-CRM114-Status: GOOD (  30.28  )
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

Am Donnerstag, 18. Juli 2024, 10:00:51 CEST schrieb Anand Moon:
> Hi Dragan
> 
> On Thu, 18 Jul 2024 at 13:28, Dragan Simic <dsimic@manjaro.org> wrote:
> >
> > On 2024-07-18 09:52, Anand Moon wrote:
> > > On Thu, 18 Jul 2024 at 13:02, Dragan Simic <dsimic@manjaro.org> wrote:
> > >> On 2024-07-18 09:26, Anand Moon wrote:
> > >> > On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
> > >> >>
> > >> >> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and
> > >> >> its
> > >> >> SATA controller with 2 lanes each. The supply for the refclk
> > >> >> oscillator is
> > >> >> the same that supplies the M.2 slot, but the SATA controller port is
> > >> >> supplied by a different rail.
> > >> >>
> > >> >> This leads to the effect that if the PCIe30x4 controller for the M.2
> > >> >> probes first, everything works normally. But if the PCIe30x2
> > >> >> controller
> > >> >> that is connected to the SATA controller probes first, it will hang on
> > >> >> the first DBI read as nothing will have enabled the refclock before.
> > >> >
> > >> > I just checked the rk3588-rock-5-itx.dts in the linux-next.
> > >> > You have not enabled sata0 and sata2, which might be the problem
> > >> > for the SATA controller not getting initialized.
> > >>
> > >> Rock 5 ITX doesn't use RK5588's built-in SATA interfaces, so that's
> > >> fine.
> > >> Please have a look at the board schematic, it uses a separate PCI
> > >> Express
> > >> SATA controller for its four SATA ports.
> > >>
> > > yes, But I am referring to sata node not enabled which enable
> > > the PHY_TYPE_SATA.
> > >
> > > see rk3588-coolpi-cm5-evb.dts and rk3588-edgeble-neu6a-io.dtsi
> > > rk3588-quartzpro64.dts
> > > which have sata port on board.
> > >
> > > &sata0 {
> > >         status = "okay";
> > > };
> >
> > QuartzPro64, as an example, uses RK3588's built-in SATA interfaces,
> > so it enables sata0 in its board dts.  Rock 5 ITX doesn't do that,
> > as I already described.
> 
> Ok no problem,

For the Rock 5 ITX it really only routes 2 PCIe lanes to one M.2 port
and the other 2 lanes to the separate ASMedia SATA controller.
So from the Rock5 PoV, it's really just 2 PCIe 2-lane slots and the
SATA controller simply gets probed as PCIe device.

I even have a sample of the Rock 5+ here, that actually drops the
separate SATA controller and instead provides a 2nd M.2 slot ;-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
