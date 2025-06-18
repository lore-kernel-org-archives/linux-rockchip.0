Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86814C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 17:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FEPosr83TbyZT+kaFV3+loSIQnTqhHrnMa56QzJ7OBI=; b=XeQTugesOBSOb0N24d4rVF0Ifh
	MnyhySA+k1kYtpi7uzEBoSPvmvX2FHL0IQ+5XLLfvC4j3QtBgZ7RupS80wpfToxmzecFotSw5DJLD
	TVZ2tn3RNZ0t5tulRKicf7H1WatkctotH2Tf5SnIRZJyG7ZKbPFx7ldcHz10PQmrJksWodJTp1rmj
	A3Osi68N5NtyLUR/XtkRbTBa2XgaRmQaUh2gC5SrORaIR5Mxa+FePqY9nBLaxkuVhVOWcG7R7+lDS
	wDWfljT50rOEHkJUDCwGETseKv7d55jQ5/IQZaRLx4X9vmM2QC14X40cdgekKJ2vwCDXqcVuVcjN6
	/m9BApeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRwSL-0000000AptT-1mTL;
	Wed, 18 Jun 2025 17:20:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRv91-0000000AetP-2YeF;
	Wed, 18 Jun 2025 15:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GB2paiAGLYNnrfDVK4I79lILy6NFVoAMUpS1p9Hcjbk=; b=D3YRhZNN+eYk5xxqMA1qkt2OLJ
	ns7Snjc8P4yt47Xkc9iu1HSUbRTYKv5FDy8ALKgCqB5zxK0loTlv07OXeXf+xJO97MIMrDg4qtDsd
	Ezv+B/QBM21CxQF/6ka2alZ/LdrO+gscFHpYuYs/UOTnH6PZVBeijU0Xnxy8adK1ZRHhx3IvRzWKB
	kgnV2K8GtpCA717vhKVJw4Mq2PuvWu26VexIMw3jQDrcaaT7OLBst4xI+q2ncw47pPvMil3ocT875
	C3BYXkowD9CVADIgFvGTSC4UzzNyWl+dEM9oyG12QHVUxebq3Cnr1osbIdJYE9gu9Ne7bsqKhQMwt
	U9ECBCMA==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRv8y-00000004AV1-1qNI;
	Wed, 18 Jun 2025 15:56:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AF049A5252C;
	Wed, 18 Jun 2025 15:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64C31C4CEE7;
	Wed, 18 Jun 2025 15:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750262164;
	bh=y14ImL1XP5d71TlD/C03rbujmTDgub3jAIW5DPpjTro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tiTLVs24ov/F6fXLP+VBWrYe/DlTd7uUrvgNJvE1noOe4Py7jE3N21L2npCpagKxj
	 nExCzeEMlhXTJXAd5PrlDJiRiwVgaB7gxJeeuegcH2lmcWK234alCReruO1u/Juw/B
	 aE+jfxwuV0hbkMv/tHdcIhQcYbHH4czrzK53Iurlblvc3kv7DV/budWE4/wsOlpPf4
	 EqGwxR91q5pY3KLD0CwZ7Yw/pYvxKpWqhMYdgz0CZ0eP4cE2/Ad5LIvaLfvnMspi9M
	 V7Do2AdO4783IldIsHnc7v/GesZ44/PelzNtLQjYP6S/qFnOIb4FDlgZ+qwR3y+09y
	 AWEDKk7kL6z+A==
Date: Wed, 18 Jun 2025 16:55:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, jgg@ziepe.ca, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/5] dt-bindings: iommu: verisilicon: Add binding for
 VSI IOMMU
Message-ID: <20250618-tighten-morphing-47953075b131@spud>
References: <20250618140923.97693-1-benjamin.gaignard@collabora.com>
 <20250618140923.97693-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250618140923.97693-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_165608_710271_55C8E203 
X-CRM114-Status: GOOD (  19.66  )
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
Content-Type: multipart/mixed; boundary="===============3178389780890878496=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3178389780890878496==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Z++lINJ27TajwB1V"
Content-Disposition: inline


--Z++lINJ27TajwB1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 04:09:11PM +0200, Benjamin Gaignard wrote:
> Add a device tree binding for the Verisilicon (VSI) IOMMU.
> This IOMMU sits in front of hardware encoder and decoder
> blocks on SoCs using Verisilicon IP, such as the Rockchip RK3588.
>=20
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> changes in version 2:
> - Add a compatible "rockchip,rk3588-av1-iommu"
> - Fix clock-names in binding=20
> - Remove "vsi_mmu" label in binding example.
>=20
>  .../bindings/iommu/verisilicon,iommu.yaml     | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/verisilicon,i=
ommu.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iommu/verisilicon,iommu.ya=
ml b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
> new file mode 100644
> index 000000000000..9ae4a45d76f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iommu/verisilicon,iommu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Verisilicon IOMMU
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
> +
> +description: |+
> +  A Versilicon iommu translates io virtual addresses to physical address=
es for
> +  its associated video decoder.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - verisilicon,iommu
> +          - rockchip,rk3588-av1-iommu

This isn't right. Firstly, the "oneOf: - enum" construct doesn't do
anything. oneOf one item is just the item. Secondly this still allows
verisilicon,iommu in isolation which is not okay. What you actually want
here is
items:
  - const: a
  - const: b

Thirdly, Nicolas mentioned that the version of this iommu is 1.2.0,
which I would like to see reflected in the compatible.

--Z++lINJ27TajwB1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFLhjgAKCRB4tDGHoIJi
0vB/AQCNK4tUJrrBtB91ikBSoiUUESBAhs91t/tLoNI6BezTNwD/TT+xxCi+29w8
EL8ApkHM1NexQn9tJmglNf0tfkz4rwA=
=ASP4
-----END PGP SIGNATURE-----

--Z++lINJ27TajwB1V--


--===============3178389780890878496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3178389780890878496==--

