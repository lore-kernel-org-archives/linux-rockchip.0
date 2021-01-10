Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7D75C433E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 20:06:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34D4522581
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 20:06:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34D4522581
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bftjyyLFSacPZTHaD7bJjZWGD9pqmDvB23mF40n4bNw=; b=DuAIi8flEPRi85fA144o8XYfg
	nl7xRG/gBTLvp59g0SEMz/dhg184Zbyx2VabkXbkfvA4kR/1a+4vxpWQ0H2m5pENoKRfSvF7IBib+
	478ZcAyVEbT8wJ1yQiW+kPPX32XVEGFSqvPhKjID7ghwboIFQmkcXhmyI0dIEdmNfX/IlOe20zFIH
	HStvRP+sX3KyUrsplG5glDHOIsq/I/LrT7j69AwkDbRvmxzSp/p1uDRz6UQvKGIBZeEYvb2xC0zPV
	yFQbgtiD6Cu4xftu5uLC9v1ves6RYTeTXh8coKjs8hk/POVHQTyI8RtO8YDr4I1Kzz3WYasiAKKHf
	V8tcawonQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kygzB-00063R-EZ; Sun, 10 Jan 2021 20:06:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kygz8-00061g-1L; Sun, 10 Jan 2021 20:06:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kygz2-0000NH-Du; Sun, 10 Jan 2021 21:06:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
Date: Sun, 10 Jan 2021 21:06:39 +0100
Message-ID: <2241380.NG923GbCHz@diego>
In-Reply-To: <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
References: <20210110035846.9155-1-wens@kernel.org>
 <381648f9-d650-dddf-59e6-ef32d1e1bb43@gmail.com>
 <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_150646_167297_3C12779D 
X-CRM114-Status: GOOD (  28.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Sonntag, 10. Januar 2021, 16:37:15 CET schrieb Chen-Yu Tsai:
> > > +     vcc_sd: sdmmc-regulator {
> > > +             compatible = "regulator-fixed";
> > > +             gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
> > > +             pinctrl-names = "default";
> > > +             pinctrl-0 = <&sdmmc0m1_pin>;
> >
> > > +             regulator-boot-on;
> > > +             regulator-name = "vcc_sd";
> >
> > regulator-name above other regulator properties
> 
> That is actually what I was used to, but some other rockchip dts files
> have all the properties sorted alphabetically. So I stuck with what I
> saw.

I try to keep it alphabetical except for the exceptions :-D .

regulator-name is such an exception. Similar to compatibles, the
regulator-name is an entry needed to see if you're at the right node,
so I really like it being the topmost regulator-foo property - just makes
reading easier.

(same for the compatible first, then regs, interrupts parts, as well
as "status-last")

But oftentimes, I just fix the ordering when applying - but seem to have
missed this somewhere in those "other Rockchip dts files" ;-) .


> > regulator voltage missing
> > make things as complete as possible
> >
> > from fixed-regulator.yaml:
> >
> > description:
> >   Any property defined as part of the core regulator binding, defined in
> >   regulator.yaml, can also be used. However a fixed voltage regulator is
> >   expected to have the regulator-min-microvolt and regulator-max-microvolt
> >   to be the same.
> 
> However this is not a real regulator; it is merely an on/off switch.
> I believe in this case it should just pass through the voltage from
> its upstream.

regulator-voltages are not marked required so can stay away if it's just
a dumb switch. I guess it's ok both ways and for individual board-
devicetrees the impact either way is minimal.


> > > +&i2c1 {
> > > +     status = "okay";
> > > +
> > > +     rk805: pmic@18 {
> > > +             compatible = "rockchip,rk805";
> > > +             reg = <0x18>;
> > > +             interrupt-parent = <&gpio2>;
> > > +             interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> >
> > > +             #clock-cells = <1>;
> >
> > all thing that start with "#" down the list
> 
> Is there a proper "preferred" sorting method defined somewhere?

I struggle with that often as well, but normally I'd do #clocks to clocks
with out "#", but really don't have a hard preference here.

especially as just ignoring the "#" would make #address-cells + #size-cells
look strangely sorted ... so more of a common sense thingy.


> > > +             eth_phy_int_pin: eth-phy-int-pin {
> > > +                     rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
> > > +             };
> > > +
> > > +             eth_phy_reset_pin: eth-phy-reset-pin {
> > > +                     rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> > > +             };
> > > +     };
> > > +
> > > +     leds {
> > > +             led_pin: led-pin {
> > > +                     rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +             };
> > > +     };
> > > +
> > > +     pmic {
> > > +             pmic_int_l: pmic-int-l {
> > > +                     rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> > > +             };
> > > +     };
> > > +
> >
> > > +     usb3 {
> >
> > usb
> >
> > Last numbers in nodenames are more related to the sort order then to
> > capabillity.
> > ie: mmc0, mmc1
> > All usb pin related things here.
> 
> I'd say it is more related to functionality in this case, as in "this group
> is for USB3 related pins". Makes more sense if the board supported both USB2
> and USB3.

I'd agree :-) ... especially as usb controllers on Rockchip boards are not
really numbered and I think we already have precedent for
usb2 -> usb version 2 pins in some other boards ;-)


> > > +     cap-sd-highspeed;
> > > +     disable-wp;
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
> > > +     vmmc-supply = <&vcc_sd>;
> > > +     status = "okay";
> > > +};
> > > +
> >
> > > +&saradc {
> > > +     vref-supply = <&vcc_18>;
> > > +     status = "okay";
> > > +};
> >
> > What happened to the recovery key from the schematic?
> 
> I believe I originally planned on adding it, but failed to find a proper
> key event for it. Any suggestions?

Most boards seem to use the KEY_VENDOR keycode.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
