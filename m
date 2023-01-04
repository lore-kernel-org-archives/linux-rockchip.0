Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D12FC4708E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 18:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgC2ljV6snL28uaMqPlWHugC+VfkJYc+mrsc0mQKx9k=; b=QaGP+eJiSl/jRg
	UZpBYIZE1XrlhAHXEYhRJxQC3nlVacTcrdi0Hv/8djuRNIXpHY3X0Acl+IncY0ukTOy70WL28vaqb
	h6wg2iLweZknMXdGfuz3UqiKJb8C38K0d+CkIkuP4XPFaaiXNHW3YUZ5No9a4ejOqsXfi7n6R6Fx9
	woacVomQxEz96aZjVWIS3Xf1Bak5hSXnb53TIm/DHAY6pPKdArCv+fYUlIscJZbkvy6TuaOxi95gX
	kHVQGLmIUqZstipHn6Jbq7RlFPUpBQyUsW+0GyPuzB6XBugWmnGh5t2HfO14OCz1dj3juPzYSP7EA
	2Dim/FMCS6f8Dxe6AzMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVA9-00DjrF-HC; Thu, 05 Jan 2023 18:40:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDDYO-00E2FF-Au
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 23:52:17 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pDDYL-0002HY-5r; Thu, 05 Jan 2023 00:52:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lorenz Brun <lorenz@brun.one>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Thu, 05 Jan 2023 00:52:12 +0100
Message-ID: <3819910.R56niFO833@diego>
In-Reply-To: <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
References: <20230104205434.867219-1-lorenz@brun.one> <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_155216_426736_5DDBF5E6 
X-CRM114-Status: GOOD (  28.98  )
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

Am Donnerstag, 5. Januar 2023, 00:46:25 CET schrieb Peter Geis:
> On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> wrote:
> >
> > Currently the ROCK64 device tree specifies two regulators, vcc_host_5v
> > and vcc_host1_5v for USB VBUS on the device. Both of those are however
> > specified with RK_PA2 as the GPIO enabling them, causing the following
> > error when booting:
> >
> >   rockchip-pinctrl pinctrl: pin gpio0-2 already requested by vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
> >   rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status -22
> >   rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from group usb20-host-drv  on device rockchip-pinctrl
> >   reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, reverse things back
> >
> > Looking at the schematic, there are in fact three USB regulators,
> > vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for all
> > three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.
> >
> > Since these three regulators are not controllable separately, I removed
> > the second one which was causing the error and left a comment explaining
> > that this regulator actually controls multiple rails.
> >
> > Signed-off-by: Lorenz Brun <lorenz@brun.one>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
> >  1 file changed, 3 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > index f69a38f42d2d..bd82bc80444d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
> >                 vin-supply = <&vcc_io>;
> >         };
> >
> > +       // vcc_host_5v also controls the vcc_host1_5v and vcc_otg_5v rails
> > +       // but there is only one common control signal (USB20_HOST_DRV) at
> > +       // GPIO_A2
> >         vcc_host_5v: vcc-host-5v-regulator {
> >                 compatible = "regulator-fixed";
> >                 gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
> >                 vin-supply = <&vcc_sys>;
> >         };
> >
> > -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> > -               compatible = "regulator-fixed";
> > -               gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&usb20_host_drv>;
> > -               regulator-name = "vcc_host1_5v";
> > -               regulator-always-on;
> > -               regulator-boot-on;
> > -               vin-supply = <&vcc_sys>;
> > -       };
> 
> Fixed-regulator supports multiple regulators sharing a gpio, the issue
> is you have the pinctrl assigned multiple times which is not
> supported. Simply removing the pinctrl from all but one of the
> regulators will solve this issue.

Hmm, but where is the advantage in that?
I.e. fully representing the hardware would mean not only sharing the gpio
but also the pinctrl on all fixed regulators.

And with only one of them having the pinctrl, are we sure the regulator
probed first will always be the same, or does the pinctrl setting may only
come into effect once the 2nd or 3rd one probes?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
