Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8112C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9Ntojm5bU+iaTJPpsJ16OaQjBYSfVQAcXLNebMki3U=; b=T9+LjT6emgjuvI7C42en/gYM2f
	rKwkr6lbbqoQmA3IFL1w8cwWh3Cd98FDVCMbyNmyWUiRC6iLa6QgyI5kOyRgcYp+rrzvDhMXWodRw
	lKZyCyKE1yFRqBFmoQG5AWd8IlU+UbBIdguaXyaphiWccIYlUJmXiOIALMQ3q/Jk9LZixnhlq3Ere
	JGlmYHY4tn6+leh2WvWtYlJfuPP/WgFWGz+NxVlaEkOCR3U+68hS1WTk1sFN95m44FuvLR78XLlSW
	H2yol1RyFfHJTCrbckNfaUgWUIARr1rETkZLsmP6h9+MMfj0+0bOs66cdmm+c3r1Fti2FKBc43y5y
	GRkmHu9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTzw7-0000000D7hm-1sAO;
	Wed, 17 Jul 2024 08:22:55 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTzvi-0000000D7ba-2p5O
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 08:22:33 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721204547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rAUzNecuguhHhXOE34sT/gCurnZLFtv5EJeb/sysESc=;
	b=e3qAKGB3OvO0qdjIUqxpwobw/Esu0sBaD/uWAp4ZJi7rtc2/3tXMGswN+utA9BfqNaq6W8
	2Z8FPwZSxyZdZcbOK5bZQc4xeXzUPXocC0zAgox6lutjIG8/YH3cjoOLNWYrQZBSuTez1C
	7NT4nzpaNJZy2Wf6reikkSrEasLn9yQ/G51cTEV5E1kCTYi4XLz6hH/vIp3VvSEZqoJIOo
	nirHJk0ICrrD487qCHknWkVCX5bHhQeeVPUoj+g/HvN0UN5UjenECc+VEcPXFmhHRtwS6h
	6FJ5b6vaNyAqklU7m3vPYsoeYxtOS1vhkCVdxJfWtMRUAj6MhQsHRDu6aBzf3g==
X-Envelope-To: wens@kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: ardb@kernel.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: olivia@selenic.com
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux.amoon@gmail.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>, wens@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>,
 Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Wed, 17 Jul 2024 10:22:18 +0200
Message-ID: <2451882.5D0I8gZW9r@bagend>
Organization: Connecting Knowledge
In-Reply-To: <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_012231_392189_F25D0E4C 
X-CRM114-Status: GOOD (  28.53  )
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
Content-Type: multipart/mixed; boundary="===============7970951608851351614=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7970951608851351614==
Content-Type: multipart/signed; boundary="nextPart5141436.0Oyvhfi1xj";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5141436.0Oyvhfi1xj
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>, wens@kernel.org
Date: Wed, 17 Jul 2024 10:22:18 +0200
Message-ID: <2451882.5D0I8gZW9r@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Wednesday, 17 July 2024 04:58:51 CEST Chen-Yu Tsai wrote:
> On Wed, Jul 17, 2024 at 10:25=E2=80=AFAM Daniel Golle <daniel@makrotopia.=
org> wrote:
> > On Tue, Jul 16, 2024 at 07:19:35PM +0200, Diederik de Haas wrote:
> > > On Tuesday, 16 July 2024 18:53:43 CEST Diederik de Haas wrote:
> > > > rngtest: FIPS 140-2(2001-10-10) Long run: 0
> > >=20
> > > I don't know if it means something, but I noticed that I have
> > > ``Long run: 0`` with all my poor results,
> > > while Chen-Yu had ``Long run: 1``.
> > >=20
> > > Different SoC (RK3399), but Anand had ``Long run: 0`` too on their
> > > very poor result (100% failure):
> > > https://lore.kernel.org/linux-rockchip/CANAwSgTTzZOwBaR9zjJ5VMpxm5Byd=
tW6
> > > rB2S7jg+dnoX8hAoWg@mail.gmail.com/>=20
> > The conclusions I draw from that rather ugly situation are:
> >  - The hwrng should not be enabled by default, but it should by done
> > =20
> >    for each board on which it is known to work well.
> > =20
> >  - RK_RNG_SAMPLE_CNT as well as the assumed rng quality should be
> > =20
> >    defined in DT for each board:
> >    * introduce new 'rochchip,rng-sample-count' property
> >    * read 'quality' property already used for timeriomem_rng
> >=20
> > I will prepare a follow-up patch taking those conclusions into account.
> >=20
> > Just for completeness, here my test result on the NanoPi R5C:
> > root@OpenWrt:~# cat /dev/hwrng | rngtest -c 1000
> > rngtest 6.15
> > Copyright (c) 2004 by Henrique de Moraes Holschuh
> > This is free software; see the source for copying conditions.  There is=
 NO
> > warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
> > PURPOSE.
> >=20
> > rngtest: starting FIPS tests...
> > rngtest: bits received from input: 20000032
> > rngtest: FIPS 140-2 successes: 875
> > rngtest: FIPS 140-2 failures: 125
> > rngtest: FIPS 140-2(2001-10-10) Monobit: 123
> > rngtest: FIPS 140-2(2001-10-10) Poker: 5
> > rngtest: FIPS 140-2(2001-10-10) Runs: 4
> > rngtest: FIPS 140-2(2001-10-10) Long run: 0
> > rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> > rngtest: input channel speed: (min=3D85.171; avg=3D141.102;
> > max=3D4882812.500)Kibits/s rngtest: FIPS tests speed: (min=3D17.809;
> > avg=3D19.494; max=3D60.169)Mibits/s rngtest: Program run time: 139628605
> > microseconds
>=20
> I doubt this is per-board. The RNG is inside the SoC, so it could be a ch=
ip
> quality thing.=20

I agree with ChenYu (and others) that this is isn't a per-board level thing.
I'd even go further: 's/I doubt/It can't be that/' (for the same reason=20
though; this is inside the SoC).

Before I saw these latest emails, I was going to suggest:
1. Enable it only on RK3568 for now. I would be fine if this would be accep=
ted=20
by the maintainer

2. Ask that you make a special version (for me) where I could play with the=
=20
params without having to compile a new kernel for each variant (it generall=
y=20
takes me more then 24h on my Q64-A). Either through kernel module propertie=
s=20
or properties defined in the DeviceTree is fine with me.

3. Based on the results make  a choice to not enable it on rk3566 at all or=
=20
(indeed) introduce DT properties to configure it differently per SoC.

4. Hope/Ask for more test results

> On the RK3399 we also saw wildly varying results.

On my Rock64('s) (RK3328) it doesn't work at all:

```
root@cs21:~# cat /dev/hwrng | rngtest -c 1000
rngtest 5
=2E..
rngtest: starting FIPS tests...
cat: /dev/hwrng: No such device
rngtest: entropy source drained
```

Cheers,
  Diederik
--nextPart5141436.0Oyvhfi1xj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpd/OgAKCRDXblvOeH7b
bhTtAQDxHeJWjtzhQ0VzdaAQLgyOGDnjBZPN2vk0valdx2h02AD7BIHY/gdTcnTT
NP49+SbIyYyteDbeJFPD23ms28eyYgw=
=7pQO
-----END PGP SIGNATURE-----

--nextPart5141436.0Oyvhfi1xj--





--===============7970951608851351614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7970951608851351614==--




