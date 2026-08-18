Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 022CFC5DF7E
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 13:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WJ3PgqBgsX+FbCImliWNj2oD+nCmYZe2dBwzS/utzHY=; b=T2z04PLyizAd2Oom26E5NSzfIr
	ofu4aRQbcw3cIjxRmM1A84XJjR1L4EXw6uVstNAAu4PcUdJIwhUwFD9u6Teh1JDDleFPJJFauw5Lm
	9TPITr+4fcZdG9N3mp8VKD4Ghq0XIlRtErZEkklmUqlWV1QbITonh0cEbJE0mcEHWD00jnR3PAE4q
	pIfk2Cm0DT64ESO/+6h7Ru0vhvzi36dHqKwjmHADd++Hcdp8OY+fCEMC23U3PuynFMee6ywzYnAHP
	kQKJTIHFaiRZr0wKwX0yU7t2pv4lvYTJ7H40BqOJeSbQOpVZSWRLOo8A6tLe7WkO5u//Wk5WBQOzL
	jqfgniuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJeS-000000081RZ-2Pq6;
	Tue, 18 Aug 2026 13:14:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwJeR-000000081Qx-0BYJ;
	Tue, 18 Aug 2026 13:14:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 22196601DE;
	Tue, 18 Aug 2026 13:14:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8736A1F000E9;
	Tue, 18 Aug 2026 13:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787058885;
	bh=yo8ikXsQN3snpu67JtKmAbi55HP0/87Ih/FPamOhafI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S6Mz5JONNto/xpitSy88eKC0uTEtFdl+6RNAZwsNO8omAP5c8dNy2D9pcEi1ffSDA
	 HXbebYthVY2YjH8ea4kR9zGo/3J7xx7/+C6s0HdMIUgWPpR0p6q35p9Oguj+yBcyHu
	 OZCihV+KLVj1MCIZEA0PZanhSZ3jz8ybVYSSS3zpJBTGWTgLBLvVQstwYuH4gXcGoi
	 YLWwHmOcNrX0L1h/5+yt7gKhPwXpYp8cmo3lMEebZBPt6mMx/1VSG0dhhGYir4b9lh
	 MzBysWOdPKrR6BxFYOBfV//iUbNKtCjfftap4doatdKz2c09whJlvr4faMH3FmuGYB
	 dCmowvTWVEkzQ==
Date: Tue, 18 Aug 2026 14:14:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiawen Liu <1298662399@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip-sfc: disable runtime PM in remove
Message-ID: <3bf4d561-d98f-465f-9aff-68cabc6f1f80@sirena.org.uk>
References: <tencent_DD16C0EEDFEF4ACAFAB5A23EC8235D462707@qq.com>
MIME-Version: 1.0
In-Reply-To: <tencent_DD16C0EEDFEF4ACAFAB5A23EC8235D462707@qq.com>
X-Cookie: Smile!  You're on Candid Camera.
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
Content-Type: multipart/mixed; boundary="===============3833012984800806101=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3833012984800806101==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K96lpHhbSl2dZtMX"
Content-Disposition: inline


--K96lpHhbSl2dZtMX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 18, 2026 at 05:05:50PM +0400, Jiawen Liu wrote:
> rockchip_sfc_probe enables runtime PM and leaves the device active with
> a usage count held by pm_runtime_get_noresume(). The remove callback
> only disables the clocks and does not disable runtime PM, leaving the
> device in an inconsistent state and leaking the runtime PM reference.
> Add the missing runtime PM teardown in rockchip_sfc_remove to balance
> the probe's enable and get_noresume calls.
>=20
> Signed-off-by: jiawen <1298662399@qq.com>

Your name here doesn't match the name you're using in the From: of your
mail, that's going to make tooling think you've not provided a signoff.

--K96lpHhbSl2dZtMX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqEWsEACgkQJNaLcl1U
h9DMCAf+KcCcyXPo7j8LdqOXlUjWViQgcLzlmsM2eiKWlA3fQ7dvKJYXlqc7iE2t
rpeNy1XfD3fIpkYn2C7OgC8brc6H7LjOVR86ItweCHS4hldCjxf5Ck1tZ5tZHSoW
dDXoTwq+o9DJTo56rKHnbEYAKieI1xA9V7HhXd8ltA2UkNav/ePbj6vqlUk6IzPb
xoW1UFzJi5dor+Ui3yJWDSp/ZeexJp5Vy9WnNvgM71wosY1egcB/aqTH+6oqIxxx
buLjQcCdE2KrCy42lsJ6Y5FjaO/sTZKCvr6JKPEo7hyYTmUQTvFeSUW+nsIYNIeO
qhNAS545Pr0mjAangiK+8zqqVrP2KQ==
=6fzB
-----END PGP SIGNATURE-----

--K96lpHhbSl2dZtMX--


--===============3833012984800806101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3833012984800806101==--

