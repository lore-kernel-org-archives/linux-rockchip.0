Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41235C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 20:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YM5+sFLb5rMwu9stF/mkf/ovLCG4qorUiFvldinpY8=; b=0UcOguArgOF7E/
	5lpJefqOoaY2J9ucenzkq7ItzNVzGDdVIhhMitaDGFADBgP6w5aizLIakV/MCzDk5NxwCqTAq/HVt
	bGz6Knle3Snyd7jtbtjy2bdH63nO1PZbbnTiVHXzOuKmAqsFb8svg9pJppda9go2jT6aY445zqs1H
	S3XMUJKT2iEo8cUsKaBBkFjBGyVgQ4Qdjz4EZE9vP0vf0blrWg8J8ubo8JWZ+ftaKbOBF7CzNsyU5
	0kHTNfRUExnFT6AIPWCgBHKuRSXGIbjae0vVGCFCZra9CUyN2NGmc1fvY0RXw4Tc56ZIuGSCPhDTi
	9JX/X9tJdXwkpt0tm3Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMw6O-0000000BgsA-33RO;
	Thu, 27 Jun 2024 20:52:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMw6F-0000000BgoC-1FbU;
	Thu, 27 Jun 2024 20:52:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A4E17CE38F3;
	Thu, 27 Jun 2024 20:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B40C0C2BBFC;
	Thu, 27 Jun 2024 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719521529;
	bh=5Vyce4zAfgV6w1pp20rVTEDgRdD2Xvdyh3QIPHWLvM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YB9+zb4fy/LqQzIgsBPmOperiqxnf1JPNL3XS8J+X33MBU2A3KTvIceo6iHMpM6R2
	 S1xhgzD60JQ4+KL8CuXH+nBXMtBcpeMEo9MKFKXQqUN2v5vDgujfsySo8uXLYR5yJ9
	 uiURiNm/+5u8zb3pnVzJ0kzVnIFNInqQSxwHJ4lsPso0+apkYmHLPnO7v5iDFHJxNY
	 PAz5dvifK4510KQIJiAMw6Gpq34U2kYIUYbWowg8z4OMxOAusAmaWqen370jtEkFGo
	 9eAIMPo+VbzAtozXMmee0Q52GoHV8WVb5jtUKwZeP+KuBEBZdSElZ3aSPesZwByGX8
	 bcWBaqY7Oy8Qg==
Date: Thu, 27 Jun 2024 14:52:07 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 3/9] dt-bindings: mfd: add support for mule
Message-ID: <20240627205207.GA492473-robh@kernel.org>
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <20240618-dev-mule-i2c-mux-v4-3-5462d28354c8@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618-dev-mule-i2c-mux-v4-3-5462d28354c8@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_135211_720667_67A622C3 
X-CRM114-Status: GOOD (  23.21  )
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

On Tue, Jun 18, 2024 at 06:06:45PM +0200, Farouk Bouabid wrote:
> Mule is an MCU that emulates a set of I2C devices, among which an amc6821
> device and an I2C mux that exposes more emulated devices. These two devices
> share the same I2C address. Only the I2C mux uses register (0xff) as a
> config register.

Everywhere (or the first place in any section (subject, commit msg, 
title, description, etc.) you say 'mule' I think should be preceeded 
with the vendor because 'mule' has no meaning on its own unless we are 
talking animals.

> 
> Add dt-binding support for the Mule I2C multi-function device.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml  | 48 +++++++++++++
>  .../devicetree/bindings/mfd/tsd,mule.yaml          | 82 ++++++++++++++++++++++
>  2 files changed, 130 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml b/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml
> new file mode 100644
> index 000000000000..ac9dfc936272
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/tsd,mule-i2c-mux.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/tsd,mule-i2c-mux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mule I2C multiplexer
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@cherry.de>
> +  - Quentin Schulz <quentin.schulz@cherry.de>
> +
> +description: |
> +  This module is part of the Mule I2C multi-function device. For more
> +  details see ../mfd/tsd,mule.yaml.
> +
> +  Mule I2C-mux configures the active device that can be accessed on address
> +  0x6f through the config register.
> +
> +      +--------------------------------------------------+
> +      | Mule                                             |
> +  0x18|    +---------------+                             |
> +  -------->|Config register|----+                        |
> +      |    +---------------+    |                        |
> +      |                         V_                       |
> +      |                        |  \          +--------+  |
> +      |                        |   \-------->| dev #0 |  |
> +      |                        |   |         +--------+  |
> +  0x6f|                        | M |-------->| dev #1 |  |
> +  ---------------------------->| U |         +--------+  |
> +      |                        | X |-------->| dev #2 |  |
> +      |                        |   |         +--------+  |
> +      |                        |   /-------->| dev #3 |  |
> +      |                        |__/          +--------+  |
> +      +--------------------------------------------------+
> +
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-mux.yaml#
> +
> +properties:
> +  compatible:
> +    const: tsd,mule-i2c-mux
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> diff --git a/Documentation/devicetree/bindings/mfd/tsd,mule.yaml b/Documentation/devicetree/bindings/mfd/tsd,mule.yaml
> new file mode 100644
> index 000000000000..ab532340a17c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/tsd,mule.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/tsd,mule.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mule I2C multi function device
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@cherry.de>
> +  - Quentin Schulz <quentin.schulz@cherry.de>
> +
> +description:
> +  Mule is an MCU that emulates a set of I2C devices, among which an amc6821
> +  device and an I2C mux that exposes more emulated devices. These two devices
> +  share the same I2C address. Only the I2C mux uses register (0xff) as a config
> +  register.
> +
> +properties:
> +  compatible:
> +    const: tsd,mule
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^fan(@[0-9a-f]+)?$":
> +    $ref: /schemas/trivial-devices.yaml

That doesn't really define which device. You should do something like 
this:

additionalProperties: true
properties:
  compatible:
    contains:
      const: ti,amc6821

If the compatible is correct, then the schema for it will be applied 
separately.

> +
> +  "^i2c-mux(@[0-9a-f]+)?$":
> +    $ref: /schemas/i2c/tsd,mule-i2c-mux.yaml
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        mule@18 {
> +            compatible = "tsd,mule";
> +            reg = <0x18>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            fan@18 {
> +                compatible = "ti,amc6821";
> +                reg = <0x18>;
> +            };
> +
> +            i2c-mux {
> +                compatible = "tsd,mule-i2c-mux";
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                i2c@0 {
> +                    reg = <0x0>;
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +
> +                    rtc@6f {
> +                        compatible = "isil,isl1208";
> +                        reg = <0x6f>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> +...
> 
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
