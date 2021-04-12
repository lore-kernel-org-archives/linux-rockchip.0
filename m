Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F5AC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 21:00:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6ABB61355
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 21:00:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6ABB61355
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LHRqgX6PLMTh63elaz/Zw5T0RpHq+iPMe+mQ0v4rojM=; b=V/xzPEbsx98I+BrLsHW07WoEi
	f38FNspGmoqipaYhlcomnaCYCM4GnZQUyFjgebbzQZbZ+fY7RZQXJXIEhLYFDC6Qoc0FJAT38k6Km
	C1ZW1Wa+a7f5tMAD2bz1ogHNC/Ctv9UgQNa6M3wqszjuqYg9xcgi7KehOxo2qh3g/yaVzgSpmjR26
	9Jk7tRUC0gAhtXwze7MSjsGwuffZiumQ2K2LyLImYLfTsFLeQePl6wOxpGE0ls5xWh+PJjhPmGAsO
	dhY+NFHJXhC7ATGtRATnLsKXf7sj55aR+2POkuk3J3yvab5zOrDyomxVmAfMm7YHGau9pQC6tl8qO
	5wW2Q1+mQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW3fc-007ffd-CR; Mon, 12 Apr 2021 21:00:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3fM-007fe3-NH; Mon, 12 Apr 2021 21:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9kV9TPzMbj2AK5mnP1JUBfDT2PtlPnfSPxEfBJjhy6c=; b=H9nrvEiqGkTYBPdLy4PgR/iOVi
 57u6LbWZ/hAcNXUbZoe4D0b6fLs5O28PAWZbEvRh/CxXKqoKPyolh7NQASvc1nuay2LBU8bBnNxbO
 DRj0qVd0eMjya+5nMrFGobfKHgcpgOKESe8bG/OHDGhVOyigOHLZ4LPPWxV4x55XKnjInKyeS5JVN
 XKgZQGzR2XRu1Ubx57Oltdt7xwKyRc6E8tL4oNkDavcrsRjLsmaqrFsqLpoHJv491y8H8CG1pKltV
 UB5nhvA4tTsWN5WloOBm1JxXdsVVZULSn/Ir3vmWgn1wXZ65Xetp/dzwwfwjhp4/AtmNA4rDep3pJ
 pyTgKjdg==;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW3fJ-006YF1-PL; Mon, 12 Apr 2021 21:00:15 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 s16-20020a0568301490b02901b83efc84a0so14073715otq.10; 
 Mon, 12 Apr 2021 14:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9kV9TPzMbj2AK5mnP1JUBfDT2PtlPnfSPxEfBJjhy6c=;
 b=ie8MqxGNibIE58k4zqteJhT2auZi8Xgw0jl/p3tBo8RPillhfjhkDaw1D/iHlrw8aZ
 JzOHi2Bf+LuculFcqSSUP+6lqnLcpiQCGlyVkOhNUUI4njhM2Cvn3crzC0Ocw6HbtTDj
 pfsX0Bp6fWQwCo3dPeE9VKQarWEfq7OJcSqtLvhtCFnVtgdBpa+WLP+lIbcXoNtfNqel
 WCQWRRkEvdWthx0HmgmanIw3RWxDW0v+/r1G1cmhg1j5rrtTi8aOVGZhgDa7lAir37PY
 iAdCBgHm/pD0x2EoDbwSEPJIZalWoa88T11539+qoZV4lV4rO7MSeQkljXs9M5A9Q6N7
 nNxQ==
X-Gm-Message-State: AOAM531SFdC/Z78cB8+YQ+tMojb02THhFxu3mO+O0/4sOmI1Nx6QqFZe
 ssrqsahyabp7qnCae8uQDQ==
X-Google-Smtp-Source: ABdhPJzWzVc2nOaQbuEcja8+P7guBn1+ygDJX+82K34uQEKwwya2ozAjHry3cN4toPk12iO3x4HyVw==
X-Received: by 2002:a9d:2e1:: with SMTP id 88mr25423735otl.120.1618261207901; 
 Mon, 12 Apr 2021 14:00:07 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e44sm1698218ote.21.2021.04.12.14.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 14:00:06 -0700 (PDT)
