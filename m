Return-Path: <SRS0=E64z=HE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B570C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 20:07:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4E9264E4B
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 20:07:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4E9264E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QXfUgUfw4CHV5rTyHRVdQcJN/bbLCBfO2lxnakPB40Q=; b=Wy2hfjhWt+JN9ihdlF/L60Gjq
	XG1Eb0LmIjQIOfKmT6k815uuwuvufq39IQZYHk1h4ssYFtSZUcmocpSbKBjgNWT0yq8Z670lF59yi
	+wR2bXRojdvt6xvgLijvROlIkqugcJyzBtl1ScUmKXUQAVOkYRh9kmyIClVdQOsAdN+14EZBjfZwl
	+/HzxZfioZjiya0tjZzZBg8TIo0QRV+peZVHLfvCXRkSvTZsqaP+RU+qiz94hHYibply9lueR57ES
	5zL0iKx/aPTmo0SrSrl5gL0HbR7DTXm8W+EroYKNdBiqkcObol7RxMWc6LDTlZfwz1OFzljjVHB0y
	BkFUF/sgQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l71x2-0006WX-Dx; Tue, 02 Feb 2021 20:07:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l71wx-0006Uq-8L; Tue, 02 Feb 2021 20:07:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 32ED364F58;
 Tue,  2 Feb 2021 20:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612296417;
 bh=177W24pGzoFswqH9nTZaROa3v08ehN0O15ITVWWoTA8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=X3YnornFgmRRBVzILwDg1N8sB8wXFA7S1v9nsp83crJauh6vb6xxteVp6Kqq+qEy4
 FmirK5uSR3NToqSrNRpy3xuEdzdCMvGt7WUdHNTGgaHIjaXO5+fG63FlcryheTPTXH
 Wb5P79FDuM65nY31V5WUdrVoshCLONQACZtl81vZjJcA2n81tY4stjhTpl9MQYDqH7
 i5dRRNzbZy1L9RkQHU+vBI/qzpM/VOuD0pW/maAN0dxFO3IOUXay4aa5Us1Kl0/9L8
 nkytDB/iSk7QBOohxDGoA09zisdqbkw24MyrlYwQdlqtADCJ/b4JgiKN+PYvLo1gFX
 Sn3YmjyvNCWBQ==
Received: by mail-ej1-f41.google.com with SMTP id i8so15465305ejc.7;
 Tue, 02 Feb 2021 12:06:57 -0800 (PST)
X-Gm-Message-State: AOAM533LfRlEXSA6h5/hg9xID2HnBm0IEkVWjIRZHTTsIE2A6qHU8kze
 nleQpunU3dCSUz8QBJJLT+DVbTxED1SbM0k+2A==
X-Google-Smtp-Source: ABdhPJy+Ssy3SHqDPADh0XT4vUCeL4af4/u7PEu8tQ8UODl2UpPpxxaQvEaUlpa6MrTAVJMm3ZaMnyQ921p4Sq6+l5k=
X-Received: by 2002:a17:906:25c4:: with SMTP id
 n4mr24229292ejb.359.1612296415627; 
 Tue, 02 Feb 2021 12:06:55 -0800 (PST)
MIME-Version: 1.0
References: <20210201194105.32673-1-jbx6244@gmail.com>
 <d4626d79-06ae-6abc-6ab4-6425fc344180@gmail.com>
In-Reply-To: <d4626d79-06ae-6abc-6ab4-6425fc344180@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 Feb 2021 14:06:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLb65dM1QvOCVqztc_x9YQMkbwR_eNdnzyCoBJv0DA0Tw@mail.gmail.com>
Message-ID: <CAL_JsqLb65dM1QvOCVqztc_x9YQMkbwR_eNdnzyCoBJv0DA0Tw@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: usb: convert rockchip,
 dwc3.txt to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210202_150659_543881_08C8C530 
