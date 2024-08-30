Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FAACA1009
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvW0I+hXetSaDn0jdeYfZOLkC3W2EkeTRXecLx4KJd0=; b=FbnE0iy5TXAGny
	Ea/AgK8MNsUE3yL1c6qdM9DQFbEoRvK4ZXiGQRjubHiY9qM04hn2wMz9lyzNrKyUN9wMlO2HwTiP/
	tSsOR7Fk45mEfn4ES51hliVwwc5xI63pdSLBAlm+LKDW/oXc6YTBIeQ3PYQhm1HZqzLbd9KB9J3K2
	1ER+f/xOUox4SyMq1Yy7K69AUfKh2Zsx6QBYFxaYpbPp1bpXT0ip8mYDTvigPSIpgGvofzKJLQOSW
	K6+KVWuNSL7RG9AFNEA8Uu+rGMX3ExFxIEp5I10xzYf/UKrN3wSSmNBFv9CKW2HytOqcU8kQhS7Ey
	taxOxHBPwKQJHge1OQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk4WP-000000071aS-0uK3;
	Fri, 30 Aug 2024 16:30:49 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk4WL-000000071Yj-391J
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 16:30:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D06C2A44B3A;
	Fri, 30 Aug 2024 16:30:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 319FBC4CECA;
	Fri, 30 Aug 2024 16:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725035444;
	bh=qCzga63KeKGmhvUCRSLeRGpmKyn6xKlZmu6N8oyL0m4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DrxWumWSVwLYlagAu2K/NmFbfGMjx5te98wy5Qth7GqZEgf6kjjpyCaVAUC0ezljE
	 AA6DHBSsm3Eqlz2PS6mWkAApCYuWaLdP0TDmPCqNLFc/FlOOQ8ebKEXJKQATkRJmUW
	 hfsOTjwXhDUfc7ZHfeW/RwGRXA0QZePcaE+oFSAZwFr5pafkl8FgBYdeLOIcWH6jAn
	 h4u4GUF7mhLLlsq3JHto358x2bh9SYeGetfK3oUsWdddjT3cySqI4Wxny0mW0dh5Nl
	 dm4LMdr7o9+T4GKiaE7Ca83Lgm4HZq7CXFWS9EXtC3t22j+IxGbfSw9RVCAdD66UQj
	 qmB3a+FlV2mrQ==
Date: Fri, 30 Aug 2024 11:30:42 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [RFC 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A Charger
Message-ID: <20240830163042.GA319200-robh@kernel.org>
References: <20240829213102.448047-1-macroalpha82@gmail.com>
 <20240829213102.448047-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240829213102.448047-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_093045_941876_6EF8F78B 
X-CRM114-Status: GOOD (  20.18  )
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

On Thu, Aug 29, 2024 at 04:30:58PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the Texas instruments BQ25703 series of charger managers/
> buck/boost regulators.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/ti,bq25703a.yaml  | 143 ++++++++++++++++++
>  1 file changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> new file mode 100644
> index 000000000000..e555aa60f9ad
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/ti,bq25703a.yaml
> @@ -0,0 +1,143 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/ti,bq25703a.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BQ25703 Charger Manager/Buck/Boost Converter

BQ25703A?

> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +properties:
> +  compatible:
> +    const: ti,bq25703a
> +
> +  reg:
> +    const: 0x6b
> +    description: I2C slave address

Drop description.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-supplies:
> +    description:
> +      phandle of the power supply that provides input power
> +    $ref: /schemas/types.yaml#/definitions/phandle

Already has a type. You need a reference to power-supply.yaml at the 
top level and 'maxItems: 1' here.

> +
> +  ti,charge-current:
> +    description:
> +      maximum current to apply to charging the battery
> +    minimum: 0
> +    maximum: 8128000
> +    $ref: /schemas/types.yaml#/definitions/uint32

I guess this is copied from other TI parts, but really this should move 
to a property with a unit suffix. Or these shared properties moved to a 
shared schema so we aren't redefining the type multiple times.

Same for the others here.

> +
> +  ti,current-limit:
> +    description:
> +      maximum total input current allowed
> +    minimum: 50000
> +    maximum: 6400000
> +    default: 3250000
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  ti,max-charge-voltage:
> +    description:
> +      maximum voltage to apply to charging the battery
> +    minimum: 1024000
> +    maximum: 19200000
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  ti,minimum-sys-voltage:
> +    description:
> +      minimum system voltage while on battery power, with default value
> +      depending based on cell configuration
> +    minimum: 1024000
> +    maximum: 16128000
> +    default:
> +      enum: [3584000, 6144000, 9216000, 16128000]
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  regulators:
> +    type: object
> +    additionalProperties: false
> +    description:
> +      Boost converter regulator output of bq257xx

Doesn't this apply to "usb-otg-vbus"?

Really, only one regulator, so you don't need a container node.

> +
> +    properties:
> +      "usb-otg-vbus":

Don't need quotes.

> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml
> +
> +        properties:
> +          regulator-name: true
> +          regulator-min-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-max-microamp:
> +            minimum: 0
> +            maximum: 6350000
> +          regulator-min-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          regulator-max-microvolt:
> +            minimum: 4480000
> +            maximum: 20800000
> +          enable-gpios:
> +            description:
> +              The BQ25703 may require both a register write and a GPIO
> +              toggle to enable the boost regulator.
> +
> +        additionalProperties: true

Nope.

> +
> +        required:
> +          - regulator-name
> +          - regulator-min-microamp
> +          - regulator-max-microamp
> +          - regulator-min-microvolt
> +          - regulator-max-microvolt
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - power-supplies
> +  - ti,charge-current
> +  - ti,current-limit
> +  - ti,max-charge-voltage
> +  - ti,minimum-sys-voltage
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        bq25703: bq25703@6b {

charger@6b

> +            compatible = "ti,bq25703a";
> +            reg = <0x6b>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
> +            power-supplies = <&fusb302>;
> +            ti,charge-current = <2500000>;
> +            ti,current-limit = <5000000>;
> +            ti,max-charge-voltage = <8750000>;
> +            ti,minimum-sys-voltage = <7400000>;
> +
> +            regulators {
> +                usb_otg_vbus: usb-otg-vbus {
> +                    enable-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
> +                    regulator-max-microamp = <960000>;
> +                    regulator-max-microvolt = <5088000>;
> +                    regulator-min-microamp = <512000>;
> +                    regulator-min-microvolt = <4992000>;
> +                    regulator-name = "usb_otg_vbus";
> +                };
> +            };
> +        };
> +    };
> +
> +...
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
