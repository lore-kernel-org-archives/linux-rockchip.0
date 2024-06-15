Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43A48C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 22:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZv1JL3Nd87uhmVNetIv7tbAao6XTsSi/oBhqvFQPJw=; b=xjgYcZFo6c4EQl
	G3wSzFTZQU85fRL9g8JlTNZuFwaI9MKgnK30KtT9rPhJREPrXZ3j9heXSFrBzs91KjdZsStR+lL9j
	nqMbDq6D2ltMEoHQvBdoi4ing+Tu03VoInbL++H7lWltcM9fVjm7197DPDp/PkAmsPOEgv/Qv+xH+
	pexOSUAKr1btxOJVo7sHvgcMQst5jfMNHFsI8HjYT2gtVW8PIR4nSzvQoFtva2fcMOVWoe7WGY7IT
	Gjh5QYE5W/81Lk/E9sp8oKCzZLRGf/hHfJ4wRbCePj0ufLhbVavV/jjyusTKa999zOzcqidQuka7R
	GoiAlpyuJ6xhcK/oY6sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIcMF-00000006FCT-1YE8;
	Sat, 15 Jun 2024 22:58:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIcMC-00000006FBZ-0Dwz;
	Sat, 15 Jun 2024 22:58:49 +0000
Received: from 79-98-74-242.sys-data.com ([79.98.74.242] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sIcLe-00022x-WA; Sun, 16 Jun 2024 00:58:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
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
Date: Sun, 16 Jun 2024 00:58:13 +0200
Message-ID: <4352466.CQOukoFCf9@phil>
In-Reply-To: <14930500.uLZWGnKmhe@arisu>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <442bbb41-40ed-4e6c-b854-02b636f09fc3@kwiboo.se> <14930500.uLZWGnKmhe@arisu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_155848_098567_56352B6B 
X-CRM114-Status: GOOD (  26.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 15. Juni 2024, 21:49:21 CEST schrieb Detlev Casanova:
> On Saturday, June 15, 2024 4:11:00 A.M. EDT Jonas Karlman wrote:
> > Hi Detlev,
> > 
> > On 2024-06-15 03:56, Detlev Casanova wrote:
> > > Document the Rockchip RK3588 Video Decoder 2 bindings.
> > 
> > Why the need for a new schema file and not just extending existing
> > rockchip,vdec.yaml with a new compatible and the new clock?
> 
> Yes, that can work as well indeed. I wasn't sure if different drivers could 
> share a schema file.
> 
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > > 
> > >  .../bindings/media/rockchip,vdec2.yaml        | 80 +++++++++++++++++++
> > >  1 file changed, 80 insertions(+)
> > >  create mode 100644
> > >  Documentation/devicetree/bindings/media/rockchip,vdec2.yaml> 
> > > diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> > > b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml new file
> > > mode 100644
> > > index 000000000000..e54891b46986
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> > > @@ -0,0 +1,80 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Video Decoder 2 (VDec2)
> > > +
> > > +maintainers:
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +
> > > +description: |-
> > > +  The Rockchip rk3588 has a stateless Video Decoder that can decodes
> > > H.264, +  HEVC, VP9 and AVS2 streams.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3588-vdec2
> > 
> > I fail to see the need to call this vdec2 instead of established vdec.
> > 
> > Suggest this is changed to rockchip,rk3588-vdec.
> 
> Wouldn't that be misleading if rockchip,rk3399-vdec and rockchip,rk3588-vdec 
> use different drivers ?

Devicetrees and their binding don't care about how operating system
implement things in drivers. 

While they come with the Linux-kernel most of the time, they are pretty
much independent from implementation details.


> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: The Video decoder AXI interface clock
> > > +      - description: The Video decoder AHB interface clock
> > > +      - description: The Video decoder core clock
> > > +      - description: The Video decoder CABAC clock
> > > +      - description: The Video decoder HEVC CABAC clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: axi
> > > +      - const: ahb
> > > +      - const: core
> > > +      - const: cabac
> > > +      - const: hevc_cabac
> > > +
> > > +  assigned-clocks: true
> > > +
> > > +  assigned-clock-rates: true
> > > +
> > > +  power-domains:
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +  - power-domains
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> > > +    #include <dt-bindings/power/rk3588-power.h>
> > > +
> > > +    vdec2: video-codec@fdc38100 {
> > > +        compatible = "rockchip,rk3588-vdec2";
> > > +        reg = <0x0 0xfdc38100 0x0 0x500>;
> > > +        interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +        clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru
> > > CLK_RKVDEC0_CORE>, +                 <&cru CLK_RKVDEC0_CA>, <&cru
> > > CLK_RKVDEC0_HEVC_CA>; +        clock-names = "axi", "ahc", "core",
> > > +                      "cabac", "hevc_cabac";
> > > +        assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> > > +                          <&cru CLK_RKVDEC0_CA>, <&cru
> > > CLK_RKVDEC0_HEVC_CA>; +        assigned-clock-rates = <800000000>,
> > > <600000000>,
> > > +                               <600000000>, <1000000000>;
> > > +        power-domains = <&power RK3588_PD_RKVDEC0>;
> > 
> > iommus and resets seem to be missing?
> 
> Indeed, even if their are not used yet, I'd make sens to already have them 
> here to stabilize the device tree, right ?

correct. DT only ever describes the hardware. And while it is possible
to extend bindings later, having the obvious things in it from the start
makes a lot of sense.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
