Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D9AC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 19:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRItJsBU//xC30NZ67OeTHymu9DumQ+d/CJVqLgYRNI=; b=FrvUKFd2aLYn+j
	E8JtRJ+UBdcuP+vNkrWZg0ZFgnVe4kqvJ4ANo8pAMDjMEMnLM0TNm/Wx8OGOMKhUx93iwMGE1qcxE
	9yLfg4CAd1GVKn1kDHWm86VCvEkuKJ1soq6KFZSM2y9XTt5TQu7LVusUyZGqhcYv8ZhYzIwcgveaG
	4d2C6lM4xnMjsd9ahSyL+jcqB92z43ouxyPXpN5ae1cgzY6/Of3WYxfeXd9aGCW4CTu9eC9zaZfM0
	VpeMnKs00cVljUHtJ7lfJIP0aR4wDWUXS5oRegarF2AZJfzf9m69RnDkfa1VqG+GNvnXCJSXScfgd
	GeqsoDl76ZMzEAOpA1vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovkHT-00Gwu7-Rc; Thu, 17 Nov 2022 19:10:35 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovkHI-00Gwsp-4i; Thu, 17 Nov 2022 19:10:26 +0000
Received: by mail-wr1-x430.google.com with SMTP id g2so1783414wrv.6;
        Thu, 17 Nov 2022 11:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lWBIo8iR5Cc8cPnhhgtUS76Ot54p5OwTZpWMb1LSuCg=;
        b=cSr4gXfaufxdly8H76V6WOGOvIJkL8W0nBJq/pB+w9Ixt/OUQkTFHgJ5cy/VYbJ+4V
         MMAVHiNpI6OCX1vfq2OXaETtSi8lioQtbcwVhQIBQiKgbCXjSXjhrEeqgzMJc0CC2Ikj
         qeBWa6noTYFYtr15wkDWYZg683mqeqoEEpaK7bbeH0aqPdG/EF1r99iJdGdODR3iY1Hy
         3snv/VAbCsyTsqegQL5pji8TDem7kJuK7vEGUV7OQvcvZa/wTEk3cjZjb4SATz8LOE5H
         JKvvEfFiKjgzenGCif70zxxrZbaR3u4zU3+VkUwnRlQljX7NphEm6OZcxa6EfHEynXPZ
         mTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lWBIo8iR5Cc8cPnhhgtUS76Ot54p5OwTZpWMb1LSuCg=;
        b=iTHtiRknV7x7VhwD3A4slamCimOYpEsZoZoxpPzzNTB6+UM4hdGXBrj8nJ9RE/CQ3Q
         vjoQpIvoGFn5Q17gu6qdHgLUQ3wB+aq5Q1xP0mEWmUdLwTLLPZ/ZR12WSKk9u22zGv0I
         0ZC1Hu/E+CRPnT1/whC1HfNxj9iwRKEsL5osIHwTuMO1Us1nb8IszhR6PMUcXq4Vwq2u
         k/gP82OkcREl8B4Z4bT0L0R6nfvg+N5ybxt+ZfaPurNkz/AfCPfuZ+GaBTjHNQC0Ny9K
         tJCpGHnUyLTNUZ4Gbao2K+ZqnIKvm0CGrdp8MBKh120AoUgqY/c0q970mw4pJZCekkGT
         DC0Q==
X-Gm-Message-State: ANoB5pk28btaYvayt5Nmb51rf32FWp9Khk6nvQZGNnM3ZyW0pE5KiEHO
	6sHCrP8wPbGrHGTPLIw9YkbM1DpZaWnVKiuwvmc=
X-Google-Smtp-Source: AA0mqf4gBw6YV/eqOk3zMGQQiB6pI0LiqMn28Aeza7cB+qVLtZD/sIkf0ixSE8k8q5Q4/ImNCcH3bsPlbTdF47haX6w=
X-Received: by 2002:adf:e405:0:b0:241:7f6f:da84 with SMTP id
 g5-20020adfe405000000b002417f6fda84mr2342433wrm.282.1668712220057; Thu, 17
 Nov 2022 11:10:20 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
 <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
 <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com>
 <99849c5e-5bd9-386b-99c5-fbc8c8df9656@arm.com> <CANAwSgT7rasp=QYdvukAO-y6NzsOfKsjdy0jAEubvMymmfDqWA@mail.gmail.com>
