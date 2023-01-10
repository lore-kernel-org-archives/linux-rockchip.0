Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3E4C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/wt+p3FI6XTemKHGWyJKjgC7YFdQOtsqTe5EiiEjCY=; b=K+5GgurS34LhF8
	9EclIilRc/vySonFQyYROAdJjtLfxI2xljvtITFtXSf1gVk9Msd/uO/3tM2/1dK+lFKrlcJQJcPvR
	9xsoZ4g1LmTD5CjAHLL0WvgBhgCk29soDTlUIEz/2LB577FgPqgNAvWYr2h29oefsgtwLJizVym+k
	TT4/6z/uPYS//ednSEDz/UA90thMrd49SNy43mWLA2+v1a1HLR0OCMRwY1NzJ1o7tofJ3YLikF6kx
	ZM0/Dw+lT1OG2M28uNYmeJ2SdK0Xunsyb6Yfcr6gG+tVphaOKDD49RJDZRo5qvpvyRalL6ouSnVKE
	DK+NujtjhaT4aeFy1wnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEHH-006zeI-M1; Tue, 10 Jan 2023 13:02:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEHE-006zcB-Bb
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:02:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFEH9-0004P3-Ni; Tue, 10 Jan 2023 14:02:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lorenz Brun <lorenz@brun.one>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Tue, 10 Jan 2023 14:02:47 +0100
Message-ID: <3459870.aV6nBDHxoP@diego>
In-Reply-To: <CAMdYzYq_icv=2X1BkgZAsNROv__cfB0kivr4c5P8kJTLQAhE-Q@mail.gmail.com>
References: <20230104205434.867219-1-lorenz@brun.one> <VRJZNR.A6ZTK7O95IUL@brun.one> <CAMdYzYq_icv=2X1BkgZAsNROv__cfB0kivr4c5P8kJTLQAhE-Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_050252_427428_76397BF5 
X-CRM114-Status: GOOD (  36.18  )
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

Am Donnerstag, 5. Januar 2023, 01:29:47 CET schrieb Peter Geis:
> On Wed, Jan 4, 2023 at 6:55 PM Lorenz Brun <lorenz@brun.one> wrote:
> >
> >
> > On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis
> > <pgwipeout@gmail.com> wrote:
> > > On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> wrote:
> > >>
> > >>  Currently the ROCK64 device tree specifies two regulators,
> > >> vcc_host_5v
> > >>  and vcc_host1_5v for USB VBUS on the device. Both of those are
> > >> however
> > >>  specified with RK_PA2 as the GPIO enabling them, causing the
> > >> following
> > >>  error when booting:
> > >>
> > >>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by
> > >> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
> > >>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status
> > >> -22
> > >>    rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from
> > >> group usb20-host-drv  on device rockchip-pinctrl
> > >>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting,
> > >> reverse things back
> > >>
> > >>  Looking at the schematic, there are in fact three USB regulators,
> > >>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for
> > >> all
> > >>  three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.
> > >>
> > >>  Since these three regulators are not controllable separately, I
> > >> removed
> > >>  the second one which was causing the error and left a comment
> > >> explaining
> > >>  that this regulator actually controls multiple rails.
> > >>
> > >>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
> > >>  ---
> > >>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
> > >>   1 file changed, 3 insertions(+), 11 deletions(-)
> > >>
> > >>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > >> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > >>  index f69a38f42d2d..bd82bc80444d 100644
> > >>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > >>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > >>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
> > >>                  vin-supply = <&vcc_io>;
> > >>          };
> > >>
> > >>  +       // vcc_host_5v also controls the vcc_host1_5v and
> > >> vcc_otg_5v rails
> > >>  +       // but there is only one common control signal
> > >> (USB20_HOST_DRV) at
> > >>  +       // GPIO_A2
> > >>          vcc_host_5v: vcc-host-5v-regulator {
> > >>                  compatible = "regulator-fixed";
> > >>                  gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > >>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
> > >>                  vin-supply = <&vcc_sys>;
> > >>          };
> > >>
> > >>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> > >>  -               compatible = "regulator-fixed";
> > >>  -               gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > >>  -               pinctrl-names = "default";
> > >>  -               pinctrl-0 = <&usb20_host_drv>;
> > >>  -               regulator-name = "vcc_host1_5v";
> > >>  -               regulator-always-on;
> > >>  -               regulator-boot-on;
> > >>  -               vin-supply = <&vcc_sys>;
> > >>  -       };
> > >
> > > Fixed-regulator supports multiple regulators sharing a gpio, the issue
> > > is you have the pinctrl assigned multiple times which is not
> > > supported. Simply removing the pinctrl from all but one of the
> > > regulators will solve this issue.
> > Sure, I can just remove the pinctrl. Should I do anything about the
> > fact that there are three USB switches on that GPIO, but only two of
> > them are described as regulators here? Seems a bit inconsistent to me.
> 
> All hardware *should* be described, though it isn't uncommon to see a
> single fixed-regulator describe several individual switches that are
> all fed from a common source and controlled by the same gpio. If they
> are not fed by a common source (for example, the otg port is often fed
> from a separate regulator), they must be modeled separately.

Which is essentially what Lorenz' patch already did - moving the 3 switches
into one regulator. So it essentially comes down to where does the not-yet
modeled otg-regulator get its current from - also vcc_sys?





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
