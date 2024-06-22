Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58DAC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 12:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LCmICqinZiJgeK5xlFNs9fu8DwTDa9N0xTGyhKDT4Yc=; b=3mRr2Ovf7cZC4vqpXRHX4VlJ1e
	HAFGCVNPPfP54N0OjWzOY7NQ3jTQYJpqDl/vLvmClcDZ0HriDZG2frVPO3AKoJMGcBVFYjO4DR0TF
	SuDGeJ94GBDEo2sVdXysa5FzaiD67rp7Qb6RKb/FgPcf/cu5ZqssdEZMYIN0WL0pY3jzx8UrVFKAC
	fr3dDb7PoCNhQm2tMBMBTwZPTiexyzcZa5d1vNAFa55h4+ZQchSxbaxtIp8NZPYHIpP1bItPIyp/4
	9OZWcSeKoSbztkq8tWDokejeaiUVJEcVw/XtMqcaZ0SQw24tgTrz+ms+Ngjy6a30AZMNcebGrHRjY
	Rb5VJKjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzUf-0000000C1ou-1xI8;
	Sat, 22 Jun 2024 12:05:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzUa-0000000C1o1-038O;
	Sat, 22 Jun 2024 12:05:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C661660B33;
	Sat, 22 Jun 2024 12:05:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 912E3C3277B;
	Sat, 22 Jun 2024 12:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719057914;
	bh=s45ENKzaHyMCE/Qn0FDrQXYTpuJWRYXMtgn25rFVBFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XtkZiq7A+ppSheI0nZChWJUuD2vIRauKfbC33hKDpITUmuRkN/nprkgzxd2x9zVcB
	 RWiiN/FYPHEa7zxUkS9LpiM2VoLJxy/eJPOFIL5sG4Ji5P35rH5FPgqTReLRRJwHsY
	 aBJpJY5cG+O/DqmPFN+tubmit6azH0R5/CAWPzfOudQw4ZXhynHg1+VFV/+ZhNpdK2
	 N+Au2JiIKOJpz32bExn0Uu1p+F7ZXUq0/WdWhSh2nn+Qd3J6YNmDiJVvIB9qgdPb6u
	 BK7F7Ot3QZ34GxWGYO31E8gsp+Go1EnS7wY+D5OX4ljy3ubB1OIs2yzv7Ke1OG8Z6+
	 Jiq2aEVNlu3WA==
Date: Sat, 22 Jun 2024 13:05:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
Message-ID: <20240622-pork-capillary-9e2a1519c894@spud>
References: <20240621134030.243646-1-knaerzche@gmail.com>
 <20240621134030.243646-3-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240621134030.243646-3-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_050516_139447_36C2D4A3 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4000045561575719585=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4000045561575719585==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BnhfDMugezzlo1P5"
Content-Disposition: inline


--BnhfDMugezzlo1P5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 03:40:28PM +0200, Alex Bee wrote:
> Add Neardi LBA3368, a RK3368 based industrial board.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--BnhfDMugezzlo1P5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZna99gAKCRB4tDGHoIJi
0mR8APwPPO+Xf7XVCqr4mj8pE/RGPYk1dMMNcWRN4s4XM9fvogEA/8hqyhFSEuPZ
hoLA5Y7nIRENOHzt6PhPIx85SIZMvAE=
=UENt
-----END PGP SIGNATURE-----

--BnhfDMugezzlo1P5--


--===============4000045561575719585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4000045561575719585==--

