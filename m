Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C8E4EB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 18:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KV9YfoLTS3wPfElnSYmohOLt8OTgTsukGWI6sn3Mz5Y=; b=xgL02UfW5+yGaP
	F38Vyy9MWO+m1a/qNqsyHLoskWR//NE5K5fStn2rO5qTfXe2zQGVvEAPKyh6YzLrM2Exp8e8SB9Bv
	HlCwTNHe98zZoyBv9YMf7aCUwzwPA9lywHpUNczYxRLWKmceE2K/bm4y4A3Y+y15mMRBxOMUzjcp/
	fJQrRz8g94kCj2vg9LaTu4wZQWlHfNcD2aHHk3bw+XmoUT3NGA8bZd6OhTvXaFM47nicnkYaLaQlu
	H03FOz2E72Ry3n/K0WoZIbfPzvOfqflco+TwqzRJ6Jn6QYlZmDqvzndmZXwI7Cc1l4aJVi842mqOB
	vEzQnCqHlDfIHa8oMzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0bW-005EIn-0i;
	Mon, 24 Jul 2023 18:48:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0bT-005EI9-0b
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jul 2023 18:48:21 +0000
Received: from [193.138.155.172] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qO0bN-0008Kb-4i; Mon, 24 Jul 2023 20:48:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Anand Moon <linux.amoon@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
Date: Mon, 24 Jul 2023 20:48:12 +0200
Message-ID: <5278776.Lt9SDvczpP@phil>
In-Reply-To: <EF4FC43DBE66C4B0+4cc055c3-9faa-d71c-8e99-62fa99f0368e@radxa.com>
References: <20230714063027.74489-1-naoki@radxa.com>
 <cc8017b5-92a0-7483-e0b6-f2146bac1eb4@kwiboo.se>
 <EF4FC43DBE66C4B0+4cc055c3-9faa-d71c-8e99-62fa99f0368e@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_114819_224500_A01D7BF5 
X-CRM114-Status: GOOD (  45.30  )
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