In-Reply-To: <CANAwSgT7rasp=QYdvukAO-y6NzsOfKsjdy0jAEubvMymmfDqWA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 17 Nov 2022 14:10:07 -0500
Message-ID: <CAMdYzYqkHb0_Rwp+fAMwS=-VrNow6yFw1HErz28EGKd6bLzY4A@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Anand Moon <linux.amoon@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_111024_229908_4AB1C3B7 
X-CRM114-Status: GOOD (  38.34  )
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

On Thu, Nov 17, 2022 at 9:56 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Robin
>
> On Thu, 17 Nov 2022 at 16:24, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2022-11-17 05:57, Anand Moon wrote:
> > > Hi Peter,
> > >
> > > On Thu, 17 Nov 2022 at 02:16, Peter Geis <pgwipeout@gmail.com> wrote:
> > >>
> > >> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > >>>
> > >>> Add MDIO description with ethernet-phy-id compatible string
> > >>> which enable calling reset of the phy. The PHY will then be probed,
> > >>> independent of if it can be found on the bus or not,
> > >>> and that probing will enable the GPIO.
> > >>>
> > >>> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> > >>>
> > >>> Fix following warning.
> > >>> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> > >>> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> > >>> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
> > >>>
> > >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > >>> ---
> > >>> V2: new to the patch series.
> > >>>
> > >>> alarm@rock-3a:~$ sudo ethtool -d eth0
> > >>> [sudo] password for alarm:
> > >>> ST GMAC Registers
> > >>> GMAC Registers
> > >>> Reg0  0x08072203
> > >>> Reg1  0x00000000
> > >>> Reg2  0x00000404
> > >>> Reg3  0x00000000
> > >>> Reg4  0x00000002
> > >>> ---
> > >>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
> > >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> > >>>
> > >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > >>> index 9f84a23a8789..fe36156a5017 100644
> > >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > >>> @@ -585,7 +585,7 @@ &i2s2_2ch {
> > >>>
> > >>>   &mdio1 {
> > >>>          rgmii_phy1: ethernet-phy@0 {
> > >>> -               compatible = "ethernet-phy-ieee802.3-c22";
> > >>> +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
> > >>>                  reg = <0x0>;
> > >>>                  pinctrl-names = "default";
> > >>>                  pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
> > >>
> > >> Have you tried instead moving the reset to the mdio bus? I've had
> > >> success with this, though you'll need to change the reset assert and
> > >> deassert timing handles, they are different for the bus.
> > >>
> > > No can you share some examples?
> > > If you got a better way to solve this issue please let me know.
> > > I will give this a try.
> >
> > Note that the Rock 3A schematic says the phy is configured for address
> > 1, not 0. From what I remember of adding the MDIO node for NanoiPi4,
> > that didn't work if I got the address wrong, despite the fact that the
> > auto-detection when the MDIO node is omitted claimed to find the same
> > phy on both addresses 0 and 1.
> >

From the net-dev folk, mdio address 0 is a broadcast address. All
functional phys we have on the mdio bus should respond to it. The
problem I've run into is with the reset on the phy node the reset
triggers too late for the dwmac to detect the phy correctly. However
moving it to the mdio bus node makes the reset happen at roughly the
same time as the depreciated dwmac reset and the phy detects without
any weird hacks.

>
> Yes, I have tested with these changes still this does not work, with
> out this fix as of now..
>
> We can check this comment in the below commit id
> 70f04e9a3358404367030493dc36718d4495a9a5  ARM: dts: imx6ul-14x14-evk:
> Enable the GPIO expander
>
> maybe something is still missing to be configured.
>
> Thanks
> -Anand
>
>
>
>
>
> > Robin.
> >
> > >
> > > Thanks
> > > -Anand
> > >>> --
> > >>> 2.38.1
> > >>>
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
