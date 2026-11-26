Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638F606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 10:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ItAajt9T;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=esdLImf0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=y2azwLwUZBSYSXPr9A5RYxkeCilUaiZ2uEgH6gGdeso=; b=ItAajt9T5NiRR0UjCkgtOUrbLm
	HeXpEOZZ+SeiHFMMzZ/3ezP+2Bp5jpVsfjpHplW0ZLX5+fuVKwBZX5rct7UoZMhFzhyOrjIcuSWYm
	OX0MFUuXooIS5edufISuvEACcxrJpKaJu+tafxmtNEE+V9cweBEjaMNyYZWLARLJfGIUH99PcWNR/
	xm5G/SdDoD0oSaRGLHEKxFBIMbUi8b1gZNFKCXi6wsYp8cqDq037lbsFRXbVM0x1SVuSXtIWth260
	OlXQEiK7XkOLZdKe10M4rK3vzeQnGFS7FoKfxXSzuErO9lA6wmVb8iS5BD/oE7TXqw6xgRWZcoASh
	c6GFKBUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWWPv-0000000CiMq-0t1M;
	Thu, 26 Nov 2026 10:09:27 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWWPs-0000000CiM7-46QT;
	Thu, 26 Nov 2026 10:09:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795687758; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=efaMgozkJueJiSs2swC40lOWWCxi/7Qg8e+K/GtQOUqIsY0pXuMWbjw/DJFPF8vEWKyguNsJV/0fGff39z/+EgwELScgIamYYe6WPzlp3dvQtmvS7McROLHGl+1mjM/5IJdAuVuau7z3Yc3LEvsnD3NWjepdrA+tC7sAuzev0+w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795687758; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=l7d5IaQ6JOFWPkAFn1T5RV5TtU7SOPA7qfljz9g0TC4=; 
	b=NO6Yzv6d/2Rpv1/e5VQHt2h97mzw9tSi/y02PRA+wY0EIOslpJbfqD6yeJonnK9H3Wu1nd3DgAQMmPmbAjZCUR5C2OTxFp4N0DLsb213ZXbf7tTDCE+1RUq6TErRyKW9UwJeqlKaR0Qp3rkJzvRhwmuSFLz7NokiWT4qGdiq8Kg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=esdLImf0LzvU9760wveffdTdVGwTvsAtjHzK6BpB/YKvVtrLYztUTDFrmsPnazV165g9oBJHyuvHVCj9B+r7p7oiCPAm2zbjLIb2ktBGFgzqdtIEqa5eCpo1b9sEO0aQx3x3Vp85JPQ5IBdpEYN0UC7/fu7Zx08Lg0P3sh5TVWE=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=l7d5IaQ6JOFWPkAFn1T5RV5TtU7SOPA7qfljz9g0TC4=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795687756197766.9363163176183;
	Thu, 26 Nov 2026 02:09:16 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id E71F718040B; Thu, 26 Nov 2026 11:09:10 +0100 (CET)
Date: Thu, 26 Nov 2026 11:09:10 +0100
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
Subject: Re: [PATCH v4 1/3] dt-bindings: iommu: arm,smmu-v3: Allow a clock
 and a reset
Message-ID: <awgFFhKsT87wTwJK@venus>
References: <20261126-smmu-v3-pcie-pd-v4-0-c340c2dbd1d2@gmail.com>
 <20261126-smmu-v3-pcie-pd-v4-1-c340c2dbd1d2@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261126-smmu-v3-pcie-pd-v4-1-c340c2dbd1d2@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/295.675.79
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_020925_080641_C65E151E 
X-CRM114-Status: GOOD (  17.64  )
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
Content-Type: multipart/mixed; boundary="===============4898919448230040782=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============4898919448230040782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="356dxsaiqd4y3y2b"
Content-Disposition: inline


--356dxsaiqd4y3y2b
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/3] dt-bindings: iommu: arm,smmu-v3: Allow a clock
 and a reset
MIME-Version: 1.0

Hi,

On Thu, Nov 26, 2026 at 09:54:13AM +0000, Arun Iyengar via B4 Relay wrote:
> From: Arun Iyengar <aiyengar1990@gmail.com>
>=20
> The RK3588 PCIe MMU-600 has a clock (ACLK_MMU_PCIE) and a reset
> (SRST_A_MMU_PCIE) in the CRU. When no PCIe controller holds the clock,
> it is gated as unused and the SMMU stops responding. Allow one clock and
> one reset.
>=20
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/D=
ocumentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> index 3c044e4f03d4..9ab80142a485 100644
> --- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> @@ -63,6 +63,14 @@ properties:
> =20
>    msi-parent: true
> =20
> +  clocks:
> +    maxItems: 1
> +    description:
> +      Clock of the SMMU's register and memory interfaces.
> +
> +  resets:
> +    maxItems: 1
> +
>    nvidia,cmdqv:
>      description: |
>        A phandle to its pairing CMDQV extension for an implementation on =
NVIDIA
>=20
> --=20
> 2.55.0
>=20
>=20

--356dxsaiqd4y3y2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmsIBUIACgkQ2O7X88g7
+pojpxAAl60EjN/Ws/Tt4rGo9MZ+TYyUyltt45l8mZYJuUkNuRTlwc+WJHOIJnKl
gofGkYklDG1He/k/dP11sYRSyB24Z1EMr3x1nzlXeuFF9PZaxOGOn2J1e2vLnNfo
tXNDP1TC4fBm/uun2sdoOBQmm+ZtUEoNGcnmeMW8DEc4MQz7+czum8+wzlMjquhF
7OFQO6tX2HvByW1ARUujDlkwSPVfQSQYXXwrDoh1Si4kojAk4z9jIBN0dzPp8Z1y
/T3vY56GBVN4K8P+uRtKs7Q3cQvoySwb/tbMtjUukseYQOu4y07Ahjih2fRrtRf4
/5Pu8P0BNITQfmc0nsTP9IBI+JEIpwModufX8QZGS15HyoupoA21w7OpzAVamVlx
OImMB22d32mFMv/OM3oJn4f7Praa3h6j8qKREbwo0FZsCl4rOKqQWVGILY0cBxIB
9kaaUWW/Ju78xwH72nlyJl1zXuqDYjsAh7BXY6457zJp/8eutSNikalsgdkEVNGF
4CMbAicoPTatPFkIM8LZ2sNFNMGAdwh1XrZardea9NJV3DK5jXkY8zy4Y0KjM8FA
maVJONdZQv2d6N50Owf61bS7gHeKTmyG9P4WO9XvRHEnVdZPJuEQo28LpT/+7gdK
PRtNSKzr5Bxv9PdT7m9YCDpH9qNq09civvhOB8ittmjC3h5yVCo=
=r4Q7
-----END PGP SIGNATURE-----

--356dxsaiqd4y3y2b--


--===============4898919448230040782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4898919448230040782==--

