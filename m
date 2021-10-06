Return-Path: <SRS0=o2ac=O2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9AA5C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 21:07:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFE8461152
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 21:07:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AFE8461152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bF6KAC9H7tuEiaVo2WDYZBSv545q7DKTTAwGPktqzy4=; b=bMm7P0I5Sq7e6z
	1pTwyzpfy0hBHfIb79yJIEK3dlHf5U/rs4Y6M/KjeSAHOkXD4CY4GF0fpvqRlZZUItxi/Wdd8KYbD
	7uF1mZNRpV1dKo1pvTI6dBOu0vCcsZ0ogn6hP12av0AJ88Kt4+fRmcTd0UpPNImipffjBThtUJNDA
	BSQ0KkqLxMSG1iyGJhovJpHTVXn6DKegvPCEdzp2nQvT+uwi/GhzC/hG5oF7Si0BUKFRG/gVSPDvu
	Y0KNYVvX9Qft40Tt7e2GmmUDvck+2CcTi3Nk5KyTXvvo3JEjOj8vwM/OGAXETvUtrVF7VRNJq8q+e
	uaVM0EThgt2VVElFOK6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYE8k-00FYgc-MN; Wed, 06 Oct 2021 21:07:50 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYE8K-00FYeL-CU; Wed, 06 Oct 2021 21:07:26 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 j11-20020a9d190b000000b00546fac94456so4815788ota.6; 
 Wed, 06 Oct 2021 14:07:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gmYMkMgyNF+M0/XN9qtQib3Updmh2p5yOstnRWqGc6E=;
 b=ZdOnRRB+4z75RAJLyXu81TNNVZCWuWf3KWI3lQGWC5SR2bjWHiPdISUPIGipkCX6Tj
 kxMOHq9e4sEHxu3rZwojk8CQ2t8ThI87kUeOqajfIdg7zwTN0V6ui/hjy3nQ2gMqlw8F
 cXR6IsOpsHxGXOzQ3pFt1aRQG7+U5huiAzp0a5V34EAviepikrB0bqgXIp8XLxnMniqy
 aCoc0l82OWfRKCFJsdGF88bJD67ATSClOoqUMva8rbsVTmN3BjB9uKlKcSruFJTu364c
 IvgJ8Oiq8lxhOyBWteWKJqq7/6FfMLwBzsdwnhm3hsEvtiy2rx5brO6Zy7KcNiK815NJ
 1c+A==
X-Gm-Message-State: AOAM531kl9vi9b1rpvpjGh/woN993jtH31NE8SGkvqhjBA4cId6UxjsP
 1Jupi0zOsCM60ClbmB1Bzw==
X-Google-Smtp-Source: ABdhPJwXzh+9ffrFKH/vzdZhdqMJCHnAnnzLL40SLgEh6MMyIogHh5PZTtpR0sbBKncqhO7NqYoupQ==
X-Received: by 2002:a05:6830:2706:: with SMTP id
 j6mr441090otu.82.1633554443383; 
 Wed, 06 Oct 2021 14:07:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k3sm3496369otn.16.2021.10.06.14.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 14:07:22 -0700 (PDT)
Received: (nullmailer pid 2875966 invoked by uid 1000);
 Wed, 06 Oct 2021 21:07:21 -0000
Date: Wed, 6 Oct 2021 16:07:21 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: convert
 rockchip,pinctrl.txt to YAML
