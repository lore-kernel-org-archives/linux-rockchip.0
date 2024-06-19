Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F29DAC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 17:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=erHpeytGnmfyaUo5wlrIL8XyiPa6iEpPe3oRDtBH0sk=; b=DysNUQ7+AG7CnheHSUPoW1izjm
	BZwBNUn9ez8V+kwlNO840+6+0dDLfhPdqSqmxb2s7wGc/NWKTRMz+k9Jt1ehX+1+H6LpTUfMhJnhZ
	IVTvee3/fEsaQ8JMREYBreFeN/QPC7zMFxtE0+NY96o87IaN7YO0cgehSJqpcPVUmg+KtxIyGM7Sr
	Z3gCYe+T93tv+YH5qENZ5/wA4cow6r6pZSNfzToWK0I4imeGFbs9Jj1kojrqH3g3vOVGLCNdyDB+d
	cfmFo4ZmhfsoqM7saeIAG96gHpEGvZGOPhk1J/iRYGTIWyLMU8pxmoonkeojRgmChMM458aOuoYUC
	vL7gvGzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzFe-00000002FIr-1nVb;
	Wed, 19 Jun 2024 17:37:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzFa-00000002FI2-3pQs;
	Wed, 19 Jun 2024 17:37:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3815561F26;
	Wed, 19 Jun 2024 17:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18216C2BBFC;
	Wed, 19 Jun 2024 17:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718818657;
	bh=aTTUFWcg2KfCBZQyUcLHsG1W9EOcEhA72GIkli1rAjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkZWXkYJ0650nk3Skne+YMQ35tM8hYlNF/QdJudkzL5FQEGh9y8n9bIx/GD8NGEnF
	 HzwuWFbOguznxmS/U05NEwW5vU1s4K+hkxKxDGRcWhukZpYfOc9m7ejAbS0wpXV4ze
	 OLTMg9cSzBIIyCbazuXgXQ0XfvoRfP+tLLSjUw0GpVk/GARc9AInzn7qi0d/NRq2JO
	 fhQCcUQng/ytMYTofKBIjReTdqceA+J7O+ywCjmksm2q3+rn+OI66AF5FJMeoQfTJb
	 TguBMxEJKYN04aUkmlhrA5b6HN4TTKwNf5UvWE9QQwVuzRbLl1tHpdAMErHzW/tUau
	 Sc7I4W4Yn+8JQ==
Date: Wed, 19 Jun 2024 18:37:31 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 3/4] media: dt-bindings: rockchip: Document RK3588
 Video Decoder bindings
Message-ID: <20240619-contently-demote-769bf48d7eb6@spud>
References: <20240619150029.59730-1-detlev.casanova@collabora.com>
 <20240619150029.59730-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240619150029.59730-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_103739_064622_E3B86386 
X-CRM114-Status: GOOD (  17.23  )
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
Content-Type: multipart/mixed; boundary="===============8884808400652095487=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8884808400652095487==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="D5HLkMsx9LZ0D828"
Content-Disposition: inline


--D5HLkMsx9LZ0D828
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 10:57:20AM -0400, Detlev Casanova wrote:
> Document the Rockchip RK3588 Video Decoder bindings.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/media/rockchip,vdec.yaml         | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b=
/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 08b02ec16755..22cb62faaa9b 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      oneOf:
>        - const: rockchip,rk3399-vdec
> +      - const: rockchip,rk3588-vdec
>        - items:
>            - enum:
>                - rockchip,rk3228-vdec
> @@ -30,29 +31,56 @@ properties:
>      maxItems: 1
> =20
>    clocks:
> +    minItems: 4
>      items:
>        - description: The Video Decoder AXI interface clock
>        - description: The Video Decoder AHB interface clock
>        - description: The Video Decoded CABAC clock
>        - description: The Video Decoder core clock
> +      - description: The Video decoder HEVC CABAC clock
> =20
>    clock-names:
> +    minItems: 4
>      items:
>        - const: axi
>        - const: ahb
>        - const: cabac
>        - const: core
> +      - const: hevc_cabac
> =20
>    assigned-clocks: true
> =20
>    assigned-clock-rates: true
> =20
> +  resets:
> +    items:
> +      - description: The Video Decoder AXI interface reset
> +      - description: The Video Decoder AHB interface reset
> +      - description: The Video Decoded CABAC reset
> +      - description: The Video Decoder core reset
> +      - description: The Video decoder HEVC CABAC reset
> +
> +  reset-names:
> +    items:
> +      - const: rst_axi
> +      - const: rst_ahb
> +      - const: rst_cabac
> +      - const: rst_core
> +      - const: rst_hevc_cabac
> +
>    power-domains:
>      maxItems: 1
> =20
>    iommus:
>      maxItems: 1
> =20
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: |
> +      phandle to a reserved on-chip SRAM regions.
> +      Some SoCs, like rk3588 provide on-chip SRAM to store temporary
> +      buffers during decoding.
> +
>  required:
>    - compatible
>    - reg
> @@ -61,6 +89,24 @@ required:
>    - clock-names
>    - power-domains
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-vdec
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5
> +        clock-names:
> +          minItems: 5
> +
> +        resets:
> +          minItems: 5
> +        reset-names:
> +          minItems: 5

You need an else clause here to restrict sram, resets on the other
platforms and to cap clocks at maxItems: 4.

Thanks,
Conor.

--D5HLkMsx9LZ0D828
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnMXWgAKCRB4tDGHoIJi
0unCAQC2SBHJSe0kI6JV8OXZNtLluXhS2J4UwBm+kjbN2zXMugD/Rnr/Zc9PCLvM
lEBc7CW/o9jDLrIyQYTKdCF2lJw0jwc=
=k/38
-----END PGP SIGNATURE-----

--D5HLkMsx9LZ0D828--


--===============8884808400652095487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8884808400652095487==--