X-CRM114-Status: GOOD (  29.68  )
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
Cc: devicetree@vger.kernel.org, "heiko@sntech.de" <heiko@sntech.de>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Feb 1, 2021 at 2:46 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Rob,
>
> See questions below.
>
> Kind regards,
>
> Johan Jonker
>
> On 2/1/21 8:41 PM, Johan Jonker wrote:
> > In the past Rockchip dwc3 usb nodes were manually checked.
> > With the conversion of snps,dwc3.yaml as common document
> > we now can convert rockchip,dwc3.txt to yaml as well.
> >
> > Added properties for rk3399 are:
> >   resets
> >   reset-names
> >
> > Generic properties that are now also filtered:
> >   "#address-cells"
> >   "#size-cells"
> >   ranges
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
> >  .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 107 +++++++++++++++++++++
> >  2 files changed, 107 insertions(+), 56 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> >  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> > deleted file mode 100644
> > index 945204932..000000000
> > --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> > +++ /dev/null
> > @@ -1,56 +0,0 @@
> > -Rockchip SuperSpeed DWC3 USB SoC controller
> > -
> > -Required properties:
> > -- compatible:        should contain "rockchip,rk3399-dwc3" for rk3399 SoC
> > -- clocks:    A list of phandle + clock-specifier pairs for the
> > -             clocks listed in clock-names
> > -- clock-names:       Should contain the following:
> > -  "ref_clk"  Controller reference clk, have to be 24 MHz
> > -  "suspend_clk"      Controller suspend clk, have to be 24 MHz or 32 KHz
> > -  "bus_clk"  Master/Core clock, have to be >= 62.5 MHz for SS
> > -             operation and >= 30MHz for HS operation
> > -  "grf_clk"  Controller grf clk
> > -
> > -Required child node:
> > -A child node must exist to represent the core DWC3 IP block. The name of
> > -the node is not important. The content of the node is defined in dwc3.txt.
> > -
> > -Phy documentation is provided in the following places:
> > -Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml - USB2.0 PHY
> > -Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt     - Type-C PHY
> > -
> > -Example device nodes:
> > -
> > -     usbdrd3_0: usb@fe800000 {
> > -             compatible = "rockchip,rk3399-dwc3";
> > -             clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> > -                      <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
> > -             clock-names = "ref_clk", "suspend_clk",
> > -                           "bus_clk", "grf_clk";
> > -             #address-cells = <2>;
> > -             #size-cells = <2>;
> > -             ranges;
> > -             usbdrd_dwc3_0: dwc3@fe800000 {
> > -                     compatible = "snps,dwc3";
> > -                     reg = <0x0 0xfe800000 0x0 0x100000>;
> > -                     interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> > -                     dr_mode = "otg";
> > -             };
> > -     };
> > -
> > -     usbdrd3_1: usb@fe900000 {
> > -             compatible = "rockchip,rk3399-dwc3";
> > -             clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
> > -                      <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
> > -             clock-names = "ref_clk", "suspend_clk",
> > -                           "bus_clk", "grf_clk";
> > -             #address-cells = <2>;
> > -             #size-cells = <2>;
> > -             ranges;
> > -             usbdrd_dwc3_1: dwc3@fe900000 {
> > -                     compatible = "snps,dwc3";
> > -                     reg = <0x0 0xfe900000 0x0 0x100000>;
> > -                     interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
> > -                     dr_mode = "otg";
> > -             };
> > -     };
> > diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > new file mode 100644
> > index 000000000..681086fa6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > @@ -0,0 +1,107 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/rockchip,dwc3.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip SuperSpeed DWC3 USB SoC controller
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3399-dwc3
> > +
> > +  clocks:
> > +    items:
> > +      - description:
> > +          Controller reference clock, must to be 24 MHz
> > +      - description:
> > +          Controller suspend clock, must to be 24 MHz or 32 KHz
> > +      - description:
> > +          Master/Core clock, must to be >= 62.5 MHz for SS
> > +          operation and >= 30MHz for HS operation
> > +      - description:
> > +          Controller aclk_usb3_rksoc_axi_perf clock
> > +      - description:
> > +          Controller aclk_usb3 clock
> > +      - description:
> > +          Controller grf clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: ref_clk
> > +      - const: suspend_clk
> > +      - const: bus_clk
>
> > +      - const: aclk_usb3_rksoc_axi_perf
> > +      - const: aclk_usb3
>
> This was not in the original document, but is needed to compile.

Okay, fine to add it. That's common.

> > +      - const: grf_clk
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: usb3-otg
> > +
> > +  "#address-cells":
> > +    const: 2
> > +
> > +  "#size-cells":
> > +    const: 2
> > +
> > +  ranges: true
> > +
> > +patternProperties:
> > +  "^usb@[a-f0-9]+$":
> > +    type: object
> > +
> > +    $ref: "snps,dwc3.yaml"
> > +
> > +    description:
> > +      A child node must exist to represent the core DWC3 IP block.
> > +      The content of the node is defined in snps,dwc3.yaml.
> > +
> > +      Phy documentation is provided in the following places.
> > +
> > +      USB2.0 PHY
> > +      Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > +
> > +      Type-C PHY
> > +      Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
> > +
> > +    unevaluatedProperties: false
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +  - clock-names
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - ranges
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rk3399-cru.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>
> > +    usbdrd3_0: usb@fe800000 {
>
> The rk3399 has 2 dwc3 usb nodes. When we remove @fe800000 and @fe900000
> in the rk3399.dtsi it complains about 2 identical usb root nodenames.
> For this example to pass change to:
>
> usbdrd3_0: usb ??
>
> What to do with it in the dtsi??

The correct thing is really that there shouldn't have been 2 nodes in
the first place. I think the first DWC3 user had some wrapper
registers where separate nodes kind of make sense. But just for
clocks, not really needed.

> > +      compatible = "rockchip,rk3399-dwc3";
> > +      clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
> > +               <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
> > +               <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
> > +      clock-names = "ref_clk", "suspend_clk",
> > +                    "bus_clk", "aclk_usb3_rksoc_axi_perf",
> > +                    "aclk_usb3", "grf_clk";
> > +      #address-cells = <2>;
> > +      #size-cells = <2>;
>
> > +      ranges;
>
> Ranges generates notifications. Could you advise if that is needed in
> this dwc3 usb context and rk3399.dtsi or should it be removed?

A non-empty ranges will solve all your problems:

ranges = <0 0xfe800000 0 0xfe800000 0 0x100000>;

>
> > +      usbdrd_dwc3_0: usb@fe800000 {
> > +        compatible = "snps,dwc3";
> > +        reg = <0x0 0xfe800000 0x0 0x100000>;
> > +        interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> > +        dr_mode = "otg";
> > +      };
> > +    };
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
