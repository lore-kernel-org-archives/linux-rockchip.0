Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA176C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 20:46:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 286F064ECC
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 20:46:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 286F064ECC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WQb8MkbbJ+xgVaTdWMbu/tPTIW44KIYN3YfqBJOhx7s=; b=MhqZwN435e/4sDIML8pnK8eZQ
	d7JBO9SOwfCFG3SJ4Q8e0G/HTtg2zkHaR+oWOmRkQafes7m+/TL+59aUIB0Sj0AHIzkdmTAW0ybYv
	hTP3vcTi85+9bSVepWR9ATl5g5NNnKLF5JDC+AgUGuJcspGV7NEBb18vc+8jqdFcNdXoo6XfYVab4
	cKLBD0H4zOzGGXU8s7Idf1iLBUhi9xf7bJbV5y49IhzJowLqUOALHstJebDt1OCIjob2QRJL4YSff
	+JbyKXNHGKZ9RR8S3rlCtK3Kuq+Aby4PItWZ3RJdO49stRHPIGYLAJmg+XIBwCmTh2g/E0oRNahBi
	JBOXJh8sQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6g5v-0000SN-Ki; Mon, 01 Feb 2021 20:46:47 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6g5r-0000RT-IZ; Mon, 01 Feb 2021 20:46:44 +0000
Received: by mail-ej1-x62b.google.com with SMTP id rv9so26464137ejb.13;
 Mon, 01 Feb 2021 12:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pP/xlyaFfhU7VAU9LJe/twSNpHKPeDTnHiJhO+n/tGc=;
 b=uHkwrZNLRgI/FfghXScZyVQ/h8nuG61VMD0H17yVtkIM9Z872yIK9HR6ysYFnEqj4J
 wk4Lfm6aqME5XDirG3c9WKI+1oHhiItk4NiXpXb29/eIjBoEtEVguALG5NzQUQJkosgT
 LDvxucaQxzqg47XNNroxL9HQBtQiemU/DAK6sLvsz7AmhHwYnsOYu9PwpPuIVMm1XrOx
 111grl2FttGBKOXJuw+O7eSC4m6C+tEkrVefT9hq56DFhVs+g8TX4EdiD7q2tJs0PA9s
 h5HrQd+Yp+WNU2hhTMPKc9iAKt9Mu5PK4rXh+zXnffIlqbtsIxRG9DIHnN4oatbTl70R
 Lm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pP/xlyaFfhU7VAU9LJe/twSNpHKPeDTnHiJhO+n/tGc=;
 b=SWWzI5DEGNN1ExmUrc2TUCGerqWRhiAR7Os0ohdvOBGbf4wwc5j4nvJ73Rw6MQZPrs
 6LnlPbfa3dZ96d71+cnHtHKGvejhWJZqXZY9r60GRo2vTKb38+oavTTroltTaZa5hEPe
 PQ2nQoO/4X7nd289XDN2bLWaIGN6HUlqQc6PXwcOFQR2VPykPqC1mrggCPkrKJawcMB1
 pWRCY+sMBhqcFs46fqCP75ZMBQNiU7DGrCCjDAyQ2dfUV7A4U1bJ/7ecBqMR+L2M4Xlt
 8DICyH/TMeokd7Kd+Ss6wX6Xg0T3CnCcwOdxjfC4pBXueu+F9UOL5jsbXf1oVJ2T12EG
 BHVA==
X-Gm-Message-State: AOAM5329+wyHBQ+MXAsdHdzCFTl4H9q2W6DzgeZMKQlcJpE3eg5dvmWL
 jFuxojn/9DGNGlQt2aJR62pk247S/3Y=
X-Google-Smtp-Source: ABdhPJxXQFUNBuLpbWI1bCNA9eG+xTIpQXswiL8BOiqOvKQRv1bn8mkrDsRr82LdknNFY0/Krs3lPQ==
X-Received: by 2002:a17:906:3c41:: with SMTP id
 i1mr19807655ejg.443.1612212401935; 
 Mon, 01 Feb 2021 12:46:41 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ec18sm8268285ejb.24.2021.02.01.12.46.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Feb 2021 12:46:41 -0800 (PST)
