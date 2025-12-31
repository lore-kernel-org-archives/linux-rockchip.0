Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6708EE6432
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 13:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5/gWDS8+/Dqbbk/QbPuaEFyQXfj0vPHHf38GC7JBDM=; b=L+qNzw1oFfWRC4
	4yZEENKTIas/zm+0kQcwJfFiv8qYwBfGhSTaaKnwkKt6JfCdALBxAm8vSgQE6S0qLsj+p92o8ZYPy
	0Mf6lcCqAppiOEHQuCDquNE6TOtdBkcF0E9w+4xK1BGPHYW2DEW7TQwWCP7uNaxhkcINOIi2mbN9r
	2Zy+UN6PAAf7v95A0YUhmeHvHV6N8pFMwD7C0Mc+T39qhzrsulTsIpRI8jffZYY3Ae5NY4EI8a3uT
	eDllA34N/BuOHorxzEwVPL7jtyshwBA06iYSs7XZU3KjywaT+jJWj3dNmkLnHSBi+zrlsLqqATgL8
	Q03RGtZU9qDONQ85Fq1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vawQ4-000000060pz-1i28;
	Wed, 31 Dec 2025 13:39:20 +0000
Received: from out-179.mta1.migadu.com ([95.215.58.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vawQ1-000000060lC-1h7N
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 13:39:19 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767188231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I/DC5HGhzFn6eB9/q1rg3HbClxsdFAQDVLotSyZqTjw=;
	b=Sj5RDxgVWnEDDcM9EBb0Gi/q7VYGbi+rT2nD7JGMjgJ9zW6p+kqq35EyeX8fYYA+MiaSTx
	SFAUZgiqGHSuQdjoO9eQ4pFhtvfqexwiCl3hyr7+aTG5TESwqfUQJu2bJvBt2xdDNCj7Ra
	tp2ze9+u8+5iOGbICApuMCaE7hNkXkMHaHHd6O0rjVbR8Mm46ylb0jP+mqjWP4V3RW9hPs
	PsC4gzIuHxtQfqZBIVL39vUFG518ZS4IHyPnWiU64Pwr8kjNCwpuLkZLYXZrbzJW/RD9D9
	Exsgj+f0W+tOYZStonu+Gj0ObO3jIsoeNcarKWjuCqxKwJAtwDj5Vb3XnQGP1w==
Date: Wed, 31 Dec 2025 14:36:48 +0100
Message-Id: <DFCFXRAAOVDT.1I1RYJ45SV9GT@cknow-tech.com>
To: "Joseph Chen" <chenjh@rock-chips.com>, <lee@kernel.org>,
 <lgirdwood@gmail.com>, <broonie@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>
Cc: <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: mfd: Add rk801 binding
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20251231030951.818-1-chenjh@rock-chips.com>
 <20251231030951.818-2-chenjh@rock-chips.com>
In-Reply-To: <20251231030951.818-2-chenjh@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_053917_622522_513CA1BA 
X-CRM114-Status: GOOD (  13.43  )
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

On Wed Dec 31, 2025 at 4:09 AM CET, Joseph Chen wrote:
> Add DT binding document for Rockchip's RK801 PMIC
>
> Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
> ---
>  .../bindings/mfd/rockchip,rk801.yaml          | 199 ++++++++++++++++++
>  1 file changed, 199 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
>
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
> new file mode 100644
> index 00000000000..d591125dfe8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
> @@ -0,0 +1,199 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk801.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK801 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Joseph Chen <chenjh@rock-chips.com>
> +
> +description: |
> +  Rockchip RK801 series PMIC. This device consists of an i2c controlled MFD
> +  that includes multiple switchable regulators.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk801
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  system-power-controller: true

Why add 'rockchip,system-power-controller' while also adding
'system-power-controller'?

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

And because of that I submitted this patch/commit:
b99ac7e2a1cc ("arm64: dts: rockchip: Drop rockchip prefix of s-p-c PMIC prop from rk356x")
to replace the deprecated variant with the non-deprecated one.

Cheers,
  Diederik

> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for LDO_REG1.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG2.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for SWITCH_REG.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-4]|LDO_REG[1-2]|SWITCH_REG)$":
> +        type: object
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        rk801: rk801@27 {
> +            compatible = "rockchip,rk801";
> +            reg = <0x27>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <RK_PC0 IRQ_TYPE_LEVEL_LOW>;
> +            pwrctrl-gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pmic_int_l>;
> +            rockchip,system-power-controller;
> +            wakeup-source;
> +
> +            vcc1-supply = <&vcc12v_dcin>;
> +            vcc2-supply = <&vcc12v_dcin>;
> +            vcc3-supply = <&vcc5v0_sys>;
> +            vcc4-supply = <&vcc5v0_sys>;
> +            vcc5-supply = <&vcc3v3_sys>;
> +            vcc6-supply = <&vcc3v3_sys>;
> +            vcc7-supply = <&vcc3v3_sys>;
> +
> +            regulators {
> +                vdd_cpu: DCDC_REG1 {
> +                    regulator-name = "vdd_cpu";
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <1500000>;
> +                    regulator-initial-mode = <0x1>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-mode = <0x2>;
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <950000>;
> +                    };
> +                };
> +
> +                vcc3v3_sys: DCDC_REG2 {
> +                    regulator-name = "vcc3v3_sys";
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-initial-mode = <0x1>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-mode = <0x2>;
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vcc_ddr: DCDC_REG3 {
> +                    regulator-name = "vcc_ddr";
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-mode = <0x2>;
> +                        regulator-on-in-suspend;
> +                    };
> +                };
> +
> +                vdd_logic: DCDC_REG4 {
> +                    regulator-name = "vdd_logic";
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <1500000>;
> +                    regulator-initial-mode = <0x1>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-mode = <0x2>;
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <900000>;
> +                    };
> +                };
> +
> +                vdd0v9_sys: LDO_REG1 {
> +                    regulator-name = "vdd0v9_sys";
> +                    regulator-min-microvolt = <900000>;
> +                    regulator-max-microvolt = <900000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <900000>;
> +                    };
> +                };
> +
> +                vcc_1v8: LDO_REG2 {
> +                    regulator-name = "vcc_1v8";
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <1800000>;
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <1800000>;
> +                    };
> +                };
> +
> +                vcc_3v3: SWITCH_REG {
> +                    regulator-name = "vcc_3v3";
> +                    regulator-boot-on;
> +                    regulator-always-on;
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +            };
> +        };
> +    };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
