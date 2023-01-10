Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DBA5C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 21:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s7WQK4uyfN8t6CzDcTs6UCyVOku9AvbBOqOzzRfqsTo=; b=eU7C4Y7nEZ+Ox7RebtJt+M6XWK
	sdg+dCI8b6gXc/xlmm6+5gZrJFzuroQo2yTBQmVBCDxASZzYC+S4LgPizLdkmgLo3iZMfQq+8rtxV
	Mk8I19yP1ozXonRG307m0lxuwsANmEdW/LVl2JOF+p0ny8G6XEyz6xTlE7mhqhzKmCfs9zFaloWf/
	irPHSxgHwZkoCcdpVeFCpnasJrJCJ44+oa/+/PW7+8YwmDgGvV7WcZTBcsVZ1XT12sleMJocIuuqs
	eCiDouZv4eI6/6njqbTOwYoMDD1L3KYodqODknrXsyvT3nseBzcHoQ2Q+k83Mg3xsGMBkkfEs16mZ
	psDQm78Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFMKV-008dQT-1l; Tue, 10 Jan 2023 21:38:47 +0000
Received: from s2.dolansoft.org ([212.51.146.245] helo=mx.dolansoft.org)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFMKR-008dOC-LC
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 21:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=brun.one;
	s=s1; h=MIME-Version:References:In-Reply-To:Message-Id:Cc:To:Subject:From:
	Date:From:To:Subject:Date:Message-ID:Reply-To;
	bh=JYMVet7YEeGpoxie8uikhWNmXnp7XrYmto/RHQkOiyE=; b=UKOFqgvsqLTn8eVZ9rlB15NFDI
	GmWqhnb/Jz9ZZ/X6GsJp2nlUukY4+MqQmqUy0Vp3VPiKg++yVzhTJtYp3nbWPD2vrqw62gzWlSV4a
	5PSKy9K/AKtEz2hS9AoufZr4lP9jonsOcoHjt38RRvYq4oCV6FaRlhIcr2ILq9RDFP72NGZm01Vbd
	s0cIkJj4W7h2zkDVSn4psQJFB0Kn601rPzfJwBuW8sx9E1ftTERHm6I6pbctsWPArDU2oJ7jzIlaL
	3f2UQEYrVca3sZ8KJmtvbE8qJGmmKDmBWh9BJ0Z5dJo9SI9ka7dvzcyFcbl942U2g5nELLiKkhSQn
	0uxwr+qg==;
Received: from [212.51.153.89] (helo=[192.168.12.54])
	by mx.dolansoft.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lorenz@dolansoft.org>)
	id 1pFMKG-002Cii-0i;
	Tue, 10 Jan 2023 21:38:32 +0000
Date: Tue, 10 Jan 2023 22:38:26 +0100
From: Lorenz Brun <lorenz@brun.one>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org
Message-Id: <2GHAOR.W0F90BY4ILTG@brun.one>
In-Reply-To: <3459870.aV6nBDHxoP@diego>
References: <20230104205434.867219-1-lorenz@brun.one>
	<VRJZNR.A6ZTK7O95IUL@brun.one>
	<CAMdYzYq_icv=2X1BkgZAsNROv__cfB0kivr4c5P8kJTLQAhE-Q@mail.gmail.com>
	<3459870.aV6nBDHxoP@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_133843_726342_70A5B4EB 
X-CRM114-Status: GOOD (  32.47  )
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




On Tue, Jan 10 2023 at 14:02:47 +01:00:00, Heiko St=FCbner =

<heiko@sntech.de> wrote:
> Am Donnerstag, 5. Januar 2023, 01:29:47 CET schrieb Peter Geis:
>>  On Wed, Jan 4, 2023 at 6:55 PM Lorenz Brun <lorenz@brun.one> wrote:
>>  >
>>  >
>>  > On Wed, Jan 4 2023 at 18:46:25 -05:00:00, Peter Geis
>>  > <pgwipeout@gmail.com> wrote:
>>  > > On Wed, Jan 4, 2023 at 3:55 PM Lorenz Brun <lorenz@brun.one> =

>> wrote:
>>  > >>
>>  > >>  Currently the ROCK64 device tree specifies two regulators,
>>  > >> vcc_host_5v
>>  > >>  and vcc_host1_5v for USB VBUS on the device. Both of those are
>>  > >> however
>>  > >>  specified with RK_PA2 as the GPIO enabling them, causing the
>>  > >> following
>>  > >>  error when booting:
>>  > >>
>>  > >>    rockchip-pinctrl pinctrl: pin gpio0-2 already requested by
>>  > >> vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
>>  > >>    rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) =

>> status
>>  > >> -22
>>  > >>    rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) =

