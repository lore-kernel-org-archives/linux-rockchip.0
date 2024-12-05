Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC2CAE77170
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 17:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AJadgwy2MM9k4Tnnl5qb8N58sfpNlDr+czFCU6C7gSc=; b=4ndGpJuHMkOHddPFPu7p9Z/f7t
	+Upqa7vIoeTMWHUjCU2ouJ1AACT3LamjrNpzpmaxPmLopSVetXso/5htNIctrT4cZuCJ0NYomzH49
	Ti1FqPDJwBLUii9s3GDW0OA7pUTvGUjDZT1JpLpP5XVyKEWjjXa0GnWFNQH4X6SOWkiNdgm514b//
	M+7X1b7rREPRdf5TLpOI3SkxPan/90+U6WG+uDaaEpCEiyg+rzxTQkLqZotIshs4/gLTAxWx74H0M
	g+vVkjm42DN9+QOxoFOd+bRA2e5PbMIMpVqXK1/dCpgBx0SqZ5P6xe1IlBctuGZR3aBfZPQZzX6wJ
	Y22+CycQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFT9-0000000GuQn-16yx;
	Thu, 05 Dec 2024 17:16:51 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFIU-0000000GsCs-1iv8;
	Thu, 05 Dec 2024 17:05:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 70A7AA43DFE;
	Thu,  5 Dec 2024 17:03:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C9CC4CEDD;
	Thu,  5 Dec 2024 17:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733418349;
	bh=+Ta7ODN+agEhvbgrJJw1jUucd5srUw+hGfUFlOpCmtg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qLI0xY6MoeZmOqx0tLF+nZ+CMCqUKpfdOl1FE3f8gea824GeEGKOargQIxVwtPPEX
	 BI+LKunB0+T1H9eWtm5D5hSxreYgbQ3GaAv30RHXasel1suib64g8aur/7Zbi4sQzy
	 HPz1pTzRkBdbErPymLmklLFSvrxuvFwgfOVUIUHPOqDLgg6Tahr9lLFdi6H5HSaOyA
	 w59aHBRR0q5gu1/cqfdrLFXUwvSTT2Ij+wo/sscGoHZoKN+C4rWL5gGlVX9ZWzMxFH
	 +tmcLK/8yx9LhCmgOZomadLuRQ2SM5jgQK6HLCsftubAuYDIWs3PoJ29owO+JrLTZ1
	 MK3aee9b3Q6IQ==
Date: Thu, 5 Dec 2024 17:05:43 +0000
From: Conor Dooley <conor@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: PCI: dwc: rockchip: Add rk3576 support
Message-ID: <20241205-backfire-support-68a48f6dcb80@spud>
References: <20241205103623.878181-1-kever.yang@rock-chips.com>
 <20241205103623.878181-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241205103623.878181-2-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_090550_516839_6CD868A3 
X-CRM114-Status: UNSURE (   8.88  )
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
Content-Type: multipart/mixed; boundary="===============8040446873697088745=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8040446873697088745==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oHiiIfBKH0NLyHDs"
Content-Disposition: inline


--oHiiIfBKH0NLyHDs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 05, 2024 at 06:36:18PM +0800, Kever Yang wrote:
> rk3576 is using the same controller as rk3568.
>=20
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--oHiiIfBKH0NLyHDs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ1HdZwAKCRB4tDGHoIJi
0mbNAP0bakK9HI1zyUDdT4MjngUTtGcHn4JEUnGw4bxCEQ/MjwEArPBI/XuL37Ya
RoA1adWL3DNLYDM6srHpI0CInum9IgQ=
=BTAd
-----END PGP SIGNATURE-----

--oHiiIfBKH0NLyHDs--


--===============8040446873697088745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8040446873697088745==--

