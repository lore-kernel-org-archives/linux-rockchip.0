Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 934CDC71135
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Jun 2025 07:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g65RH29zqRX9jyDV58G/zkqavStE/y4QQyxD7xSjsLc=; b=EZne0gzPO8HSlk0Orkv9q7Z/zJ
	yiMlqRtJTUMdNn6GdL15mdICX3DaeeeBsPFM1gdpgxSf8KTSp62CtuKZ1g3b5MSp97m96htxTXBwC
	iAkSRv8t4X3b1Bl5eFpAR9ncgywKTu9gSxJCeJwZsq59wAAJFYDc7ZQlBUUK2/WGzWRX0xVNhKq7D
	6nITd3lYM3CGu9G8313r/fzDLRLMRTSWfoqCgIw6oXeVY/dMbNXAfQ1kbQORqsjddrakhucEH1Fye
	9nCDZPbFOHQtY38+zGf+gWG+FnxlpfQ9fo6U+ZH4Soe9NooW039ALDYJ2avUlC2vJTNJZwrAXNLK6
	9U6/IT0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQL4a-00000000r1l-0SZW;
	Sat, 14 Jun 2025 07:13:04 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQKfr-00000000p6Y-1NXc;
	Sat, 14 Jun 2025 06:47:33 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 7C4A51C00A4; Sat, 14 Jun 2025 08:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1749883645;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Nq2VMzusQXJdAZDR0PVqMFoxiMFSHB1Zq1d1MUyO7/M=;
	b=CJtZWBrchouIXzaomFU7ufFekRA9oTEVUBcRxPh1aGCtkolSl3PPeUm6Vdy4Zi/qq+BbIL
	y2+ONs7eJB1n3//ZNGV+92vplpiqJ2BlqPTy1sNLOONnGZeMEAgOBFJnqxNXIKKVm7uBAk
	4iLfWoLwa540gktZliYA0g8h3ffD41Y=
Date: Sat, 14 Jun 2025 08:47:25 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH 00/28] iio: zero init stack with { } instead of memset()
Message-ID: <aE0a/Y9qVByfA2vI@duo.ucw.cz>
References: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
 <aEqbQPvz0FsLXt0Z@duo.ucw.cz>
 <2243943.irdbgypaU6@workhorse>
 <aEsiTy++yKGe1p9W@duo.ucw.cz>
 <aEsmDyc44P8amm5p@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <aEsmDyc44P8amm5p@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_234731_802065_4C7BCA48 
X-CRM114-Status: GOOD (  24.16  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-iio@vger.kernel.org, Petre Rodan <petre.rodan@subdimension.ro>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Tomasz Duszynski <tomasz.duszynski@octakon.com>, linux-stm32@st-md-mailman.stormreply.com, Lars-Peter Clausen <lars@metafoo.de>, Francesco Dolcini <francesco@dolcini.it>, Oleksij Rempel <o.rempel@pengutronix.de>, Javier Carrasco <javier.carrasco.cruz@gmail.com>, linux-rockchip@lists.infradead.org, =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, David Lechner <dlechner@baylibre.com>, Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>, Jacopo Mondi <jacopo@jmondi.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Michael Hennerich <michael.hennerich@analog.com>, Mudit Sharma <muditsharma.info@gmail.com>, linux-mediatek@lists.infradead.org, Andreas Klinger <ak@it-klinger.de>, Matthias Brugger <matthias.bgg@gmail.com>, Leonard =?iso-8859-1?Q?G=F6hrs?= <l.goehrs@pengutronix.de>, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Shevchenko <andy@kernel.org>, linux-kernel@vger.kernel.org, Roan van Dijk <roan@protonic.nl>, =?iso-8859-1?Q?Jo=E3o_Paulo_Gon=E7alves?= <jpaulo.silvagoncalves@gmail.com>, kernel@pengutronix.de, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============1721146831170165737=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1721146831170165737==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8EN7Mf+Ky8207VFl"
Content-Disposition: inline


--8EN7Mf+Ky8207VFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu 2025-06-12 22:10:07, Andy Shevchenko wrote:
> On Thu, Jun 12, 2025 at 08:54:07PM +0200, Pavel Machek wrote:
> > > On Thursday, 12 June 2025 11:17:52 Central European Summer Time Pavel=
 Machek wrote:
> > > >=20
> > > > > Jonathan mentioned recently that he would like to get away from u=
sing
> > > > > memset() to zero-initialize stack memory in the IIO subsystem. An=
d we
> > > > > have it on good authority that initializing a struct or array wit=
h =3D { }
> > > > > is the preferred way to do this in the kernel [1]. So here is a s=
eries
> > > > > to take care of that.
> > > >=20
> > > > 1) Is it worth the churn?
> > > >=20
> > > > 2) Will this fail to initialize padding with some obscure compiler?
> > >=20
> > > as of right now, the only two C compilers that are supported are
> > > GCC >=3D 8.1, and Clang >=3D 13.0.1. If anyone even manages to get the
> > > kernel
> >=20
> > Well... I'm pretty sure parts of this would make it into -stable as a
> > dependency, or because AUTOSEL decides it is a bugfix. So..
> >=20
> > GNU C                  4.9              gcc --version
> > Clang/LLVM (optional)  10.0.1           clang --version
>=20
> Even though, what the kernel versions are you referring to? I am sure the=
re
> plenty of cases with {} there.

5.10, for example. I'm sure they are, uninitialized padding is a
security hole, but rather hard to detect if they are not specifically
looking.

BR,
								Pavel
--=20
I don't work for Nazis and criminals, and neither should you.
Boycott Putin, Trump, and Musk!

--8EN7Mf+Ky8207VFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCaE0a/QAKCRAw5/Bqldv6
8s8GAJwP0O7BqJu50EUbwvpDrfK4gyMKdACfahroIQZ2mLJdQs4CjH06C6Xtr0Q=
=2Vk7
-----END PGP SIGNATURE-----

--8EN7Mf+Ky8207VFl--


--===============1721146831170165737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1721146831170165737==--

