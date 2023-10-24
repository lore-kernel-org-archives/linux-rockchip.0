Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38492C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=twGfuNBaExY6TRu6zlU8B3D0ewUme+92I5PxMG4YoV4=; b=VFEC/pza4hfmwfNNcgcDWJNH9m
	fzNL6dT9omB45oC9NO6EE4ExIake7qD+fLGK3vcbKeaarGluRhMIMkJxUGIEfFiEOutiKIQ77cEHJ
	uSIdBbZkHy0DflfaiGVbUoLlIzwe71Z33OGFS9zFPWUZaaMen/I+vhnnaxIGYNnbN6+w0vXtJju5X
	fuDeo77rtFcBptrTDNcv9GftrjBYxECIhwMhi2DpIq+RU0cGrbHANpQ3dRdxnk5PfwgncHLqGtnx0
	6/gcBNp0OC6fdX+Iw6R6wDS1GK20l/zM1vklL8wiSmXqEm0tjAsh08RdApoAgA9M4NJQ8tqpkhLN/
	5TQOEJNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvKHl-00ATv4-08;
	Tue, 24 Oct 2023 16:29:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvKHh-00ATs6-1I;
	Tue, 24 Oct 2023 16:29:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E0B25B823D2;
	Tue, 24 Oct 2023 16:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F623C433C7;
	Tue, 24 Oct 2023 16:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698164975;
	bh=ToOuDiwID7kYMJgwK7NAcFBO1+obD7vq8ICE/ePutgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bAHZIHkcyLdhkhrgG7n1TAPSNDSKFGBgu0cm5CvBb8cyKj4yj35FQcxUMojfEFeXd
	 HhLTYYZ9yI8UGpubvQdnYYuEfesBxfu+tUvdE+0pfyKcE76Mr87VxJZoBFWPXpo7bu
	 2e/V87MxrKtDAYDqv9iYQRzTrkmuVRaj4MaDIq5WKwZmUqFN39ensnxMEHI6WK7cYn
	 ePxDQRXL/v971RAG+5hUmlBJof35vOL7Ggn9EvflerRMDAX/lpZSvvl5nGY90gZjky
	 83vnHCs+rGtn9Y8lOVMkecw3ycH9QPZ+jjy2JNMSPIyaErjbSEsYI9/TS43ci3snl3
	 Zjqb2HeQsvOzQ==
Date: Tue, 24 Oct 2023 17:29:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Niklas Cassel <nks@flawful.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Message-ID: <20231024-zoology-preteen-5627e1125ae0@spud>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-2-nks@flawful.org>
MIME-Version: 1.0
In-Reply-To: <20231024151014.240695-2-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_092937_709221_09DA2F78 
X-CRM114-Status: GOOD (  16.66  )
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
Content-Type: multipart/mixed; boundary="===============2246602384128547243=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2246602384128547243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GmxiJMkWxFE9W0TW"
Content-Disposition: inline


--GmxiJMkWxFE9W0TW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 05:10:08PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>=20
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
>=20
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
>=20
> and snps,dw-pcie.yaml does have the atu property defined, in order to be
> able to use this property, while still making sure 'make CHECK_DTBS=3Dy'
> pass, we need to add this property to rockchip-dw-pcie.yaml.
>=20
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml =
b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 1ae8dcfa072c..229f8608c535 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -29,16 +29,20 @@ properties:
>            - const: rockchip,rk3568-pcie
> =20
>    reg:
> +    minItems: 3
>      items:
>        - description: Data Bus Interface (DBI) registers
>        - description: Rockchip designed configuration registers
>        - description: Config registers
> +      - description: iATU registers

Is this extra register only for the ..88 or for the ..68 and for the
=2E.88 models?

> =20
>    reg-names:
> +    minItems: 3
>      items:
>        - const: dbi
>        - const: apb
>        - const: config
> +      - const: atu
> =20
>    clocks:
>      minItems: 5
> --=20
> 2.41.0
>=20

--GmxiJMkWxFE9W0TW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfw6AAKCRB4tDGHoIJi
0qb/AP4hIJGUoqERu3QlpvqCaZ/CBI2cf+nZgPkQl4kGAYVyfgD+PXkXwVjXkAbA
HSw5kLuiPMl+65KV5fy0La1elPqpSwc=
=qavj
-----END PGP SIGNATURE-----

--GmxiJMkWxFE9W0TW--


--===============2246602384128547243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2246602384128547243==--

