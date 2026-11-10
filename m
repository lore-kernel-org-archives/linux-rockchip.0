Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC40606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 15:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B0eaTdW8;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=QRjJSqxV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iPCdLyHfTxKrOx6yJ7UK5+sBNdUPniw9MPcSo/VU7fk=; b=B0eaTdW8agZNHlxg3aPhJXeftT
	aH11pRo+aqTaPM0wZtvzSt0xghe4w+rY7DbtDxFNhE/4pjhT9IpksT/qQLWT0TTSDkM8IFv8+LbQ1
	UJ5+iMOJU2LhOxGkvm05amCq3pSstF4BUx+iTfcYazCuY9De8ql/+y/204qKOua4vSHJ5SqBXvqV+
	vTuhkgNYNEul5zlVtpGO1NTr2+8bh8ykQ0vX4qHSsgVAEKJbnmAFqrW2NUG3nQ/Fm5ZYxcuN+qA0q
	lxFqdh94x4godHpeIDl3kuTarzwQVSVj3qXIe4lXd5sVHd7F8jtupbt41ZUQNuZwezE0U8hiXF4vg
	YPO8gbNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQnRT-00000004JfN-0EUe;
	Tue, 10 Nov 2026 15:07:23 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQnRQ-00000004JdW-437a;
	Tue, 10 Nov 2026 15:07:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794323233; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LTHpbf6iKPc1H4j1Tkp5iU4AwuH4eCUg77sjoArjLy2nTrBHq0wLL32uREEMwEcWDafTZmtUu9bszpofcatrLNODBKsMuxn/SfkOhv6yVObfSElPxBWwZh/0LQ902YFSFJY0mdGRiJ8yvzbL9OUoDRV0R4osnvdJBkGNOwVdCYI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794323233; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VKJv1dEFI2T8VLCYOAsbXb27taluPbNUbiM5zUvXDBY=; 
	b=oL+IYwbknP13YKIskQ/bX+VuESZhp60+mg6eDKy2f88P2GHDnRSfq/CAmEmtMbr+OBcyrC+CpPSyjI4HYYLqn8bxBJSwG3fdMJNm0fLACv/9vKa4hLtnYrVzIngxljhyuZ84vFUtjEsdoMQfFEBGbdJpkxXrkDQ42lbW3opntFg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=QRjJSqxVE+/gxtf7abYigr1OptoAd5GDzyMDjrCp++CWDG77G7nJ+xa6OaCyBwpmgoXIvDiFn+/u+h/c3LmQ1nvtpiLpQcNcL2s5EQXk7EE75QZRCsehNMuqPSQUsnB8EtPteAdt6hj1E16MsNnIWoADiwRXA9mVCg1XaQuSTdE=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=VKJv1dEFI2T8VLCYOAsbXb27taluPbNUbiM5zUvXDBY=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794323232230649.3017002854683;
	Tue, 10 Nov 2026 07:07:12 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id F2928180354; Tue, 10 Nov 2026 16:07:00 +0100 (CET)
Date: Tue, 10 Nov 2026 16:07:00 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: aiyengar1990@gmail.com
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	"Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: add the clock of the RK3588
 PCIe SMMU
Message-ID: <avMyK-ZQh8qVrFmw@venus>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <20261110-smmu-v3-pcie-pd-v1-5-628819ca44b9@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261110-smmu-v3-pcie-pd-v1-5-628819ca44b9@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/294.310.16
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_070721_258253_C1182220 
X-CRM114-Status: GOOD (  17.26  )
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
Content-Type: multipart/mixed; boundary="===============2505338489300786251=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============2505338489300786251==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qogk6fc2sep2osv7"
Content-Disposition: inline


--qogk6fc2sep2osv7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: add the clock of the RK3588
 PCIe SMMU
MIME-Version: 1.0

Hi,

On Tue, Nov 10, 2026 at 07:11:52AM +0000, Arun Iyengar via B4 Relay wrote:
> From: Arun Iyengar <aiyengar1990@gmail.com>
>=20
> The PCIe MMU-600 runs from ACLK_MMU_PCIE, which is also the parent of
> the PCIe controllers' master clocks. When no PCIe controller is enabled,
> nothing holds it and it gets gated as unused after boot, while
> arm-smmu-v3 is still bound to the SMMU.
>=20
> Describe the clock, so that the SMMU driver keeps it running.
>=20
> Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU =
on the rk3588 SoC")
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index bcd342c025c9..8eed22ca69ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -559,6 +559,7 @@ mmu600_pcie: iommu@fc900000 {
>  			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
>  			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
>  		interrupt-names =3D "eventq", "gerror", "priq", "cmdq-sync";
> +		clocks =3D <&cru ACLK_MMU_PCIE>;
>  		#iommu-cells =3D <1>;
>  		power-domains =3D <&power RK3588_PD_PCIE>;
>  	};
>=20
> --=20
> 2.55.0
>=20
>=20
>=20

--qogk6fc2sep2osv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrzMxQACgkQ2O7X88g7
+po1iw/+OFyH6jhIzKzEZMOnmy8SjHGAN+RooTWnNJifq/F3ZE7c4/A9Uk/X9th/
6LSsk7G9a4AGWIw2yDlZwOVfFQfJSU0AIOLFW6Zg5nF3wSzN9ekVQo0qmjikH3p0
r+y2ky33DRNMCwga0c4DtIP90Q21upZLMqt6cua9H33MYlQQfCSTgF5SG6bl+rgP
bgTj7BviaNQ1yHIt5o+YqIh42NKkDHIcLblvQX5yz624FSllFxIfGvIy5aooivQ+
OowrZdVmISVkHddUNGSh4/9rpAui12Uub23j3d+hanqDu411/FpYUfI3y8vq/mD5
d70Q6g3IF0fQA0qFaWMmz5Qoq9kfrym7gtSK6VO1jl7IaDaXDFowZ8HlPpXob9Xi
Q6MSzkKWDNbrs7wjtE5H3CAFIFNnIv4cvxiAOymC5BUmORGxjSbD4VFdRp5UoqLj
/gI5DTwHZ94clngU2ll6gWCz5dtXzaJM8FBWKrYabJjLr02Hknt0uhxlu08t1RGp
2u/yxLBI43cm234G4Hvqi5j0fhtTyB3+fm1PjN1d5RCDT2nf9HiSbURkbsHAxhq0
hynlu0xr5vHGCsHJ/SIuB8POUIEfXTNZHK89o+rpnUdy5cmmgQvo2dvDWQN0/Yvo
QsTol2p50KxkzF9YP17/r2Ff0oPJ6ekFAAC1RaDupSI2am+MP0s=
=pXCf
-----END PGP SIGNATURE-----

--qogk6fc2sep2osv7--


--===============2505338489300786251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2505338489300786251==--

