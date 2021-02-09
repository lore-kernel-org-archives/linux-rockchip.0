Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4329DC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 15:22:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC0CF64EB8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 15:22:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DC0CF64EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lHF9x96Fd7izTpKU0iKxMrJvq3to1jVkI5UwkddZmOo=; b=mgqq+Tjs4wgEmFQeC5CTB1Z7c
	Zlqpk9b8WMEC3DXd9WK5LIV3Lv5y/EUpG3NgBj2FKUQhjNbb6dunX6UWKsvOTNrzcSDXhRn1GDgAK
	PvSkpkVFUNNhGnRUnn6FI7Qgd/UFMpxQWBvaaM66CcxsEK2fcT+zqpGy1dZ+B6Go1xfyhn7CmSVpf
	eNI4+N0EPVISPObHDZrcRis3gTIuZW4+ZXqmC8B6R/Xk4gvxCqkC1YgDeoxQFAj9WrQDRdK/OQhcG
	+n/1YkoizgLlJz5E2K5IupLgaEkb5OeNB0iHZRlVDOMXaTu2qKegtQeNlfc/BP1FbW5mIgML3rrcl
	a8WvngnzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Uqq-0007cv-CE; Tue, 09 Feb 2021 15:22:52 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9Uqm-0007bU-Pv; Tue, 09 Feb 2021 15:22:50 +0000
Received: by mail-oi1-f182.google.com with SMTP id l3so9840150oii.2;
 Tue, 09 Feb 2021 07:22:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pdkRS3Vib+f99aAuZIkfmdf8/nBjJhm3iilrBoLKCLg=;
 b=L6qBlMVyi0P5KdBIzIWXB5/48S+6efsR8cyz0WExtW0QHSyMHCFA1wrToz5pX8dfax
 5NDCsOk1a5qUkr50M7VjgdmoztGMp4ccmqQuPLbC29kJBhoRQDGCTRnX8NaO6fUxcOOK
 TH3XlPC2vqTacj7XBHT61qrJ8l2XDWGTbXTxQDqhgeylXRNTUgdWTomsISSfpX7las/7
 djglX1S7ski3LYt4T7w0ce+8rEHq7O3ov6KnLC3bCr1HHv4FZPsWjvfpz3Q/f+QTlROC
 mNnBpV006EdX5IUs0A2lBFOFmG9G9cB7ycnLuScYJL0jeCyWujnPSY+BKLxkt6IhS3mD
 Bguw==
X-Gm-Message-State: AOAM5300Rg8S/kBZ7kKljMr8nvNpwSDVTzwCntFGaB0QGo+RojPiVaEN
 xZ7/t1kJpS/hPjgxk+Y1fQ==
X-Google-Smtp-Source: ABdhPJweWkg0RNGbRHkrsVHVJP6WqRao/H++c8lbgNFtsQTEv65JqaYBMw8rlSV8B5biYBI3ZoU84Q==
X-Received: by 2002:a05:6808:bc3:: with SMTP id
 o3mr2795912oik.134.1612884167565; 
 Tue, 09 Feb 2021 07:22:47 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s1sm1517007ooj.30.2021.02.09.07.22.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:22:45 -0800 (PST)
Received: (nullmailer pid 3781070 invoked by uid 1000);
 Tue, 09 Feb 2021 15:22:44 -0000
Date: Tue, 9 Feb 2021 09:22:44 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: usb: convert rockchip,dwc3.txt to yaml
Message-ID: <20210209152244.GA3769707@robh.at.kernel.org>
References: <20210206185017.1817-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210206185017.1817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_102248_888135_CB89B904 
X-CRM114-Status: GOOD (  23.41  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, balbi@kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Feb 06, 2021 at 07:50:10PM +0100, Johan Jonker wrote:
> In the past Rockchip dwc3 usb nodes were manually checked.
> With the conversion of snps,dwc3.yaml as common document
> we now can convert rockchip,dwc3.txt to yaml as well.
> Remove node wrapper.
> 
> Added properties for rk3399 are:
>   power-domains
>   resets
>   reset-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V3:
>   remove aclk_usb3_rksoc_axi_perf
>   remove aclk_usb3
> 
> Changed V2:
>   remove node wrapper
> ---
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      | 56 -------------
>  .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 95 ++++++++++++++++++++++
>  2 files changed, 95 insertions(+), 56 deletions(-)
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
> index 000000000..d815aacfc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -0,0 +1,95 @@
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
> +description:
> +  The common content of the node is defined in snps,dwc3.yaml.
> +
> +  Phy documentation is provided in the following places.
> +
> +  USB2.0 PHY
> +  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +
> +  Type-C PHY
> +  Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
> +
> +allOf:
> +  - $ref: snps,dwc3.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3399-dwc3
> +      - const: snps,dwc3

This will match on all 'snps,dwc3' nodes. You will need a custom 
'select' to only match on rockchip,rk3399-dwc3.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
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
> +          Controller grf clock
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk
> +      - const: suspend_clk
> +      - const: bus_clk
> +      - const: grf_clk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: usb3-otg
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      usbdrd3_0: usb@fe800000 {
> +        compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
> +        reg = <0x0 0xfe800000 0x0 0x100000>;
> +        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> +                 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
> +        clock-names = "ref_clk", "suspend_clk",
> +                      "bus_clk", "grf_clk";
> +        dr_mode = "otg";
> +      };
> +    };
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
