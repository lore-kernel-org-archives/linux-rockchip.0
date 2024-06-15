Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD87C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 19:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0mcUe5WOEhE1aMosuOOgKlRg+gZaHhZeDizcmQ107X4=; b=Vr8et5iSKxVmQTw05fMW1pbQc0
	vQEiuXMpAghyq9IgvOv1otNSGVbVitnBLlwtzA6LO2S29/DZ0lZCOQhYmWDUvueJoUM1X9ODeeSAI
	EFTFafxmFOyk9sFvFKLVXYPtkf/4WT46VW5qIPo8G3gw8fcloG6LnjUPXHsss18HTlMTndvWXMEAH
	dKeqMgvXQo00WBMuZEedOhTxUcI1Zrk0iyvYmsr2RzxUOLWIAr8BQiMX+1682ohVrwD8fplZiOkvg
	4fWvC5899YnIj7svQuEQ66vJ4U3xLhPeU1yhImcJ0zq8erLufA1OHXYR689eF4d4erM2jsa/mAo+v
	lNpuD78w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZPS-000000061Mz-1lLm;
	Sat, 15 Jun 2024 19:49:58 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZPO-000000061M5-0g5V;
	Sat, 15 Jun 2024 19:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718480992;
	bh=M+EquCU77vpXNsiviw2+UdszY5nLQ9w+gp/15wunGTg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WiS3IJjxIqpI3wnJOQAsXcTRGOLGzgKCy3vCvLo5yYy9WkkHrSqeRWNC6cf1g8DOA
	 GxTEab6bgHxPPMpW4fpRDAlSdeWUyIxuiYfAKM+7SrsZIh8rCfOnUjE5dydXIbMnmL
	 +ctcNx4tAhjz7ayPeqrNvg+DMf/z29cXy/7fVx3vOh2HCzloqImaR0q9Ncr+2cesVI
	 0YCRXBxEsJNMHUK+vF+gpXQ+JKIDGOAisL73GCh1XD+Sr+DuVePn+2+VEUBxU6tI0u
	 NRQeJ1UFNeQ0QBU7s7GsN5Hw8MvpwSs3iTKR2BIMJFUFjrVsK9jF3w4Jj0xJekjTUD
	 BapoExQN38+4A==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7A88537806BA;
	Sat, 15 Jun 2024 19:49:49 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 2/3] media: dt-bindings: rockchip: Document RK3588 Video Decoder 2
 bindings
Date: Sat, 15 Jun 2024 15:49:21 -0400
Message-ID: <14930500.uLZWGnKmhe@arisu>
Organization: Collabora
In-Reply-To: <442bbb41-40ed-4e6c-b854-02b636f09fc3@kwiboo.se>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-3-detlev.casanova@collabora.com>
 <442bbb41-40ed-4e6c-b854-02b636f09fc3@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_124954_372559_F1CD0161 
X-CRM114-Status: GOOD (  21.62  )
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
Content-Type: multipart/mixed; boundary="===============5324602574616538163=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5324602574616538163==
Content-Type: multipart/signed; boundary="nextPart4336728.e9J7NaK4W3";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4336728.e9J7NaK4W3
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Date: Sat, 15 Jun 2024 15:49:21 -0400
Message-ID: <14930500.uLZWGnKmhe@arisu>
Organization: Collabora
In-Reply-To: <442bbb41-40ed-4e6c-b854-02b636f09fc3@kwiboo.se>
MIME-Version: 1.0

On Saturday, June 15, 2024 4:11:00 A.M. EDT Jonas Karlman wrote:
> Hi Detlev,
> 
> On 2024-06-15 03:56, Detlev Casanova wrote:
> > Document the Rockchip RK3588 Video Decoder 2 bindings.
> 
> Why the need for a new schema file and not just extending existing
> rockchip,vdec.yaml with a new compatible and the new clock?

Yes, that can work as well indeed. I wasn't sure if different drivers could 
share a schema file.

> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  .../bindings/media/rockchip,vdec2.yaml        | 80 +++++++++++++++++++
> >  1 file changed, 80 insertions(+)
> >  create mode 100644
> >  Documentation/devicetree/bindings/media/rockchip,vdec2.yaml> 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> > b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml new file
> > mode 100644
> > index 000000000000..e54891b46986
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> > @@ -0,0 +1,80 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Video Decoder 2 (VDec2)
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +description: |-
> > +  The Rockchip rk3588 has a stateless Video Decoder that can decodes
> > H.264, +  HEVC, VP9 and AVS2 streams.
> > +
> > +properties:
> > +  compatible:
> > +    const: rockchip,rk3588-vdec2
> 
> I fail to see the need to call this vdec2 instead of established vdec.
> 
> Suggest this is changed to rockchip,rk3588-vdec.

Wouldn't that be misleading if rockchip,rk3399-vdec and rockchip,rk3588-vdec 
use different drivers ?

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: The Video decoder AXI interface clock
> > +      - description: The Video decoder AHB interface clock
> > +      - description: The Video decoder core clock
> > +      - description: The Video decoder CABAC clock
> > +      - description: The Video decoder HEVC CABAC clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: axi
> > +      - const: ahb
> > +      - const: core
> > +      - const: cabac
> > +      - const: hevc_cabac
> > +
> > +  assigned-clocks: true
> > +
> > +  assigned-clock-rates: true
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> > +    #include <dt-bindings/power/rk3588-power.h>
> > +
> > +    vdec2: video-codec@fdc38100 {
> > +        compatible = "rockchip,rk3588-vdec2";
> > +        reg = <0x0 0xfdc38100 0x0 0x500>;
> > +        interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru
> > CLK_RKVDEC0_CORE>, +                 <&cru CLK_RKVDEC0_CA>, <&cru
> > CLK_RKVDEC0_HEVC_CA>; +        clock-names = "axi", "ahc", "core",
> > +                      "cabac", "hevc_cabac";
> > +        assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> > +                          <&cru CLK_RKVDEC0_CA>, <&cru
> > CLK_RKVDEC0_HEVC_CA>; +        assigned-clock-rates = <800000000>,
> > <600000000>,
> > +                               <600000000>, <1000000000>;
> > +        power-domains = <&power RK3588_PD_RKVDEC0>;
> 
> iommus and resets seem to be missing?

Indeed, even if their are not used yet, I'd make sens to already have them 
here to stabilize the device tree, right ?

> Regards,
> Jonas
> 
> > +    };
> > +
> > +...


--nextPart4336728.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZt8EEACgkQ5EFKUk4x
7bYTjwf/WIXcKCh+lwWCSb/nP+Pedu5hxyDwmSu0tAWPxXIRAiy4tZ74YAE4B18G
/LVHurAn3+ohMhynIYmtVUIBlMPm/NMWF4MCFNVSzF9m1zoTFnmifEfuxtTz/a1S
yrsSVzsHcXQXPjBPEFbGPuKUtt38sNzPt7SoFDe57C61m3h6XIliaqTgwo3yPUbA
I1l4GJ7RfH6b1qLTMT6fyMwxmBBRVnp7RyidYfV5ZTD1asMESeYVY0rh/eamTAIo
J7NQYopY0Cdf58Tm2MvTWRDVygr155SBVAo/t9gnnhbKPgI4h5mLOekQ8HMNlrAx
TVWFJm/9LkkH52jhjBJu6Fqc0TQiZA==
=GMcL
-----END PGP SIGNATURE-----

--nextPart4336728.e9J7NaK4W3--





--===============5324602574616538163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5324602574616538163==--




