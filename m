Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1785C3DA59
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4CDHuDPLUX9wK+iGNW/3NxZdX0y37Yp/nn9tQPN49M=; b=ymd66On9gQP3xy1ajuuAaSC0Uy
	iXN+FxjVS6+QB7KMf8QaP4T9yt9L9c6PnFwPutEjhq0R+wd2K8G4K/Lj2iG6U2BVB3T8m4DnhDNp7
	aI/oQR9vrhJKpgHHis/+pS4kyKy5PQbhTjKEQRV5OcgLXMpXbkdyUymbfjYryNETnlXMXXbS+ZIRx
	ZEZN/zLDwcO3YB+fHTtmaMB11KYVGmpfVIwfR5GSFJrMO0yGKjs2m1MjBRkhRAzPn3pTw27YXWqoD
	fDBvWL0HvxCan4LkhJYTe6jfGtGQq/hCVWYRtRgmsNPxlweN/g2qGEHkilXw4BrU+UlZ5C1xfDm4d
	8FHeDZVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTiDw-0000000AYIU-2Ua2;
	Tue, 16 Jul 2024 13:28:08 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTiDt-0000000AYGP-1gEj;
	Tue, 16 Jul 2024 13:28:07 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.97.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1sTiDR-000000003jW-40cV;
	Tue, 16 Jul 2024 13:27:38 +0000
Date: Tue, 16 Jul 2024 14:27:33 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Message-ID: <ZpZ1RSSYaLo45kUI@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <6425788.NZdkxuyfQg@bagend>
MIME-Version: 1.0
In-Reply-To: <6425788.NZdkxuyfQg@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_062805_461845_B4C089D4 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: multipart/mixed; boundary="===============2578982532776100548=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2578982532776100548==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tknJYtWE5EdE/uFK"
Content-Disposition: inline


--tknJYtWE5EdE/uFK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Diederik,

On Tue, Jul 16, 2024 at 02:34:40PM +0200, Diederik de Haas wrote:
> [...]
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 20000032
> rngtest: FIPS 140-2 successes: 362
> rngtest: FIPS 140-2 failures: 638
> rngtest: FIPS 140-2(2001-10-10) Monobit: 634
> rngtest: FIPS 140-2(2001-10-10) Poker: 106
> rngtest: FIPS 140-2(2001-10-10) Runs: 43
> rngtest: FIPS 140-2(2001-10-10) Long run: 0
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=3D2.638; avg=3D139.351; max=3D9765625.=
000)Kibits/s
> rngtest: FIPS tests speed: (min=3D21.169; avg=3D36.158; max=3D68.610)Mibi=
ts/s
> rngtest: Program run time: 148109761 microseconds
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> That's almost twice as many failures as successes ...

That's bad news, and apparently different from Aurelien's initial
testing of the driver.

Can you try if the result is also that bad when using his version of
the driver:

https://patchwork.kernel.org/project/linux-arm-kernel/patch/20221128184718.=
1963353-3-aurelien@aurel32.net/

If so, we can try to increase RK_RNG_SAMPLE_CNT, and we may need
different values depending on the SoC...

--tknJYtWE5EdE/uFK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABEIAB0WIQQ8WXOkSQLJP/KOu5qX7zeyq+FyywUCZpZ1PgAKCRCX7zeyq+Fy
y7a0AQCE/4d3YLgHabbloqz9iyKoj0GdIFZwjHK3KL4968XEDQD/ajA3gjz4QmH0
pQJAwVHNMGK6A9q8yQ6Rq+ZWpqvwmLM=
=3OSJ
-----END PGP SIGNATURE-----

--tknJYtWE5EdE/uFK--


--===============2578982532776100548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2578982532776100548==--

