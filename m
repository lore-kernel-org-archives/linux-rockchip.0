Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6BEC43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:12:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CBD0613CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:12:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CBD0613CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7k0QmUmw33sMWPyZ2IX3qsJe7vCOneKT7D6g/aIjiig=; b=CIgsGlFQEHfRuoVCKxcD+/8zb
	SMYdHjnbcRu8nXYFEDZi3q1NQaY/17jsN3hyVhNU6+M3i5e5YYQrNUIR2BeLarqyjv2SHRb8CEm3E
	W2I02V/3RqEv01Pw7GYZVHUJP/lfoniYMQqJE2/WMuKGN7I2yqjAlZeID1voD5qGovDR8gZkNmm18
	c+uTKv4KAuudchEI1BKS+lrmvTBS5hBz7zwS4HKaSeCa+Wd5FuDulaA6OPDbpR+ha9aYjXcHzHbdO
	HDoq7ySwTx7FEW0rBzDCgx2zSwHNvUVr3YBG+ze7HU1IoYf+KhQXBHWZ8WQhYU9yk0AmU6z8yuZgq
	TbUN6u/Rw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg8WQ-00EuvF-Ms; Mon, 10 May 2021 16:12:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8WO-00Euub-Tp; Mon, 10 May 2021 16:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D+D8DJPad8or/G8m+Uh5/a1/W6JHn9FtJJ968bz/iUg=; b=sPwg5E8L1wlh+xBHNZpFNmVrZ3
 7rjZq9XlRGHASJl5yaP2YNEtOUPhUrEz516Dw7iITePZRYexJQWQooLeHqAc7bZ18LQWiqIf8Q6QF
 ENT+5JK6bWHjZcDlGTi3S2zHRMwtMdE45U2vbA5dJNa9qZ3pxPNa0TUiZPlOVsWZ5tkIT9xsMYP8w
 fc7HS3wKfBIgwnwLlRU5YBubSHc+QFj17ayHIT4d363t7923JWDBS7bMyiPjX8LSKn5k5gNybKp8N
 0tsBtf8fq+sZdpTqUE5vLxg0axgX9eksLDROSx84qZ5tP2u/G0kuP/zmBtAVF8bXdeoDyw30FcXn6
 zp0IIIpQ==;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8WL-008uL7-F4; Mon, 10 May 2021 16:12:39 +0000
Received: by mail-oi1-f177.google.com with SMTP id k25so16276843oic.4;
 Mon, 10 May 2021 09:12:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D+D8DJPad8or/G8m+Uh5/a1/W6JHn9FtJJ968bz/iUg=;
 b=eIkSi3wAB+RevlhNAfxiu6vbIzo2VUTlsRGsE6nLCx3QkLQTcH70iMlHhGard2pApC
 0Mf+gbq3B2liqe97uub0wIjQe15YQ4s0myDpUrvPXMW8k5hf/gzU2J/eeqxG0I7sNcgP
 udGkZTRD1/knzG27c2Q5BsPwh/Rt2x/dWcLiXbEp/JrXV71STQFqn0eztSQXE+fxUlok
 9zRdRwNkIQJ225n88msuzaT0491Z/qW5wv6F9qeLOtJSj3Euh++hGWeMOflD5usO0ia9
 W74Cls7CJd2vmZ7TByaBo1jkgeBpLdcRKzDWJjnNolU+NgAJXv0LgM6ev5Hi4ztAd3r5
 3B2Q==
X-Gm-Message-State: AOAM530930E/foWKwIrYzADO40BoMfBPeBIJLxgyMiBnNua4FdkkhLrj
 rTj7GLFA5lvma1XzeV0GrUiPWseceA==
X-Google-Smtp-Source: ABdhPJypgKtLUjVFq46WWmlsKyc37PLmxJq4xMSwcNpQJTrTkDUsnBTFhLqMgRV8+mCcAs+kqp9plw==
X-Received: by 2002:aca:4004:: with SMTP id n4mr18363581oia.89.1620663156183; 
 Mon, 10 May 2021 09:12:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v28sm2819594ood.27.2021.05.10.09.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 09:12:35 -0700 (PDT)
Received: (nullmailer pid 216890 invoked by uid 1000);
 Mon, 10 May 2021 16:12:34 -0000
