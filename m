Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DE29C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MA2sYeiQ4hKhhwagtW2ot5oPqFEmia92ym3xa3F/qPc=; b=yMfDfcbnSXZ2vyeFGINneHnp5x
	9IcDtRuTHEuLISBboNzPoyklAhhLofcXwXMWfoss6umcGBrssPqAypX8R3o7n2j3XJkbEN0I/ddL7
	m/6w+lCk2Wmzv6IirPQi+7Zgt5wYxtj33oH0oNN2dU1/JpOwSYq6JR86666evUhDOKqEEUecm84Iw
	HdPeRSEO31n21ax/l6FEJeU30QEbp0cgpL6BsfeztX4On7V5WwEP7ssZXmYflWzWr3Mhu9CeA5tcb
	VzylebkSQ6kUL4BUkPuMKkPiCMkknZNkwQv/HT8EhnRX3/BCcoKqgZNFGHBdSm1VcAkCS83woT+nB
	yfZttSZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTpE-00000002pV5-3rAy;
	Thu, 18 Apr 2024 15:37:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTp1-00000002pOX-19kW;
	Thu, 18 Apr 2024 15:37:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BDDE46188D;
	Thu, 18 Apr 2024 15:37:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5121BC113CC;
	Thu, 18 Apr 2024 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713454630;
	bh=4OpUb2FGqt1dYv8qJb6rtIUYmk6NT4v+mrxt2BlJs78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AC0bbyN8qV2IAikf/ipz2Ymd6XBcB8nhdeM6bs18urmr+z6s3Nb3gVwxKNeZKieVp
	 9q6OLQdESUN0YQ4SKdMAa9T/COjE1ccZPsd3nbF/cz5eH9XxBrFFYTXVErNKuBLOef
	 XBsNcOAfQZKDLfNzsFvUi/Z9F7tNQFD2dSK89+zEYFzThtjUCeFo2zFPeIReUSTbHu
	 AguAM3e62UFn3HX4OEf/y2xLYz50GqzNK14c1VyTBzauPXVsS3RDLJyt4dPFyF57KA
	 Zm1TwVzx6iMC1qPzI/OZRt/zFw06Z59zJ4l8AUsnaO02Fe5yTctChRo5hlLUEiyozk
	 7j/oY6mzOTodQ==
Date: Thu, 18 Apr 2024 16:37:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
Message-ID: <20240418-drove-boasting-d189ee3e22e0@spud>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
 <d00953aab0f1c978e3720885a6844caa@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <d00953aab0f1c978e3720885a6844caa@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_083711_384530_67327227 
X-CRM114-Status: GOOD (  12.75  )
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
Content-Type: multipart/mixed; boundary="===============2499894520425357990=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2499894520425357990==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aWQtx0wMEbSR6BGU"
Content-Disposition: inline


--aWQtx0wMEbSR6BGU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 05:21:18PM +0200, Dragan Simic wrote:
> On 2024-04-18 15:01, Chukun Pan wrote:
> > According to https://radxa.com/products/rock3/3a,
> > the name of this board should be "Radxa ROCK 3A".
> > Also update compatible to match the model name.
> >=20
> > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>=20
> Looking good to me.  I'll send the remaining naming cleanup patches
> a bit later.

What remaining patches?


--aWQtx0wMEbSR6BGU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiE+IgAKCRB4tDGHoIJi
0hSWAP9n75/NyOZRQmE4r2XfXbMCGpbQiFM8gRerTvqrwaYz3QEA6x0msj4+h3m/
29tKpAiONgsDMh+3LtGHhE1FmBnTBwg=
=+i2f
-----END PGP SIGNATURE-----

--aWQtx0wMEbSR6BGU--


--===============2499894520425357990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2499894520425357990==--

