Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C53BC76196
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Apr 2023 20:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ut5KAlsMoanUtZwzqLwHMZFJy1LBu/nclrpMKAkE9gs=; b=IUrpLuTC4U/Xoc
	qKAUwRkVaon0w5a0QgjipwNfbkuC12hSlxyiWxSd/nJeVJyflJ3Mr7HxgAm0/SjfqMPXvWFZQzeFE
	SAGQUQTdZoVQSGBkYCr87Xw82d5ebBSPqyD3gx3jafy3uQ/Z16yG7f6zWim5auFBiuyTRPf4onafD
	0ncGiZbXcMAhuwrNIBJBi7z2oplQdFUBXPzxu5BEGYYedy9KV6/TiauOsJLZ3mOzNUVVY55bRFNyk
	2yHakL+Gb0F4iaGmMfBa5owudeS5Z8jZZGBNEG++/YhoU23g4Y4DeFJC627DZxY8l5+J0nR/NwxT/
	pGqCzzbeFTDLesqJUQwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plyAE-00Fu9i-1E;
	Mon, 10 Apr 2023 20:30:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plyAA-00Fu9F-2l
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Apr 2023 20:30:56 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1plyA2-0001hM-Nk; Mon, 10 Apr 2023 22:30:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lorenz Brun <lorenz@brun.one>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Mon, 10 Apr 2023 22:30:45 +0200
Message-ID: <4642912.1IzOArtZ34@diego>
In-Reply-To: <9VPWSR.2LHVN29TVRRY@brun.one>
References:  <20230104205434.867219-1-lorenz@brun.one> <2GHAOR.W0F90BY4ILTG@brun.one>
 <9VPWSR.2LHVN29TVRRY@brun.one>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_133055_061958_75AA43BB 
X-CRM114-Status: GOOD (  44.08  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Montag, 10. April 2023, 18:01:57 CEST schrieb Lorenz Brun:
> =

> Am Di, 10. Jan 2023 um 22:38:26 +01:00:00 schrieb Lorenz Brun =

> <lorenz@brun.one>:
> > On Tue, Jan 10 2023 at 14:02:47 +01:00:00, Heiko St=FCbner =

> > <heiko@sntech.de> wrote:
> >> Am Donnerstag, 5. Januar 2023, 01:29:47 CET schrieb Peter Geis:
> >>>  On Wed, Jan 4, 2023 at 6:55 PM Lorenz Brun <lorenz@brun.one> wrote:
> >>>  >
> >>>  >
> >>>  > On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis
> >>>  > <pgwipeout@gmail.com> wrote:
> >>>  > > On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> =

> >>> =7F=7Fwrote:
> >>>  > >>
> >>>  > >>  Currently the ROCK64 device tree specifies two regulators,
> >>>  > >> vcc_host_5v
> >>>  > >>  and vcc_host1_5v for USB VBUS on the device. Both of those =

> >>> are
> >>>  > >> however
> >>>  > >>  specified with RK_PA2 as the GPIO enabling them, causing the
> >>>  > >> following
> >>>  > >>  error when booting:
> >>>  > >>
> >>>  > >>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by
> >>>  > >> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
> >>>  > >>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) =

> >>> =7F=7Fstatus
> >>>  > >> -22
> >>>  > >>    rockchip-pinctrl pinctrl: could not request pin 2 =

> >>> (gpio0-2) =7F=7Ffrom
> >>>  > >> group usb20-host-drv  on device rockchip-pinctrl
> >>>  > >>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying =

> >>> =7F=7Fsetting,
> >>>  > >> reverse things back
> >>>  > >>
> >>>  > >>  Looking at the schematic, there are in fact three USB =

> >>> =7F=7Fregulators,
> >>>  > >>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable =

> >>> =7F=7Fsignal for
> >>>  > >> all
> >>>  > >>  three is driven by Q2604 which is in turn driven by =

> >>> =7F=7FGPIO_A2/PA2.
> >>>  > >>
> >>>  > >>  Since these three regulators are not controllable =

> >>> separately, =7F=7FI
> >>>  > >> removed
> >>>  > >>  the second one which was causing the error and left a comment
> >>>  > >> explaining
> >>>  > >>  that this regulator actually controls multiple rails.
> >>>  > >>
> >>>  > >>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
> >>>  > >>  ---
> >>>  > >>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 =

