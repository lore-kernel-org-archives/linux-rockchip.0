Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0826AC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 14:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3L6J1jbWL6/GOTxWJprZkgxVDE7MQItOJ9VVmmQCB0=; b=QUK/sn6YilSLsyjNKIVIZk3UXA
	GTVSjjxrUGF573Mb31AnMm+RxdEstIS3329wn2mVo3VgqcKfTvnyi78N7V7L/U+7iDtEWU3XbXV+d
	BjSNLDa5cIDEMrHn+SeBAlybYTZ5v5fiKReC4NGOz/Yd1l8W45dj/BPsuFmIW5hLMhRsw2lIGJ4/6
	2NPiJwUFsZEbPbxgw1gH1EsQGN2jSPvTDgET2asrYam5gbaAgn3ccasLmWFF/QG4fWbbS7d92FfE+
	+uZ4WeIInVG6hAXqvHAScgssu+BjuBhaUXyR00TKv2Sah8a1PwtFDzZPYZlJt3SGvqNxovPLAD3+n
	hDzc5y/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQOu-0000000BTtv-2TNe;
	Fri, 09 Aug 2024 14:15:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQNh-0000000BTVM-2hfE;
	Fri, 09 Aug 2024 14:14:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E3D87CE1178;
	Fri,  9 Aug 2024 14:14:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D480CC32782;
	Fri,  9 Aug 2024 14:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723212850;
	bh=C6TqZ9tF0k6ewQwXFwg7qoPMCz+on8jFniKwp+OvO3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=icgMDxa4E5o/YvRl6rwceNn0Xp16Fx/TSurbMUFWs2d0wWfdBACVV1OkjcP4Qf6qR
	 J2ntq8KQJxmphI1sp5Y+wP4ZEbdDo0jHX3HgO6jdqr4NsB59xPzQNHlwgL0pK47A9v
	 td/R6EV/E3TBQAmnQJo5dVNbai6FnZDJa6eaycQxdW58+BQCRSiV0Di/GMaiz9kCgi
	 ScfYn2CXVlUkDZAgJ0OA54e0R86ghZu2rb2ZOcu6DGQUyIEf7Ayny/EyA3F0Nu9anF
	 3BVizPpQhNX6WfmUEw1gih7S//calBQ/0VaEj/dWhA3w1vCBMNgxUBNeEoddBvGaqI
	 ml5BY5PiYSVAA==
Date: Fri, 9 Aug 2024 15:14:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 2/3] dt-bindings: clock: Add rk3576 clock definitions
 and documentation
Message-ID: <20240809-smelting-truffle-752b2f7c9e47@spud>
References: <20240809125553.3889-1-detlev.casanova@collabora.com>
 <20240809125553.3889-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240809125553.3889-3-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071414_081300_DEC5FD56 
X-CRM114-Status: GOOD (  24.05  )
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
Content-Type: multipart/mixed; boundary="===============8753719682069158084=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8753719682069158084==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FJQWZgsBE5dRMV9V"
Content-Disposition: inline


--FJQWZgsBE5dRMV9V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 08:54:53AM -0400, Detlev Casanova wrote:
> Add clock ID defines for rk3576.
>=20
> Compared to the downstream bindings written by Elaine, this uses
> continous gapless clock IDs starting at 1. Thus all numbers are
> different between downstream and upstream, but names are kept
> exactly the same.
>=20
> Also add documentation for the rk3576 CRU core.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3576-cru.yaml   |  84 +++
>  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592 ++++++++++++++++++
>  2 files changed, 676 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk35=
76-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
>=20
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.=
yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> new file mode 100644
> index 0000000000000..d6fd17320e56a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3576-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk3576 Family Clock and Reset Control Module
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>

Why not you, the author?

> +
> +description: |

The | here is not needed, you've got no formatting worth preserving.

> +  The RK3576 clock controller generates the clock and also implements a =
reset
> +  controller for SoC peripherals. For example it provides SCLK_UART2 and
> +  PCLK_UART2, as well as SRST_P_UART2 and SRST_S_UART2 for the second UA=
RT
> +  module.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-cru

Why an enum rather than const?

> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: xin24m
> +      - const: xin32k
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: >
> +      phandle to the syscon managing the "general register files". It is=
 used
> +      for GRF muxes, if missing any muxes present in the GRF will not be
> +      available.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
> +    clock-controller@27200000 {
> +      compatible =3D "rockchip,rk3576-cru";
> +      reg =3D <0xfd7c0000 0x5c000>;
> +      #clock-cells =3D <1>;
> +      #reset-cells =3D <1>;
> +      assigned-clocks =3D
> +        <&cru CLK_AUDIO_FRAC_1_SRC>,
> +        <&cru PLL_GPLL>, <&cru PLL_CPLL>,
> +        <&cru PLL_AUPLL>, <&cru CLK_UART_FRAC_0>,
> +        <&cru CLK_UART_FRAC_1>, <&cru CLK_UART_FRAC_2>,
> +        <&cru CLK_AUDIO_FRAC_0>, <&cru CLK_AUDIO_FRAC_1>,
> +        <&cru CLK_CPLL_DIV2>, <&cru CLK_CPLL_DIV4>,
> +        <&cru CLK_CPLL_DIV10>, <&cru FCLK_DDR_CM0_CORE>,
> +        <&cru ACLK_PHP_ROOT>;
> +      assigned-clock-parents =3D <&cru PLL_AUPLL>;
> +      assigned-clock-rates =3D
> +        <0>,
> +        <1188000000>, <1000000000>,
> +        <786432000>, <18432000>,
> +        <96000000>, <128000000>,
> +        <45158400>, <49152000>,
> +        <500000000>, <250000000>,
> +        <100000000>, <500000000>,
> +        <250000000>;

I don't think these assigned-clock* properties add anything to the
example.

Cheers,
Conor.

--FJQWZgsBE5dRMV9V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrYkLQAKCRB4tDGHoIJi
0r1CAP48lLrCcLu8NRhXLkmdmwsezY1hl2onHiYetdPNZLaZMAEA8BHQEPERi74t
JL/0koiay03nq2BGoMIh6uWzCNQuaAk=
=yjMq
-----END PGP SIGNATURE-----

--FJQWZgsBE5dRMV9V--


--===============8753719682069158084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8753719682069158084==--

