Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866E6C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 18:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SNMWMnuz/aKsxZkIJ07dmY56DP0+4tWf71b4MSaKzjk=; b=ash+Bgn6lclCx1TldHZv8QMLot
	tX1ZUxmyPKwthWDvdvpqgpK5wFQdZ4bChFKfadjbN+eSHC8UJmef8WE59XNbhhsJsAzs0BNii0+89
	wWo8zJXyKc0zsMZmOQpSVPEJUG0lWNPgeezBLPSYkDCRi9wXB/3jPr+Pv13dRQH4imMiskfSBdjwT
	gGlxbXS/LJS9lgRjcyuIFvnJFoaeBOv/3Fxr+vHb6UL8MhcSGJKQRhU8RKu/22H/PYm0aMfK9Iy6W
	zM03IQqxBUkSbUIs+WZa5rjdCbenjcUfPQOSFr0hf51DFU1TXItIr7E0JipPfS8hJeGui5qY3cMlv
	ozdRUHBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxBXI-00GqeY-OB; Mon, 21 Nov 2022 18:28:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxBX8-00GqbE-7y; Mon, 21 Nov 2022 18:28:43 +0000
Received: from mercury (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E61876602A68;
	Mon, 21 Nov 2022 18:28:39 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669055320;
	bh=yKHSiVz87pEjWX8tRrj8awnJJ2ctOTvniVa2luLwPc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aBbURpt0aZYS6rAWDYE7wQGiYeN4Lu03c5LUJY0ks4+n/8GR4+1jrjOb8cJq99RBa
	 mZ937sAOUprMJ3djn7us1MIker9lKnFpzTSp6Saa6Ijkpx6IUVIFkxWjQKMl0v5H0g
	 lCD7tdvl6FJYV6A20YUtQZonCcthnc/UpJMxuyC+jVWrZAtazOBukvyzD7QsJNLkQK
	 FT/+oXuNOxcWtTu9ypSCdahLg0mTfnldTr190ayEAtt/m/stpKmtvtAkvll2xCu3YX
	 XDnUKoME4vAYRTL+JNcvi3AGkyrbunraZdaVEEyb56ZUDPf41syrAcjqoTqQTHlf/z
	 JLph5w/IOAbxA==
Received: by mercury (Postfix, from userid 1000)
	id F303E10610F7; Mon, 21 Nov 2022 19:28:36 +0100 (CET)
Date: Mon, 21 Nov 2022 19:28:36 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Qu Wenruo <wqu@suse.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCHv3 0/9] RK3588 Clock and Reset Support
Message-ID: <20221121182836.kwkbnonulcwfzbg4@mercury.elektranox.org>
References: <20221018151407.63395-1-sebastian.reichel@collabora.com>
 <c119bd9c-0b90-4096-a988-9d0312c3dbcd@suse.com>
MIME-Version: 1.0
In-Reply-To: <c119bd9c-0b90-4096-a988-9d0312c3dbcd@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_102842_520291_4EF71891 
X-CRM114-Status: GOOD (  16.70  )
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
Content-Type: multipart/mixed; boundary="===============7539024221426956905=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7539024221426956905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3rbmtlos2qzegrs"
Content-Disposition: inline


--x3rbmtlos2qzegrs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Qu,

On Mon, Nov 21, 2022 at 04:52:22PM +0800, Qu Wenruo wrote:
> On 2022/10/18 23:13, Sebastian Reichel wrote:
> > This has been part of a bigger patchset adding basic rk3588 support.
> > Since that gets more and more out of hand, I'm now sending patches
> > for each subsystem as individual patchset.
>=20
> Awesome work! Thanks for the work to bring upstream support for RK3588.
>=20
> This upstream work is especially important since the vendor kernel has so
> many weird things and is never properly tested using newer tool chains.
>=20
> But considering the support has been split into different patchset, is th=
ere
> a git repo that I can fetch all the patches and test it on my Rock5B boar=
d?

try linux-next + https://lore.kernel.org/all/20221121175814.68927-1-sebasti=
an.reichel@collabora.com/

It should boot, but that's about it. For Rock 5B there is not even
ethernet support, since that needs PCIe. Ideally the DT series makes
it in time for the 6.2 merge window.

Alternatively my working branch (I rebase that!) is available here:
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=
=3Drk3588
It adds PMIC, thermal and cpufrequency support.

-- Sebastian

--x3rbmtlos2qzegrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmN7wzQACgkQ2O7X88g7
+pq1dRAAohcRYRRBHfxuFqEbA5kMScXOo3hWkFT/Ww2H7pExV91w6J9i58BTLq0o
6FQjN3d3UKiPJm9uDXiCk6J/hXTOLIKQ4wn8INwNwFqLVr+a9sB+0BZPHHg4BouS
yjzJ0OurbkTBiruoxTF8+9/Qd2C7PY2DMZwvUfJ9eu2aOV06MvXf63VU9oa616ec
me+ZnphAtwAPZZl0byRw3uAfb3o9MucT6Ultd6z0Ib3HuoCB9EczXEXxiic22vOS
G046dm/RcglWYATVUCfpXBphGbSLGRgtlnKLgPZuCgnRkofVNXu81PkgXPROMIYd
02TuK50k40LhW6lpufBbZTfH0nC8sqxAK6wRkHTKVJ6rFMQ7wc5nK4p92LfbtosO
NIesBruULe54p6u6YwRoOJP5AA2z+biRRZr3DLBNjH+3HG4O71KmQ3Pu7pbAizpx
3pwL2rHU50lPDmeuOiHcBRfZFIeyALX/7s63ogtA2+DGqRaABtzSLTLKQxTehY59
d24cmku0oRp3grK7NbSiGXhHEUYKyi3jYzdVzVfqJiP1PseCjRzQlEtBEZOYVvMR
OkumsOkbNvbt4iHxY0OZGs6LrzQV8XxtvqAUG8cGDVsTPFTuPWzOOvaCZSBlAgA8
gt5hj+4B0pw27pPG62S+Yn/FWZfjjp3IKhWsMVw6Z34KBs5CBg8=
=N3YC
-----END PGP SIGNATURE-----

--x3rbmtlos2qzegrs--


--===============7539024221426956905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7539024221426956905==--

