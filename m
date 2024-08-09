Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 858A5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+9XX/7qBfE4uoIQtaGJk8d/g9/NONmLpOawGhNFSpBg=; b=u6It0w+ywLIaGdcj61bWs4uf2n
	Cm4y6neXxYJM+0Gp5UgmCke5Rh7jZKOK6jXVwj/XiH8MUrcgkP9Nhuq3nlnG+BxEO2eNzbfXZz2qR
	mgJesFNC3kHMETAdzfOj0Lvw2PQIH4odd4lOusMUDp5oHBAd1Wy5X5ehZgpmjdGQ22q6VqIfX9qO5
	3cZo+hsMK7bLs1QotjlFv4PJ23O6cVkflWzv0//lkwUJXKsRchwDN/D3hA33cTvF++u0yiTNZDgaa
	ky43s4fo9Avb6xaPOhVzoqhBtDwteMXi91kQzN1GMSUPqvlDsVnVMuQ6BFrrqSiIJO1tPJqYM/C+R
	qr6yJDBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQLY-0000000BStx-2bKT;
	Fri, 09 Aug 2024 14:12:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQKz-0000000BSqJ-0kyt;
	Fri, 09 Aug 2024 14:11:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7EB13616A5;
	Fri,  9 Aug 2024 14:11:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFAAFC32782;
	Fri,  9 Aug 2024 14:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723212684;
	bh=NtkhbxXEYV3n5Jv7xrDwbnDxuRAaPrmhDfvy4uf1SNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cwe3mLaxkPyHddzS1VAb6WwLRJ7eADc/iB2LylJMwes1nXYFnlMlVHR0Njo9FFyll
	 YjCNNNDzlIgH0Z4s/t9jRmX5EpQl4tLPRxIAo9UfDlH0SJ8Cc5mPXIfvYyoBL6Z4NR
	 StGA13GTBxyJFuSfzepdn2/C5UvXvPV+c7Yp9e2oebHui6/q/JQD2TTcTQ3fVuanVy
	 /CcagZ0y540isHvUgDw2aRnBusG7AeWlYnXOeVczh2ZP0siiCSYurbLtVvoPES2WKl
	 rnjpiukThl7HkYbcz5+0yj739gIs1sztTYxHj58KiMsGCqNFQTjX5JvzypL3QWhTA7
	 LkFw3GX7OH9UQ==
Date: Fri, 9 Aug 2024 15:11:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v3 1/2] dt-bindings: power: Add support for RK3576 SoC
Message-ID: <20240809-dancing-earthly-d4b76d38f965@spud>
References: <20240809125925.4295-1-detlev.casanova@collabora.com>
 <20240809125925.4295-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240809125925.4295-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071125_305146_2181D72C 
X-CRM114-Status: GOOD (  11.46  )
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
Content-Type: multipart/mixed; boundary="===============1164208557764804426=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1164208557764804426==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2cVcGqQINBTKi1m8"
Content-Disposition: inline


--2cVcGqQINBTKi1m8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 08:58:04AM -0400, Detlev Casanova wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
>=20
> Define power domain IDs as described in the TRM and add compatible for
> rockchip,rk3576-power-controller
>=20
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [reword, add yaml]
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--2cVcGqQINBTKi1m8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYjhgAKCRB4tDGHoIJi
0nltAP9grRpAhJWIS0t3A5qRXMQsM6Tz3QpNxUQm7nORvKdHcwD+K2otD+Ea2ckc
xTIpjDlsf6OIemBuvdu5OECk0X6DeAE=
=Y6cW
-----END PGP SIGNATURE-----

--2cVcGqQINBTKi1m8--


--===============1164208557764804426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1164208557764804426==--

