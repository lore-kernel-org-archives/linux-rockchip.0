Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C90BC76196
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Apr 2023 16:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hcYqWL/J/GmCItr3D2Ew24jZ0tUZNJpgDKdOXU/heEg=; b=UJntgoIePWMHUDbQocBZFqiQaC
	xtjDCQmpaAHsAmL+3MVoORhb9XvyICGoGhihPHK+sehN1MDGCMja7QsC435vooEi2eU7OEWmn3U4I
	81t0OmgofUOixGLSgY0B0D6MSvGmAEelSZsN5telCoIlcjCgHS/7Dkaer7Pv3kRNCw9OYIRd20Wq/
	RpTm3XCWZxha5iV8zBMA9PJSZ31Xp7fVAeMayu1vYGhzKDWjOwJnRDEZrEEjeLY7/QANfCYVzxJ0B
	CCzXKU8EtnmtE3GAF7nYMBhGfsxnn7lUAbRF4PRrev2IZslHncvBsjrFLHAN5pc+lR7M4Fz/Gb9mF
	fYjo7KTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pltyH-00FVGp-0G;
	Mon, 10 Apr 2023 16:02:21 +0000
Received: from s2.dolansoft.org ([212.51.146.245] helo=mx.dolansoft.org)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pltyD-00FVDU-0z
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Apr 2023 16:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=brun.one;
	s=s1; h=MIME-Version:References:In-Reply-To:Message-Id:Cc:To:Subject:From:
	Date:From:To:Subject:Date:Message-ID:Reply-To;
	bh=Dnj4EUPLACsNaupjS3Ue4vsMnEc2eWxF3KPJzlyBO9g=; b=b8a17Z257nmM4LVM+QsMISDO6I
	hpAxck9STMrFCdCw4kg5VdvenQBl2jezGUmG7NO4AsUnmZNM7q45eHR1jrZ+aNrLla8s/yfl632zX
	gbzMSqvI+AdfAkl712oIkNCd2zI97jiopnXKGoxzkQQidcBYghBZbThhhSLZC3PwXCd/fpPspH7tt
	TcGGMj0925iETkQdIZBSkjm3xTXecVPR7w/H9kbx87A2Yx9ycD3vKoOe1j2EblG7BL5iiVVgSqBG6
	iPk7Owks24rmjG6Hcq1ednjjU8kfFNgqsyoL9SiRvxfOLLZGn/ixu3w7LALT6McpNhKCeNnbQ2S5V
	vgAZaSGA==;
Received: from [212.51.153.89] (helo=[192.168.12.232])
	by mx.dolansoft.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lorenz@dolansoft.org>)
	id 1pltxz-002wVa-2x;
	Mon, 10 Apr 2023 16:02:03 +0000
Date: Mon, 10 Apr 2023 18:01:57 +0200
From: Lorenz Brun <lorenz@brun.one>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org
Message-Id: <9VPWSR.2LHVN29TVRRY@brun.one>
In-Reply-To: <2GHAOR.W0F90BY4ILTG@brun.one>
References: <20230104205434.867219-1-lorenz@brun.one>
	<VRJZNR.A6ZTK7O95IUL@brun.one>
	<CAMdYzYq_icv=2X1BkgZAsNROv__cfB0kivr4c5P8kJTLQAhE-Q@mail.gmail.com>
	<3459870.aV6nBDHxoP@diego> <2GHAOR.W0F90BY4ILTG@brun.one>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_090217_528662_550A5731 
X-CRM114-Status: GOOD (  32.34  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org




Am Di, 10. Jan 2023 um 22:38:26 +01:00:00 schrieb Lorenz Brun =

<lorenz@brun.one>:
> On Tue, Jan 10 2023 at 14:02:47 +01:00:00, Heiko St=FCbner =

> <heiko@sntech.de> wrote:
>> Am Donnerstag, 5. Januar 2023, 01:29:47 CET schrieb Peter Geis:
>>>  On Wed, Jan 4, 2023 at 6:55 PM Lorenz Brun <lorenz@brun.one> wrote:
>>>  >
>>>  >
>>>  > On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis
>>>  > <pgwipeout@gmail.com> wrote:
>>>  > > On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> =

>>> =7F=7Fwrote:
>>>  > >>
>>>  > >>  Currently the ROCK64 device tree specifies two regulators,
>>>  > >> vcc_host_5v
>>>  > >>  and vcc_host1_5v for USB VBUS on the device. Both of those =

>>> are
>>>  > >> however
>>>  > >>  specified with RK_PA2 as the GPIO enabling them, causing the
>>>  > >> following
>>>  > >>  error when booting:
>>>  > >>
>>>  > >>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by
>>>  > >> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
>>>  > >>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) =

>>> =7F=7Fstatus
>>>  > >> -22
>>>  > >>    rockchip-pinctrl pinctrl: could not request pin 2 =

>>> (gpio0-2) =7F=7Ffrom
>>>  > >> group usb20-host-drv  on device rockchip-pinctrl
>>>  > >>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying =

>>> =7F=7Fsetting,
>>>  > >> reverse things back
>>>  > >>
>>>  > >>  Looking at the schematic, there are in fact three USB =

