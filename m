Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F116D0E6EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 11:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cpct/3pyheDhNSCQyTQ593SWFmAuNEUhYCi0XjExtfc=; b=LY8lcGgFeLVcbycJn1TiigsQiJ
	r7d1vm6lslLEffkYRNl9oFXe51Q2CJN9zZOl/TgeM1uz8qakuOb6/A/ZYw66jZG3ZXMHrMQJv5sQ9
	iHuMIK5oZ48JRwIfxhkA3nRq0lsc4iHEuGrVTK+LOku1GUOZaWfnx2FamPrFVXmkRUwnSM0s4VyLq
	Bfeu7OQph+6fzur7RmZorQiLAhSEppvgfgI11u6gPcPeW8cM6Jhp3TJ6PUXu+QdcXbCn/DEYtMxf6
	rMMXbEG6Cpt+uubuEA38isrtTIN+sN1XswafrWphmyM01/YDtoXgwgz6CDxXE8bvbFJ8SYdJOA4Z4
	c3xbpWvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qfh-000000073i0-2CHU;
	Mon, 21 Oct 2024 11:34:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qez-000000073dZ-3zRg
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 11:33:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B02BEA426C4;
	Mon, 21 Oct 2024 11:33:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CEE7C4CEE5;
	Mon, 21 Oct 2024 11:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729510396;
	bh=2LLQxOMuf9S0buYD37Y2OfQFkxWkRTFVskJkOkf/ANo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JHMBHgj/lr1QyAXFbhMyeYU04qy9+QyasbiSgGl57LpIHYlTyGMVe4XPg9yPI3BdS
	 rLarWgs0rRO0O1UarSGdovUQ7CT+lg6R3CfVKpPcn5cMXhSCfIfjVvvgmd3tBDhC2J
	 zuFyW6R8F+J3Ys1KLdbuJc1bWykchWeDFp5w9FYRAUejQCt3YZHKHQxKcP3UvrUYpu
	 ycIPG5wPYXNqIb+mWP+Htr2gvbZBlGFC/V/XY7x7HxMGuxSHHM/hcPF5eou+bk0ocW
	 yg89dgdbCKmwubniOfAocDaUxSMAong6DHeXdSgK1mS+a0RepyrG5/TEgyoo1HgScQ
	 AhbFDQt6HKeIA==
Date: Mon, 21 Oct 2024 12:33:10 +0100
From: Conor Dooley <conor@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
	andyshrk@163.com, tim@feathertop.org, jagan@edgeble.ai,
	dsimic@manjaro.org, michael.riesch@wolfvision.net,
	sebastian.reichel@collabora.com, cfsworks@gmail.com,
	kever.yang@rock-chips.com, jing@jing.rocks,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK
 5C
Message-ID: <20241021-extruding-cupping-6fca716833a0@spud>
References: <20241021090548.1052-1-naoki@radxa.com>
MIME-Version: 1.0
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_043318_077554_86CE5BE3 
X-CRM114-Status: UNSURE (   8.20  )
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
Content-Type: multipart/mixed; boundary="===============5747431807662612508=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5747431807662612508==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7uwwh/bCr4BSDb1p"
Content-Disposition: inline


--7uwwh/bCr4BSDb1p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2024 at 09:05:46AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5C.
>=20
> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
> RK3588S2 chip.
>=20
> [1] https://radxa.com/products/rock5/5c
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--7uwwh/bCr4BSDb1p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZxY79gAKCRB4tDGHoIJi
0lSlAQDRzeczWrw1XQGDAA7uX+xSJ5LdX7m2VJBTy/lI1gpvUwD/TPpnCw5EGeKE
/xtOxbsXD8HPxqu7m6MQWh2c15yo5w4=
=qdYZ
-----END PGP SIGNATURE-----

--7uwwh/bCr4BSDb1p--


--===============5747431807662612508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5747431807662612508==--

