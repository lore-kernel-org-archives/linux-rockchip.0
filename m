Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 223F5C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 16:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDn0LPg0MyH0jP6ZWls4YwuHRNEpa6l6J72nto+BVmw=; b=0WnfMAN/5iP0TDayK41jfSno01
	bX8+Gz97eOVbi60qbPCUUoUD63Qb0MX4IH3KvJF3glGmvVVG5mZAigY9lWhH3Y9guhIBuwICtlQUK
	vX19JZtCnD5Ytjt4Qr7qCHPufh6i0Td+Nb2HMWxmRAcrKJG+jNVHgaViwfsQDusFz/UoYZ+rTNQi3
	tfOnC0GQNQbTAbwYYHQdAPE1PmFz3vclgu1r/f8O16nbEorOIbvi96YNprTMhtFAN4OXqBIqnJAkN
	5dCHAPEL+2lv/9btwZvklyS3CSMou75g/MJjgGNy4g2F6ggizoexAdhTrQSIxIZwCXq+/KL95BhFh
	j9WPNcdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvKIa-00AUDw-2N;
	Tue, 24 Oct 2023 16:30:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvKIW-00AUBX-21;
	Tue, 24 Oct 2023 16:30:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2118F61040;
	Tue, 24 Oct 2023 16:30:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D4ABC433C7;
	Tue, 24 Oct 2023 16:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698165027;
	bh=44omkjt/5HNfGSZPnCmi9G3bNkIwWFJzaa6omHVOCyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uZQmUam9BmyVNRSqqTzzRweHloTNPmBbbVytfcFzIk6rE0L4viG8VngIqY6QauzM/
	 nfxPWK+Gv7L6jiXZttxQb8gdF5UYqegtsyVI9cWymh7taCrllPeQpRXePRfRLNfNrV
	 Psb0tsLwRuB+rTca6vqKe9ItWzH41db1Cy32rwFPt9kZ67a3TsNKUqRliZXn0bBm0T
	 XCFB7ft8mxf0uYaPS9y5E3KCW94XH7LB43c1TmTGkAQPeq3bMGvXn6biEgwXy/kr9x
	 FLlFaPEgeQzITQZpGXkoo5BCqnsaC5Vpe9aIk1i8AjVlkfXBxENhnIO6u0uOFvY2yW
	 pM3jL7LkLuJyg==
Date: Tue, 24 Oct 2023 17:30:22 +0100
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
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: dwc: rockchip: Add dma
 properties
Message-ID: <20231024-glacial-subpar-6eeff54fbb85@spud>
References: <20231024151014.240695-1-nks@flawful.org>
 <20231024151014.240695-4-nks@flawful.org>
MIME-Version: 1.0
In-Reply-To: <20231024151014.240695-4-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_093028_747273_1722D294 
X-CRM114-Status: GOOD (  17.69  )
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
Content-Type: multipart/mixed; boundary="===============1522950345070187047=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1522950345070187047==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cwtxAAzMBHSoshSf"
Content-Disposition: inline


--cwtxAAzMBHSoshSf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 05:10:10PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>=20
> Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
> using:
>=20
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
>=20
> and snps,dw-pcie.yaml does have the dma properties defined, in order to be
> able to use these properties, while still making sure 'make CHECK_DTBS=3D=
y'
> pass, we need to add these properties to rockchip-dw-pcie.yaml.
>=20
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml =
b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 229f8608c535..633f8e0e884f 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -35,6 +35,7 @@ properties:
>        - description: Rockchip designed configuration registers
>        - description: Config registers
>        - description: iATU registers
> +      - description: eDMA registers

Same here, is this just for one of the two supported models, or for
both?

Cheers,
Conor.

> =20
>    reg-names:
>      minItems: 3
> @@ -43,6 +44,7 @@ properties:
>        - const: apb
>        - const: config
>        - const: atu
> +      - const: dma
> =20
>    clocks:
>      minItems: 5
> @@ -65,6 +67,7 @@ properties:
>        - const: pipe
> =20
>    interrupts:
> +    minItems: 5
>      items:
>        - description:
>            Combined system interrupt, which is used to signal the followi=
ng
> @@ -88,14 +91,31 @@ properties:
>            interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
>            tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err=
_rx,
>            nf_err_rx, f_err_rx, radm_qoverflow
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> +      - description:
> +          Indicates that the eDMA Tx/Rx transfer is complete or that an
> +          error has occurred on the corresponding channel.
> =20
>    interrupt-names:
> +    minItems: 5
>      items:
>        - const: sys
>        - const: pmc
>        - const: msg
>        - const: legacy
>        - const: err
> +      - const: dma0
> +      - const: dma1
> +      - const: dma2
> +      - const: dma3
> =20
>    legacy-interrupt-controller:
>      description: Interrupt controller node for handling legacy PCI inter=
rupts.
> --=20
> 2.41.0
>=20

--cwtxAAzMBHSoshSf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfxHgAKCRB4tDGHoIJi
0gYhAQCUeQpAqRDJJHkX2Mozq/n5AwQ90PwjptSjFc5zEvFedwEAvFRKKAG7jc2M
qVh0v3uJUsxnOUAfs19cl4mkkTgUnQg=
=Aa4G
-----END PGP SIGNATURE-----

--cwtxAAzMBHSoshSf--


--===============1522950345070187047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1522950345070187047==--

