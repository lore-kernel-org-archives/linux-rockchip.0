Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C534CEACFB
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 18:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXQIkoKdOxKeZ7ILYbmst0Thm08gGAg5dqFlxuNJgBA=; b=sBRdgHan0EsHUrWTUEIG5sC49i
	NetciTuCUyWRreJdDmTHUeoZTPMK5N+YaPu22ea4S69/Y3z+JvWxeF5QTp99uIsoPH8JuB5naNonX
	9IOAsRSztHb2vz5HLKeY1et5YcwMUaAt6l+Wq+rA5czR/AIQhNJK7niGFop/V2+QU+vOpRpjn5VQ0
	1gmeU3SnQOmNl0elOVz3iy77sjyfJOBgVH/T8xiP75JnhOlPUQya1Ialgi3Wf2ua2XOWdT+ji1r3n
	iutxTS5P4BPdcY3EMirLnZ/LR/NkiDHpwl/mwkE9JovuN8C8+NUPfLvM95uSusfH/hdsxV9H7pfIa
	AawGNxxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svhtM-00000003o69-2ODh;
	Tue, 01 Oct 2024 18:46:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svfkd-00000003YiC-1wfR;
	Tue, 01 Oct 2024 16:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1JUcIw7Pl44vxD5ZuB87hn1EKMIdZyn8XWOGPs8sDxI=; b=UrG20nIhCJxiG/NI0BFK3l9pp3
	PmIwF+MHEQrkvBziLjm1InU5iPwdxN0fs/j6QCiSNw6Sk52neFNybEvSjhde9vtNK+fnZ1ESMF/LG
	gw5HmeJFMTcAjO6TYT15TXmuisBekjr+nwCtObAeRVD1YJHzBCK4HEElanR+jqO9aTK5dJBSCWjSU
	qMa6tv500M62GSiUPnlWgexUdn7K6ytTmu6/UrWg1uYFNg2K7zlauykvIIeoVWQwuAi0c2maK73c/
	bOPM2eENWMXDuVpecERnqfFQbdu5F/ZXBgCv1pZm4VmvqQYPqCSThmSpNkqGdZnqI86PuPxBxONaz
	69jDSKPw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svfkZ-00000003DMg-3Bmo;
	Tue, 01 Oct 2024 16:29:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BB7BE5C54E9;
	Tue,  1 Oct 2024 16:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E4DC4CED4;
	Tue,  1 Oct 2024 16:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727800160;
	bh=5tYXHsjGIVa+k+2eFlpHz83kyJieT6QL7Z3nXg+GnDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wf6LXErkQQu4lvZxDPV3INszO0R/kQfjeAKbwwYrC7cGpPERW8bu7AgArW/9FQauq
	 lv13dtEsVXGCMzu+nDRA0JT6i680cQD+Arn31g/LVM9HWpz28a+Vyc2pPpDg0D6c+W
	 f9XZBc9/fWCWb6dsfiWaAFDtbRgL73q5U2978Qy5Jh/Sj5oNnDoN+qHo91+m0eVfpy
	 v+opNIqYunW6C5OpsJgahdd3nJs4/dF/vNZIvMCyTZf0O3Zi+0+eoSPeKaMI3feOIL
	 AyIfTM+NgWTuidJBb7DImKqU5AszSabZIvRohgXqp+rAqEs+TIUFdyVHzSPlv5uIkK
	 HaQsQgn/qXUkw==
Date: Tue, 1 Oct 2024 17:29:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 3/8] dt-bindings: clock: Add rockchip,rk3528-cru
Message-ID: <20241001-name-stooge-7a939f71a08e@spud>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-5-ziyao@disroot.org>
MIME-Version: 1.0
In-Reply-To: <20241001042401.31903-5-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_172924_272446_83FA6913 
X-CRM114-Status: GOOD (  22.54  )
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
Content-Type: multipart/mixed; boundary="===============4415211716264461991=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4415211716264461991==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LpLEFlOKzmxoZNpJ"
Content-Disposition: inline


--LpLEFlOKzmxoZNpJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2024 at 04:23:57AM +0000, Yao Zi wrote:
> Document Rockchip RK3528 clock and reset unit.
>=20
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  .../bindings/clock/rockchip,rk3528-cru.yaml   | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk35=
28-cru.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.=
yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> new file mode 100644
> index 000000000000..ae51dfde5bb9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3528-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3528 Clock and Reset Controller
> +
> +maintainers:
> +  - Yao Zi <ziyao@disroot.org>
> +
> +description: |
> +  The RK3528 clock controller generates the clock and also implements a =
reset
> +  controller for SoC peripherals. For example, it provides SCLK_UART0 and
> +  PCLK_UART0 as well as SRST_P_UART0 and SRST_S_UART0 for the first UART
> +  module.
> +  Each clock is assigned an identifier, consumer nodes can use it to spe=
cify
> +  the clock. All available clock and reset IDs are defined in dt-binding
> +  headers.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3528-cru

nit: This can probably be a const, rather than an enum.

> +
> +  reg:
> +    maxItems: 1
> +
> +  assigned-clocks: true
> +
> +  assigned-clock-rates: true
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: xin24m
> +      - const: phy_50m_out

Why is this input clock named "out"? clocks should be named after how
they're used in the IP in question, not the name of the source of that
clock in the SoC.
Without descriptions provided in the clocks property, it is hard to
understand what this second clock is for.

> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg

Why would the input clocks be optional?

> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cru: clock-controller@ff4a0000 {

nit: the cru label is not used and can be dropped.

Cheers,
Conor.

> +        compatible =3D "rockchip,rk3528-cru";
> +        reg =3D <0xff4a0000 0x30000>;
> +        #clock-cells =3D <1>;
> +        #reset-cells =3D <1>;
> +    };
> --=20
> 2.46.0
>=20

--LpLEFlOKzmxoZNpJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvwjWwAKCRB4tDGHoIJi
0twHAQDGDkJmBUzJ7TXWGcm3XpVcqeWB6JH7/q2SJ0qwswk1vgD/U/mkhch0PiJd
rYjWApKo7QL6xeuBxqg5jLddq1kyRQY=
=zEFx
-----END PGP SIGNATURE-----

--LpLEFlOKzmxoZNpJ--


--===============4415211716264461991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4415211716264461991==--

