Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B8DC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 21:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i99pXCeoRwl1gSRUkxOS71O5TMCIs4Lg5+uiJkrQlXo=; b=qeX1jvGbRMpHAE
	4ycGkQAOYVqnO1po0Xpk5mc4aw9maFEUY2kdd31pcK+sJW4KJy3gw59XkjJRdofSG/nZkPazxWMzb
	McAU/3xE3loiUnqJJ0CW3WZFj6LfHKK8CVlbNUudHkXLZrA/nZaCxgX7C3pueVQo3979U6z5TpGkd
	OqMMDlWG6EjLgehDwJBz8DQW2TdrFt7UjPZgr7MAWi3V/ENT+IECDy3JzrCREDg1Fd3iZ5nIzkrlr
	A3hnz5PoaGkhDwJ7sPjDIMWU3qMZnlsB1eO9QL5K6n4FYtzhixAiQgKvK3V2cfD63SSU4JjUHkVD6
	PmO/OfXG5eVoejueKNyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFcz-002eLF-Cw; Wed, 18 Jan 2023 21:05:49 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIFcw-002eKD-Hb; Wed, 18 Jan 2023 21:05:48 +0000
Received: by mail-ed1-x52a.google.com with SMTP id w14so423217edi.5;
        Wed, 18 Jan 2023 13:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ef3zfxl9nq9fpHR8YJhBTRzp8G9GTQEeQ0zaoI0in1k=;
        b=g3hLpv7Z1JQbQcTCOWhvnbYvZXPv3oOlzX7j617cUcForw92WAN5hB9Nn7odi0Mjui
         9sECkGhrFNRzbA9SV2BuSjrDkb73s/xREDe+37gOFhdrcTuWw/2jwK5XI13sTiXTBh4K
         r1PYWglewDuOQL8jVrgoI0RzjLkjw6RuHh3xjXDJJVZQqK90Qx9eEl+JJ8+kqBBtKYpe
         e8PiUUQKqsH30n+GjuvE+oXbrSJpVk8wC/qm2e3EMLq5kZfGQY1ASbQQsyEp/stn7LVn
         Q0xafTzaCqKLvz7cY4K4WqysSskCD1hvWIGvHPVVsYAh45fZwcdoM9jbauWPqubc+cj2
         FkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ef3zfxl9nq9fpHR8YJhBTRzp8G9GTQEeQ0zaoI0in1k=;
        b=oACPWcyZn8A5FXJZgvGTZuZ2l9tKbG+1Zy0rH1a/1O3waY2neqRhgm3oPAsdxAnsFA
         li1341hF2R+b/AF6zvwDGw8QWz8RTykjCmtM3GUuapO7wfj7qzZKfxXD/oUyyUd2zvjN
         ehH42hYgL0mRWsaXN8P1x2cztcge4u/i3xcp8YRpYOWf4GFKzn3diQbY8my0/GLeifs5
         LOtdWIwSQV5f81e0Wqw+DAt4DzLfD5W+7qFWI0C1us/knoHbgZogG42i01j1lgkA8x1C
         OPTHYmN8sW4bquXouT5oo6X1MCPf3YFFslCbx/gj/oVpsei7XT24dXlResmrG/1KRTJf
         1VwA==
X-Gm-Message-State: AFqh2koZThLsYIUZyr+CnK8z3UNwwZ3x+1elj0XQpi80rVqPctSHgPBV
	nEm0zOSzcz5zavB/EL2L3ZI=
X-Google-Smtp-Source: AMrXdXtcuOYIvH/iQIRSSRU+VfK6+1P8eGPecffrw9Lau3PtNqWB0uY32t/70biDCQaAYY6c5NeT+g==
X-Received: by 2002:a05:6402:60b:b0:470:25cf:99d1 with SMTP id n11-20020a056402060b00b0047025cf99d1mr8853875edv.31.1674075941977;
        Wed, 18 Jan 2023 13:05:41 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7da18000000b004704658abebsm14811229eds.54.2023.01.18.13.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 13:05:41 -0800 (PST)
Message-ID: <4eca2695-cb73-eaad-4c8a-82dec923825e@gmail.com>
Date: Wed, 18 Jan 2023 22:05:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to
 its own schema
To: Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230118193056.673514-1-robh@kernel.org>
 <20230118193056.673514-2-robh@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20230118193056.673514-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_130546_616564_47013F5A 
