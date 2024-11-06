Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D1FD44D78
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JILHx6UPG272WXsMAdTutigstF+YS4Pnd+0bsyVorI8=; b=srUBJ8hseuVwaSstM94YIf8SFx
	wv9AleZaSu9EFo5wg4hcfMwWMB8hwhXAIapeG9zZtSc8Fzo0SJyLzwI/irN9gznwSDPB6i/y2n9cu
	tTP9oLArHCIyazy89tJxiw45QqVZkjKQODJf7rBsgzeIkITgE4N/y3jRvwqsjR8GHSGZ8wjsxTjH6
	87vA+kA6Km6O05s3nGZB23waUXI2829LssLX9ag0uyz2t9uGPkwG9ecSogSS6FZE3b/f0mgWPhho0
	UshqDmpS4/Ef/+fWWQ+JlRWkxuVuROnqk7R8+1GKG4CPneH7W72CLDdPxVihvnvf0E+ahHvgSwpLB
	1U2xTurw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gxl-00000003agc-0jtL;
	Wed, 06 Nov 2024 14:24:49 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gqU-00000003ZPg-3Jxz
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Nov 2024 14:17:20 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1730902636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sdmqNqqp4Bk7buEsWzjxk7mkEA62rn6czo4XC8c0f/Q=;
	b=u+LcAaXyxYZ1m5RiP1Q6G4WEQS06mhDv0LvBxdrkpeyfdAWqHbev4lfFLZhV3OrmnQC9vo
	qf3VfilxFSAJEFs3p2N9BlbKWXtgG2PCOUkgkBaj/Fy2fAYk0RyhKT3EYgyN1w6y0Ur9FA
	ht7w0lw1sg8wv2Bl4XQu+kToVM3pK2lYfeaHXZSh1WGj6973fbCUoLLBH3YTZVRx/0WCkq
	rFOYgk8eicCxYfCL5y8xGko3wWZtD8wLtwSkNJdQ28QYRtxfFOKoQK44n592ptKmBnNIM+
	duIlk1CHEAOqUnC3KtcSYxifGZ4qw2Rvl5C9JGfJm+AMeEAc2PpP8QAbb2ddsQ==
Date: Wed, 06 Nov 2024 15:17:02 +0100
Message-Id: <D5F5RRFVMP7R.19G82R4S878IL@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <quentin.schulz@cherry.de>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY
 schema
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <vkoul@kernel.org>,
 <kishon@kernel.org>
References: <20241104111121.99274-1-heiko@sntech.de>
 <20241104111121.99274-2-heiko@sntech.de>
In-Reply-To: <20241104111121.99274-2-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_061719_000368_1BF14FE9 
X-CRM114-Status: GOOD (  16.33  )
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
Content-Type: multipart/mixed; boundary="===============4694026334817891537=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4694026334817891537==
Content-Type: multipart/signed;
 boundary=621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon Nov 4, 2024 at 12:11 PM CET, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
> Add dt-binding schema for the MIPI CSI/DSI PHY found on
> Rockchip RK3588 SoCs.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588=
-mipi-dcphy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-d=
cphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcph=
y.yaml
> new file mode 100644
> index 000000000000..5ee8d7246fa0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.ya=
ml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,rk3588-mipi-dcphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip MIPI CSI/DSI PHY with Samsung IP block
> +
> +maintainers:
> +  - Guochun Huang <hero.huang@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-mipi-dcphy
> +      - rockchip,rk3588-mipi-dcphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ref
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: m_phy
> +      - const: apb
> +      - const: grf
> +      - const: s_phy
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the 'mipi dcphy general register fi=
les'.

Should this dt-binding have a power-domains property?
RK3588 TRM v1.0 part 1 page 1097 has ALIVE(PD_BUS) for
MIPI_DC_PHY0~MIPI_DC_PHY1

FTR: I made a similar remark on another patch sent by Heiko today. While
that was incorrect, I do think it's appropriate for this binding after
which it could also be added to the respective phy nodes in the dts(i)
file(s).

Cheers,
  Diederik

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      phy@feda0000 {
> +        compatible =3D "rockchip,rk3588-mipi-dcphy";
> +        reg =3D <0x0 0xfeda0000 0x0 0x10000>;
> +        clocks =3D <&cru PCLK_MIPI_DCPHY0>,
> +                 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +        clock-names =3D "pclk", "ref";
> +        resets =3D <&cru SRST_M_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0_GRF>,
> +                 <&cru SRST_S_MIPI_DCPHY0>;
> +        reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +        rockchip,grf =3D <&mipidcphy0_grf>;
> +        #phy-cells =3D <0>;
> +      };
> +    };


--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZyt6YwAKCRDXblvOeH7b
bi/sAPkBV9EJ6lxI2snofBThwqWbOjtpT4jPd/NnpQy6YWvmEQEAoUUz2gsMxZzy
NTI0fYtiF0lrdWJnjQbXBvaGYJy3jww=
=aVJh
-----END PGP SIGNATURE-----

--621d1a8e6e304e3c77a7347e6f41048798e325c45aa75fa6ab48b67fb5d0--


--===============4694026334817891537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4694026334817891537==--

