Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82164C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 16:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cCtT41ANxptXzFua11mHdKMNeYkfWM0MT4WYGVz0hfM=; b=0cS8s1o4mqW4TMBBehovgpbDBA
	OwANi5Dun9zA/6Zdf8UkbLzCftBK4je1+ZlaGn1VngYxo5F+kWMwzQwO9lGthyeLKJEsBI5h5iWXX
	2t45N6iBsUVET4pCK+mrHBs253HBFxt+NKRO8xfhf2Ms184FlMq03YliDBGZS/l7+i370cry1pF0t
	54YW1TuGfhmBHoezCDqr7PL+DWyUz1lCBwhylPnVqoNpIJjD9kmu7K3tcZhaalnqId67ghP7MaZ8J
	1bRs+pFFooEXGKYR1TcpCxdaqVR51W3cIcKJSO2X5wPVwj2PIwdFcyluGcSeVUNu9un+u8IGjBfic
	nSsY2P8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQv2-0000000DOZB-2B4s;
	Wed, 12 Jun 2024 16:33:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQuw-0000000DOXm-2nzF;
	Wed, 12 Jun 2024 16:33:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E7E65614EA;
	Wed, 12 Jun 2024 16:33:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB245C116B1;
	Wed, 12 Jun 2024 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718210024;
	bh=MsFhjqz8K5lYmvWMxKf4C54DDbJX7oTJcO1G+HwBc7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A/A94sjnqFJGlbWmyQihVESPvg0PkCzVg1I4nQ02bgdav01il2R4ztGU6aU1UtPu/
	 Cs7+1wksCp1mR6a3UAo/RXqX6mAnbdQq/EM7sUMrYJITwL+5zYgHjMDVKfrHruUtAS
	 RnKDLhiXr05X3ho1yjomQFzqaIygS4HZ7MG0bWdbCTUtytX3JebZ9DKFwtDhCSolWW
	 1k42z7ipJMuR+qpDMWSijcqlC0NW3Asz1Nu/CewdfjZc/Zxnbo6V6TMnINfI7sBD6Z
	 t8dFtbqr/dU/rB2CciVugp0ioOhNDk0/SW+HlKHKWiZeSic/siy3CXc6X/aAByuPHR
	 KXtLiW/YqCk3A==
Date: Wed, 12 Jun 2024 17:33:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 3/9] dt-bindings: mailbox: rockchip,rknn: Add bindings
Message-ID: <20240612-thread-throng-a4a14ce0c6e8@spud>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
In-Reply-To: <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_093346_821145_F06C5D6D 
X-CRM114-Status: GOOD (  18.15  )
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
Content-Type: multipart/mixed; boundary="===============2660840334792531690=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2660840334792531690==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XO+bVuaSKPlkL0L7"
Content-Disposition: inline


--XO+bVuaSKPlkL0L7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 03:52:56PM +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
>=20
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../devicetree/bindings/npu/rockchip,rknn.yaml     | 123 +++++++++++++++=
++++++
>  1 file changed, 123 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml b/D=
ocumentation/devicetree/bindings/npu/rockchip,rknn.yaml
> new file mode 100644
> index 000000000000..570a4889c11c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/npu/rockchip,rknn.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Neural Processing Unit IP from Rockchip, based on NVIDIA's NVDLA
> +
> +maintainers:
> +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> +
> +description: |+

The |+ chomping operator is not needed here.

> +  Rockchip IP for accelerating inference of neural networks, based on NV=
IDIA's open source NVDLA IP.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3588-rknn
> +      - const: rockchip,rknn
> +
> +  reg:
> +    description: Base registers for NPU cores
> +    minItems: 1
> +    maxItems: 20

For all of these properties, you need to describe the individual items.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 20
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 1
> +    maxItems: 20
> +
> +  reset-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domain-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  iommus:
> +    items:
> +      - description: IOMMU for all cores
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - assigned-clocks
> +  - assigned-clock-rates
> +  - resets
> +  - reset-names
> +  - power-domains
> +  - power-domain-names
> +  - iommus
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        rknn: npu@fdab0000 {

Drop the label here, it's not used.

> +          compatible =3D "rockchip,rk3588-rknn", "rockchip,rknn";
> +          reg =3D <0x0 0xfdab0000 0x0 0x9000>,
> +                <0x0 0xfdac0000 0x0 0x9000>,
> +                <0x0 0xfdad0000 0x0 0x9000>;
> +          interrupts =3D <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names =3D "npu0_irq", "npu1_irq", "npu2_irq";
> +          clocks =3D <&scmi_clk 0>, <&cru 1>,
> +                   <&cru 2>, <&cru 3>,
> +                   <&cru 4>, <&cru 5>,
> +                   <&cru 6>, <&cru 7>;
> +          clock-names =3D "clk_npu",
> +                  "aclk0", "aclk1", "aclk2",
> +                  "hclk0", "hclk1", "hclk2",
> +                  "pclk";
> +          assigned-clocks =3D <&scmi_clk 0>;
> +          assigned-clock-rates =3D <200000000>;
> +          resets =3D <&cru 0>, <&cru 1>, <&cru 2>,
> +                   <&cru 3>, <&cru 4>, <&cru 5>;
> +          reset-names =3D "srst_a0", "srst_a1", "srst_a2",
> +                        "srst_h0", "srst_h1", "srst_h2";
> +          power-domains =3D <&power 0>, <&power 1>, <&power 2>;
> +          power-domain-names =3D "npu0", "npu1", "npu2";
> +          iommus =3D <&rknpu_mmu>;

> +          status =3D "disabled";

A disabled example is useless.

> +        };
> +    };
> +...
>=20
> --=20
> 2.45.2
>=20

--XO+bVuaSKPlkL0L7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmnN4QAKCRB4tDGHoIJi
0mrlAP9TxBQhVfDfgrJQbQo60aSn0bl4zIUbk97NiOySlHcMagD+P4zYal5XytkL
kBIJ4zmFrRDcfCNFjF3XIqExV8y20gI=
=Z+Wc
-----END PGP SIGNATURE-----

--XO+bVuaSKPlkL0L7--


--===============2660840334792531690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2660840334792531690==--

