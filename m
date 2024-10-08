Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E365CEFC53
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=en/2gCMBOdx1OK8VDGnXqv6HPpoa4IEH/0HUdZV7Aho=; b=4r66Bsv1uCrPl2GGRgRHJ9XKB0
	jT52beoj9TozAr3yoqe8d+r8rdKPCtrPL9YTWXAh2bd3KoVuwa/NMA1tZrGe+tIy+bnYTl8PWbjBc
	yduUIkXy5y961JU9wPFOAIR6msDgasAEsUwYdCgCBmFMi7CyKxQvyzY6OSgPkckXA5JJ5hnCgxIEV
	sYmqOLLdOplpPex5v53sjmVqNaVAfkaeSsqMHk4KgIVPF9f3YZH/MLSo2h22bjKQZc9dN8llmuqCQ
	3q30CF357qE6UKwdQMhFX4fwxvSGVK/vch0s5SUadHJ6GbVWwMgkPuOzwaqFV/0Z0er4ATgmXRQTo
	IQD2bO4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syGoq-000000073Pi-22xU;
	Tue, 08 Oct 2024 20:28:32 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGnU-0000000737s-3qdU
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 20:27:11 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728419225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CLnKoUkAXXgz6phE+IIQuIRe649FqmYeaZ92g9c27QQ=;
	b=sIsgd1sj3CT7rC/WgQXwo6fOmj9CNdum1pwopMfRgATD2UEGQj/wWw075FoBDWw7bNYG1t
	Y75bHcvDRTLV48vk8BHkGaaqHarXDEMr+0TMyynXMxWjFwXng2hW7iw7Vc3YXB/75Q5jlJ
	BrRNHDUBq6gaExYv/SnQEZjqzmis02VTY3uDnw9CRsEx4pTfRijWzE2M/36Logo4HHKCIN
	P0DVdKbEqJi1Oaa4g4ML8p1AKo1EfcQJhGQD4cfpxeYaYrqTFts2stq2U1AwtOev9hUt9W
	lYXJQHupE0kJcq6M7qRdWIOd2o0/TnjlmCzekuPT/6yI0ovzyZnk3kFtkVJe+g==
Date: Tue, 08 Oct 2024 22:26:50 +0200
Message-Id: <D4QPH3M5DQC0.66J2EUEZAW8R@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <4607042.LvFx2qVVIh@diego> <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
 <9353258.CDJkKcVGEf@diego>
In-Reply-To: <9353258.CDJkKcVGEf@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_132709_745082_A2915323 
X-CRM114-Status: GOOD (  29.79  )
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
Content-Type: multipart/mixed; boundary="===============5755883534931635960=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5755883534931635960==
Content-Type: multipart/signed;
 boundary=f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Oct 8, 2024 at 10:20 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 21:33:11 CEST schrieb Diederik de Haas:
> > On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=C3=BCbner wrote:
> > > Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > > > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > > > The expected clock-name is different (ext_clock -> extclk) and th=
e wakeup
> > > >=20
> > > > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor=
 of
> > > > 'txco', so it seems better to use that?
> > > > Same would be true for Rock960 boards (patch 6 of this series).
> > >
> > > thanks for that catch. I mainly stumbled upon the "_" underscore, fou=
nd the
> > > clockname without but didn't take into account that there was a depre=
cated
> > > flag set in the binding :-)
> >=20
> > Doing research for another improvement, I stumbled upon this commit:
> >=20
> > ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 bo=
ards")
> >=20
> > with the following diff:
> >=20
> > ```
> >  	sdio_pwrseq: sdio-pwrseq {
> >  		compatible =3D "mmc-pwrseq-simple";
> >  		clocks =3D <&rk808 1>;
> > -		clock-names =3D "ext_clock";
> > +		clock-names =3D "lpo";
> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&wifi_enable_h>;
> >  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> > ```
> >=20
>
> The brcm,bluetooth binding is pretty clear, it's
> txco - for an "external reference clock, not a crystal"
> lpo - for a low power 32.768 kHz clock.
>
> The rk808 and also the pmucru are both "not crystals", so I'll just go
> with the "txco".
>
> The hci_bcm driver also handles txco and extclk the same, so there won't
> be a behaviour change with existing code.

Excellent. Thanks for verifying :-)

Cheers,
  Diederik

> > But do read the full git commit message.
> >=20
> > The corresponding bluetooth node had 'lpo' as new value for
> > 'clock-names' though ... from "ext_clock", but it also changed
> > its compatible, so it's not the same. For details, see commit
> > f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards"=
)
> >=20
> > So it's possible the change needs to be more extensive.
> > And a Tested-by tag from someone with the board is probably a good idea=
.
> >=20
> > Regards,
> >   Diederik
> >=20
> > > > > gpio properties are named differently when changing from vendor-t=
ree to
> > > > > mainline. So fix those to match the binding.
> > > > >
> > > > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip =
rk3566 box demo board")
> > > > > Cc: Andy Yan <andyshrk@163.com>
> > > > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > > > ---
> > > > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > index 0c18406e4c59..dd6fe964d618 100644
> > > > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > > @@ -449,9 +449,9 @@ &uart1 {
> > > > >  	bluetooth {
> > > > >  		compatible =3D "brcm,bcm43438-bt";
> > > > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > > > -		clock-names =3D "ext_clock";
> > > > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > > +		clock-names =3D "extclk";
> > > > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > > > >  		pinctrl-names =3D "default";
> > > > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> > > >=20
> > > >=20
> >=20
> >=20


--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwWVjwAKCRDXblvOeH7b
bvJCAP9ctue54qTFYKYkDawObOJ/AmZdg+nNzQb2TrWYiK3O8AEAtZOVdlJP/yGt
yjzCvHkhoP+FiHMJaOsnfPEaAxTX7gg=
=fvyt
-----END PGP SIGNATURE-----

--f01c82960899fefa03cdc785db30994e81e3f61a35aabc7eb4e49d766e5d--


--===============5755883534931635960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5755883534931635960==--

