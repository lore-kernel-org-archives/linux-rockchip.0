Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80144C71159
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 21:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oenXQEl6UVwkpZpWzDdCfpBoax87dBskIrh4R2GUOG4=; b=p0YlHsOEiBsy6z9HPCDY6qidOe
	IajKbLSasl4c1+0J6OrpVGHnwbbn28MsbZN5S3zbrg7T0RyjJP+MWmDE/5c2B2bz3BwPGmkYJ8E3W
	7q/ilqdCALwPamzqdlRQTUW6C3ohrk2SrDI67OmDytfhPJYlarsmyjjW0ZfuPUnHCBt6x5dGvXWn9
	O5y8iJ7QIOZpDvNMfwVIVNqgkt3Tr+Udd4aN8ttRiXru5Drkwn1rl0Q2MCARvEVCOQlFu6lU86p+l
	d3ec2/ul48O4vP6HFG7HV8RgZ8uJIqE/tiE+x0+yiXEjXYop9AaWvHhDOPqX5qFjs5FzACbqFFq07
	8uZv9aFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRHJH-00000005Z5m-3Iry;
	Mon, 16 Jun 2025 21:24:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRHF6-00000005YXY-3VrI;
	Mon, 16 Jun 2025 21:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750108786;
	bh=x6V7Wz89+nnBrUFm3+BWloa5RRG+umEIveqscFLOfGk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Cd/oy/zHDRHNvu4kbHm3+77GQ8CLRXM4oupw8B+XFZOWSWmxAGPOGypbArJo/aQMU
	 xr/krkk9kJ/8nYgUUe9LLup/Ur3Xv8w4EuVHYooykr/s7t8FFQNE0oysYLXH7Nn7IP
	 MWbgxShf21PhfPGQfj5IWgv1Od1iQqhNBA9lz2gFHIvpH41KO9QF6FRNQQNvWmTtTW
	 eluK223Ew1Zh1aAsKE5bCNIVDqSbY+xY7aSu24Z6JCGGqKQiglE03zCAf+a41dQ958
	 cC5o9a1DB5uwnwVJa8NXv++mYHX9XEJiWAjCWisFwObvQWQsmHsAAVbprXwAIWXOMN
	 LsmbfIb87zZVg==
Received: from [IPv6:2606:6d00:17:b699::c41] (unknown [IPv6:2606:6d00:17:b699::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C8C8A17E0CE3;
	Mon, 16 Jun 2025 23:19:44 +0200 (CEST)
Message-ID: <699cd8c660c255ab3cbec8760292ee76b8d3660f.camel@collabora.com>
Subject: Re: [PATCH 2/5] dt-bindings: iommu: verisilicon: Add binding for
 VSI IOMMU
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Conor Dooley <conor@kernel.org>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 p.zabel@pengutronix.de, 	mchehab@kernel.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, 	kernel@collabora.com
Date: Mon, 16 Jun 2025 17:19:42 -0400
In-Reply-To: <20250616-winter-strict-db98f85db22d@spud>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
	 <20250616145607.116639-3-benjamin.gaignard@collabora.com>
	 <20250616-winter-strict-db98f85db22d@spud>
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_141949_029620_F29931FA 
X-CRM114-Status: GOOD (  12.51  )
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
Content-Type: multipart/mixed; boundary="===============2576669239669024077=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2576669239669024077==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-1X+bHapYc8YntJ+olzdY"


--=-1X+bHapYc8YntJ+olzdY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 16 juin 2025 =C3=A0 16:14 +0100, Conor Dooley a =C3=A9crit=C2=A0:
> > +properties:
> > +=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0 oneOf:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - items:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: verisi=
licon,iommu
>=20
> You're missing a soc-specific compatible at the very least here, but is
> there really no versioning on the IP at all? I'd be surprised if
> verisilicon only produced exactly one version of an iommu IP.

I've dumped the HW ID (base + 6*4), and it reports this IP as an "MM 1.2.0"
(0x4d4d1200).

Note, all VSI IP for which rockchip did not rewrite the register
interface expose a HW ID register, but the from and location can vary.
This one is following the old school H1/G1/G2 style, using ascii to
idenity the core type. Interesting fact too, the register layout seem
to be the same as the Vivante MMU (which is hidden inside the etnaviv
driver).

I'm fine with having a soc specific compatible, just documenting
some fact I could dump.

cheers,
Nicolas

--=-1X+bHapYc8YntJ+olzdY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCaFCKbgAKCRBxUwItrAao
HOblAKDSSNkF59KB4kGZlOAZFD3NxiROYQCfe1Bhzq/TIVO3L0sddpC9+dFBmPo=
=HgDp
-----END PGP SIGNATURE-----

--=-1X+bHapYc8YntJ+olzdY--


--===============2576669239669024077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2576669239669024077==--

