Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01377CD6E57
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 15:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+wEL+SsAqV6M/Si7hXAS1fgT1xi3zj+Qm6sQRgeDSV8=; b=aeskN8F8fw49gGBGIFMtRPDSFc
	bMZCYM5clJf8vPv34vnPG7xiWZZoFSmeHRSw9RZ60S+mvEOMgzSpTy1rG7usVyD+KsptnRhzOMy4h
	zHhrZ38XQ4rtPFucoeStXREFU6k8sBxpHKPGSeF0Ano0/uCFXYHauClGmlNSYNUe68GdzgFO7/8bP
	EJRa3vcSL5pyksUihdmSxM3wyr1308LydANh6HKtif4f4bScXJZcfqxhoKNUmWl50yWNVr+CbHpth
	wS3v6NbjxCCkG5DwXG0BqRpfUF8sL0Hv8jSQymXYTLI2cADk0IblAJL9ovbIKbgEaH3E7BAQEsISv
	OQ/6nxqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqbZ7-00GDrV-1O;
	Wed, 11 Oct 2023 15:56:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqbZ3-00GDpw-2h;
	Wed, 11 Oct 2023 15:56:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB5E9CE2461;
	Wed, 11 Oct 2023 15:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D5EBC433C9;
	Wed, 11 Oct 2023 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697039758;
	bh=l9SFEh6GumGFUG+DXwfjem9vY8NkT0tXT2M7UKxvr+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ixz6+3ToD5gCvDW97nhaKCvGkg+zuAa66qnUIYhJxKe8kNBhHm2Kcov3Ggelcst9i
	 gCuJyp9AUNk/QELshcUjFj0lTDxx2hxty9VRcvCceAtmIYNmsQaSYciVbweYPfD+QT
	 PaAS5v9GBATPOL+MQPemncG7EnSSAETrqt1nMcyVyZho0hjP69D9eJHZcSPQLh0gLq
	 Zcwghmsthja+tv1QeN0SZmKhbZ87cTA90Ijeuct3i+wfsAUXKNED9EUCKIKU5HBlwY
	 DqbyU8yLOZk9J+mr71itTN70mVjLDa/ElG2Fn+OZAaLbYJefXMY+gAPTBnvyrilY3U
	 vhMRPbSWgnBQQ==
Date: Wed, 11 Oct 2023 16:55:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: media: Document STM32MP25 VDEC &
 VENC video codecs
Message-ID: <20231011-jogger-designing-0eb6e2daacba@spud>
References: <20231010091643.3666290-1-hugues.fruchet@foss.st.com>
 <20231010091643.3666290-2-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <20231010091643.3666290-2-hugues.fruchet@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_085602_213357_0E61079C 
X-CRM114-Status: GOOD (  17.59  )
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
Content-Type: multipart/mixed; boundary="===============2151422441098615193=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2151422441098615193==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HQXQfP5KdaxdfgWJ"
Content-Disposition: inline


--HQXQfP5KdaxdfgWJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Tue, Oct 10, 2023 at 11:16:39AM +0200, Hugues Fruchet wrote:
> Add STM32MP25 VDEC video decoder & VENC video encoder bindings.
>=20
> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> ---
>  .../media/st,stm32mp25-video-codec.yaml       | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-=
video-codec.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/st,stm32mp25-video-c=
odec.yaml b/Documentation/devicetree/bindings/media/st,stm32mp25-video-code=
c.yaml
> new file mode 100644
> index 000000000000..479566171568
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32mp25-video-codec.ya=
ml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32mp25-video-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32MP25 VDEC video decoder & VENC video enco=
der
> +
> +maintainers:
> +  - Hugues Fruchet <hugues.fruchet@foss.st.com>
> +
> +description:
> +  The STMicroelectronics STM32MP25 SOCs embeds a VDEC video hardware
> +  decoder peripheral based on Verisilicon VC8000NanoD IP (former Hantro =
G1)
> +  and a VENC video hardware encoder peripheral based on Verisilicon
> +  VC8000NanoE IP (former Hantro H1).
> +
> +properties:
> +  compatible:
> +    items:

This "items:" is not needed, the enum on its own is enough.

> +      - enum:
> +          - st,stm32mp25-vdec
> +          - st,stm32mp25-venc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    vdec: video-codec@580d0000 {

The node labels for both nodes here are not used & should be dropped.

Otherwise, this seems fine to me.

Cheers,
Conor.

> +        compatible =3D "st,stm32mp25-vdec";
> +        reg =3D <0x580d0000 0x3c8>;
> +        interrupts =3D <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks =3D <&ck_icn_p_vdec>;
> +    };
> +  - |
> +    venc: video-codec@580e0000 {
> +        compatible =3D "st,stm32mp25-venc";
> +        reg =3D <0x580e0000 0x800>;
> +        interrupts =3D <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks =3D <&ck_icn_p_venc>;
> +    };
> --=20
> 2.25.1
>=20

--HQXQfP5KdaxdfgWJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSbFhgAKCRB4tDGHoIJi
0t0uAQCP6ge+y1j9+kMRyc0k7z2mmqF+5BxIUEKWEn3WUxp1vgD+NYj7GsuoXHij
EdPldWL1H+xzD4wuI5OWRDd2WLQiMQY=
=H1kq
-----END PGP SIGNATURE-----

--HQXQfP5KdaxdfgWJ--


--===============2151422441098615193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2151422441098615193==--

