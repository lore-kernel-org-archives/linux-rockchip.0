Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E89E0C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:32:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D0CE60F91
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:32:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D0CE60F91
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOeaes8c1EKFzDqgxykEl7ewvWNoLHpgOXL81SQyXuY=; b=Wd8/ZNrDwN8wUY
	cdbSTZjT/Xq0Ead/uEUGojFEGyU4WTGg4SmEDfZdrlAgr4edpy4ce3UVxOtoQeLRqD/pYbsAOHCuj
	ZT4Km8rE9otP9Tb/D8ounK6S9UUe5pz/LS73ADLQrL95fBvp6yr6mAWQDQd/wR2sJmsfBxm3C2fQd
	ARxk1bPAcdfaVrX9zA9tNGCR2UbdmABEoSerHDMEFtGKSB3pCmCVA585PN3JA3wdcM4PtdBWqZqDG
	ygY1omA9xg5tz9tGLcKl3wYts9CbLHNLbdzIjwqPGT1dMv470CLwvPGG2fYwmij1gmG18MgqHCKJL
	jagTdPzameQ5bXX+RDIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lXS-001Js5-FB; Wed, 28 Jul 2021 15:32:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lXE-001Jq7-Mw; Wed, 28 Jul 2021 15:31:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8lXB-0006QM-KG; Wed, 28 Jul 2021 17:31:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
Date: Wed, 28 Jul 2021 17:31:48 +0200
Message-ID: <22726529.6Emhk5qWAg@diego>
In-Reply-To: <CAMdYzYoVYodBU_d+wxuJtSHLOvewAhV5LXwobTL+m4byocnJhg@mail.gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <8410057.NyiUUSuA9g@diego>
 <CAMdYzYoVYodBU_d+wxuJtSHLOvewAhV5LXwobTL+m4byocnJhg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_083152_966278_6239D8C0 
X-CRM114-Status: GOOD (  24.36  )
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

