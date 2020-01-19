From: Emmanuel Vadot <manu-xXdDKFdH5B3kFDPD4ZthVA@public.gmane.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Sun, 19 Jan 2020 22:31:02 +0100
Message-ID: <20200119223102.f97ba545ebf59c14563a95c7@bidouilliste.com>
References: <20200116225617.6318-1-manu@freebsd.org>
        <20200116225617.6318-2-manu@freebsd.org>
        <2816238.fSnfubHXRg@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2816238.fSnfubHXRg@diego>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Emmanuel Vadot <manu-h+KGxgPPiopAfugRpC6u6w@public.gmane.org>, mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org, vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 19 Jan 2020 21:17:39 +0100
Heiko Stübner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:

> Hi,
> 
> overall looks good, but some small things below
> 
> Am Donnerstag, 16. Januar 2020, 23:56:17 CET schrieb Emmanuel Vadot:
> > From: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > 
> > Pinebook Pro is a RK3399 based laptop produced by Pine64.
> > 
> > Add a basic DTS for it.
> > 
> > Signed-off-by: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Signed-off-by: Emmanuel Vadot <manu-h+KGxgPPiopAfugRpC6u6w@public.gmane.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 626 ++++++++++++++++++
> >  2 files changed, 627 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 48fb631d5451..9099fb7e2073 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > new file mode 100644
> > index 000000000000..d2e3d7b35cc6
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > @@ -0,0 +1,626 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> 
> You might want to clarify the copyright ... 2020 and Pine64-something?

 This is a DTS that Peter Robinson first wrote, I've just kept the
copyright.

> > + */
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3399.dtsi"
> > +#include "rk3399-opp.dtsi"
> > +
> > +/ {
> > +	model = "Pine64 Pinebook Pro";
> > +	compatible = "pine64,pinebook-pro", "rockchip,rk3399";
> > +
> > +	chosen {
> > +		stdout-path = "serial2:115200n8";
> > +	};
> > +
> > +	aliases {
> > +		spi0 = &spi1;
> 
> why is this needed ... I'd think spi can just enumerate itself?

 This was taken from u-boot and yes I think it's not needed for both
Linux and FreeBSD.

> 
> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		enable-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> > +		pwms = <&pwm0 0 740740 0>;
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible = "gpio-keys";
> > +		autorepeat;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pwrbtn>;
> > +
> > +		power {
> > +			debounce-interval = <100>;
> > +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> > +			label = "GPIO Key Power";
> > +			linux,code = <KEY_POWER>;
> > +			wakeup-source;
> > +		};
> > +	};
> > +
> > +	leds {
> > +		status = "okay";
> 
> new board-specific nodes don't need a status property

 Ok.

> > +		compatible = "gpio-leds";
> > +
> > +		work-led {
> > +			label = "work";
> > +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		standby-led {
> > +			label = "standby";
> > +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc1v8_s3";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		vin-supply = <&vcc_1v8>;
> > +	};
> > +
> > +	dc_12v: dc-12v {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "dc_12v";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <12000000>;
> > +		regulator-max-microvolt = <12000000>;
> > +	};
> > +
> > +	vcc3v3_sys: vcc3v3-sys {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_sys>;
> > +	};
> > +
> > +	vcc5v0_host: vcc5v0-host-regulator {
> > +		compatible = "regulator-fixed";
> > +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&host_vbus_drv>;
> > +		regulator-name = "vcc5v0_host";
> > +	};
> > +
> > +	vcc5v0_usb3_host: vcc5v0-usb3-host-regulator {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&host_usb3_drv>;
> > +		regulator-name = "vcc5v0_usb3_host";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc3v3_s0: vcc3v3-s0-regulator {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&lcdvcc_en>;
> > +		regulator-name = "vcc3v3_s0";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc_sys: vcc-sys {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		vin-supply = <&dc_12v>;
> > +	};
> > +
> > +	vdd_log: vdd-log {
> > +		compatible = "pwm-regulator";
> > +		pwms = <&pwm2 0 25000 1>;
> > +		pwm-supply = <&vcc_sys>;
> > +		regulator-name = "vdd_log";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-init-microvolt = <950000>;
> 
> There is no init-microvolt property in mainline, I'd think bootloader should
> already setup the pwm to a suitable setting?
> 
> Not

 I'll fix that.

> > +		regulator-min-microvolt = <800000>;
> > +		regulator-max-microvolt = <1400000>;
> > +	};
> > +};
> > +
> > +&cpu_l0 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l1 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l2 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l3 {
> > +	cpu-supply = <&vdd_cpu_l>;
> > +};
> 
> what happened to cpu_b0 and cpu_b1 supplies?
> Should probably reference the cpu_b regulator below?

 Yes, sorry.

> > +
> > +&emmc_phy {
> > +	status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +	clock-frequency = <400000>;
> > +	i2c-scl-rising-time-ns = <168>;
> > +	i2c-scl-falling-time-ns = <4>;
> > +	status = "okay";
> 
> [...]
> 
> > +	vdd_cpu_b: regulator@40 {
> > +		compatible = "silergy,syr827";
> > +		reg = <0x40>;
> > +		fcs,suspend-voltage-selector = <1>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&vsel1_gpio>;
> > +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> 
> This is not yet specified in the syr82x (fan5355) bindings and
> also unknown to the driver

 I'll have another look at the bindings, thanks.

> > +		regulator-compatible = "fan53555-reg";
> > +		regulator-name = "vdd_cpu_b";
> > +		regulator-min-microvolt = <712500>;
> > +		regulator-max-microvolt = <1500000>;
> > +		regulator-ramp-delay = <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply = <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +	vdd_gpu: regulator@41 {
> > +		compatible = "silergy,syr828";
> > +		reg = <0x41>;
> > +		fcs,suspend-voltage-selector = <1>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&vsel2_gpio>;
> > +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> 
> same
> 
> > +		regulator-compatible = "fan53555-reg";
> > +		regulator-name = "vdd_gpu";
> > +		regulator-min-microvolt = <712500>;
> > +		regulator-max-microvolt = <1500000>;
> > +		regulator-ramp-delay = <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply = <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +};
> 
> [...]
> 
> > +&saradc {
> > +	status = "okay";
> 
> needs a vref-supply
> 
> > +};
> > +
> > +&sdmmc {
> > +	bus-width = <4>;
> > +	status = "okay";
> > +	max-frequency = <20000000>;
> 
> vmmc / vqmmc supplies?
> Especially if one wants to achieve higher speeds on uhs cards.

 Yep, will do that.

> Heiko
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- 
Emmanuel Vadot <manu-xXdDKFdH5B3kFDPD4ZthVA@public.gmane.org> <manu-h+KGxgPPiopAfugRpC6u6w@public.gmane.org>
