Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD18CDB474
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 15:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eFFvBdH21q2sXiKnWUb7z+Fct6qqHcxpi6LI4ZqpeVk=; b=SBhda4IA/NdQbQ0NYcggZ24Ebq
	OFTFvuRAEX6Em+XzevsOyBmG8iW3l0oG8d5bz3Q7qBmO3Os3pzqm9KK6JRWyxnIy70Y36IP+qqh3K
	ZbgwMHb98+XOQj+frksjWHc7BltitT80I4WDxp+0weoTEhDsRbffaHVLtNN0v8NIvZSMFX3ol7d//
	R6eWqhByIMzMZN6gbzp851xDv6nGzLWAhGQxFT9vc38pm7EM+S9iO5yQ5P9rfTk3goxzoVDJyj+BN
	frLwhtwWGV7e0nySjq8y/lH4olPakdeAqzMElQIDBkC+jVC47jQ2H0S1g8pRUmfb3a9tt+Ji3Pxt3
	lfiryyDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtrY6-002cdd-3B;
	Fri, 20 Oct 2023 15:36:30 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtrY2-002ccW-2l;
	Fri, 20 Oct 2023 15:36:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1C159B82703;
	Fri, 20 Oct 2023 15:36:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D730CC433C8;
	Fri, 20 Oct 2023 15:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697816184;
	bh=s1xV3JBd6JIKm+NQbSAbEH6DMv5wORv7APbuEHALwfw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pNHvl4mYVct+XX8kx8UXf2TT0nVK+m3RiqBgFauhIyP34BfS24P6w3cN+sNYgh86L
	 zIefFNd8SChjbE5mt0RcnCDDVnHQI9kiZ34N/Ndcb99gaYfbftUXfVN2jHE+rGi3tm
	 n1WJoP51Ny99stXZhmuo1Jrobgy4wuqH2wA5OViwEeNmvPtRxtmTZNsEomW/GeuStz
	 E56SShxBTIycb5PteKMvF+cjGSX68RZRJUltSn2U6mia4caFYA/aHgilLqBlYv75n1
	 XaB4EfF6m1ZGVqn9pgmCTZdSpN7ahbLcycEwthBAeTyHfVar01kDyclkbMcSWk/O7u
	 O/Z9xWkCKirLA==
Date: Fri, 20 Oct 2023 16:36:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 1/3] dt-bindings: usb: add rk3588 compatible to
 rockchip,dwc3
Message-ID: <20231020-shudder-tackle-cc98a82f1cd0@spud>
References: <20231020150022.48725-1-sebastian.reichel@collabora.com>
 <20231020150022.48725-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20231020150022.48725-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_083627_221308_F3E36FC4 
X-CRM114-Status: GOOD (  21.85  )
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
Content-Type: multipart/mixed; boundary="===============4051799550966025507=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4051799550966025507==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xK1bQfKTFhB0MwbA"
Content-Disposition: inline


--xK1bQfKTFhB0MwbA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 04:11:40PM +0200, Sebastian Reichel wrote:
> RK3588 has three DWC3 controllers. Two of them are fully functional in
> host, device and OTG mode including USB2 support. They are connected to
> dedicated PHYs, that also support USB-C's DisplayPort alternate mode.
>=20
> The third controller is connected to one of the combphy's shared
> with PCIe and SATA. It can only be used in host mode and does not
> support USB2. Compared to the other controllers this one needs
> some extra clocks.
>=20
> While adding the extra clocks required by RK3588, I noticed grf_clk
> is not available on RK3568, so I disallowed it for that platform.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/usb/rockchip,dwc3.yaml           | 60 +++++++++++++++++--
>  1 file changed, 55 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/D=
ocumentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> index 291844c8f3e1..264c2178d61d 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -20,9 +20,6 @@ description:
>    Type-C PHY
>    Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
> =20
> -allOf:
> -  - $ref: snps,dwc3.yaml#
> -
>  select:
>    properties:
>      compatible:
> @@ -30,6 +27,7 @@ select:
>          enum:
>            - rockchip,rk3328-dwc3
>            - rockchip,rk3568-dwc3
> +          - rockchip,rk3588-dwc3
>    required:
>      - compatible
> =20
> @@ -39,6 +37,7 @@ properties:
>        - enum:
>            - rockchip,rk3328-dwc3
>            - rockchip,rk3568-dwc3
> +          - rockchip,rk3588-dwc3
>        - const: snps,dwc3
> =20
>    reg:
> @@ -58,7 +57,9 @@ properties:
>            Master/Core clock, must to be >=3D 62.5 MHz for SS
>            operation and >=3D 30MHz for HS operation
>        - description:
> -          Controller grf clock
> +          Controller grf clock OR UTMI clock
> +      - description:
> +          PIPE clock
> =20
>    clock-names:
>      minItems: 3
> @@ -66,7 +67,10 @@ properties:
>        - const: ref_clk
>        - const: suspend_clk
>        - const: bus_clk
> -      - const: grf_clk
> +      - enum:
> +          - grf_clk
> +          - utmi
> +      - const: pipe
> =20
>    power-domains:
>      maxItems: 1
> @@ -86,6 +90,52 @@ required:
>    - clocks
>    - clock-names
> =20
> +allOf:
> +  - $ref: snps,dwc3.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3328-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3

minItems for clocks and clock-names is already 3, is it not?

Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> +          maxItems: 4
> +        clock-names:
> +          minItems: 3
> +          items:
> +            - const: ref_clk
> +            - const: suspend_clk
> +            - const: bus_clk
> +            - const: grf_clk
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-dwc3
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          maxItems: 3
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-dwc3
> +    then:
> +      properties:
> +        clock-names:
> +          minItems: 3
> +          items:
> +            - const: ref_clk
> +            - const: suspend_clk
> +            - const: bus_clk
> +            - const: utmi
> +            - const: pipe
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/rk3328-cru.h>
> --=20
> 2.42.0
>=20

--xK1bQfKTFhB0MwbA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTKecwAKCRB4tDGHoIJi
0nobAP9gB+qsHrTFsAFDJu4+fvKBpfSdY02kTL2MPTojpyy3eAD8C3SFcHdhD6T3
zRXBywGwE+6lPmCkSRVvQByGqxESRAk=
=vfSY
-----END PGP SIGNATURE-----

--xK1bQfKTFhB0MwbA--


--===============4051799550966025507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4051799550966025507==--