> >>> =7F=7F+++-----------
> >>>  > >>   1 file changed, 3 insertions(+), 11 deletions(-)
> >>>  > >>
> >>>  > >>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>>  > >> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>>  > >>  index f69a38f42d2d..bd82bc80444d 100644
> >>>  > >>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>>  > >>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> >>>  > >>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
> >>>  > >>                  vin-supply =3D <&vcc_io>;
> >>>  > >>          };
> >>>  > >>
> >>>  > >>  +       // vcc_host_5v also controls the vcc_host1_5v and
> >>>  > >> vcc_otg_5v rails
> >>>  > >>  +       // but there is only one common control signal
> >>>  > >> (USB20_HOST_DRV) at
> >>>  > >>  +       // GPIO_A2
> >>>  > >>          vcc_host_5v: vcc-host-5v-regulator {
> >>>  > >>                  compatible =3D "regulator-fixed";
> >>>  > >>                  gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> >>>  > >>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
> >>>  > >>                  vin-supply =3D <&vcc_sys>;
> >>>  > >>          };
> >>>  > >>
> >>>  > >>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> >>>  > >>  -               compatible =3D "regulator-fixed";
> >>>  > >>  -               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> >>>  > >>  -               pinctrl-names =3D "default";
> >>>  > >>  -               pinctrl-0 =3D <&usb20_host_drv>;
> >>>  > >>  -               regulator-name =3D "vcc_host1_5v";
> >>>  > >>  -               regulator-always-on;
> >>>  > >>  -               regulator-boot-on;
> >>>  > >>  -               vin-supply =3D <&vcc_sys>;
> >>>  > >>  -       };
> >>>  > >
> >>>  > > Fixed-regulator supports multiple regulators sharing a gpio, =

> >>> =7F=7Fthe issue
> >>>  > > is you have the pinctrl assigned multiple times which is not
> >>>  > > supported. Simply removing the pinctrl from all but one of the
> >>>  > > regulators will solve this issue.
> >>>  > Sure, I can just remove the pinctrl. Should I do anything about =

> >>> =7F=7Fthe
> >>>  > fact that there are three USB switches on that GPIO, but only =

> >>> two =7F=7Fof
> >>>  > them are described as regulators here? Seems a bit inconsistent =

> >>> =7F=7Fto me.
> >>> =

> >>>  All hardware *should* be described, though it isn't uncommon to =

> >>> see =7F=7Fa
> >>>  single fixed-regulator describe several individual switches that =

> >>> are
> >>>  all fed from a common source and controlled by the same gpio. If =

> >>> =7F=7Fthey
> >>>  are not fed by a common source (for example, the otg port is often =

> >>> =7F=7Ffed
> >>>  from a separate regulator), they must be modeled separately.
> >> =

> >> Which is essentially what Lorenz' patch already did - moving the 3 =

> >> =7Fswitches
> >> into one regulator. So it essentially comes down to where does the =

> >> =7Fnot-yet
> >> modeled otg-regulator get its current from - also vcc_sys?
> >> =

> > Yeah, all regulators (they are just USB load/overload switches) are =

> > powered from VCC_SYS, there aren't that many power rails on the =

> > ROCK64.
> > =

> > The alternative to my first patch would essentially be this:
> > =

> > --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> > @@ -48,11 +48,18 @@ vcc_host_5v: vcc-host-5v-regulator {
> >                vin-supply =3D <&vcc_sys>;
> >        };
> > =

> > -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
> > +       vcc_host1_5v: vcc-host1-5v-regulator {
> > +               compatible =3D "regulator-fixed";
> > +               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > +               regulator-name =3D "vcc_host1_5v";
> > +               regulator-always-on;
> > +               regulator-boot-on;
> > +               vin-supply =3D <&vcc_sys>;
> > +       };
> > +
> > +       vcc_otg_5v: vcc-otg-5v-regulator {
> >                compatible =3D "regulator-fixed";
> >                gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> > -               pinctrl-names =3D "default";
> > -               pinctrl-0 =3D <&usb20_host_drv>;
> >                regulator-name =3D "vcc_host1_5v";
> >                regulator-always-on;
> >                regulator-boot-on;
> > =

> > This drops the pinctrl from all but the first regulator (which is a =

> > bit weird, the first one is not really special) and then describes =

> > three separate regulators driven by PA2.
> > =

> > I have no real preference, the one-regulator solution has the =

> > downside of not accurately describing the three separate load =

> > switches, the three-regulator solution has the downside of the =

> > pinctrl definitions being weird.
> > =

> > Regards,
> > Lorenz
> =

> I never got a response to this, I am fine with both approaches but =

> would prefer if one of them goes in so I no longer have this error on =

> every boot. If the approach above with three regulators is chosen I can =

> send out a proper patch.

Sorry about that.

I guess the solution I'd prefer is the original patch, but with a twist ;-)=
 .

vcc_host_5v: vcc_host1_5v: vcc_otg_5v: vcc-host-5v-regulator {
...
}

A node can have multiple phandles (see for example [0]), so we'd do the
one node for all regulators (with one gpio), but use the correct phandles
to identify the actual line to the consumer.

This way we still keep somewhat close to the schematics so people can
follow along, but also have the benefit that the regulator gets turned
of when none of the 3 users need it.

Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi#n129



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
