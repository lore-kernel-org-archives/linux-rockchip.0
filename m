Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE9EBC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:48:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1372261401
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:48:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1372261401
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/L/QnrclPTRN/pxkELBCnnWRLAgTae68oAk32DdzEdE=; b=U4vtwQpiDzVJON1qBC4x/qNKm
	4dVAO3xAMnswih/2bXhIFlKzP+4qeHIpQNSZjbYQCwStMUvIWrFj5GRLM17tnGloB+axJo5C+XnaF
	kY2qebc916rtMDPM93lt6RgkXF/NVSez+6ssF9MBLzAguBB+ULz6+BLzRfQVadGWiBp8PR6KVFHza
	+OAKV1N173hQTGc4hgblMzVvbqU3cn0zdoiDvVYaefdqI05FgauVmlZ+5Qwbua5Sqo3RL+25IRfKl
	6aZKEJLYEVwXEQrddIZxfX1d7UXRzvMJp3y2BMr8jmI+489QvgDhoHMv/melzoov3539Y66nHYblY
	gMDvblgXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7O3-0081sW-11; Fri, 07 May 2021 20:47:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7O1-0081sH-Gj; Fri, 07 May 2021 20:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ItyeI4oA0lCjgmNOSmQd55OCetN3+iDGkX/UtCXQN2I=; b=UhHGGkwtAnpbr6iXkyzu3oxKrN
 2RtI13msZq7aam5QcCGS7vwiO5EmNzv+fIz4aEy3kv7lwQj7uMNAGFaiXUvyFdFWfYfSMZQcGAUAd
 beOfmiKLq+TOzeRo6vsKM8IsnfSHa+nRnrHZrxKRP07YBPaNSFWLcSdBifxP9KrqUbBlzATfNNBbG
 Jb1WVhFglqyHIs/6f8esRSC/auckjVQL/Qssnsw6cwEDlYhA/XmlZfWFOCb1YVd3KtWcV3V++yFlc
 imobGY7OlUmmi3rvGK2/BczX2y/lEOzEE1Bz8nAf0drOs4ymd16kFbIc/OqPvrOw7fNcUTc/AISsm
 pklJFIzw==;
Received: from mail-oo1-f52.google.com ([209.85.161.52])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7Ny-007Ats-3r; Fri, 07 May 2021 20:47:48 +0000
Received: by mail-oo1-f52.google.com with SMTP id
 t17-20020a4a3e110000b02901fab2f46a48so2239732oot.6; 
 Fri, 07 May 2021 13:47:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ItyeI4oA0lCjgmNOSmQd55OCetN3+iDGkX/UtCXQN2I=;
 b=r5xjLZiamuUXuvtRmtkhnZCUav7TmiXz8Sntgpbvy8+aHAUczhpyD3FGx8CHhQLj0u
 24dT5J2rd8PniDNdwxY4OYjeptAdHwFNwgTg11AI0ucQCA3CMD/nyuBvF6LBHtsyaeKY
 G5v1V+7dm0tsDDTezydpFPVb6lZA+h/VReme+Zf9dOP5WGgpsTqg4p7yIoN9tbJS8DWc
 2qeKP5Oem5MN3ok9IvOCAeVNj6+10Tmi0BjQp7XACC+ZBWHv6C3b6HD253+dJOQ5WBNy
 4SYHILxMJt+XO8jqwP+oqCDcCOT6FaaiTsd6oKkwN0TXhnbLLbSRukEZDEV7BBtgrft/
 2aNg==
X-Gm-Message-State: AOAM532wTfjugKzSsVftZj+6Ex5eCloputV/J1YMmc7dCuasYToEI0pL
 vxlHDXzt7mtvVZXZnet4YA==
X-Google-Smtp-Source: ABdhPJyV6f2KSOJGMZheEOrH5nN5E3Ns/i1wFHqioqk26FOeWj2dpLJ5bggrMZfKHAbI0UVzJsm+Ow==
X-Received: by 2002:a4a:ae47:: with SMTP id a7mr6712078oon.23.1620420464568;
 Fri, 07 May 2021 13:47:44 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h184sm1203084oia.1.2021.05.07.13.47.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 13:47:43 -0700 (PDT)
Received: (nullmailer pid 2855625 invoked by uid 1000);
 Fri, 07 May 2021 20:47:41 -0000
Date: Fri, 7 May 2021 15:47:41 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
Message-ID: <20210507204741.GA2842589@robh.at.kernel.org>
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <20210505134028.13431-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505134028.13431-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_134746_190883_1500EF7C 
X-CRM114-Status: GOOD (  19.97  )
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

On Wed, May 05, 2021 at 03:40:26PM +0200, Johan Jonker wrote:
> Current dts files with 'grf' nodes are manually verified.
> In order to automate this process grf.txt has to be
> converted to YAML.
> 
> Most compatibility strings are in use with "simple-mfd" added.
> 
> Add description already in use:
> "rockchip,rv1108-pmugrf", "syscon"
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   add rockchip,rk3328-grf-gpio.yaml
>   rename grf-gpio nodename
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 280 +++++++++++++++++++++
>  2 files changed, 280 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml


> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> new file mode 100644
> index 000000000..c7916beb4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -0,0 +1,280 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip General Register Files (GRF)
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,px30-grf
> +          - rockchip,px30-pmugrf
> +          - rockchip,px30-usb2phy-grf
> +          - rockchip,rk3036-grf
> +          - rockchip,rk3066-grf
> +          - rockchip,rk3188-grf
> +          - rockchip,rk3228-grf
> +          - rockchip,rk3288-grf
> +          - rockchip,rk3288-sgrf
> +          - rockchip,rk3308-core-grf
> +          - rockchip,rk3308-detect-grf
> +          - rockchip,rk3308-grf
> +          - rockchip,rk3328-grf
> +          - rockchip,rk3328-usb2phy-grf
> +          - rockchip,rk3368-grf
> +          - rockchip,rk3368-pmugrf
> +          - rockchip,rk3399-grf
> +          - rockchip,rk3399-pmugrf
> +          - rockchip,rk3568-grf
> +          - rockchip,rk3568-pmugrf
> +          - rockchip,rv1108-grf
> +          - rockchip,rv1108-pmugrf
> +          - rockchip,rv1108-usbgrf
> +
> +  required:
> +    - compatible

You shouldn't need 'select' here. The tools handle not matching every 
syscon or simple-mfd.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - rockchip,rk3066-grf
> +              - rockchip,rk3188-grf
> +              - rockchip,rk3288-sgrf
> +              - rockchip,rv1108-pmugrf
> +              - rockchip,rv1108-usbgrf
> +          - const: syscon
> +      - items:
> +          - enum:
> +              - rockchip,px30-grf
> +              - rockchip,px30-pmugrf
> +              - rockchip,px30-usb2phy-grf
> +              - rockchip,rk3036-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3288-grf
> +              - rockchip,rk3308-core-grf
> +              - rockchip,rk3308-detect-grf
> +              - rockchip,rk3308-grf
> +              - rockchip,rk3328-grf
> +              - rockchip,rk3328-usb2phy-grf
> +              - rockchip,rk3368-grf
> +              - rockchip,rk3368-pmugrf
> +              - rockchip,rk3399-grf
> +              - rockchip,rk3399-pmugrf
> +              - rockchip,rk3568-grf
> +              - rockchip,rk3568-pmugrf
> +              - rockchip,rv1108-grf
> +          - const: syscon
> +          - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: true

Never correct for a schema defining a whole node (IOW, only correct for 
collections of shared properties).

unevaluatedProperties: false

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-grf
> +
> +    then:
> +      properties:
> +        lvds:
> +          description:
> +            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3288-grf
> +
> +    then:
> +      properties:
> +        edp-phy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> +
> +        usbphy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3328-grf
> +
> +    then:
> +      properties:
> +        gpio:
> +          type: object
> +
> +          $ref: "/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +        power-controller:
> +          type: object
> +
> +          $ref: "/schemas/power/rockchip,power-controller.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3399-grf
> +
> +    then:
> +      properties:
> +        mipi-dphy-rx0:
> +          type: object
> +
> +          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +        pcie-phy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
> +
> +      patternProperties:
> +        "phy@[0-9a-f]+$":
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-pmugrf
> +              - rockchip,rk3036-grf
> +              - rockchip,rk3308-grf
> +              - rockchip,rk3368-pmugrf
> +
> +    then:
> +      properties:
> +        reboot-mode:
> +          type: object
> +
> +          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-usb2phy-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3328-usb2phy-grf
> +              - rockchip,rk3399-grf
> +              - rockchip,rv1108-grf
> +
> +    then:
> +      properties:
> +        "#address-cells":
> +          const: 1
> +
> +        "#size-cells":
> +          const: 1
> +
> +      required:
> +        - "#address-cells"
> +        - "#size-cells"
> +
> +      patternProperties:
> +        "usb2-phy@[0-9a-f]+$":
> +          type: object
> +
> +          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-pmugrf
> +              - rockchip,px30-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3288-grf
> +              - rockchip,rk3328-grf
> +              - rockchip,rk3368-pmugrf
> +              - rockchip,rk3368-grf
> +              - rockchip,rk3399-pmugrf
> +              - rockchip,rk3399-grf
> +
> +    then:
> +      properties:
> +        io-domains:
> +          description:
> +            Documentation/devicetree/bindings/power/rockchip-io-domain.txt
> +
> +          unevaluatedProperties: false

These 'if' sections are probably a sign that this should be separate 
schemas for each 'if' subset. But fine to leave as-is.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rk3399-power.h>
> +    grf: syscon@ff770000 {
> +      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> +      reg = <0xff770000 0x10000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +
> +      mipi_dphy_rx0: mipi-dphy-rx0 {
> +        compatible = "rockchip,rk3399-mipi-dphy-rx0";
> +        clocks = <&cru SCLK_MIPIDPHY_REF>,
> +                 <&cru SCLK_DPHY_RX0_CFG>,
> +                 <&cru PCLK_VIO_GRF>;
> +        clock-names = "dphy-ref", "dphy-cfg", "grf";
> +        power-domains = <&power RK3399_PD_VIO>;
> +        #phy-cells = <0>;
> +      };
> +
> +      u2phy0: usb2-phy@e450 {
> +        compatible = "rockchip,rk3399-usb2phy";
> +        reg = <0xe450 0x10>;
> +        clocks = <&cru SCLK_USB2PHY0_REF>;
> +        clock-names = "phyclk";
> +        #clock-cells = <0>;
> +        clock-output-names = "clk_usbphy0_480m";
> +        #phy-cells = <0>;
> +
> +        u2phy0_host: host-port {
> +          #phy-cells = <0>;
> +          interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names = "linestate";
> +         };
> +
> +        u2phy0_otg: otg-port {
> +          #phy-cells = <0>;
> +          interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names = "otg-bvalid", "otg-id",
> +                            "linestate";
> +        };
> +      };
> +    };
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
