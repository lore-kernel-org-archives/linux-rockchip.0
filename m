Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F0BC3DA45
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 23:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nnbOYtk1VG2CMTGQL2J1HpY2gtcxJYzYDiuhyoTDx4=; b=Wdtq8iDnp5TY3Z
	QJu7QOfTVroy9wyTA7IGCBezzwXnPOWLgeXG2iIeZMOJvD27linNgCp8hSr+uve6nRLjFWImgoA4Y
	aAsNoX7LLs1ats97vPwKyzrQDTo26ozBNzgeaGvQ5XUxiV1+3jlwJHpUs93HXOJwlPehoCqlAQ9qC
	t/BrWnIMNtFzI6y/f8L1rjAiIVUywICo9TpWNt6Rb8a6e56JJLaVTc3QUu1JxOfNCHWP50OQdbm21
	JsWjRtFI2Z3EZggzkIsOj0g7uitZPAYHnXV1F0ZyQQuP5gQ035QtvaS6tQoMFAhksjt7z/4tuIBV3
	YN7yd1a/TqK6/s4gUKoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQxOh-00000005Hc8-1zUx;
	Mon, 08 Jul 2024 23:03:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQxOQ-00000005HYU-1EJr;
	Mon, 08 Jul 2024 23:03:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5EA14611C0;
	Mon,  8 Jul 2024 23:03:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4290C116B1;
	Mon,  8 Jul 2024 23:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720479813;
	bh=Z5GwSzhcq9MvxkYULUBz/U1Czb52lUPwmgBTFwviZ7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EX90j3iXDpqHcRJkAMnoseWhjVZN9xLZvNI6uxE8EhDSEJnOJHDugXzlqfbUEanlK
	 P1TbWtywQQi6+1ceeH7ecAYbCaqo8driXHGOI3YBP7qW64wK760cvhdqS53G9qCUYP
	 Wml3IqS81Ag08OSF2L0mqBEq8l1mNM2lCTipJ4ZsLs6BV6AbLHLG6PeWhUaiDFI1Ri
	 KEj5Nm3n2oyg7+JgQtVNMkAzDurWtPm2R88i4ifSaJDHN/2zwvYdjIJXy9OCHCcL2Q
	 PxwKX3sssNI2eQnU6bH4OkNSFAI7sYWHTHdU9IWAitlY1xRuzJ1ATQj2RgvSJ9ukm2
	 SmD6BPutebrdA==
Date: Mon, 8 Jul 2024 17:03:31 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 3/8] dt-bindings: i2c: add support for tsd,mule
Message-ID: <20240708230331.GC4092671-robh@kernel.org>
References: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
 <20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_160334_607373_51CB97B0 
X-CRM114-Status: GOOD (  21.33  )
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

On Mon, Jul 08, 2024 at 06:12:14PM +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which is an amc6821 and other devices that are reachable through
> an I2C-mux. The devices on the mux can be selected by writing the
> appropriate device number to an I2C config register (amc6821: reg 0xff)
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/i2c/tsd,mule.yaml          | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/tsd,mule.yaml b/Documentation/devicetree/bindings/i2c/tsd,mule.yaml
> new file mode 100644
> index 000000000000..dbbabba8dd6f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/tsd,mule.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/tsd,mule.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Theobroma Systems Mule I2C device
> +
> +maintainers:
> +  - Farouk Bouabid <farouk.bouabid@cherry.de>
> +  - Quentin Schulz <quentin.schulz@cherry.de>
> +
> +description: |
> +  Theobroma Systems Mule is an MCU that emulates a set of I2C devices, among
> +  which is an amc6821 and other devices that are reachable through an I2C-mux.
> +  The devices on the mux can be selected by writing the appropriate device
> +  number to an I2C config register (amc6821: reg 0xff)
> +
> +additionalProperties: true

Must be false.

> +
> +properties:
> +  compatible:
> +    contains:

No, must define the entries and the order.

> +      enum:
> +        - tsd,mule
> +        - ti,amc6821

Need to drop this from trivial-devices.yaml. We don't define the same 
compatible in 2 places.

As the original device was ti,amc6821 and this is a superset, the 
binding should first document ti,amc6821 meaning that should be the 
filename, title, etc. And then describe the Mule additions. (I mean how 
the binding should read, not patch structure. 1 patch for this is fine.)

> +
> +  reg:
> +    maxItems: 1

To fix the additionalProperties failure you will see, you need to add:

     i2c-mux:
       type: object

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        fan@18 {
> +            compatible = "tsd,mule", "ti,amc6821";
> +            reg = <0x18>;
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