Am Mittwoch, 28. Juli 2021, 17:14:17 CEST schrieb Peter Geis:
> On Wed, Jul 28, 2021 at 10:46 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Am Mittwoch, 28. Juli 2021, 15:55:30 CEST schrieb Peter Geis:
> > > Add the thermal and tsadc nodes to the rk3568 device tree.
> > > There are two sensors, one for the cpu, one for the gpu.
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |  6 ++
> > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 71 +++++++++++++++++=
++
> > >  2 files changed, 77 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi b/arch/=
arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> > > index a588ca95ace2..b464c7bda1f7 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3568-pinctrl.dtsi
> > > @@ -2420,6 +2420,12 @@ spi3m1_cs1: spi3m1-cs1 {
> > >       };
> > >
> > >       tsadc {
> > > +             /omit-if-no-ref/
> > > +             tsadc_gpio: tsadc-gpio {
> > > +                     rockchip,pins =3D
> > > +                             <0 RK_PA1 0 &pcfg_pull_none>;
> > > +             };
> > > +
> > >               /omit-if-no-ref/
> > >               tsadcm0_shut: tsadcm0-shut {
> > >                       rockchip,pins =3D
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/bo=
ot/dts/rockchip/rk356x.dtsi
> > > index 77c679304916..0905fac0726a 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > @@ -51,6 +51,7 @@ cpu0: cpu@0 {
> > >                       compatible =3D "arm,cortex-a55";
> > >                       reg =3D <0x0 0x0>;
> > >                       clocks =3D <&scmi_clk 0>;
> > > +                     #cooling-cells =3D <2>;
> > >                       enable-method =3D "psci";
> > >                       operating-points-v2 =3D <&cpu0_opp_table>;
> > >               };
> > > @@ -59,6 +60,7 @@ cpu1: cpu@100 {
> > >                       device_type =3D "cpu";
> > >                       compatible =3D "arm,cortex-a55";
> > >                       reg =3D <0x0 0x100>;
> > > +                     #cooling-cells =3D <2>;
> > >                       enable-method =3D "psci";
> > >                       operating-points-v2 =3D <&cpu0_opp_table>;
> > >               };
> > > @@ -67,6 +69,7 @@ cpu2: cpu@200 {
> > >                       device_type =3D "cpu";
> > >                       compatible =3D "arm,cortex-a55";
> > >                       reg =3D <0x0 0x200>;
> > > +                     #cooling-cells =3D <2>;
> > >                       enable-method =3D "psci";
> > >                       operating-points-v2 =3D <&cpu0_opp_table>;
> > >               };
> > > @@ -75,6 +78,7 @@ cpu3: cpu@300 {
> > >                       device_type =3D "cpu";
> > >                       compatible =3D "arm,cortex-a55";
> > >                       reg =3D <0x0 0x300>;
> > > +                     #cooling-cells =3D <2>;
> > >                       enable-method =3D "psci";
> > >                       operating-points-v2 =3D <&cpu0_opp_table>;
> > >               };
> > > @@ -774,6 +778,73 @@ uart9: serial@fe6d0000 {
> > >               status =3D "disabled";
> > >       };
> > >
> > > +     thermal_zones: thermal-zones {
> > > +             cpu_thermal: cpu-thermal {
> > > +                     polling-delay-passive =3D <100>;
> > > +                     polling-delay =3D <1000>;
> > > +
> > > +                     thermal-sensors =3D <&tsadc 0>;
> > > +
> > > +                     trips {
> > > +                             cpu_alert0: cpu_alert0 {
> > > +                                     temperature =3D <70000>;
> > > +                                     hysteresis =3D <2000>;
> > > +                                     type =3D "passive";
> > > +                             };
> > > +                             cpu_alert1: cpu_alert1 {
> > > +                                     temperature =3D <75000>;
> > > +                                     hysteresis =3D <2000>;
> > > +                                     type =3D "passive";
> > > +                             };
> > > +                             cpu_crit: cpu_crit {
> > > +                                     temperature =3D <95000>;
> > > +                                     hysteresis =3D <2000>;
> > > +                                     type =3D "critical";
> > > +                             };
> > > +                     };
> > > +
> > > +                     cooling-maps {
> > > +                             map0 {
> > > +                                     trip =3D <&cpu_alert0>;
> > > +                                     cooling-device =3D
> > > +                                             <&cpu0 THERMAL_NO_LIMIT=
 THERMAL_NO_LIMIT>,
> > > +                                             <&cpu1 THERMAL_NO_LIMIT=
 THERMAL_NO_LIMIT>,
> > > +                                             <&cpu2 THERMAL_NO_LIMIT=
 THERMAL_NO_LIMIT>,
> > > +                                             <&cpu3 THERMAL_NO_LIMIT=
 THERMAL_NO_LIMIT>;
> > > +                             };
> > > +                     };
> > > +             };
> > > +
> > > +             gpu_thermal: gpu-thermal {
> > > +                     polling-delay-passive =3D <20>; /* milliseconds=
 */
> > > +                     polling-delay =3D <1000>; /* milliseconds */
> > > +
> > > +                     thermal-sensors =3D <&tsadc 1>;
> > > +             };
> > > +     };
> > > +
> > > +     tsadc: tsadc@fe710000 {
> > > +             compatible =3D "rockchip,rk3568-tsadc";
> > > +             reg =3D <0x0 0xfe710000 0x0 0x100>;
> > > +             interrupts =3D <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> > > +             assigned-clocks =3D <&cru CLK_TSADC_TSEN>, <&cru CLK_TS=
ADC>;
> > > +             assigned-clock-rates =3D <17000000>, <700000>;
> > > +             clocks =3D <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
> > > +             clock-names =3D "tsadc", "apb_pclk";
> > > +             resets =3D <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
> > > +                      <&cru SRST_TSADCPHY>;
> > > +             reset-names =3D "tsadc", "tsadc-apb", "tsadc-phy";
> > > +             rockchip,grf =3D <&grf>;
> > > +             rockchip,hw-tshut-temp =3D <95000>;
> > > +             rockchip,hw-tshut-mode =3D <1>; /* tshut mode 0:CRU 1:G=
PIO */
> > > +             rockchip,hw-tshut-polarity =3D <0>; /* tshut polarity 0=
:LOW 1:HIGH */
> > > +             pinctrl-names =3D "gpio", "otpout";
> > > +             pinctrl-0 =3D <&tsadc_gpio>;
> > > +             pinctrl-1 =3D <&tsadc_shutorg>;
> >
> > The mainline thermal driver doesn't specify these pinctrl states at all.
> >
> > Heiko
> =

> Oh, yes this seems to be the case.
> =

> Is this something that should get fixed?
> In practice it likely won't ever cause problems, but in theory if
> someone changed the pinmux mode it could break it.

take a look at for example the rk3399.dtsi where the tsadc uses
the generic pinctrl names of "init" (before-probe), "default" (after probe)
and "sleep"


Heiko

> =

> >
> > > +             #thermal-sensor-cells =3D <1>;
> > > +             status =3D "disabled";
> > > +     };
> > > +
> > >       saradc: saradc@fe720000 {
> > >               compatible =3D "rockchip,rk3568-saradc", "rockchip,rk33=
99-saradc";
> > >               reg =3D <0x0 0xfe720000 0x0 0x100>;
> > >
> >
> >
> >
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
