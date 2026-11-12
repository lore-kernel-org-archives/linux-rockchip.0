Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F6E60A261B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 16:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NMBCqcnm;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=ip9ePaPo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GBKVOXIP0T/t7KihiYRA7DbofWvvK7B2vMjAfHtcAQc=; b=NMBCqcnmAu8tylo8qu5UkHKvl9
	lipO1sG833vbPMajnmalqaRJ6AANcJMqe3aEA+WTV4s05GpQnKXV6f344jyLVjsHP6p22lrwkkGt7
	0N/D2J/V+QNa6aXyzGCQQT/4PDghZkFyRJI7Wbmt9BDOcnwPDYWJfXSQOL/4ekeXBXHIJy1z1hj+J
	yA6rY6xoLu/0hyvRPXVWgEFVe+rsmeOcLAN00XiX4+A5D6QwT2JHKEVZ7WpFnyOk2A8wwuUcQhOWR
	g31xfFnMg9eJjQWgjm/51ucyaITsPkcyQ2tjnC5ChmzGdaF/Q4nA1B9GHigktWphC8urea1Qa4SIQ
	soK3K5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRXjx-0000000Ab7K-17Rh;
	Thu, 12 Nov 2026 16:33:33 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRXju-0000000Ab6g-0E0r;
	Thu, 12 Nov 2026 16:33:31 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794501203; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TyXFnpzt6dEn7SYZRYX9LBDwUMJG88UPvXAhu+jvP4b5K+gCdAr/syvn4RXC3C4jlxNzgPt48zf10avCykyl61Pxfg9VxRNQ9qW0Bhp8PlX7zaa3tPAEHg45ps2HKNFcHyqN8NcXOyuK76PvUxqT5CQ2QLRKVmxGIixgGRD3ALI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794501203; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Q/dnwQIhA8Sqe3WS4uwxB+IGEIoincQaBjNIe4lg0SQ=; 
	b=FYeV0xsv23iGhQRJsEl6egozOrqON5Hs+1DEvzxrPFhE0giGXnyydeA+H4uvU0eP27XOGT9QjhmbodMjSZaGgahitwsGi/J7iN3CF6PvfQdf//EqijbNMCElZGOCzIe59VipzJNXeQfzDEdreDvSs/qwDNH7dmIkDvOX4k0qH0Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=ip9ePaPoVY3ZGfrjNpmVgomklprEC4o4roC1mcA+NBvqB1udzuz/z6o0nXkhFtHplLQBHB033UxNnzoW5Log1fF8+y8V/j1wVXq+/AIVeAFvYdFLTXmmmob7d6MYWDTgPMujwzN+ur/vT6ibOLa11Ofo9jehlWe9PDTFjwdTyxQ=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=Q/dnwQIhA8Sqe3WS4uwxB+IGEIoincQaBjNIe4lg0SQ=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794501201770774.608247615585;
	Thu, 12 Nov 2026 08:33:21 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id EA777180570; Thu, 12 Nov 2026 17:33:16 +0100 (CET)
Date: Thu, 12 Nov 2026 17:33:16 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: aiyengar1990@gmail.com
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	"Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Pranjal Shrivastava <praan@google.com>, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add the reset of the RK3588
 PCIe SMMU
Message-ID: <avXqMZkpY7d0sbfR@venus>
References: <20261112-smmu-v3-pcie-pd-v2-0-3a77bbb6b2c4@gmail.com>
 <20261112-smmu-v3-pcie-pd-v2-4-3a77bbb6b2c4@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261112-smmu-v3-pcie-pd-v2-4-3a77bbb6b2c4@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/294.497.36
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_083330_221808_538E0F93 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4694541680725017155=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============4694541680725017155==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="plo7cdziw5qygczc"
Content-Disposition: inline


--plo7cdziw5qygczc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add the reset of the RK3588
 PCIe SMMU
MIME-Version: 1.0

Hi,

On Thu, Nov 12, 2026 at 08:20:25AM +0000, Arun Iyengar via B4 Relay wrote:
> From: Arun Iyengar <aiyengar1990@gmail.com>
>=20
> The MMU-600 for the PCIe controllers (mmu600_pcie) has a reset line in
> the CRU, SRST_A_MMU_PCIE, which its node does not describe. Add it, so
> that the node describes both the clock and the reset of the MMU-600.
>=20
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---

squash this into the previous commit.

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index dfed34a8aa57..45c1bb335447 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -560,6 +560,7 @@ mmu600_pcie: iommu@fc900000 {
>  			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
>  		interrupt-names =3D "eventq", "gerror", "priq", "cmdq-sync";
>  		clocks =3D <&cru ACLK_MMU_PCIE>;
> +		resets =3D <&cru SRST_A_MMU_PCIE>;
>  		#iommu-cells =3D <1>;
>  	};
> =20
>=20
> --=20
> 2.55.0
>=20
>=20

--plo7cdziw5qygczc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmr16kgACgkQ2O7X88g7
+ppxMRAAj3Ltv4ErhZU0f3wZhYPQJhx+mkY3nlU/L6SyJGdIyiP+f5sNRq1yS3PC
uFjSX4M0IV7s6bymiCkx5mimtXcqWnpJZREgT5rE/pn6qA2oEbSvaV71cPBghWMp
cMCpa6RU7UME/Aj2laC7m+FhA9n6HUGYRchQQbSmd0y+bh6QJq2eGNstI0+1Jl8a
xgKEyVomPUWe6U+/gvO+f5huDrx8A6AXYmvP/u+1W2pIYcl7khGjb3RimLjhN//o
IlsoSB3yFBwQsKDJnQBlaCukfQfCaMRFjH6zvIsFMiic2wdLKWTdnDlsFwXXI3HP
Ckxh7FkdAZmT0FhKm+AkHBschqSqzZTfrHfhy9SrOZgXWOTz1jQE9nIurWtjnyco
0BtZjwgYCXWMIEOfV+YSrga4BvooysTtTm9/5FBy/YxY1LWjVMYf/73np8yJ4LYC
yiaPA2M3PfhrK3Pqwany/VxcqF0mgh9wMynwWMmJQXesRv+ECPHtLz+dZ6Ib2pcs
s+rN0hjEsm8tRsTN38r1n0MTlfMAsSBi2Ms3vTmj2v/jPsAwhb2mpPgJwEP8+k8j
cN3vrq1sFgYJMee561K3JiUcpm0aCN55NAuTaQ9fOpV8ow4xNn4vrgh+EvjU+LTQ
YY8DlesoqyZuG6FPd2GvJ5jpRLK2IJtMp+Ao116jHyFzg/oN3UI=
=VZSZ
-----END PGP SIGNATURE-----

--plo7cdziw5qygczc--


--===============4694541680725017155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4694541680725017155==--

