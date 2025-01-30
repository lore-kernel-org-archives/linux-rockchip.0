Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD7F6C0218A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 18:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TSOFsiLpvYRiqMKgxOMqZrOjMzynQ2OD1JMSHdykWbE=; b=W9TNT2BLoZKZ2/lkkOgBkfnF+j
	jS9s8M1gf8oBpUNoZGXZ0ezjJR67rOTfGvQIsE0SnkBghYzHLw1lmOdidhnO51YQgokAXeE4S2Wrj
	LwbbK7wfvaYc7FVfy1WZ8cPMLVsHF5voeeUS3l5Mg66vguEYJt04/MDZtr5z7H7hiodtucXXaZXxg
	wl1nXSpO7WlKluurybEkVaDFX5UTs18M7AA3UH1qrsDjdPPmOdFQ5JP0AnYVoUFpgNUuMj1qdPj3z
	g2Og125EX6pGyLFPPzNeAeNvs8kVtKjIGeH5ntAr2oOWXaQPJHbOmx7BMg9KfDV+p7eVGL3Eptlse
	X+8rjcag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdZZk-00000009Q2U-2Uq2;
	Thu, 30 Jan 2025 18:47:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdZYQ-00000009Pra-3wAo;
	Thu, 30 Jan 2025 18:46:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 74EB3A420D9;
	Thu, 30 Jan 2025 18:44:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC740C4CED2;
	Thu, 30 Jan 2025 18:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738262777;
	bh=0K6s1LorKkA3vT94npzZne1s6vrmJojmi6fmu1jX3YI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k/25bg1cFe91uYNFaGP8OzA2csT7VrfCxQQ85vXieeatqHEH7TENfk6bozjSKXLK+
	 wdDeOJY8kTahByo6G/XtWwAipPDysbPGOYMSWGMOdOC7npjNCO4sGEYCm6w22oUGGV
	 nTu+pOrB+bsj2VM05owXPCSZYFhfIjImRr+5pdUrryjq19U/K2m6dI0bmM5N561tCz
	 77GeQPRyxOkYK4z9r+vjIC2JGUh6PvvRZ02DlcIfSCNlRHfTqH2V8m5lOT5m5hJzP8
	 oHE6TrpQVaN3P8IlOJw3fvoVK5gHZ0dPCbvr+XLNLMKABemI0SRuakb+KgJnYlToCQ
	 FKpBhFimtXdtg==
Date: Thu, 30 Jan 2025 18:46:12 +0000
From: Conor Dooley <conor@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	XiaoDong Huang <derrick.huang@rock-chips.com>
Subject: Re: [PATCH 1/7] dt-bindings: reset: Add SCMI reset IDs for RK3588
Message-ID: <20250130-payment-carpentry-bf3898625c96@spud>
References: <20250130-rk3588-trng-submission-v1-0-97ff76568e49@collabora.com>
 <20250130-rk3588-trng-submission-v1-1-97ff76568e49@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250130-rk3588-trng-submission-v1-1-97ff76568e49@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_104619_042556_ACC01AF1 
X-CRM114-Status: GOOD (  11.52  )
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
Content-Type: multipart/mixed; boundary="===============6149973641308413517=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6149973641308413517==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CXK8FdX5cD3efR4o"
Content-Disposition: inline


--CXK8FdX5cD3efR4o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 30, 2025 at 05:31:15PM +0100, Nicolas Frattaroli wrote:
> When TF-A is used to assert/deassert the resets through SCMI, the
> IDs communicated to it are different than the ones mainline Linux uses.
>=20
> Import the list of SCMI reset IDs from mainline TF-A so that devicetrees
> can use these IDs more easily.
>=20
> Co-developed-by: XiaoDong Huang <derrick.huang@rock-chips.com>
> Signed-off-by: XiaoDong Huang <derrick.huang@rock-chips.com>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--CXK8FdX5cD3efR4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ5vI9AAKCRB4tDGHoIJi
0lvpAP9ygjEXGyo4J28BWq/27ynjo3PWvGqe6RcHCk0ZCC2LNQD/dyoBch31V1v3
TlDQoD+rw5odXfpjDFjLOsA3O3ea8Qw=
=y1Z6
-----END PGP SIGNATURE-----

--CXK8FdX5cD3efR4o--


--===============6149973641308413517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6149973641308413517==--

