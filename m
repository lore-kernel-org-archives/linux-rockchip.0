From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: dts: remove g-use-dma from rockchip usb nodes
Date: Sun, 01 Mar 2020 00:47:07 +0100
Message-ID: <8908074.NjHMO83URx@phil>
References: <20200228113922.20266-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200228113922.20266-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 28. Februar 2020, 12:39:21 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30180000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3228-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-evb.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb@30040000:
> 'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'g-use-dma' is not a valid option in dwc2.yaml, so remove it
> from all Rockchip dtsi files.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied both patches for 5.7

Thanks
Heiko
