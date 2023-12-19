Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 106FBC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qg6SWjeddiELNXDbPraA/cmTqcqzl67WNHVw0AX/Cbs=; b=LkkTEcWETSrb3p7wvvVBTcbq20
	yoIULTNexKjlLI8fwLopLTACQJOav5/hw4K7zb17FwbcoVP36jU5VrfLCYQbmdAXEn0kOjQlguvLQ
	LvXWfCwDc2MMxFnJrktrEZhE67g4ZHbYpOXwbjIbY/s1oE7TtgaULnzW8rVrDhEyzoBgvgjV49p1q
	eDLvLioVzowXG4r14s+MyFMmHdNLhGJb/hCyghbF8swsmN+lA6+8Nzx5YnkhpPip/+5Zy+P6gLg7T
	JudbP3zkNshhmkTEzlwVtz+/yeB1ffCrKgmpDg1VgN/d8ILrgAjL+GzF0Usse5s2gjxHvlootFXCK
	srxlS+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdYC-00Errm-0O;
	Tue, 19 Dec 2023 17:06:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdY8-00ErqG-1y;
	Tue, 19 Dec 2023 17:06:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1DEF9B81900;
	Tue, 19 Dec 2023 17:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C06B3C433CA;
	Tue, 19 Dec 2023 17:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703005590;
	bh=a7OnamfCwWf+orWN0KvpA25yoky33RSY7KSTSqDl/A8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QG+RfNMDFWyLdUnI3z9dEpRaS/CjlNjdf9whequWAeBC/cq2NpTpAAOaJE6WGNqMX
	 aZwjfMcMV1oQ65I394Yc1ZK42hCLpm4YZMDDPj9iIRcKoy07BQhuREIcyGVOFpiYgg
	 0xr3pSG/It9HDJhPl0ZNh1CS5kynJQD8QigPks1esTRsEU7/LxYmsh5Jr42BvUXSH+
	 ENDM9zXsM5dWAcn+beWg5lXRuc5cTwyY8v4T64Yn5TsVrZmdz+YZXKhcoZ6nm6BQhN
	 jU+mHkzc8PDvgvPO/3bDN5H8/15C7BUiWRl9WyJ1sw2dauEaSgWpysP1GzZr6jutH2
	 Va2udn3TEkxMQ==
Date: Tue, 19 Dec 2023 18:06:26 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on
 rv1126
Message-ID: <ZYHNkgxAauYp6ivX@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <20231203124004.2676174-4-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090632_795933_C52C44A5 
X-CRM114-Status: GOOD (  11.35  )
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
Content-Type: multipart/mixed; boundary="===============6609144317792147178=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6609144317792147178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sByZ41cl6uk/xLbT"
Content-Disposition: inline


--sByZ41cl6uk/xLbT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> Rockchip RV1126 is using old style i2c controller, the i2c2
> bus uses a non-sequential offset in the grf register for the
> mask/value bits for this bus.
>=20
> This patch fixes i2c2 bus on rv1126 SoCs.
>=20
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
>=20

Applied to for-next, thanks!

But, phew, the fact that this driver _needs_ i2c-aliases in DT should be
fixed somewhen. I totally overlooked this so far :/


--sByZ41cl6uk/xLbT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmWBzZIACgkQFA3kzBSg
KbbCTxAAhKVTE46KK8QieYwxX2cW+2NJfyL0OYbsB05G5G49MqoDkY9qO2m0+p+5
WWkmnMZHQ90vsx5Rep5qcFUmAC+q+b4+tU9qVT2WEPmdgsiBteDB43HetxdBBbzO
NwT8Z3uanQpcubf9hzW4v6UZAIrmmpvQWO7LKMa4ZqWtlFIYnyLYCLKl5MK8Rzbi
n+z/8ppmMp98e/lj153aKh+F8IxLNW5jHy83elAudC2ovyc2veIXhpcxria5S7Ca
U3KQdFvBdwLoGiAsMsLfRbIRYf9ItR7E4oKTyKnlEJzZF5C4gpjgeEa39w7g/Kl6
pIS2rnuMKvWObEnyvZGUJBbyxzFkjCOXA1O1wANLgtV3HrTWFifkIdup5pudJtKg
uhJqlqFfvDDGxpKrdSBFYT82tDL2WON+wiOg5bF7cjLx6r4QZ2MZBaiOmuMnsadE
BqLwnHjSR9QyAa+2SliYrahWyae9rFxwAVBv+/DrZpuK0L7u1SeMonq/r+jh7Fpf
yhpQTSW1levm6ltNXPyajNwpZiUKJCMB0yy/Sw/Tnpqw1e+PY0PxenPAgSOBIcPo
oNtTjhSXfS+QeorHPM9zUDu9OoCGRW412FRXQU6L+NVQOCjFOaX2d6RMPedbOYql
NZnS9kaFXtWL6roKEwFghdhym4sj6PO5ieJOpdsZh0xcXOUaf4E=
=Ifc0
-----END PGP SIGNATURE-----

--sByZ41cl6uk/xLbT--


--===============6609144317792147178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6609144317792147178==--

