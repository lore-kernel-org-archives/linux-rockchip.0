Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A74EC5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 20:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bo6PdDw1tR1yeSPpcZDOsRb0AlSbeFkydnjUwhM4AnU=; b=EXW3aeYRExCYNcgtKDgayys/CO
	onvL6pi3tih3IXrE0yZFAiaoKH3LPaCMJi4Iju6npA/soRtiqxqfCFpPNJwLjuVQg0mb3m5TJNj8e
	Dmh26+Q6EQntCSMT0KEAlH6K/0/iOdYM/DS2xkEF5NysWNzITVUXQDmYBh5HbwdKuTEaNstX+PeJ3
	ybGOrAGn/ADRBnYcLQW58cS2kEGFexA+yrdHwTN09gWplVIMBIkAabMhFOKRZKvnGUUAWvavzp5n2
	KqQYG5oLBd6JId8+l4AG84/OVVoc6hyvkd7Apy6kR+4WqSG+c2JLxpkPKSrMz0FCySrJPmH5Wrs2X
	khTqJ5xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4Y0-00000006ppg-3Hhw;
	Tue, 27 Feb 2024 20:59:32 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4Xx-00000006pp9-221T;
	Tue, 27 Feb 2024 20:59:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=OCs5N6D7D7Rdu9T/KxzG77zIGsHDWjUku7rZz5lfEJI=; b=rkYMlBnVdvV7klN/cO5T7eZrgI
	sW53wuFuG+11Rt8aTZ2r6z8KocBVo1EW+WHmYWXrqJFrCT1soB2N8RJglomGIS1CY49AtcYYhZmt1
	zmEpCsI6g3Jkm/5hpDhbUYv2Vc9anJP+Mw3Zm149NCNEM0h1D4YOXczf48QnXx7CxlEW8JZv6CZAQ
	zck/PU0Xn5hZTE6P0Abwmm270us1rfQ3bkFjvBShJhJpEXV5v+uWmSGZB7QMmQWeFFyhol1z38ql0
	mwwHBkLmu5BCdcllhUsyDb7CB6niu9VptHhJ/FoMjuqiPgMAVZWFq4K0645dK/Gr03krr0A9XrdRY
	EXWAl+6w==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rf4Xw-006A39-4K; Tue, 27 Feb 2024 20:59:28 +0000
Date: Tue, 27 Feb 2024 21:59:26 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix reset-names for rk356x
 i2s2 controller
Message-ID: <nqazhaf66cqlqjbtfrrzl52cxv7x3roqq4no77qugmelqdy4an@eunkjccrszja>
References: <20240227173526.710056-1-heiko@sntech.de>
 <20240227173526.710056-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240227173526.710056-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_125929_550874_1E76BB39 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Type: multipart/mixed; boundary="===============7352997889445574904=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7352997889445574904==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nd5amq5g3wi33x72"
Content-Disposition: inline


--nd5amq5g3wi33x72
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 06:35:26PM +0100, Heiko Stuebner wrote:
> The dtbscheck reports a warning for a wrong reset-names property for
> the i2s2 controller on rk356x socs.
>=20
> The other controllers on the soc provide tx and rx directions and hence
> two resets and separate clocks for each direction, while i2s2 only
> provides one reset. This was so far named just "m" which isn't part of
> the binding.
>=20
> The clock-names the controller uses all end in "tx", so use the matching
> "tx-m" reset-name for the i2s controller.
>=20
> Fixes: 755f37010f3e ("arm64: dts: rockchip: RK356x: Add I2S2 device node")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This fixes the other one of the two warnings I get for a newly created
dts using rk356x.dtsi that doesn't mention &i2s2_2ch at all.

Acked-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nd5amq5g3wi33x72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXeTS0ACgkQj4D7WH0S
/k4QKwf9GW7NGzNsM29R1Mf+yr5TPp4ChLxn/UNr0LqmupvnyoyWQh6FyBwL2fzs
mz7fFxTSvSYcT9rBoMxt/26y3TpJZzI5w9fEisQjuh9lpYhZ6gyGuEFyWrIi1BYC
w1cdNwFpAtp1oBYmU9rVlCwd0xTwZ6XkTU/QbOCoj/fC4+AW3hfITvvpqlUQ01Cf
tpTm/pshlHI+s887pnXpwpnByHBZ6ZtYydMkdcLrS6hSmIq8oKIeog7GAaCeE7lj
HJjiHD7VHZ5t9YEINSUqZ7G6RchrxX7cj1Du6B224sJO3RxEfSqcLmEGfUl/0WrJ
YXzppLrzXjms01s/LGmB7SCmwJQ5bA==
=/icJ
-----END PGP SIGNATURE-----

--nd5amq5g3wi33x72--


--===============7352997889445574904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7352997889445574904==--

