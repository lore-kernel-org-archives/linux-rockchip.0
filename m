From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Fri, 27 Mar 2020 10:58:20 +0100
Message-ID: <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
References: <20200327030414.5903-2-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200327030414.5903-2-wens@kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: wens@kernel.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chen-Yu Tsai,

The led node names need some changes.
'linux,default-trigger' value does not fit.

From leds-gpio.yaml:

patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
    type: object

Rename led nodenames to 'led-0' form

Also include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

devicetree@vger.kernel.org

If you like change the rest of dts with leds as well...

  DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
yellow-led:linux,default-trigger:0: 'mmc0' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
diy-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
  DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

> From: Chen-Yu Tsai <wens@csie.org>
> 
> With SDIO now enabled, the numbering of the existing MMC host controllers
> gets incremented by 1, as the SDIO host is the first one.
> 
> Increment the numbering of the MMC LED triggers to match.
> 
> Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> index 2acb3d500fb9..f0686fc276be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
>  	};
>  };
>  
> +&diy_led {
> +	linux,default-trigger = "mmc2";
> +};
> +
>  &pcie_phy {
>  	status = "okay";
>  };
> @@ -91,3 +95,7 @@ &uart0 {
>  	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>  	status = "okay";
>  };
> +
> +&yellow_led {
> +	linux,default-trigger = "mmc1";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 9f225e9c3d54..bc060ac7972d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -70,14 +70,14 @@ work-led {
>  			linux,default-trigger = "heartbeat";
>  		};
>  
> -		diy-led {
> +		diy_led: diy-led {
>  			label = "red:diy";
>  			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
>  			linux,default-trigger = "mmc1";
>  		};
>  
> -		yellow-led {
> +		yellow_led: yellow-led {
>  			label = "yellow:yellow-led";
>  			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
> -- 
> 2.25.1
