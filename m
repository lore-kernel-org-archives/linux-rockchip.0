Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6515A1073CB9
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 13:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xldMImd2As84IEklf285lhlbjH48K2eX9vfZxPYqSeI=; b=z2AD3RnsvWSa2B
	e4W/JsiIqjT1CWa7qVBcngrCVl0fcdLdVeVMy+j02rxqVPCxDwr4RkU3oixtjlNhBGQXRGz2CKCwv
	c87C+mHVXlu0bw/Dds/IO2hHC82PB3eOHZKeABa1+gdWu0O7Y3n9OSWTRF/FPuvXStel04Dk0xz9i
	RLOvHXmnKGgqh26JLA/aBzqse7rQ4A4nVeH3S/dDUN76hZGK1WSNgkeirxAPp8SklMOCD0ZpECgvl
	hVKu7fp4W6+Hs4aOggGeIc67wdF7FW6M1Cf7/oHOGQH740QuBAqPWwmHiQZnl45mi+Psh41SQhHEq
	xXHiMmm4tki9wPdIxkNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASov-00000008u5L-3t7C;
	Wed, 08 Apr 2026 13:19:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wASot-00000008u4z-0Jc0
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 13:19:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6AEB6440FD;
	Wed,  8 Apr 2026 13:19:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28508C19421;
	Wed,  8 Apr 2026 13:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775654386;
	bh=Fle2L3rP4peCU11Gpmi6PDE0LAZyu5oAbKg95o0Fecs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cpVHV3CmDuVp7UWNZaiBV/BW1BwcG6fy1qmMuvrzu8fa3JXdcfzMqfX8eh27+GlSI
	 ozrPhlL4IEPow4YnlM/Fi2ukjUJf6kk9umhYjBxM6Awll7vZbrC7FGOYq68Kfu8Qf5
	 /y5kmPKzgg+2bI6c3gZQTyuHBFR/CNTf/Srccp17aaN+mJoNbqW2U8o8d8BQAh/VcZ
	 F3LoYxhSa7+4fek50DIAdsyG8S0HucpD9BhkKKyCx155T7aG8AIXhI/8JPyrpqyGq7
	 brUz9AVuqTxJaVFUmM+w73WgmcJnKSYRL6VDKCGqYaXM2AHMTZm3emK9QguFEAGvCK
	 xS9gHvKYbeFuw==
Date: Wed, 8 Apr 2026 08:19:44 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 1/9] dt-bindings: iio: imu: icm42607: Add devicetree
 binding
Message-ID: <20260408131944.GA1901621-robh@kernel.org>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260330195853.392877-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_061947_158885_61803426 
X-CRM114-Status: GOOD (  17.32  )
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

On Mon, Mar 30, 2026 at 02:58:45PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
Subject space is limited, so don't say devicetree binding twice:

dt-bindings: iio: imu: Add Invensense ICM42607

> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout.

Similar enough to use the same binding schema?

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/iio/imu/invensense,icm42607.yaml | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
> new file mode 100644
> index 000000000000..bbacdee5b906
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/imu/invensense,icm42607.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: InvenSense ICM-42607 Inertial Measurement Unit
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +description: |

Don't need '|'.

> +  6-axis MotionTracking device that combines a 3-axis gyroscope and a 3-axis
> +  accelerometer.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - invensense,icm42607
> +      - invensense,icm42607p

blank line

> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum:
> +        - INT1
> +        - INT2
> +
> +  drive-open-drain:
> +    type: boolean
> +
> +  mount-matrix: true
> +
> +  spi-cpha: true
> +  spi-cpol: true
> +
> +  vdd-supply:
> +    description: Regulator that provides power to the sensor
> +
> +  vddio-supply:
> +    description: Regulator that provides power to the bus
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        icm42607p@68 {
> +            compatible = "invensense,icm42607p";
> +            reg = <0x68>;
> +            interrupt-parent = <&gpio2>;
> +            interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
> +            interrupt-names = "INT1";
> +            vdd-supply = <&vdd>;
> +            vddio-supply = <&vddio>;
> +        };
> +    };
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        icm42607p@0 {
> +            compatible = "invensense,icm42607p";
> +            reg = <0>;
> +            spi-max-frequency = <24000000>;
> +            spi-cpha;
> +            spi-cpol;
> +            interrupt-parent = <&gpio1>;
> +            interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
> +            interrupt-names = "INT1";
> +            vdd-supply = <&vdd>;
> +            vddio-supply = <&vddio>;
> +        };
> +    };
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