Date: Mon, 10 May 2021 11:12:34 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
Message-ID: <20210510161234.GA210306@robh.at.kernel.org>
References: <20210508123743.18128-1-jbx6244@gmail.com>
 <20210508123743.18128-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508123743.18128-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_091237_542727_3044F426 
X-CRM114-Status: GOOD (  25.41  )
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

On Sat, May 08, 2021 at 02:37:41PM +0200, Johan Jonker wrote:
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
> 
> Changed V3:
>   remove select
>   change unevaluatedProperties
>   add separate schemas for each 'if' subset

Sorry, but by separate I meant different files. But you don't *have* to 
do that.

> 
> Changed V2:
>   add rockchip,rk3328-grf-gpio.yaml
>   rename grf-gpio nodename
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 262 +++++++++++++++++++++
>  2 files changed, 262 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> deleted file mode 100644
> index f96511aa3..000000000
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -* Rockchip General Register Files (GRF)
> -
> -The general register file will be used to do static set by software, which
> -is composed of many registers for system control.
> -
> -From RK3368 SoCs, the GRF is divided into two sections,
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- PMUGRF, used for always on system
> -
> -On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
> -
> -ON RK3308 SoC, the GRF is divided into four sections:
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- DETECTGRF, used for audio codec system,
> -- COREGRF, used for pvtm,
> -
> -Required Properties:
> -
> -- compatible: GRF should be one of the following:
> -   - "rockchip,px30-grf", "syscon": for px30
> -   - "rockchip,rk3036-grf", "syscon": for rk3036
> -   - "rockchip,rk3066-grf", "syscon": for rk3066
> -   - "rockchip,rk3188-grf", "syscon": for rk3188
> -   - "rockchip,rk3228-grf", "syscon": for rk3228
> -   - "rockchip,rk3288-grf", "syscon": for rk3288
> -   - "rockchip,rk3308-grf", "syscon": for rk3308
> -   - "rockchip,rk3328-grf", "syscon": for rk3328
> -   - "rockchip,rk3368-grf", "syscon": for rk3368
> -   - "rockchip,rk3399-grf", "syscon": for rk3399
> -   - "rockchip,rv1108-grf", "syscon": for rv1108
> -- compatible: DETECTGRF should be one of the following:
> -   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
> -- compatilbe: COREGRF should be one of the following:
> -   - "rockchip,rk3308-core-grf", "syscon": for rk3308
> -- compatible: PMUGRF should be one of the following:
> -   - "rockchip,px30-pmugrf", "syscon": for px30
> -   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
> -   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
> -- compatible: SGRF should be one of the following:
> -   - "rockchip,rk3288-sgrf", "syscon": for rk3288
> -- compatible: USB2PHYGRF should be one of the following:
> -   - "rockchip,px30-usb2phy-grf", "syscon": for px30
> -   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
> -- compatible: USBGRF should be one of the following:
> -   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -
> -Example: GRF and PMUGRF of RK3399 SoCs
> -
> -	pmugrf: syscon@ff320000 {
> -		compatible = "rockchip,rk3399-pmugrf", "syscon";
> -		reg = <0x0 0xff320000 0x0 0x1000>;
> -	};
> -
> -	grf: syscon@ff770000 {
> -		compatible = "rockchip,rk3399-grf", "syscon";
> -		reg = <0x0 0xff770000 0x0 0x10000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> new file mode 100644
> index 000000000..264e2e5ff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -0,0 +1,262 @@
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
> +unevaluatedProperties: false
> +
> +allOf:
> +  - $ref: "#/$defs/px30-grf"
> +  - $ref: "#/$defs/rk3288-grf"
> +  - $ref: "#/$defs/rk3328-grf"
> +  - $ref: "#/$defs/rk3399-grf"
> +  - $ref: "#/$defs/reboot"
> +  - $ref: "#/$defs/usb2"
> +  - $ref: "#/$defs/domains"
> +
> +$defs:

There's not really any point to using '$defs' unless you have 2 or more 
references to them.

> +  px30-grf:
> +    if:
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
> +  rk3288-grf:
> +    if:
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
> +  rk3328-grf:
> +    if:
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
> +  rk3399-grf:
> +    if:
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
> +  reboot:
> +    if:
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
> +  usb2:
> +    if:
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
> +  domains:
> +    if:
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
