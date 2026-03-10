Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A7AEA854E
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdAFJKwG0hd9gPzaABRk6LOY2KCJKU05xKXiwDf8nYQ=; b=H3EsMRudPL2KWhzNwcGmZeR5Mr
	BJSsNOpPAqUDCHRIteNtZKRmq18Y2ARzfauvYNjgAZt9sX3sP2DvJMEAaUyzk2ZQ+1t3QOS2EgN+m
	hAuFakgHVuth/1lnO63FJomdPPIkNnz3ePGHT4ZupwYJHBpoHIOuV30tT/sIkNCYNz6HFOPSSE9pl
	uhMpzpP1IehB9s3U182JTSEjurEaVnKrPP77P8OSdj9+d6BRs86zwSedTC+0TyR4pF4Dl6rXoejNW
	0Oi/MK1VpHc7gzeYyxM5YXnL9HHOquvN5u2m5tOeSa63XQjjfIv1WEfxBgh2k6lBjHvYNIOZtgMgO
	qZeyd0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsqd-000000090Uz-0Jfj;
	Tue, 10 Mar 2026 08:53:51 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsqZ-000000090TH-264I
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 08:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Jurke3t2EyAB5+kik9FcOqNaKymdC6aoDQcLoDZKbXc=; b=RLL5cx9MD2m8r+X9gRVzVpVqZs
	RWsU1OHvsr6fp+kbOZjI/bIzss324l6KeKJJJjUdmkUWLz585TZR5otE81+7jCvOv3OD+3/PWAXZx
	2G4mvfUSS7uyy2+r8v8M6c1B10ZJ7iZ45+kw3/c/mJkeAotgH2hCq5OmzMrESIJEwRJU=;
X-Preliminary-Spam-Score: -4.4 (----)
Received: from [10.42.0.16] (helo=login.tika.stderr.nl)
	by tika.stderr.nl with smtp (Exim 4.96)
	(envelope-from <matthijs@stdin.nl>)
	id 1vzsqH-0002Jb-2J;
	Tue, 10 Mar 2026 09:53:32 +0100
Received: (nullmailer pid 2675120 invoked by uid 2001);
	Tue, 10 Mar 2026 08:53:29 -0000
Date: Tue, 10 Mar 2026 09:53:29 +0100
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH RESEND 1/2] arm64: dts: rockchip: rk3308: Add gpio-ranges
 properties
Message-ID: <aa_cCCc7FqdSv8eX@login.tika.stderr.nl>
Mail-Followup-To: Matthijs Kooijman <matthijs@stdin.nl>,
	Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <20260302202121.197288-1-matthijs@stdin.nl>
 <20260302202121.197288-3-matthijs@stdin.nl>
 <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <e439f2f7-0b25-41a5-951a-d8d3bc9f2bf2@kwiboo.se>
X-PGP-Fingerprint: E7D0 C6A7 5BEE 6D84 D638  F60A 3798 AF15 A156 5658
X-PGP-Key: http://www.stderr.nl/static/files/gpg_pubkey.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_015348_085930_77E99586 
X-CRM114-Status: GOOD (  24.15  )
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
Content-Type: multipart/mixed; boundary="===============7498061987164320408=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7498061987164320408==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y0Af1s2EGjNyxXmK"
Content-Disposition: inline


--Y0Af1s2EGjNyxXmK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

Thanks for your review.

> > This does not immediately change functionality, because the
> > gpio-rockchip.c driver has a workaround that defines ranges when they
> > are not present in DT, but that relies on global gpio numbering (so
> > AFAICS only works when the rockchip gpio banks are initialized first and
> > in-order).
>=20
> This is strictly not correct, the driver use the gpioX alias id as
> defined in the device tree and does not depend on the initialization
> order.

Ah, I had not realized these aliases existed. However, it seems they are
not actually relevant in this case. My assumption was that gpio
numbering was based on initalizating order, but I see in the code that
GPIO drivers decide themselves (by setting gc->base statically or maybe
based on DT). For the gpio-rockchip driver, these base numbers are
hardcoded to start from 0 in rockchip_pinctrl_get_soc_data(). Dynamic
initialization-order based numbering is also done for drivers that do
not set gc->base, but that starts at GPIO number 512 to prevent
conflicts.

In any case, I will update my commit message to better reflect what is
happening.


> > --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> > @@ -889,6 +889,7 @@ gpio0: gpio@ff220000 {
> >  			interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> >  			clocks =3D <&cru PCLK_GPIO0>;
> >  			gpio-controller;
> > +			gpio-ranges =3D <&pinctrl 0 0 32>;
>=20
> This matches the driver, but not the hardware according to datasheet, it
> only lists gpio0 A0-C5 used, and not all 32 pins supported by the gpio0
> controller.

Indeed, this seems to be the case, but I wonder if this is a problem?

Isee other rockchip devicetree definitions (rk3528, rk3562, rk356x,
rk3576, rk3588) do not care about this and just map all 32 pins. See

	git grep -C 20 rockchip,gpio-bank | grep gpio-ranges

I also think there is no other provision for these missing GPIOs
anywhere - both pinctrl and gpiod seem to expose all 32 pins, even the
one that do not exist.

Limiting the gpio-ranges definitions would prevent writing to reserved
pinctrl registers via the userspace gpio API, which might be useful, but
you would still be able to write to them via a custom devicetree (that
uses non-existing pinctrl pins) and you would still be able to write to
non-existent gpio registers via the userspace API.

Given the above, do you still think it would be good to limit the
gpio-ranges to the existing GPIOs only (I have no strong opinion)?

Gr.

Matthijs

--Y0Af1s2EGjNyxXmK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMyF3AetYrDfGJ9el6ZMxy91tJYwFAmmv3AUACgkQ6ZMxy91t
JYyNZA//VogIWO55rSmcEXGC0p9rrWm93PtZhjLMawss6RQXPtmAwnQUSDF7xCoy
jsoOT8xFlARRDQC0v0ONBNhmOOYzH14emEqudzdjV6auGr8GW0vBdMF04xjWigEC
nL1Jiqp+yoC1Rgk8C19H3fOiyx5VpEIkw5IHKrSQQH49gRkHjvHkTMDPLqeH32eY
iH68S6mCp705yDVUXrRWCL4uRSfu5EaHpfRyfmqEf4gAz46Yxi4grxV9US7fjjZO
x3PSE3XtNCleshCP/97xKPt8yAzir3NCRiXWFqTX58lwbK81s/ygVQSY914lJ88L
gzNWmCMuhy01+4CF7GGnDE6C7jWSavixnrUhXRggIPq393OOs93sN5sXs2JnHP43
qSAdwbPMf8ob4/JYyr9AdL90DKWXuqaN2PisAMn3p0+4Emr16LkQ5J4H20b5T1eW
S8rg4jxHJdGd35IJzo0DC50kXp/s7T4EAdNmwKlcruubWMrCelyJ60kETqqI2noF
Ov7vD3BV8XZUngJC0qeo8Cx62d13KZr4o1xKYvxA4Tmgi7ptx4XR6DDdZ2Utl9R9
vlkTkR6tuEaOAOoJrniRQ9eOZYOgd2+JRyqJ9wNvfyvEK1YWZEfbaMy3/BWYrTlq
YqjZkeflsS7QFjnSHLvkGMFe6OOTGlZMCVUjCKr8Mo6Kcv15bAc=
=tkhC
-----END PGP SIGNATURE-----

--Y0Af1s2EGjNyxXmK--


--===============7498061987164320408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7498061987164320408==--

