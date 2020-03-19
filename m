From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC PATCH 1/2] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Date: Thu, 19 Mar 2020 13:12:13 +0100
Message-ID: <86f9bff8-4e3e-8a26-b89b-ce80cb865103@gmail.com>
References: <20200318192901.5023-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200318192901.5023-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

A test with the command below gives this error:

  DTC     Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml
Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml: usb2-phy@e450:
'#phy-cells' is a required property

'phy-provider.yaml' uses regex pattern:

"^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"

in combination with nodename 'usb2-phy' gives a full match.
'#phy-cells' is only for subnodes I think.

Question:
Should we:
1: rename all 'usb2-phy' nodes in dtsi, then please advise what name
should be used.

Or:
2:  add '#phy-cells' to 'usb2-phy' nodes? Please advice.

make -k ARCH=arm dt_binding_check

> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>

> +    u2phy0: usb2-phy@e450 {

Regex gives a full match.

> +      compatible = "rockchip,rk3399-usb2phy";
> +      reg = <0xe450 0x10>;
> +      clocks = <&cru SCLK_USB2PHY0_REF>;
> +      clock-names = "phyclk";
> +      clock-output-names = "clk_usbphy0_480m";
> +      #clock-cells = <0>;
> +
> +      u2phy0_host: host-port {
> +        #phy-cells = <0>;
> +        interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "linestate";
> +      };
> +
> +      u2phy0_otg: otg-port {
> +        #phy-cells = <0>;
> +        interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "otg-bvalid", "otg-id", "linestate";
> +      };
> +    };