Am Montag, 24. Juli 2023, 07:09:48 CEST schrieb FUKAUMI Naoki:
> hi,
> 
> On 7/24/23 07:54, Jonas Karlman wrote:
> > On 2023-07-17 19:11, Jonas Karlman wrote:
> >> On 2023-07-17 09:40, Michael Riesch wrote:
> >>> Hi all,
> >>>
> >>> In addition to what has been already said:
> >>>
> >>> On 7/16/23 15:50, Jonas Karlman wrote:
> >>>> On 2023-07-15 06:49, FUKAUMI Naoki wrote:
> >>>>> hi,
> >>>>>
> >>>>> On 7/15/23 01:24, Jonas Karlman wrote:
> >>>>>> On 2023-07-14 17:46, Heiko Stuebner wrote:
> >>>>>>> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
> >>>>>>>> ethernet on Radxa ROCK 3A is not working by following error:
> >>>>>>>>
> >>>>>>>>    rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> >>>>>>>>    rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
> >>>>>>>>
> >>>>>>>> to fix this problem, align related properties with vendor kernel
> >>>>>>>>    https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >>>>>>>>
> >>>>>>>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
> >>>>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >>>>>>>
> >>>>>>> There also is a second patch in the mix adding the gmac1_clkin
> >>>>>>> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
> >>>>>>>
> >>>>>>> And this patch does the exact opposite as the original nodes.
> >>>>>>> Can someone please mention board versions? Or did the gmac1 never
> >>>>>>> really work in the first place?
> >>>
> >>> As far as I know all schematics versions state that the PHY produces the
> >>> clock (see the most recent schematics here:
> >>> https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
> >>>
> >>> Although using the internal MAC clock works as well, using the
> >>> gmac1_clkin is most probably the correct way.
> >>>
> >>>>>> Ethernet have worked and probably still works booting with vendor U-Boot.
> >>>>>>
> >>>>>> However, when booting using mainline U-Boot the ethernet PHY is never
> >>>>>> initialized or reset due to lack of a ethernet gmac driver for rk35xx.
> >>>>>
> >>>>> surely I'm using mainline u-boot.
> >>>
> >>> Ah, this might explain why I never experienced this issue: I am using
> >>> mainline barebox with GMAC support.
> >>>
> >>>>>> With an early work-in-progress gmac driver the ethernet PHY is working
> >>>>>> same as with vendor U-Boot, and the ethernet PHY is identified.
> >>>>>>
> >>>>>> This revert from using reset-gpios to using the deprecated
> >>>>>> snps,reset-gpio is probably the wrong way forward.
> >>>>>>
> >>>>>> I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
> >>>>>> is asserted/deasserted, it works differently than how I would expect it
> >>>>>> to work, and also differs in how U-Boot handles reset-gpios.
> >>>>>>
> >>>>>> Some earlier findings regarding this reset issue:
> >>>>>> https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset
> >>>>>>
> >>>>>> Will try to get a proper patch/rfc out later this weekend or early next
> >>>>>> week after re-testing that on latest kernel.
> >>>>>
> >>>>> thank you so much for your awesome work!
> >>>>
> >>>> Thanks, made some progress on tracking down the root cause.
> >>>>  From what I have discovered so far there is a chicken-and-egg problem:
> >>>>
> >>>> - phy needs to be reset or phy_id read back as 0xffffffff on mdio bus
> >>>> - phy device is not created because a valid phy_id is not read back
> >>>> - phy device needs to be created before it can be reset
> >>>>
> >>>> Possible workarounds so far:
> >>>> - phy is reset in U-Boot
> >>>>    - very early work-in-progress at https://github.com/Kwiboo/u-boot-rockchip/commit/6ee80f9a895a32551cf30dd4252a4960ed80dfc9
> >>>> - phy is reset using mdio bus reset
> >>>>    - similar to old https://github.com/Kwiboo/linux-rockchip/commit/8597fcfa0c5c792dabb44a2db7b283c56c99ec6a
> >>>> - phy is reset using deprecated snps,reset-gpio
> >>>>    - similar to mdio bus reset
> >>>
> >>> There was a similar discussion here:
> >>> https://lore.kernel.org/all/CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com/
> >>>
> >>> The approach that moves the reset to the MDIO bus has been mentioned
> >>> there as well. On the first glance this approach looks reasonable to me.
> >>
> >> It does not look like U-Boot support mdio bus reset-gpios, so changing
> >> to that would require adding even more code into U-Boot to get ethernet
> >> working in U-Boot.
> >>
> >> Moving to mdio bus would make it behave like with old snps,reset-gpio,
> >> however phy reset-gpios still describe the hw more accurately, a
> >> assert/deassert cycle of reset-gpios triggers a phy hard reset.
> >>
> >> Do not know if it is possible to have both mdio bus reset and phy reset.
> >>
> >> There also looks like there is a bug in dwmac-rk rk3568_set_to_rgmii,
> >> tx/rx delay is always enabled. It should be disabled in some phy modes.
> >> Can send a patch once I finish with the U-Boot ethernet driver.
> >>
> >> Will try to complete a U-Boot driver that supports both phy reset-gpios
> >> and the deprecated snps,reset-gpio as a first step.
> > 
> > I have now created a small U-Boot dummy ethernet phy reset driver that
> > will assert/deassert reset-gpios to help make linux detect the PHY.
> > 
> > With this my ROCK 3 Model B detects the RTL8211F PHY again without any
> > changes to linux device tree.
> > 
> > See the U-Boot patch "HACK: net: Add dummy PHY reset-gpios driver"
> > at https://github.com/Kwiboo/u-boot-rockchip/commits/rk3568-2023.10-hacks
> 
> your hack works fine on my ROCK 3A with mainline kernel.

very nice. Jonas, thanks for working on that.

So I'll disregard this dt patch.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