Received: (nullmailer pid 161379 invoked by uid 1000);
 Mon, 12 Apr 2021 21:00:05 -0000
Date: Mon, 12 Apr 2021 16:00:05 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: gpio: add YAML description for
 rockchip,gpio-bank
Message-ID: <20210412210005.GA158955@robh.at.kernel.org>
References: <20210411175435.807-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210411175435.807-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_140013_859975_A7F78706 
X-CRM114-Status: GOOD (  25.34  )
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

On Sun, Apr 11, 2021 at 07:54:35PM +0200, Johan Jonker wrote:
> Current dts files with "rockchip,gpio-bank" subnodes
> are manually verified. In order to automate this process
> the text that describes the compatible in rockchip,pinctrl.txt
> is removed and converted to YAML in rockchip,gpio-bank.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/gpio/rockchip,gpio-bank.yaml          | 82 ++++++++++++++++++++++
>  .../bindings/pinctrl/rockchip,pinctrl.txt          | 58 +--------------
>  2 files changed, 83 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> new file mode 100644
> index 000000000..ac2479732
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/rockchip,gpio-bank.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip GPIO bank
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,gpio-bank
> +      - rockchip,rk3188-gpio-bank0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  gpio-controller: true
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - gpio-controller
> +  - "#gpio-cells"
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    pinctrl: pinctrl {
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges;
> +
> +      gpio0: gpio0@2000a000 {

gpio@...

> +        compatible = "rockchip,rk3188-gpio-bank0";
> +        reg = <0x2000a000 0x100>;
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
> +      gpio1: gpio1@2003c000 {

gpio@...

> +        compatible = "rockchip,gpio-bank";
> +        reg = <0x2003c000 0x100>;
> +        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clk_gates8 10>;
> +
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> index d3eae61a3..4719a6a07 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.txt
> @@ -50,23 +50,7 @@ Deprecated properties for iomux controller:
>  	 Use rockchip,grf and rockchip,pmu described above instead.
>  
>  Required properties for gpio sub nodes:
> -  - compatible: "rockchip,gpio-bank"
> -  - reg: register of the gpio bank (different than the iomux registerset)
> -  - interrupts: base interrupt of the gpio bank in the interrupt controller
> -  - clocks: clock that drives this bank
> -  - gpio-controller: identifies the node as a gpio controller and pin bank.
> -  - #gpio-cells: number of cells in GPIO specifier. Since the generic GPIO
> -    binding is used, the amount of cells must be specified as 2. See generic
> -    GPIO binding documentation for description of particular cells.
> -  - interrupt-controller: identifies the controller node as interrupt-parent.
> -  - #interrupt-cells: the value of this property should be 2 and the interrupt
> -    cells should use the standard two-cell scheme described in
> -    bindings/interrupt-controller/interrupts.txt
> -
> -Deprecated properties for gpio sub nodes:
> -  - compatible: "rockchip,rk3188-gpio-bank0"
> -  - reg: second element: separate pull register for rk3188 bank0, use
> -	 rockchip,pmu described above instead
> +See rockchip,gpio-bank.yaml
>  
>  Required properties for pin configuration node:
>    - rockchip,pins: 3 integers array, represents a group of pins mux and config
> @@ -127,43 +111,3 @@ uart2: serial@20064000 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart2_xfer>;
>  };
> -
> -Example for rk3188:
> -
> -	pinctrl@20008000 {
> -		compatible = "rockchip,rk3188-pinctrl";
> -		rockchip,grf = <&grf>;
> -		rockchip,pmu = <&pmu>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		ranges;
> -
> -		gpio0: gpio0@2000a000 {
> -			compatible = "rockchip,rk3188-gpio-bank0";
> -			reg = <0x2000a000 0x100>;
> -			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clk_gates8 9>;
> -
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -
> -			interrupt-controller;
> -			#interrupt-cells = <2>;
> -		};
> -
> -		gpio1: gpio1@2003c000 {
> -			compatible = "rockchip,gpio-bank";
> -			reg = <0x2003c000 0x100>;
> -			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&clk_gates8 10>;
> -
> -			gpio-controller;
> -			#gpio-cells = <2>;
> -
> -			interrupt-controller;
> -			#interrupt-cells = <2>;
> -		};
> -
> -		...
> -
> -	};
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
