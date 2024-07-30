Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEFF2C3DA70
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 19:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3KCmY2lh1CqLsGtK3D/O93gjfESUD3MPB2mZU1zh0k=; b=jK+HDyO/b5zlZ/
	d0lysJ2HdACFs2GuVef0KNZJsA3dPgIi1ref5cg/AhnSuZSoHGUBTudB2BNyOfwjs5tlHlObiUmYz
	RnhTTodZECBlUv8peoVyHkmTIv63Hx+WEnafad8U4OpR37trBHbNQv5tYuo044SWrvSnmmj1puYeI
	weIrC8Zs7CKF6nZgkuV2jrKSpIOdwb8FUKRVWSKZS0/4mabB/1fpn2lJ4SNbmTKa4otEft7d6S6eh
	9B2F+LyehFkao0g4nuKFgAwJuDcOWReaPHD8OxYsGdy2zmOTFHno+01ycfUD4gLDKPkEL7FSs5V1i
	mo09q6mZ53mBwZ3SK+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYsQX-0000000GGK8-2nSl;
	Tue, 30 Jul 2024 19:22:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYsQ4-0000000GGBc-3cd3;
	Tue, 30 Jul 2024 19:22:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1823F62044;
	Tue, 30 Jul 2024 19:22:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 844B1C32782;
	Tue, 30 Jul 2024 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722367319;
	bh=+z+uSHvXptbqQUkxjz2xHQBFc5+LBea44Cmnih2JyhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hjsitjvai+UJvADhTVoItn0LWY29Z+U4fZJHcAtyws2IZgMZE6+zAvgcmahmMEV4+
	 bieUMCkz1FBPIlJdYxeqFdWYFE8psyljSxElFLoTJhHtpz4LJ821iyp4vi5O2qVdP8
	 vfQ2hKuVKYu27eSn4sNREMwrmaHzkKk3rHqcxBq4SwKxI6HsdrZxskOyyfrRCZEg5k
	 wKT9cSlpSduIqxommeu2bUcnqHXxuLTIKx8yUvW9ISijsYnDfxlPvNjTDIjLSisvlU
	 kEhPmeA95nSZjvg9dLw3wh0YSV79d1O9gSRvVTYUWyeeqSKa7mC/6l0qkMk5BcxjlN
	 FGoWydeWRMhRQ==
Date: Tue, 30 Jul 2024 13:21:58 -0600
From: Rob Herring <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	David Jander <david.jander@protonic.nl>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 01/21] dt-bindings: can: rockchip_canfd: add
 binding for rockchip CAN-FD controller
Message-ID: <20240730192158.GA2001115-robh@kernel.org>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-1-fa1250fd6be3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729-rockchip-canfd-v1-1-fa1250fd6be3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_122201_057721_462474F1 
X-CRM114-Status: GOOD (  19.99  )
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

On Mon, Jul 29, 2024 at 03:05:32PM +0200, Marc Kleine-Budde wrote:
> Add the binding of the rockchip rk3568 CAN-FD controller to the device
> tree bindings documentation.

Subject line space is valuable. Don't say 'binding' twice. Or anything 
else for that matter. 

> Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  .../bindings/net/can/rockchip,canfd.yaml           | 76 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 ++
>  2 files changed, 83 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> new file mode 100644
> index 000000000000..85f7ea68d8b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/can/rockchip,canfd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title:
> +  Rockchip CAN-FD controller
> +
> +maintainers:
> +  - Marc Kleine-Budde <mkl@pengutronix.de>
> +
> +allOf:
> +  - $ref: can-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3568-canfd
> +      - items:
> +          - enum:
> +              - rockchip,rk3568v2-canfd
> +              - rockchip,rk3568v3-canfd
> +          - const: rockchip,rk3568-canfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: baudclk

Just 'baud'

> +      - const: apb_pclk

apb or pclk.

> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: can
> +      - const: can-apb

They are always for 'can' so that's redundant. I guess it is fine on 
the first entry, but definitely drop on the 2nd. Or do 'core' and 'apb'.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        can0: can@fe570000 {
> +            compatible = "rockchip,rk3568-canfd";
> +            reg = <0x0 0xfe570000 0x0 0x1000>;
> +            interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
> +            clock-names = "baudclk", "apb_pclk";
> +            resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
> +            reset-names = "can", "can-apb";
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c0a3d9e93689..d225dc39bd89 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19694,6 +19694,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  
> +ROCKCHIP CAN-FD DRIVER
> +M:	Marc Kleine-Budde <mkl@pengutronix.de>
> +R:	kernel@pengutronix.de
> +L:	linux-can@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> +
>  ROCKCHIP CRYPTO DRIVERS
>  M:	Corentin Labbe <clabbe@baylibre.com>
>  L:	linux-crypto@vger.kernel.org
> 
> -- 
> 2.43.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
