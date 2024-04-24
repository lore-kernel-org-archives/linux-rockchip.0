Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E7E3C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 09:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HH/LEV7JcF+EfAkTxxR2x6oYezM8EIeWqj1h1TsLSJA=; b=IgEMHiUjttfWuP2le/h11d7Qn8
	MkgACJuIjSop+5bmVldABBGNdEpJdtUzTOdJQwkBWY+EYrTNjTMh87j53/BaKwsFVed6wdZwxvWTm
	gvg6PUFn+/16muvXqmeRdMPnXuEQVHxLeBw8vMjqrQW09oKrN4zfRV7zhtqXD9eqaW4whmbgHWw9R
	R2xh7EkyONFqmhVbQpyWaaDhPPBhEYpUYt7EoLxNzK7Zu6wq131Y+mGOWWXSe1Ws3jvp7jz15BRcy
	YntP43FzUX6uxN0OKcDhWOFjJ/dlot6OUJIU6bmAC9/1YLrx2S+2X/pjmwuSUfuM17pgvJVOrI2I8
	Ssmb8SPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzYV6-00000003O8c-3ypt;
	Wed, 24 Apr 2024 09:01:12 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzYUv-00000003O4W-0Str
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 09:01:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=F/rZ
	bYMw94pfUTMXvodaO2dpVGh5mtleHLV+nawJR/g=; b=WHhiHQrPoBK5rpd5VA86
	giFZK/WK5QrP+Scmd3x1x3hLwHAF5BGRil3N9lSCG/OkS7EjhlOb3KHy5j81KxIJ
	XaXBUVIuMGaM18HHTUgJRkx01WQ3RabIM3Zz5b5JakCGhRZrb6kOTPWQedekx4RO
	R/H8oUjWLc1AF8CuHTrkFFdjh3jDINTYXczzFDoJQUKxUfdADEEN+AIaDHbZTkHW
	svfje4hrAL8SZZycmdvgqYPnU2K6Cm4h1DkYBcpDF9Erlb7TJw1UvXCdUwuDhFWg
	KO3RQsxqrhiqKIfhkyCrfRinbr1jsOR+GIFjr58RNV1q4R9FpRfaOVQoxeJtDkMu
	uw==
Received: (qmail 501040 invoked from network); 24 Apr 2024 11:00:53 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 24 Apr 2024 11:00:53 +0200
X-UD-Smtp-Session: l3s3148p1@L6tq6NMWFsgujntt
Date: Wed, 24 Apr 2024 11:00:53 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
Message-ID: <sbkymvjmrufouqqscpmrui5kcd466gj6yn2bqwf3lhfk55mjos@n4ydx6wzyq4k>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <ZihNbtiVDkxgUDGk@surfacebook.localdomain>
MIME-Version: 1.0
In-Reply-To: <ZihNbtiVDkxgUDGk@surfacebook.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_020106_187513_212C2C3A 
X-CRM114-Status: GOOD (  18.84  )
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
Content-Type: multipart/mixed; boundary="===============2501246160568853090=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2501246160568853090==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tk743gnx4tnmnqhg"
Content-Disposition: inline


--tk743gnx4tnmnqhg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andy,

On Wed, Apr 24, 2024 at 03:08:14AM +0300, Andy Shevchenko wrote:
> Wed, Apr 10, 2024 at 01:24:14PM +0200, Wolfram Sang kirjoitti:
> > While working on another cleanup series, I stumbled over the fact that
> > some drivers print an error on I2C or SMBus related timeouts. This is
> > wrong because it may be an expected state. The client driver on top
> > knows this, so let's keep error handling on this level and remove the
> > prinouts from controller drivers.
> >=20
> > Looking forward to comments,
>=20
> I do not see an equivalent change in I=C2=B2C core.

There shouldn't be. The core neither knows if it is okay or not. The
client driver knows.

> IIRC in our case (DW or i801 or iSMT) we often have this message as the o=
nly

Often? How often?

> one that points to the issues (on non-debug level), it will be much harde=
r to
> debug for our customers with this going away.

The proper fix is to print the error in the client driver. Maybe this
needs a helper for client drivers which they can use like:

	i2c_report_error(client, retval, flags);

The other thing which is also more helpful IMO is that we have
trace_events for __i2c_transfer. There, you can see what was happening
on the bus before the timeout. It can easily be that, if device X
times out, it was because of the transfer before to device Y which locks
up the bus. A simple "Bus timed out" message will not help you a lot
there.

And, keep in mind the false positives I mentioned in the coverletter.

All the best,

   Wolfram


--tk743gnx4tnmnqhg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYoykAACgkQFA3kzBSg
KbbLuBAAjzqZT2iFY7Av9H0s+wlzFx3PbOQR9XN1fKqU/9jvT5vumaPsTH+2fUZY
sOMPYFZUeYiZIcZqbWOUYa5Gkg5oZyrnNIbFOpV97VM9nHq5tMBrn80hdTccNBcn
dga0E8zizsjSv80+pRwrfrfzzAALZnRZ8pPCPf6NjfnhVuhVbM3nfTJ1cDKPzYLw
d0+t0YJKs0J2Ez92HZh4sxYyhELQ2hNFKLFcJqLBQI194Y6AQ/SP376ZTWRzaRCr
KTLHH/wpuWERvzrQBBm+MOpZ14LKy+oKzOYKUndYCFw1dZOART808i/5Zcaqzop7
FRZpqfJzwLh/JtT9GiunHLkHbLIRI59otzBHejzX/oCkIRylcxrn5DEkTFsKsdZ+
Ay1VMdtxGSVMkha8uFlq51uW06MqpDdiEqbtjkOsNBepk8hbt0trJOkGuezlNOGp
wmZeJ62f5JVrHxHHpjQwSkIy8Cm+vMtEKmJZ6exv7LRyAx2FhXFDzqwOAkNBZzNx
H2P24MVMK31rQMLcQGBQavb7O4d3Jsq1glbLHShaHkQeZYBu4aFj/zQfe+meCak/
HIpzWTFHiM2a8pAM/AnFy/Na/pUKFyE6Pwsk5cQg95VqC6sJzywwVI9AH1WaZ+cL
tED/pttmbdvulRljvoIXXsYWtCy+ENKqygemMVgNK26O1aANdr4=
=g/wq
-----END PGP SIGNATURE-----

--tk743gnx4tnmnqhg--


--===============2501246160568853090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2501246160568853090==--

