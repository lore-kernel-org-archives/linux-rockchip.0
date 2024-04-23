Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B4A6C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 05:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNPevDC2gzcB1y0s124bapIBUv+m9mcIBv6+XfEwH/s=; b=tyIClF+ifrsSXNE4T/FSGlE3wY
	RuGWOTywrt53DRsLFYbXAvJKvzwbazewQnN9M3WDW0/13UNaPNFG6Ndp8sD9saeCMJADS+jfY6kSL
	nPgjqlP+Dn/M1Xme3n+g7a59jE8wl1XGf5X4nAIGAVxn7U2TSZI/ZYSOr3EdhlU6bGWtLZVxy8uX+
	LwMwR3KvHhJSJlv6r+82VYLhuldF3qGrYu41EdVm/s1tht8/Sl1DYz5BS+IXMyEOuajy0VQglYim8
	3FHi0RsQKCx2x7OAMAvwDhj0mXlDn12RuU8g7Ib/Th6unxAmy6tj6Zvxt9vTNuFD98u52LIEXJ23N
	20bPsQNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz8b9-0000000G1SI-1Prx;
	Tue, 23 Apr 2024 05:21:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz8b4-0000000G1RM-4ATH;
	Tue, 23 Apr 2024 05:21:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 31A69CE0ECC;
	Tue, 23 Apr 2024 05:21:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0624C116B1;
	Tue, 23 Apr 2024 05:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713849696;
	bh=sK2sG+Yk1eyVMAcKz99M4hTNa4idEn6NIV5iSraAC4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d0dZjCTVNT7p8HV9ZGzskhDCkihAvdGe94wKGKt9HsJbsHkS3GOv8jxCa65co+mLz
	 1iejjfkh0USAUWldBr/NQRjDEc0EzkDxaJVq+MpfYc91NoXS2Eu2Kg+A/XU1YoOc+n
	 iG4cIHRcVyrDg3zB6zbC6txkUlj/yXHjEMz0kv4aQgOSV6jLCq7aPw5fI066YXq2QI
	 4q0SlVvJPYLDqxxV3pl1Yd0zAeDT7Qrcgo/iiRn9kakevu/GYIuiSFXF5nx/uW9cDd
	 PtM8cGdJrrDAx/IvOZp30vmkxhlAzB3g0voSP6SjCjuWrJdUbOjdjyEtmsigZg56Iu
	 elZi3nrVCPDOQ==
Date: Tue, 23 Apr 2024 14:21:33 +0900
From: Mark Brown <broonie@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v4 5/5] regulator: rk808: Add RK816 support
Message-ID: <ZidFXYWsyF3dqKPc@finisterre.sirena.org.uk>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <20240416161237.2500037-6-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240416161237.2500037-6-knaerzche@gmail.com>
X-Cookie: TANSTAAFL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_222139_295880_B7CB8D2D 
X-CRM114-Status: GOOD (  12.35  )
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
Content-Type: multipart/mixed; boundary="===============2723755288049640755=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2723755288049640755==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="edwkBWnAOkIWz+DT"
Content-Disposition: inline


--edwkBWnAOkIWz+DT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 06:12:37PM +0200, Alex Bee wrote:
> Add support for rk816 to the existing rk808 regulator driver.
>=20
> The infrastructure of the driver can be re-used as is. A peculiarity for
> this version is, that BUCK1/BUCK2 have a (common) bit which needs to
> toggled after a voltage change to confirm the change. Regulator regmap
> takes care of that by defining a apply_bit and apply_reg for those
> regulators.

Reviewed-by: Mark Brown <broonie@kernel.org>

--edwkBWnAOkIWz+DT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmYnRVwACgkQJNaLcl1U
h9DTogf/Ykl5PY89uUB7zyb2xxrcTx3j8+lRI+1zjAK2APX8PJn7+Bzfkd1gklx8
4o/Z5S7wfOSbiesa+sz9Y+KR7annPhlFqp662aU/xnJY1kC5vZiBO4oUx0zQbcmz
9Il1QRtF3X2gpNPzjJxv9lc285D2vZHCG4Ub+UqFzvR5UoktXtxnpR+mY/zcxqH3
PYX4tmn7vPH1rp77UTYq+n6xxmpCXRrRRsAX3ZoiXrrohKKv42M8SbQgw0JpGb8Y
yM4RoyR/rZfMGV6y111xPcCSJ/FI/MuyQwpWJXHsiRVUWNLHv8N7qxy1AaDWLzAK
6zV0jAE+pNXxS5XLOSPO1HhLFI1A8g==
=O91/
-----END PGP SIGNATURE-----

--edwkBWnAOkIWz+DT--


--===============2723755288049640755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2723755288049640755==--

