Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 629F1C3ABC0
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FqgxZq6B4xOaiO1UO1CThVd6dHMqEtgHDsQ7Qr/ko+E=; b=4Fpzk9Ph3rEYDWn2uFgfq9gOh2
	N8ePtETyhsJNb0DjuwNvxv9X6UcbvCqW+jnldYbtA4szsJY+EzYinoLAfFKegbFmi4zyLOL985Cg7
	DdNsgIAansJ2ozvXsZ5DXDQGNBfWHbrj/E67LhAr9xS+x/4KWc6ZR5DHlwzvjG0Rm7x5X+vvFJH2R
	qAzPlI6ULcEUyVA4LjQpEh6WNCnXnFOxrgiWnNZAz0Vw+pmdkWFGa9crWcwK779v++H7w8hZ7kHd7
	rSTs2dJ+o6Pdhd00cGg7Uim7jtV3UOnK1XPlx5lUnyuB5LB39zpNtMfHBf/+uc0rIzv4lf7BMgXH7
	NJkvvUgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD43K-00000001HHk-43ng;
	Thu, 08 May 2025 16:24:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2w0-000000015Rq-2ToR;
	Thu, 08 May 2025 15:13:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CE2675C6386;
	Thu,  8 May 2025 15:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC6C9C4CEE7;
	Thu,  8 May 2025 15:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746717195;
	bh=EhxkiRkA/dJEtSpxpXcb2z+sFr0qOmbcUC4g8N7f23M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PPnTA1WzHdkvw3r7TKb8RZmnQHLPevPj98fSJybVESgphcCs5vdEdMYDvV0n2wsMu
	 cp3Vj2s+yh9/nYGbgXg2Ah4JcqFdzuyz4j/mok+vr99SZBgPzBF6r5y3M7vDr8ZR/d
	 PIm4ISusC3AMaDZV2mU8IKyBPEK1bb93hQCaiFbwsSA5VtkJNSz3r1dboWivlpI+Mb
	 Fj8Z/7CcBpM9HCtOAuZWRjPexsrNlTowNm6LGRY8NFGQkrkVRTIjMnX9SWsojlvD1a
	 S9oqaLdT/oRaanQKDfYdq7kWOyE8Uo0Esx5kEgVF4RW2qxjTFGzvP1+VexU94yvABx
	 3NTKfGBSdfzgA==
Date: Thu, 8 May 2025 16:13:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 5/6] dt-bindings: arm: rockchip: add PX30-PP1516 boards
 from Theobroma Systems
Message-ID: <20250508-wrongness-alone-0fa99ee91b2c@spud>
References: <20250508150955.1897702-1-heiko@sntech.de>
 <20250508150955.1897702-6-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250508150955.1897702-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_081316_668474_5DB535F9 
X-CRM114-Status: UNSURE (   9.26  )
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
Content-Type: multipart/mixed; boundary="===============9185540440536271390=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9185540440536271390==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RygXSkiMF273WoCd"
Content-Disposition: inline


--RygXSkiMF273WoCd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 08, 2025 at 05:09:54PM +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> PP1516 are Touchscreen devices built around the PX30 SoC and companion
> devices to PX30-Cobra, again with multiple display options.
>=20
> The devices feature an EMMC, OTG port and a 720x1280 display with a
> touchscreen and camera
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--RygXSkiMF273WoCd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaBzKBwAKCRB4tDGHoIJi
0kVgAP9H0qZrqI/23SFHXMeBsME2dzsQGKGhc8nyBgN4GIPRzQD/SvRuXoEC0+lH
tnSDJUIDm/BnABVZNw7/2NFcdCInfgY=
=pPjZ
-----END PGP SIGNATURE-----

--RygXSkiMF273WoCd--


--===============9185540440536271390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9185540440536271390==--

