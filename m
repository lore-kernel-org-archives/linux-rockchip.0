Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66094CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 08:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W/ldGhNR9MKspSFyAFI2urzL75kiM25vrSq8Kdv5zZI=; b=HzfYLFNQvBnsCx+FWt2A2JzmNb
	wZ8weATyTNgnagVYshbcwk+rg9oBR2/OX0FgXxrssCZsEfuHul5VupdpL8YBGh2L2Us00S4mfHs9S
	sPBOKl5KsKrF1CmfaY+SxhHSeFusoJJsRxm/t0lvNRiEx7bpjUqzTY8OD8kMLehQjvLWQ9m33O0Gy
	Cl/8N9y/vw6cun+2jaMZ5U4NuxY5F0ML3Mhuoyek2fmXvX96QiAQRrBEjta52tEq03MumnJ1rph5G
	4Oq40D43s9clvZt0tOg+Wmkx0H60MD3+WMJq3/is76AwDXXxBczXQ1IwtxMD0btbFV0D18nYq0SrC
	xFMJTceQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Go-0000000DTCt-0EN1;
	Mon, 02 Sep 2024 08:18:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Gl-0000000DTCC-11h6
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 08:18:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl2Gj-0000Gm-U3; Mon, 02 Sep 2024 10:18:37 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sl2Gj-004rAa-Aa; Mon, 02 Sep 2024 10:18:37 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 7E2DA3302AB;
	Mon, 02 Sep 2024 07:40:31 +0000 (UTC)
Date: Mon, 2 Sep 2024 09:40:31 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-can@vger.kernel.org
Subject: Re: [can-next,v3,00/20] can: rockchip_canfd: add support for CAN-FD
 IP core found on Rockchip RK3568
Message-ID: <20240902-skinny-benevolent-hamster-128048-mkl@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <20240902032837.1513090-1-a1ba.omarov@gmail.com>
 <20240902-aspiring-amphibian-swan-f65506-mkl@pengutronix.de>
 <CAKyg=SXE5FVW4zHVX5qzsm80zco5A3eNe-pU8Xrzq1a7AcM-xA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKyg=SXE5FVW4zHVX5qzsm80zco5A3eNe-pU8Xrzq1a7AcM-xA@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_011839_307971_6F9C441C 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: multipart/mixed; boundary="===============7518525172046288453=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7518525172046288453==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="33geriug7o7f6sxr"
Content-Disposition: inline


--33geriug7o7f6sxr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 02.09.2024 10:29:38, Alibek Omarov wrote:
> > Are you using the CAN in production devices? The driver runs quite good
> > on a v3 chip, but still not stable on the v2. But as our customer now
> > only uses v3, I don't have any more time left to fix v2 issues. Drop me
> > a note, if you have issues with the v2 chip.
>=20
> Oh, I meant v2 patch set.

Ok I see :) The difference between the patch series v2 and v3 was change
in the compatibles and DT bindings. I've added your Tested-by to the
upcoming v4, I thinks this is still OK, right?

> We're probably mostly running on v3 chips, since nobody so far
> complained about CAN bus and you're also telling it more stable there.
> :)

With the v3 SoC the CAN runs more stable than with the v2 SoC, but still
not 1000%. My basic idea was to get it mainline and thus a larger usage
and test coverage.

Nevertheless, I am very interested in any usage or test cases that break
the driver.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--33geriug7o7f6sxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbVa+sACgkQKDiiPnot
vG8McAf+O4iNvfKGXwBIY7G7WzrUQirLZj38OmJnOiLM/h0Rv+ClN+5wsrrSJjZ+
/2Lb8luKyt7QgDJsoQNjeqIkhJgrQWSMD3GE12aSHZmvcZxYVB4MU9gZignXqB9G
CsOcpX/5c4BYtK3Kf7Hw4v3t1c4Qo3KMbmT3tx9WmvuvLsyDn5NaMQQHvhVlvVAo
85LSTod7Ird8r1+goMdJ80N869ZWy0lWijD6aa7k68uc0b0RYtpGE3Rf3dZ0uDMP
C5lzXDV5TCwE8MuFJGVy6L0IugtGJaLkZUiuu9VcCs3FR713MTz1sCpZY7Bgqc5O
XZMmxlR6+5RIZeU/NeZXY1ofC9dzxQ==
=8VZE
-----END PGP SIGNATURE-----

--33geriug7o7f6sxr--


--===============7518525172046288453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7518525172046288453==--

