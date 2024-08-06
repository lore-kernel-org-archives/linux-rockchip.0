Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B0EC52D71
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 16:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMVkDRSbTsIaizGyPNIdEv7hTy1DSHslH0pulcK4o10=; b=w3ipJpkv9AXPS0
	swp5Nbqzqh8JNzSOEgH6/jPLUP/diN9LN6mrQVyQ+eEt/jsDJY2mtPIE8Bd/3RK7B7qHD3jXwQ6zP
	mJ1XRyDquQazMRjkxmgDKs561LgmfDKUHrFlfuRjYo4uVUWh0v2xYV6qsis7UjkJY+AoGrxm2rcAJ
	VAuQi+48IQNnmk/GBEHtgND8qRh3JDK4pkC47aiSJwDCZbpCnx7Gi/ltKvyqjlMjJyXOxOAcdIX6U
	MLL+JIdmwertTve0oTqtG1N711akNryk5qFyMcmX7q79wluSycc3be6OLzTxv7jPgmL1bfV+0xrjy
	4mUt4IPRvBn58NJkoVHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNOl-00000002Od7-1VRS;
	Tue, 06 Aug 2024 16:50:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNOD-00000002OXY-2UuE;
	Tue, 06 Aug 2024 16:50:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 045D7CE0F05;
	Tue,  6 Aug 2024 16:50:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E010C32786;
	Tue,  6 Aug 2024 16:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722963021;
	bh=FFxPz+Zq4k0dEWsAFdsdPEf4umMD6s9dToAnn3i5Faw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rcgeYhJBrYlbH3M0m57xTjrf6egz6fWtJY+YBSjefW7/YuRYVTLxhQEkVH0MyuI21
	 YKWnqXkNZZB7UhNgxe+l6a1elFtLIVeZgEhtrT5kztvvbRqx3a3e6JsowRnjzd8zkI
	 uaAszT420F5Z9WWIZ7xv7yIEWIWHeZ9CUy8EyfZslnzvCs383StpYSkfnoqrn16MYL
	 +5O+t/lHdaSyIGoAf9Ii7NPK7Msqf4BLoJ+8dCH7cjCH+zi8mC54ekEkSVjPnOGHs8
	 HVFbmxaqrrbCSfO1mTMLI9GVD0M0BhlB6V8rIOyuIRSmqsvNtCoDkP7Sl+yQUD7CKz
	 W978rCKWWeQnQ==
Date: Tue, 6 Aug 2024 10:50:20 -0600
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
	David Jander <david.jander@protonic.nl>,
	Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next v2 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
Message-ID: <20240806165020.GA1664499-robh@kernel.org>
References: <20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de>
 <20240731-rockchip-canfd-v2-1-d9604c5b4be8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731-rockchip-canfd-v2-1-d9604c5b4be8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_095026_028646_0A2F550B 
X-CRM114-Status: GOOD (  18.73  )
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

On Wed, Jul 31, 2024 at 11:37:03AM +0200, Marc Kleine-Budde wrote:
> Add documentation for the rockchip rk3568 CAN-FD controller.
> 
> Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  .../bindings/net/can/rockchip,canfd.yaml           | 76 ++++++++++++++++++++++

rockchip,rk3568-canfd.yaml

>  MAINTAINERS                                        |  7 ++
>  2 files changed, 83 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> new file mode 100644
> index 000000000000..444269f630f4
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

Given you already know there are differences in the versions to handle 
and there's no existing driver supporting the fallback, I don't know 
that a fallback is too useful here.

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
> +      - const: baud
> +      - const: pclk
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: core
> +      - const: apb
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

Drop unused labels.

> +            compatible = "rockchip,rk3568-canfd";
> +            reg = <0x0 0xfe570000 0x0 0x1000>;
> +            interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
> +            clock-names = "baud", "pclk";
> +            resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
> +            reset-names = "core", "apb";
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