Message-ID: <YV4QCY7wpZI7Xta3@robh.at.kernel.org>
References: <20210930095225.9718-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210930095225.9718-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_140724_469991_D7570CBA 
X-CRM114-Status: GOOD (  32.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Sep 30, 2021 at 11:52:23AM +0200, Johan Jonker wrote:
> Convert rockchip,pinctrl.txt to YAML
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>    Add '|' to maintain the paragraphs.
>    Change gpio patternProperties.
>    Move description to items.
>    Remove type array.
>    Restyle
> ---
>  .../bindings/pinctrl/rockchip,pinctrl.txt     | 114 ------------
>  .../bindings/pinctrl/rockchip,pinctrl.yaml    | 176 ++++++++++++++++++
>  2 files changed, 176 insertions(+), 114 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> deleted file mode 100644
> index 84c411129..000000000
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> +++ /dev/null
> @@ -1,114 +0,0 @@
> -* Rockchip Pinmux Controller
> -
> -The Rockchip Pinmux Controller, enables the IC
> -to share one PAD to several functional blocks. The sharing is done by
> -multiplexing the PAD input/output signals. For each PAD there are several
> -muxing options with option 0 being the use as a GPIO.
> -
> -Please refer to pinctrl-bindings.txt in this directory for details of the
> -common pinctrl bindings used by client devices, including the meaning of the
> -phrase "pin configuration node".
> -
> -The Rockchip pin configuration node is a node of a group of pins which can be
> -used for a specific device or function. This node represents both mux and
> -config of the pins in that group. The 'pins' selects the function mode(also
> -named pin mode) this pin can work on and the 'config' configures various pad
> -settings such as pull-up, etc.
> -
> -The pins are grouped into up to 5 individual pin banks which need to be
> -defined as gpio sub-nodes of the pinmux controller.
> -
> -Required properties for iomux controller:
> -  - compatible: should be
> -		"rockchip,px30-pinctrl":    for Rockchip PX30
> -		"rockchip,rv1108-pinctrl":  for Rockchip RV1108
> -		"rockchip,rk2928-pinctrl":  for Rockchip RK2928
> -		"rockchip,rk3066a-pinctrl": for Rockchip RK3066a
> -		"rockchip,rk3066b-pinctrl": for Rockchip RK3066b
> -		"rockchip,rk3128-pinctrl":  for Rockchip RK3128
> -		"rockchip,rk3188-pinctrl":  for Rockchip RK3188
> -		"rockchip,rk3228-pinctrl":  for Rockchip RK3228
> -		"rockchip,rk3288-pinctrl":  for Rockchip RK3288
> -		"rockchip,rk3308-pinctrl":  for Rockchip RK3308
> -		"rockchip,rk3328-pinctrl":  for Rockchip RK3328
> -		"rockchip,rk3368-pinctrl":  for Rockchip RK3368
> -		"rockchip,rk3399-pinctrl":  for Rockchip RK3399
> -		"rockchip,rk3568-pinctrl":  for Rockchip RK3568
> -
> -  - rockchip,grf: phandle referencing a syscon providing the
> -	 "general register files"
> -
> -Optional properties for iomux controller:
> -  - rockchip,pmu: phandle referencing a syscon providing the pmu registers
> -	 as some SoCs carry parts of the iomux controller registers there.
> -	 Required for at least rk3188 and rk3288. On the rk3368 this should
> -	 point to the PMUGRF syscon.
> -
> -Deprecated properties for iomux controller:
> -  - reg: first element is the general register space of the iomux controller
> -	 It should be large enough to contain also separate pull registers.
> -	 second element is the separate pull register space of the rk3188.
> -	 Use rockchip,grf and rockchip,pmu described above instead.
> -
> -Required properties for gpio sub nodes:
> -See rockchip,gpio-bank.yaml
> -
> -Required properties for pin configuration node:
> -  - rockchip,pins: 3 integers array, represents a group of pins mux and config
> -    setting. The format is rockchip,pins = <PIN_BANK PIN_BANK_IDX MUX &phandle>.
> -    The MUX 0 means gpio and MUX 1 to N mean the specific device function.
> -    The phandle of a node containing the generic pinconfig options
> -    to use, as described in pinctrl-bindings.txt in this directory.
> -
> -Examples:
> -
> -#include <dt-bindings/pinctrl/rockchip.h>
> -
> -...
> -
> -pinctrl@20008000 {
> -	compatible = "rockchip,rk3066a-pinctrl";
> -	rockchip,grf = <&grf>;
> -
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	ranges;
> -
> -	gpio0: gpio0@20034000 {
> -		compatible = "rockchip,gpio-bank";
> -		reg = <0x20034000 0x100>;
> -		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&clk_gates8 9>;
> -
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -
> -		interrupt-controller;
> -		#interrupt-cells = <2>;
> -	};
> -
> -	...
> -
> -	pcfg_pull_default: pcfg_pull_default {
> -		bias-pull-pin-default
> -	};
> -
> -	uart2 {
> -		uart2_xfer: uart2-xfer {
> -			rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
> -					<1 RK_PB1 1 &pcfg_pull_default>;
> -		};
> -	};
> -};
> -
> -uart2: serial@20064000 {
> -	compatible = "snps,dw-apb-uart";
> -	reg = <0x20064000 0x400>;
> -	interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> -	reg-shift = <2>;
> -	reg-io-width = <1>;
> -	clocks = <&mux_uart2>;
> -
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart2_xfer>;
> -};
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> new file mode 100644
> index 000000000..01a62245b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -0,0 +1,176 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/rockchip,pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Pinmux Controller
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The Rockchip Pinmux Controller enables the IC to share one PAD
> +  to several functional blocks. The sharing is done by multiplexing
> +  the PAD input/output signals. For each PAD there are several muxing
> +  options with option 0 being used as a GPIO.
> +
> +  Please refer to pinctrl-bindings.txt in this directory for details of the
> +  common pinctrl bindings used by client devices, including the meaning of the
> +  phrase "pin configuration node".
> +
> +  The Rockchip pin configuration node is a node of a group of pins which can be
> +  used for a specific device or function. This node represents both mux and
> +  config of the pins in that group. The 'pins' selects the function mode
> +  (also named pin mode) this pin can work on and the 'config' configures
> +  various pad settings such as pull-up, etc.
> +
> +  The pins are grouped into up to 9 individual pin banks which need to be
> +  defined as gpio sub-nodes of the pinmux controller.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-pinctrl
> +      - rockchip,rk2928-pinctrl
> +      - rockchip,rk3066a-pinctrl
> +      - rockchip,rk3066b-pinctrl
> +      - rockchip,rk3128-pinctrl
> +      - rockchip,rk3188-pinctrl
> +      - rockchip,rk3228-pinctrl
> +      - rockchip,rk3288-pinctrl
> +      - rockchip,rk3308-pinctrl
> +      - rockchip,rk3328-pinctrl
> +      - rockchip,rk3368-pinctrl
> +      - rockchip,rk3399-pinctrl
> +      - rockchip,rk3568-pinctrl
> +      - rockchip,rv1108-pinctrl
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the GRF registers.
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the PMU registers,
> +      as some SoCs carry parts of the iomux controller registers there.
> +      Required for at least rk3188 and rk3288. On the rk3368 this should
> +      point to the PMUGRF syscon.
> +
> +  "#address-cells":
> +    enum: [1, 2]
> +
> +  "#size-cells":
> +    enum: [1, 2]
> +
> +  ranges: true
> +
> +patternProperties:
> +  "gpio@[0-9a-f]+$":
> +    type: object
> +
> +    $ref: "/schemas/gpio/rockchip,gpio-bank.yaml#"
> +
> +    unevaluatedProperties: false
> +
> +  "pcfg-[a-z0-9-]+$":
> +    type: object
> +    properties:
> +      bias-disable: true
> +
> +      bias-pull-down: true
> +
> +      bias-pull-pin-default: true
> +
> +      bias-pull-up: true
> +
> +      drive-strength:
> +        minimum: 0
> +        maximum: 20
> +
> +      input-enable: true
> +
> +      input-schmitt-enable: true
> +
> +      output-high: true
> +
> +      output-low: true
> +
> +    additionalProperties: false
> +
> +additionalProperties:
> +  type: object
> +  additionalProperties:
> +    type: object
> +    properties:
> +      rockchip,pins:

Needs a type reference (uint32-matrix).

> +        minItems: 1
> +        items:
> +          items:
> +            - minimum: 0
> +              maximum: 8
> +              description:
> +                Pin bank.
> +            - minimum: 0
> +              maximum: 31
> +              description:
> +                Pin bank index.
> +            - minimum: 0
> +              maximum: 6
> +              description:
> +                Mux 0 means gpio and mux 1 to N means
> +                the specific device function.
> +            - description:
> +                The phandle of a node contains the generic pinconfig options
> +                to use as described in pinctrl-bindings.txt.
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +
> +    pinctrl: pinctrl {
> +      compatible = "rockchip,rk3066a-pinctrl";
> +      rockchip,grf = <&grf>;
> +
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges;
> +
> +      gpio0: gpio@20034000 {
> +        compatible = "rockchip,gpio-bank";
> +        reg = <0x20034000 0x100>;
> +        interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk_gates8 9>;
> +
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +      };
> +
> +      pcfg_pull_default: pcfg-pull-default {
> +        bias-pull-pin-default;
> +      };
> +
> +      uart2 {
> +        uart2_xfer: uart2-xfer {
> +          rockchip,pins = <1 RK_PB0 1 &pcfg_pull_default>,
> +                          <1 RK_PB1 1 &pcfg_pull_default>;
> +        };
> +      };
> +    };
> +
> +    uart2: serial@20064000 {
> +      compatible = "snps,dw-apb-uart";
> +      reg = <0x20064000 0x400>;
> +      interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&mux_uart2>;
> +      pinctrl-0 = <&uart2_xfer>;
> +      pinctrl-names = "default";
> +      reg-io-width = <1>;
> +      reg-shift = <2>;
> +    };
> -- 
> 2.20.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
