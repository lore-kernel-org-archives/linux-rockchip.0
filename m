Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 734E0FF885D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 07:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Drdka1ul6tJVRX0MO/G3ik+z0WXkhNidoxP6VFrG07w=; b=ew3c0n5XRFwfWN
	snrIjcBC2MNfJxcC5c3ln2O3DSzoDYOZp6RkFcbIISH6tVLx9Fdmut4/2rKy1eRa+xRw+enFl54H3
	MqSdLai053ZOgl+lW86Wdox7kYGiKCnZEpaNcB2h6Aemb9d8CXySH6vFc2IppNlz82TCpE14PQ26I
	0mvKjFDjRl5GOGaGHa25ARuyrjmpTIdGL7+Jl4tRNIVcyMmaZRVdPVrAu2OQiyfdXYDPdRpfkM6ZN
	RRmJ/PqHt5/ZIuJBqwUex6wC3c16AqUHEpWxXNZgVHtjfL6NB1A4WslhXIS3kKUDe6pHhSGp01HNo
	d6XG2rVrr5QBuEwZSpdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHd9x-00000000nxk-148n;
	Tue, 28 Apr 2026 07:47:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHd9u-00000000nwv-2e8o
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 07:47:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D9C7544777;
	Tue, 28 Apr 2026 07:47:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5419C2BCAF;
	Tue, 28 Apr 2026 07:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777362423;
	bh=LjvQWxO8MdqD3grX5Gi28h5ntU4nyt5GvckNuDrXREU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jGyzS1vZsNCTz0eymCL2UyLf5YdAlcj+ArMyHL9o+qmE5VwKCXwnXdPD+oTzzMSfy
	 o/QYaAc0xx+Bgx9s2NZf6vuu2yQN84Z/02GkbsBiV1NHTm8YaGpD8VesJrziCKQV5W
	 nf+JrOYfdF3OjTkwRGGsU/6g+QlbYQ+eKXODcGv/3zitNDvDIDgJ0VVTZaerETeeoL
	 PVpZ9nNoJURMOJxNIlCU7cBoCkQlPr/C4v7pCyGAUrtr8GHY+CI0orURgIR69Br+pM
	 u8A25UTFSSbToxCtkCqVQcK0CJFi2II2elj4yXNCGQ0rRF22AZI/y5bHolqj3igpMl
	 ikqYt2ZWlVMgw==
Date: Tue, 28 Apr 2026 09:47:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, xsf@rock-chips.com, sre@kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <20260428-bulky-nebulous-reindeer-ed45ed@quoll>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
 <20260427170914.5062-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427170914.5062-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_004706_710960_BAC8361E 
X-CRM114-Status: GOOD (  21.29  )
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

On Mon, Apr 27, 2026 at 12:09:09PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the SG Micro sgm41542 battery charger/boost converter.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../supply/sgmicro,sgm41542-charger.yaml      | 99 +++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml
> new file mode 100644
> index 000000000000..3e5041e5b551
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542-charger.yaml

Filename must match compatible.

> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542-charger.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SGM41542 Battery Charger
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The SGMicro SGM41542 is a single cell battery charger/boost controller.
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +  - Xu Shengfei <xsf@rock-chips.com>
> +
> +properties:
> +  compatible:
> +    const: sgmicro,sgm41542
> +
> +  input-current-limit-microamp:

Missing vendor prefix.

> +    description:
> +      Optional value to clamp the maximum input current limit to for
> +      the device. If omitted, the default value for the hardware will
> +      be used (2400000).
> +    minimum: 100000
> +    maximum: 3800000
> +
> +  input-voltage-limit-microvolt:
> +    description:
> +      Optional value to clamp the maximum input voltage limit to for
> +      the device. If omitted, the default value for the hardware will
> +      be used (4500000).
> +    minimum: 3900000
> +    maximum: 12000000
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  monitored-battery:

You miss definition of this property. I guess this is power supply, so
reference proper schema for power supplies. Look at other bindings to
for some example code.

> +    description: |
> +        A phandle to a monitored battery node. Values for the following
> +        are used by the driver and if not present will result in default
> +        values being applied:
> +        constant-charge-current-max-microamp
> +        constant-charge-voltage-max-microvolt
> +        charge-term-current-microamp
> +        precharge-current-microamp
> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:

No need for regulators node, just define here otg-vbus directly. But
honestly, your example is incomplete or you defined something implied by
the compatible. If you have a fixed 5V regulator, what is the point of
defining it in the DT?

> +    type: object
> +    properties:
> +      otg-vbus:
> +        type: object
> +        description: OTG boost regulator
> +        $ref: /schemas/regulator/regulator.yaml
> +        unevaluatedProperties: false
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    battery: battery {
> +      compatible = "simple-battery";
> +      constant-charge-current-max-microamp = <10000000>;
> +      constant-charge-voltage-max-microvolt = <4350000>;
> +      precharge-current-microamp = <180000>;
> +      charge-term-current-microamp = <300000>;
> +    };
> +    #include <dt-bindings/gpio/gpio.h>

Drop this one

> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      charger@3b {
> +        compatible = "sgmicro,sgm41542";
> +        reg = <0x3b>;
> +        input-current-limit-microamp = <3000000>;
> +        input-voltage-limit-microvolt = <4500000>;
> +        interrupt-parent = <&gpio0>;
> +        interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
> +        monitored-battery = <&battery>;
> +
> +        regulators {
> +          otg-vbus {
> +            regulator-max-microvolt = <5000000>;
> +            regulator-min-microvolt = <5000000>;
> +          };
> +        };
> +      };
> +    };
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
