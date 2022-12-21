Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9132C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 22:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJVi52/2k+SzKnx94ObjscCKz/XfdggyCvciLqRSxRw=; b=lybgNz+u8aMUGL
	aD2Lb95NWVd4Fyd+5IjdOJ2VopIG6Z0ejLVxFADvu0ORZM0QkmblaysW/PN4RSvx9i+9mBAPUKg2Q
	JskpJngvZwGHS0hmzQXL4GRusOUn89Icp1NYPcOohKRQR7M7drKRcKeqGfGwjd4Jq+rwF9bhYiunb
	XBo0wGX3WK9n864nU/WidxIupC7OOTiScmhWyBhUQ337K/3Z+KiuyK4Iii9reIYCyqCTk9WoLzqNo
	UuhpPCslQ5ZD6hmIxoM2vq/DdREA4KvtFpTzloUF7qJ+lpErT0/5c12/oBXk3OQjvX5IE9474Xrj1
	+TQ2hqVOqz07rxiTN1Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p87r1-003Fru-0S; Wed, 21 Dec 2022 22:46:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p87h8-0039qf-Ik; Wed, 21 Dec 2022 22:36:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C5E761968;
	Wed, 21 Dec 2022 22:36:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6E47C433A1;
	Wed, 21 Dec 2022 22:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671662171;
	bh=M/tRY0dtlLHanEM4j2N/f3MgAV3UJcjYrwR7A8LA+gs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mVUrEkg8zRQ7TSOkQUBdp7TE8RNclfXYOvxwJiCqdcEnXqCcogUVKz4dJyuKzdbdm
	 fYgrFNzIXPUSFq1dJKKsa8EnqAkOyF+WLEhFp07WZOG7+crDHchayR9j2X4FSBPrtO
	 ujaxValndvnwlMPyb6FJgfxbOOrQOQcj0rqQo7FoC7ICwM0uBuXemzqx+qTqbeEVTa
	 yazso3peS/sYGtlt0qxwSfakN1zXY6TkTT+w1KYI2MNqymgCeN6+taqP8hdbg5pPr/
	 Bu4G/3STagQV9C/a5DeT69RLHGxVJa+L3QSwwecy7tepR949nm+iiwLVkeq3nMnVC9
	 GCtNdBlRwljRw==
Received: by mail-vs1-f51.google.com with SMTP id i2so165217vsc.1;
        Wed, 21 Dec 2022 14:36:11 -0800 (PST)
X-Gm-Message-State: AFqh2kqx8/cumHvRfDIJX/MzicmKn9XEkAdR4B2YKQpJwK5NDmm1OSLY
	uMdEYiDX0LN4fdWxNxM6Oh59UMigW5eKx2SOlw==
X-Google-Smtp-Source: AMrXdXuD7TYLmW0mSW/mYJAckH7H6ZU+Lruhm+3KZIf50DE0jUjltL5AsbTqRq+isZxtINz6jEQbpY5Y06hr4ebaBW0=
X-Received: by 2002:a67:6185:0:b0:3bf:3dbe:50aa with SMTP id
 v127-20020a676185000000b003bf3dbe50aamr478388vsb.26.1671662170541; Wed, 21
 Dec 2022 14:36:10 -0800 (PST)
MIME-Version: 1.0
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com> <fc68bedc-ff93-13bc-aa06-7920f5e53de6@gmail.com>
In-Reply-To: <fc68bedc-ff93-13bc-aa06-7920f5e53de6@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 21 Dec 2022 16:35:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLzrMtVBY3vSsykakKp8b_AzhQehOGj3T+RH_NqaTitXg@mail.gmail.com>
Message-ID: <CAL_JsqLzrMtVBY3vSsykakKp8b_AzhQehOGj3T+RH_NqaTitXg@mail.gmail.com>
Subject: Re: [PATCH v5 05/12] dt-bindings: usb: convert fcs,fusb302.txt to yaml
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, 
	gregkh@linuxfoundation.org, airlied@gmail.com, daniel@ffwll.ch, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	philippe.cornu@foss.st.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_143614_791113_2A138421 
X-CRM114-Status: GOOD (  18.78  )
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

On Wed, Dec 21, 2022 at 12:23 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Convert fcs,fusb302.txt to yaml.
>
> Changed:
>   Add vbus-supply property
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/usb/fcs,fusb302.txt   | 34 ----------
>  .../devicetree/bindings/usb/fcs,fusb302.yaml  | 66 +++++++++++++++++++
>  2 files changed, 66 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
>
> diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt b/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
> deleted file mode 100644
> index 60e465429..000000000
> --- a/Documentation/devicetree/bindings/usb/fcs,fusb302.txt
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -Fairchild FUSB302 Type-C Port controllers
> -
> -Required properties :
> -- compatible             : "fcs,fusb302"
> -- reg                    : I2C slave address
> -- interrupts             : Interrupt specifier
> -
> -Required sub-node:
> -- connector : The "usb-c-connector" attached to the FUSB302 IC. The bindings
> -  of the connector node are specified in:
> -
> -       Documentation/devicetree/bindings/connector/usb-connector.yaml
> -
> -
> -Example:
> -
> -fusb302: typec-portc@54 {
> -       compatible = "fcs,fusb302";
> -       reg = <0x54>;
> -       interrupt-parent = <&nmi_intc>;
> -       interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> -
> -       usb_con: connector {
> -               compatible = "usb-c-connector";
> -               label = "USB-C";
> -               power-role = "dual";
> -               try-power-role = "sink";
> -               source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> -               sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> -                            PDO_VAR(3000, 12000, 3000)
> -                            PDO_PPS_APDO(3000, 11000, 3000)>;
> -               op-sink-microwatt = <10000000>;
> -       };
> -};
> diff --git a/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml b/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
> new file mode 100644
> index 000000000..9b172fda9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/fcs,fusb302.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Fairchild FUSB302 Type-C Port controller
> +
> +maintainers:
> +  - Rob Herring <robh@kernel.org>

Why me? I don't care, but that's kind of the default.

> +
> +properties:
> +  compatible:
> +    const: fcs,fusb302
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vbus-supply:
> +    description: VBUS power supply
> +
> +  connector:
> +    type: object
> +    $ref: /schemas/connector/usb-connector.yaml#

       unevaluatedProperties: false

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - vbus-supply
> +  - connector
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/usb/pd.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      fusb302: typec-portc@54 {

Drop unused labels.

> +        compatible = "fcs,fusb302";
> +        reg = <0x54>;
> +        interrupt-parent = <&nmi_intc>;
> +        interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +        vbus-supply = <&vbus_typec>;
> +
> +        usb_con: connector {
> +          compatible = "usb-c-connector";
> +          label = "USB-C";
> +          power-role = "dual";
> +          try-power-role = "sink";
> +          source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +          sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +                       PDO_VAR(3000, 12000, 3000)
> +                       PDO_PPS_APDO(3000, 11000, 3000)>;
> +          op-sink-microwatt = <10000000>;
> +        };
> +      };
> +    };
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
