Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCECFC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 17:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MT/H+ZI6ZWXkJQ2Gi0g7oEP+h5EI8OPBWXqEEgrvRew=; b=xS28MrgbnSu3uBvbsuUNIuQMQm
	VK2AcktAEE3rntWYGr0Ztiq6YvK8KioRYF3lnUMsKrCYR4kRGZBW+Bz4h9CQzuSFt/R69Yb1+EQyr
	lU/uAXbskMQYLuuWJG9jqz2DmfQXB8+fD0VthFD/U7W/pb0Vuwu1Wddt4tFR8Zt/s7JjYn9Akmckq
	gUV/Jj2j/CZSxDMESsta3k+QFxTFIFyVNpCHAtFlRJYhPsCeU369L6W3vNgEjEm79+rW/TgFb78Xf
	p5zzGUt06Awzy7She5o+YB+7wxAdFoy9A8rMRV9uLbTWmtUyiPm0+kPmW/xTEgesY/teXkao3Yzm3
	EpQSxmww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVBv-000000038lq-40E6;
	Thu, 18 Apr 2024 17:04:55 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVBs-000000038jX-2vKv;
	Thu, 18 Apr 2024 17:04:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 129B2CE18A6;
	Thu, 18 Apr 2024 17:04:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1642DC113CC;
	Thu, 18 Apr 2024 17:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713459889;
	bh=tj6AIRIe6qwU39FOGgC+CPwx357epYs8KX3g74wdrKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eGleHP28tQFI9oxE4S2djdSrPpmg5HRmFGoyz1Gk4AZTgeq7z9rQCYxVIRlZ1VvdP
	 rkqFiJomK7T6Gn0zUEzid3wisTirv7FdT5t+RsHL+5vgpQ1dqg9OMa2S83AnWXtLtk
	 OmSc5o4iQjCMAKWkIOilNPgkxgxabF0qt3rrKZNLYA52IPvKtJOSFWZuk5bXo5X3Ik
	 Iyp+VtYXetJRlKuDhp3g0YTjxOvBMKKaSiAL5V++QpoSkvbcx/legyf49dn+oaXldg
	 qiPHA5fpJhNCNwvLLBbJ6RMfNvawTiqWvyFWb7z8Tcjj0mtopCqVX6uUJC+M2uWmMO
	 03Yw/4e724uuA==
Date: Thu, 18 Apr 2024 18:04:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
Message-ID: <20240418-attach-tigress-bc2b9f844fc7@spud>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <1888572.CQOukoFCf9@diego>
MIME-Version: 1.0
In-Reply-To: <1888572.CQOukoFCf9@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_100452_941342_356DD626 
X-CRM114-Status: GOOD (  17.16  )
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
Content-Type: multipart/mixed; boundary="===============4769564354475365314=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4769564354475365314==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="02Hs9kTs4IKM6O9B"
Content-Disposition: inline


--02Hs9kTs4IKM6O9B
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 06:59:42PM +0200, Heiko St=FCbner wrote:
> Hi Dragan,
>=20
> Am Donnerstag, 18. April 2024, 18:26:19 CEST schrieb Dragan Simic:
> > Correct the descriptions of a few Radxa boards, according to the up-to-=
date
> > documentation from Radxa and the detailed explanation from Naoki. [1]  =
To sum
> > it up, the short naming, as specified by Radxa, is preferred.
> >=20
> > [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-60=
1b-4d4a-a513-4924b7940076@radxa.com/
> >=20
> > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docu=
mentation/devicetree/bindings/arm/rockchip.yaml
> > index fcf7316ecd74..ae58e25c29ec 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -767,22 +767,22 @@ properties:
> >            - const: radxa,rockpis
> >            - const: rockchip,rk3308
> > =20
> > -      - description: Radxa Rock2 Square
> > +      - description: Radxa Rock 2 Square
>=20
> I may be just blind, but what changed here?

There's now a space before the 2.

--02Hs9kTs4IKM6O9B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiFSrAAKCRB4tDGHoIJi
0pWXAP0c5dYS0BG1OOd6YCj4Ksys4ElwAFMWk3mVbj9mzuMwuQD+KN2njS058lPw
Ivic3pq0puZ4LewezAj1/vcYpV1B+Qk=
=b8Sy
-----END PGP SIGNATURE-----

--02Hs9kTs4IKM6O9B--


--===============4769564354475365314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4769564354475365314==--