X-CRM114-Status: GOOD (  21.34  )
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

Hi,

Some alignment at the examples and the unknown extcon property.

usb@fe800000: 'extcon' does not match any of the regexes

Johan

On 1/18/23 20:30, Rob Herring wrote:
> The rockchip,dwc3.yaml schema defines a single DWC3 node, but the RK3399
> uses the discouraged parent wrapper node and child 'generic' DWC3 node.
> The intent was to modify the RK3399 DTs to use a single node, but the DT
> changes were rejected for ABI reasons. However, the schema was accepted
> as-is.
> 
> To fix this, we need to move the RK3399 binding to its own schema file.
> The RK3328 and RK3568 bindings are correct and use a single node.
> 
> Cc: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/usb/rockchip,dwc3.yaml           |  10 +-
>  .../bindings/usb/rockchip,rk3399-dwc3.yaml    | 115 ++++++++++++++++++
>  2 files changed, 119 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> index b3798d94d2fd..edb130c780e4 100644
> --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> @@ -29,7 +29,6 @@ select:
>        contains:
>          enum:
>            - rockchip,rk3328-dwc3
> -          - rockchip,rk3399-dwc3
>            - rockchip,rk3568-dwc3
>    required:
>      - compatible
> @@ -39,7 +38,6 @@ properties:
>      items:
>        - enum:
>            - rockchip,rk3328-dwc3
> -          - rockchip,rk3399-dwc3
>            - rockchip,rk3568-dwc3
>        - const: snps,dwc3
>  
> @@ -90,7 +88,7 @@ required:
>  
>  examples:
>    - |
> -    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/clock/rk3328-cru.h>
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
>      bus {
> @@ -98,11 +96,11 @@ examples:
>        #size-cells = <2>;
>  
>        usbdrd3_0: usb@fe800000 {
> -        compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
> +        compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
>          reg = <0x0 0xfe800000 0x0 0x100000>;
>          interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> -        clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> -                 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
> +        clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,

> +                <&cru ACLK_USB3OTG>;

align

>          clock-names = "ref_clk", "suspend_clk",
>                        "bus_clk", "grf_clk";
>          dr_mode = "otg";
> diff --git a/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> new file mode 100644
> index 000000000000..e39a8a3a7ab3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/rockchip,rk3399-dwc3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3399 SuperSpeed DWC3 USB SoC controller
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3399-dwc3
> +
> +  '#address-cells':
> +    const: 2
> +
> +  '#size-cells':
> +    const: 2
> +
> +  ranges: true
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
> +          USB3 aclk peri
> +      - description:
> +          USB3 aclk
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
> +      - const: grf_clk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: usb3-otg
> +
> +patternProperties:
> +  '^usb@':
> +    $ref: snps,dwc3.yaml#
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - '#address-cells'
> +  - '#size-cells'
> +  - ranges
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/power/rk3399-power.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        usb {
> +            compatible = "rockchip,rk3399-dwc3";
> +            #address-cells = <2>;
> +            #size-cells = <2>;
> +            ranges;
> +            clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,

> +              <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
> +              <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;

align

> +            clock-names = "ref_clk", "suspend_clk",

> +                    "bus_clk", "aclk_usb3_rksoc_axi_perf",
> +                    "aclk_usb3", "grf_clk";

align

> +            resets = <&cru SRST_A_USB3_OTG0>;
> +            reset-names = "usb3-otg";
> +
> +            usb@fe800000 {
> +                compatible = "snps,dwc3";
> +                reg = <0x0 0xfe800000 0x0 0x100000>;
> +                interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
> +                clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,

> +                  <&cru SCLK_USB3OTG0_SUSPEND>;

align

> +                clock-names = "ref", "bus_early", "suspend";
> +                dr_mode = "otg";
> +                phys = <&u2phy0_otg>, <&tcphy0_usb3>;
> +                phy-names = "usb2-phy", "usb3-phy";
> +                phy_type = "utmi_wide";
> +                snps,dis_enblslpm_quirk;
> +                snps,dis-u2-freeclk-exists-quirk;
> +                snps,dis_u2_susphy_quirk;
> +                snps,dis-del-phy-power-chg-quirk;
> +                snps,dis-tx-ipgap-linecheck-quirk;
> +                power-domains = <&power RK3399_PD_USB3>;
> +            };
> +        };
> +    };
> +...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