>>> =7F=7Fregulators,
>>>  > >>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable =

>>> =7F=7Fsignal for
>>>  > >> all
>>>  > >>  three is driven by Q2604 which is in turn driven by =

>>> =7F=7FGPIO_A2/PA2.
>>>  > >>
>>>  > >>  Since these three regulators are not controllable =

>>> separately, =7F=7FI
>>>  > >> removed
>>>  > >>  the second one which was causing the error and left a comment
>>>  > >> explaining
>>>  > >>  that this regulator actually controls multiple rails.
>>>  > >>
>>>  > >>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
>>>  > >>  ---
>>>  > >>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 =

>>> =7F=7F+++-----------
>>>  > >>   1 file changed, 3 insertions(+), 11 deletions(-)
>>>  > >>
>>>  > >>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>>  > >> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>>  > >>  index f69a38f42d2d..bd82bc80444d 100644
>>>  > >>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>>  > >>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>>  > >>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
>>>  > >>                  vin-supply =3D <&vcc_io>;
>>>  > >>          };
>>>  > >>
>>>  > >>  +       // vcc_host_5v also controls the vcc_host1_5v and
>>>  > >> vcc_otg_5v rails
>>>  > >>  +       // but there is only one common control signal
>>>  > >> (USB20_HOST_DRV) at
>>>  > >>  +       // GPIO_A2
>>>  > >>          vcc_host_5v: vcc-host-5v-regulator {
>>>  > >>                  compatible =3D "regulator-fixed";
>>>  > >>                  gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>>  > >>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
>>>  > >>                  vin-supply =3D <&vcc_sys>;
>>>  > >>          };
>>>  > >>
>>>  > >>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
>>>  > >>  -               compatible =3D "regulator-fixed";
>>>  > >>  -               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>>  > >>  -               pinctrl-names =3D "default";
>>>  > >>  -               pinctrl-0 =3D <&usb20_host_drv>;
>>>  > >>  -               regulator-name =3D "vcc_host1_5v";
>>>  > >>  -               regulator-always-on;
>>>  > >>  -               regulator-boot-on;
>>>  > >>  -               vin-supply =3D <&vcc_sys>;
>>>  > >>  -       };
>>>  > >
>>>  > > Fixed-regulator supports multiple regulators sharing a gpio, =

>>> =7F=7Fthe issue
>>>  > > is you have the pinctrl assigned multiple times which is not
>>>  > > supported. Simply removing the pinctrl from all but one of the
>>>  > > regulators will solve this issue.
>>>  > Sure, I can just remove the pinctrl. Should I do anything about =

>>> =7F=7Fthe
>>>  > fact that there are three USB switches on that GPIO, but only =

>>> two =7F=7Fof
>>>  > them are described as regulators here? Seems a bit inconsistent =

>>> =7F=7Fto me.
>>> =

>>>  All hardware *should* be described, though it isn't uncommon to =

>>> see =7F=7Fa
>>>  single fixed-regulator describe several individual switches that =

>>> are
>>>  all fed from a common source and controlled by the same gpio. If =

>>> =7F=7Fthey
>>>  are not fed by a common source (for example, the otg port is often =

>>> =7F=7Ffed
>>>  from a separate regulator), they must be modeled separately.
>> =

>> Which is essentially what Lorenz' patch already did - moving the 3 =

>> =7Fswitches
>> into one regulator. So it essentially comes down to where does the =

>> =7Fnot-yet
>> modeled otg-regulator get its current from - also vcc_sys?
>> =

> Yeah, all regulators (they are just USB load/overload switches) are =

> powered from VCC_SYS, there aren't that many power rails on the =

> ROCK64.
> =

> The alternative to my first patch would essentially be this:
> =

> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -48,11 +48,18 @@ vcc_host_5v: vcc-host-5v-regulator {
>                vin-supply =3D <&vcc_sys>;
>        };
> =

> -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> +       vcc_host1_5v: vcc-host1-5v-regulator {
> +               compatible =3D "regulator-fixed";
> +               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> +               regulator-name =3D "vcc_host1_5v";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               vin-supply =3D <&vcc_sys>;
> +       };
> +
> +       vcc_otg_5v: vcc-otg-5v-regulator {
>                compatible =3D "regulator-fixed";
>                gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> -               pinctrl-names =3D "default";
> -               pinctrl-0 =3D <&usb20_host_drv>;
>                regulator-name =3D "vcc_host1_5v";
>                regulator-always-on;
>                regulator-boot-on;
> =

> This drops the pinctrl from all but the first regulator (which is a =

> bit weird, the first one is not really special) and then describes =

> three separate regulators driven by PA2.
> =

> I have no real preference, the one-regulator solution has the =

> downside of not accurately describing the three separate load =

> switches, the three-regulator solution has the downside of the =

> pinctrl definitions being weird.
> =

> Regards,
> Lorenz

I never got a response to this, I am fine with both approaches but =

would prefer if one of them goes in so I no longer have this error on =

every boot. If the approach above with three regulators is chosen I can =

send out a proper patch.

Regards,
Lorenz





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
