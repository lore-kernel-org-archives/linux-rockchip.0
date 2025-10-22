Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04CECCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXHgAMo1SnWawLj/JUamrTi2C3IxHEGF2bZ2DH+8NQc=; b=z88Fb0sXXJVqm1ggnxbjEdvGf1
	OyeiSCxSDYGX4ssLzZRvNWTOP9f3SLKmMNeabOUP0J94qMQ8K+BZz4I6C0x1Aq6WlmMtugaSMGoSQ
	d6KdXTOvx7O+ttGT29lU3V4B7ElACevPyHvPGbAcCls6PZ1d84YQsJ+uxrxazWvUsojxqD3iC4dpK
	wikoj2gB8bCjf9Rj2ZYlffHRO5G7Ru35kgSj8PtGvqId3qAh8htw0Uc5H99Z3mrO4byJ99pVm/WaA
	qDQra3Y2WqtIhCuxnphH2rs+DQ17apXxhAxhxEsuwSHplCxqq1LciCuRXHZRRYdh+tS3cjz8m5W7p
	wZ0hGboA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd6B-00000003uih-2AIi;
	Wed, 22 Oct 2025 17:58:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd67-00000003uhk-2mF6;
	Wed, 22 Oct 2025 17:58:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3FEC049BE8;
	Wed, 22 Oct 2025 17:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23184C4CEE7;
	Wed, 22 Oct 2025 17:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155887;
	bh=jr9JB+acUWFLl0PRQSeU+Vdvre5khnKT1FDyCMV0CLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S7h2pCjUS3QZ8ZD5neVd3YErybx5CULzDQ9huY8d1OH4XKhvNP3nHfVBpAAh9/oax
	 +4/gpP0B+2p4/nslO+zsJQgiMv+ET/v/3bTEPbI8mmgmpmUyF2pEjoC9pK56lKMMJN
	 k7p1SAaWcz+EhNOCwegklcmbGEVCQATBr6lfy12TnAgIX6DZb4mc/NCOYDuMkiTLKA
	 Cy2hgwbE+AHxG+pfGcb0nyN7PzIDMljw0DPsPWWFGXCzFijBPW2hrhMRHjdDE47omq
	 xvkkL1LmzuK1K3t99lQpWyLMVK4+C1/6SWqCEHKI+cu6Z/PvLDkDxnrqAuK8ioxVDn
	 1mXhSBZD7WNnA==
Date: Wed, 22 Oct 2025 18:58:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Add compatible
 string for RK3506
Message-ID: <20251022-selector-matron-e1c0331f821b@spud>
References: <20251021222955.193323-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251021222955.193323-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_105807_715675_96D7BFA6 
X-CRM114-Status: GOOD (  10.26  )
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
Content-Type: multipart/mixed; boundary="===============1186154133106345116=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1186154133106345116==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Keo+0uZWAkw8FPLF"
Content-Disposition: inline


--Keo+0uZWAkw8FPLF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 12:29:55AM +0200, Heiko Stuebner wrote:
> The dw-mshc controller in the RK3506 is compatible to the one first found
> in the RK3288 SoC, so add the RK3506 to the variant list.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable
(too late I know)

--Keo+0uZWAkw8FPLF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkbKgAKCRB4tDGHoIJi
0qQFAP9rodx4+UEvE9Qi13OZz2yDdQL3rr3ZChSxpq7Kd1E2IgEA/+4ccILN26B0
FgWsR2Y7VQTJloYNoFuSVSBTnwzILw0=
=iD8Q
-----END PGP SIGNATURE-----

--Keo+0uZWAkw8FPLF--


--===============1186154133106345116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1186154133106345116==--