>> from
>>  > >> group usb20-host-drv  on device rockchip-pinctrl
>>  > >>    reg-fixed-voltage vcc-host1-5v-regulator: Error applying =

>> setting,
>>  > >> reverse things back
>>  > >>
>>  > >>  Looking at the schematic, there are in fact three USB =

>> regulators,
>>  > >>  vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable =

>> signal for
>>  > >> all
>>  > >>  three is driven by Q2604 which is in turn driven by =

>> GPIO_A2/PA2.
>>  > >>
>>  > >>  Since these three regulators are not controllable separately, =

>> I
>>  > >> removed
>>  > >>  the second one which was causing the error and left a comment
>>  > >> explaining
>>  > >>  that this regulator actually controls multiple rails.
>>  > >>
>>  > >>  Signed-off-by: Lorenz Brun <lorenz@brun.one>
>>  > >>  ---
>>  > >>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 =

>> +++-----------
>>  > >>   1 file changed, 3 insertions(+), 11 deletions(-)
>>  > >>
>>  > >>  diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  > >> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  > >>  index f69a38f42d2d..bd82bc80444d 100644
>>  > >>  --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  > >>  +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
>>  > >>  @@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
>>  > >>                  vin-supply =3D <&vcc_io>;
>>  > >>          };
>>  > >>
>>  > >>  +       // vcc_host_5v also controls the vcc_host1_5v and
>>  > >> vcc_otg_5v rails
>>  > >>  +       // but there is only one common control signal
>>  > >> (USB20_HOST_DRV) at
>>  > >>  +       // GPIO_A2
>>  > >>          vcc_host_5v: vcc-host-5v-regulator {
>>  > >>                  compatible =3D "regulator-fixed";
>>  > >>                  gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>  > >>  @@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
>>  > >>                  vin-supply =3D <&vcc_sys>;
>>  > >>          };
>>  > >>
>>  > >>  -       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
>>  > >>  -               compatible =3D "regulator-fixed";
>>  > >>  -               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>>  > >>  -               pinctrl-names =3D "default";
>>  > >>  -               pinctrl-0 =3D <&usb20_host_drv>;
>>  > >>  -               regulator-name =3D "vcc_host1_5v";
>>  > >>  -               regulator-always-on;
>>  > >>  -               regulator-boot-on;
>>  > >>  -               vin-supply =3D <&vcc_sys>;
>>  > >>  -       };
>>  > >
>>  > > Fixed-regulator supports multiple regulators sharing a gpio, =

>> the issue
>>  > > is you have the pinctrl assigned multiple times which is not
>>  > > supported. Simply removing the pinctrl from all but one of the
>>  > > regulators will solve this issue.
>>  > Sure, I can just remove the pinctrl. Should I do anything about =

>> the
>>  > fact that there are three USB switches on that GPIO, but only two =

>> of
>>  > them are described as regulators here? Seems a bit inconsistent =

>> to me.
>> =

>>  All hardware *should* be described, though it isn't uncommon to see =

>> a
>>  single fixed-regulator describe several individual switches that are
>>  all fed from a common source and controlled by the same gpio. If =

>> they
>>  are not fed by a common source (for example, the otg port is often =

>> fed
>>  from a separate regulator), they must be modeled separately.
> =

> Which is essentially what Lorenz' patch already did - moving the 3 =

> switches
> into one regulator. So it essentially comes down to where does the =

> not-yet
> modeled otg-regulator get its current from - also vcc_sys?
> =

Yeah, all regulators (they are just USB load/overload switches) are =

powered from VCC_SYS, there aren't that many power rails on the ROCK64.

The alternative to my first patch would essentially be this:

--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -48,11 +48,18 @@ vcc_host_5v: vcc-host-5v-regulator {
                vin-supply =3D <&vcc_sys>;
        };

-       vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
+       vcc_host1_5v: vcc-host1-5v-regulator {
+               compatible =3D "regulator-fixed";
+               gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
+               regulator-name =3D "vcc_host1_5v";
+               regulator-always-on;
+               regulator-boot-on;
+               vin-supply =3D <&vcc_sys>;
+       };
+
+       vcc_otg_5v: vcc-otg-5v-regulator {
                compatible =3D "regulator-fixed";
                gpio =3D <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
-               pinctrl-names =3D "default";
-               pinctrl-0 =3D <&usb20_host_drv>;
                regulator-name =3D "vcc_host1_5v";
                regulator-always-on;
                regulator-boot-on;

This drops the pinctrl from all but the first regulator (which is a bit =

weird, the first one is not really special) and then describes three =

separate regulators driven by PA2.

I have no real preference, the one-regulator solution has the downside =

of not accurately describing the three separate load switches, the =

three-regulator solution has the downside of the pinctrl definitions =

being weird.

Regards,
Lorenz




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