Subject: Re: [PATCH v1 1/5] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
References: <20210201194105.32673-1-jbx6244@gmail.com>
Message-ID: <d4626d79-06ae-6abc-6ab4-6425fc344180@gmail.com>
Date: Mon, 1 Feb 2021 21:46:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_154643_705311_AE01178D 
X-CRM114-Status: GOOD (  27.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

See questions below.

Kind regards,

Johan Jonker

On 2/1/21 8:41 PM, Johan Jonker wrote:
> In the past Rockchip dwc3 usb nodes were manually checked.
> With the conversion of snps,dwc3.yaml as common document
> we now can convert rockchip,dwc3.txt to yaml as well.
> 
> Added properties for rk3399 are:
>   resets
>   reset-names
> 
> Generic properties that are now also filtered:
>   "#address-cells"
>   "#size-cells"
>   ranges
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
>  .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 107 +++++++++++++++++++++
>  2 files changed, 107 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> deleted file mode 100644
> index 945204932..000000000
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -Rockchip SuperSpeed DWC3 USB SoC controller
> -
> -Required properties:
> -- compatible:	should contain "rockchip,rk3399-dwc3" for rk3399 SoC
> -- clocks:	A list of phandle + clock-specifier pairs for the
> -		clocks listed in clock-names
> -- clock-names:	Should contain the following:
> -  "ref_clk"	Controller reference clk, have to be 24 MHz
> -  "suspend_clk"	Controller suspend clk, have to be 24 MHz or 32 KHz
> -  "bus_clk"	Master/Core clock, have to be >= 62.5 MHz for SS
> -		operation and >= 30MHz for HS operation
> -  "grf_clk"	Controller grf clk
> -
> -Required child node:
> -A child node must exist to represent the core DWC3 IP block. The name of
> -the node is not important. The content of the node is defined in dwc3.txt.
> -
> -Phy documentation is provided in the following places:
> -Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml - USB2.0 PHY
> -Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt     - Type-C PHY
> -
> -Example device nodes:
> -
> -	usbdrd3_0: usb@fe800000 {
> -		compatible = "rockchip,rk3399-dwc3";
> -		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> -			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
> -		clock-names = "ref_clk", "suspend_clk",
> -			      "bus_clk", "grf_clk";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -		ranges;
> -		usbdrd_dwc3_0: dwc3@fe800000 {
> -			compatible = "snps,dwc3";
> -			reg = <0x0 0xfe800000 0x0 0x100000>;
> -			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> -			dr_mode = "otg";
> -		};
> -	};
> -
> -	usbdrd3_1: usb@fe900000 {
> -		compatible = "rockchip,rk3399-dwc3";
> -		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
> -			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
> -		clock-names = "ref_clk", "suspend_clk",
> -			      "bus_clk", "grf_clk";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -		ranges;
> -		usbdrd_dwc3_1: dwc3@fe900000 {
> -			compatible = "snps,dwc3";
> -			reg = <0x0 0xfe900000 0x0 0x100000>;
> -			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
> -			dr_mode = "otg";
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> new file mode 100644
> index 000000000..681086fa6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/rockchip,dwc3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SuperSpeed DWC3 USB SoC controller
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3399-dwc3
> +
> +  clocks:
> +    items:
> +      - description:
> +          Controller reference clock, must to be 24 MHz
> +      - description:
> +          Controller suspend clock, must to be 24 MHz or 32 KHz
> +      - description:
> +          Master/Core clock, must to be >= 62.5 MHz for SS
> +          operation and >= 30MHz for HS operation
> +      - description:
> +          Controller aclk_usb3_rksoc_axi_perf clock
> +      - description:
> +          Controller aclk_usb3 clock
> +      - description:
> +          Controller grf clock
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk
> +      - const: suspend_clk
> +      - const: bus_clk

> +      - const: aclk_usb3_rksoc_axi_perf
> +      - const: aclk_usb3

This was not in the original document, but is needed to compile.

> +      - const: grf_clk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: usb3-otg
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^usb@[a-f0-9]+$":
> +    type: object
> +
> +    $ref: "snps,dwc3.yaml"
> +
> +    description:
> +      A child node must exist to represent the core DWC3 IP block.
> +      The content of the node is defined in snps,dwc3.yaml.
> +
> +      Phy documentation is provided in the following places.
> +
> +      USB2.0 PHY
> +      Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +
> +      Type-C PHY
> +      Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
> +
> +    unevaluatedProperties: false
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>

> +    usbdrd3_0: usb@fe800000 {

The rk3399 has 2 dwc3 usb nodes. When we remove @fe800000 and @fe900000
in the rk3399.dtsi it complains about 2 identical usb root nodenames.
For this example to pass change to:

usbdrd3_0: usb ??

What to do with it in the dtsi??


> +      compatible = "rockchip,rk3399-dwc3";
> +      clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> +               <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
> +               <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
> +      clock-names = "ref_clk", "suspend_clk",
> +                    "bus_clk", "aclk_usb3_rksoc_axi_perf",
> +                    "aclk_usb3", "grf_clk";
> +      #address-cells = <2>;
> +      #size-cells = <2>;

> +      ranges;

Ranges generates notifications. Could you advise if that is needed in
this dwc3 usb context and rk3399.dtsi or should it be removed?

> +      usbdrd_dwc3_0: usb@fe800000 {
> +        compatible = "snps,dwc3";
> +        reg = <0x0 0xfe800000 0x0 0x100000>;
> +        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +        dr_mode = "otg";
> +      };
> +    };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
