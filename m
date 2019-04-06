From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: bulk convert gpios to their
 constant counterparts
Date: Sun, 7 Apr 2019 00:56:13 +0900
Message-ID: <c5761398-bca6-69ef-6be3-5df01f165b6f@katsuster.net>
References: <20190402121852.14442-1-heiko@sntech.de>
 <20190402121852.14442-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190402121852.14442-2-heiko@sntech.de>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: robin.murphy@arm.com, briannorris@chromium.org, dianders@chromium.org, Emil Renner Berthing <esmil@mailme.dk>, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

I checked some features as follows:
   - Rock64 UART, HDMI, USB and Sound
   - RockPro64 UART, HDMI, USB and Sound

If you would like, use my tested-by.

Tested-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

Best Regards,
Katsuhiro Suzuki

On 2019/04/02 21:18, Heiko Stuebner wrote:
> Rockchip SoCs use 2 different numbering schemes. Where the gpio-
> controllers just count 0-31 for their 32 gpios, the underlying
> iomux controller splits these into 4 separate entities A-D.
> 
> Device-schematics always use these iomux-values to identify pins,
> so to make mapping schematics to devicetree easier Andy Yan introduced
> named constants for the pins but so far we only used them on new
> additions.
> 
> Using a sed-script created by Emil Renner Berthing bulk-convert
> the remaining raw gpio numbers into their descriptive counterparts
> and also gets rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings:
> 
> /rockchip,pins *=/bcheck
> b # to end of script
> :append-next-line
> N
> :check
> /^[^;]*$/bappend-next-line
> s/<RK_GPIO\([0-9]\) /<\1 /g
> s/<\([^ ][^ ]*  *\)0 /<\1RK_PA0 /g
> s/<\([^ ][^ ]*  *\)1 /<\1RK_PA1 /g
> s/<\([^ ][^ ]*  *\)2 /<\1RK_PA2 /g
> s/<\([^ ][^ ]*  *\)3 /<\1RK_PA3 /g
> s/<\([^ ][^ ]*  *\)4 /<\1RK_PA4 /g
> s/<\([^ ][^ ]*  *\)5 /<\1RK_PA5 /g
> s/<\([^ ][^ ]*  *\)6 /<\1RK_PA6 /g
> s/<\([^ ][^ ]*  *\)7 /<\1RK_PA7 /g
> s/<\([^ ][^ ]*  *\)8 /<\1RK_PB0 /g
> s/<\([^ ][^ ]*  *\)9 /<\1RK_PB1 /g
> s/<\([^ ][^ ]*  *\)10 /<\1RK_PB2 /g
> s/<\([^ ][^ ]*  *\)11 /<\1RK_PB3 /g
> s/<\([^ ][^ ]*  *\)12 /<\1RK_PB4 /g
> s/<\([^ ][^ ]*  *\)13 /<\1RK_PB5 /g
> s/<\([^ ][^ ]*  *\)14 /<\1RK_PB6 /g
> s/<\([^ ][^ ]*  *\)15 /<\1RK_PB7 /g
> s/<\([^ ][^ ]*  *\)16 /<\1RK_PC0 /g
> s/<\([^ ][^ ]*  *\)17 /<\1RK_PC1 /g
> s/<\([^ ][^ ]*  *\)18 /<\1RK_PC2 /g
> s/<\([^ ][^ ]*  *\)19 /<\1RK_PC3 /g
> s/<\([^ ][^ ]*  *\)20 /<\1RK_PC4 /g
> s/<\([^ ][^ ]*  *\)21 /<\1RK_PC5 /g
> s/<\([^ ][^ ]*  *\)22 /<\1RK_PC6 /g
> s/<\([^ ][^ ]*  *\)23 /<\1RK_PC7 /g
> s/<\([^ ][^ ]*  *\)24 /<\1RK_PD0 /g
> s/<\([^ ][^ ]*  *\)25 /<\1RK_PD1 /g
> s/<\([^ ][^ ]*  *\)26 /<\1RK_PD2 /g
> s/<\([^ ][^ ]*  *\)27 /<\1RK_PD3 /g
> s/<\([^ ][^ ]*  *\)28 /<\1RK_PD4 /g
> s/<\([^ ][^ ]*  *\)29 /<\1RK_PD5 /g
> s/<\([^ ][^ ]*  *\)30 /<\1RK_PD6 /g
> s/<\([^ ][^ ]*  *\)31 /<\1RK_PD7 /g
> s/<\([^ ][^ ]*  *[^ ][^ ]*  *\)0 /<\1RK_FUNC_GPIO /g
> s/<\([^ ][^ ]*  *[^ ][^ ]*  *\)RK_FUNC_\([1-9]\) /<\1\2 /g
> 
> Suggested-by: Emil Renner Berthing <esmil@mailme.dk>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> goes on top of my v5.2-armsoc/dts64 branch
> 
>   arch/arm64/boot/dts/rockchip/px30-evb.dts     |   4 +-
>   arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   2 +-
>   arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi  |  34 +-
>   .../boot/dts/rockchip/rk3368-geekbox.dts      |   8 +-
>   .../boot/dts/rockchip/rk3368-lion-haikou.dts  |  14 +-
>   arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   8 +-
>   .../dts/rockchip/rk3368-orion-r68-meta.dts    |  46 +--
>   .../boot/dts/rockchip/rk3368-px5-evb.dts      |   6 +-
>   arch/arm64/boot/dts/rockchip/rk3368-r88.dts   |  36 +--
>   arch/arm64/boot/dts/rockchip/rk3368.dtsi      | 240 +++++++-------
>   arch/arm64/boot/dts/rockchip/rk3399-evb.dts   |   6 +-
>   arch/arm64/boot/dts/rockchip/rk3399-ficus.dts |  18 +-
>   .../boot/dts/rockchip/rk3399-gru-bob.dts      |   2 +-
>   .../dts/rockchip/rk3399-gru-chromebook.dtsi   |  14 +-
>   .../boot/dts/rockchip/rk3399-gru-kevin.dts    |   8 +-
>   .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  68 ++--
>   arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  |  56 ++--
>   .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |   2 +-
>   .../boot/dts/rockchip/rk3399-orangepi.dts     |   2 +-
>   .../boot/dts/rockchip/rk3399-puma-haikou.dts  |  12 +-
>   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |  18 +-
>   .../boot/dts/rockchip/rk3399-rock960.dtsi     |  32 +-
>   .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   4 +-
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 306 +++++++++---------
>   24 files changed, 473 insertions(+), 473 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 263d7f3dbc44..6eb7407a84aa 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -145,12 +145,12 @@
>   
>   		soc_slppin_slp: soc_slppin_slp {
>   			rockchip,pins =
> -				<0 RK_PA4 RK_FUNC_1 &pcfg_pull_none>;
> +				<0 RK_PA4 1 &pcfg_pull_none>;
>   		};
>   
>   		soc_slppin_rst: soc_slppin_rst {
>   			rockchip,pins =
> -				<0 RK_PA4 RK_FUNC_2 &pcfg_pull_none>;
> +				<0 RK_PA4 2 &pcfg_pull_none>;
>   		};
>   	};
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> index 8302d86d35c4..49c4b96da3d4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> @@ -208,7 +208,7 @@
>   	sdio-pwrseq {
>   		wifi_enable_h: wifi-enable-h {
>   		rockchip,pins =
> -			<1 18 RK_FUNC_GPIO &pcfg_pull_none>;
> +			<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> index e96eb62f362b..1c52f47c43a6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
> @@ -154,60 +154,60 @@
>   
>   	backlight {
>   		bl_en: bl-en {
> -			rockchip,pins = <0 20 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	emmc {
>   		emmc_bus8: emmc-bus8 {
> -			rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 19 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 20 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 21 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 22 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 23 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 24 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 25 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC3 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC4 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC5 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC6 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC7 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD0 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD1 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc-clk {
> -			rockchip,pins = <2 4 RK_FUNC_2 &pcfg_pull_none_drv_8ma>;
> +			rockchip,pins = <2 RK_PA4 2 &pcfg_pull_none_drv_8ma>;
>   		};
>   
>   		emmc-cmd {
> -			rockchip,pins = <1 26 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PD2 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc_reset: emmc-reset {
> -			rockchip,pins = <2 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	keys {
>   		pwr_key: pwr-key {
> -			rockchip,pins = <0 2 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	pmic {
>   		pmic_int: pmic-int {
> -			rockchip,pins = <0 1 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	sdio {
>   		wifi_reg_on: wifi-reg-on {
> -			rockchip,pins = <3 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		bt_rst: bt-rst {
> -			rockchip,pins = <3 5 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	usb {
>   		host_vbus_drv: host-vbus-drv {
> -			rockchip,pins = <0 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> index 8fa550cbd1a4..1d0778ff217c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> @@ -233,23 +233,23 @@
>   &pinctrl {
>   	ir {
>   		ir_int: ir-int {
> -			rockchip,pins = <3 30 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	keys {
>   		pwr_key: pwr-key {
> -			rockchip,pins = <0 2 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	pmic {
>   		pmic_sleep: pmic-sleep {
> -			rockchip,pins = <0 0 RK_FUNC_2 &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
>   		};
>   
>   		pmic_int: pmic-int {
> -			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
> index fca8e87d8f52..8251f3c0d0a8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
> @@ -113,34 +113,34 @@
>   		haikou_pin_hog: haikou-pin-hog {
>   			rockchip,pins =
>   				/* LID_BTN */
> -				<RK_GPIO3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
>   				/* BATLOW# */
> -				<RK_GPIO0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>,
>   				/* SLP_BTN# */
> -				<RK_GPIO3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
>   				/* BIOS_DISABLE# */
> -				<RK_GPIO3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
> +				<3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	leds {
>   		led_sd_haikou: led-sd-gpio {
>   			rockchip,pins =
> -				<RK_GPIO0 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<0 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	sdmmc {
>   		sdmmc_cd_gpio: sdmmc-cd-gpio {
>   			rockchip,pins =
> -				<RK_GPIO2 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<2 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	usb_otg {
>   		otg_vbus_drv: otg-vbus-drv {
>   			rockchip,pins =
> -				<RK_GPIO0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> index 1b35d612b660..8f6fcfe65bb2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> @@ -274,17 +274,17 @@
>   	leds {
>   		led_pins_module: led-module-gpio {
>   			rockchip,pins =
> -				<RK_GPIO2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>,
> -				<RK_GPIO3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>,
> +				<3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   	pmic {
>   		pmic_int_l: pmic-int-l {
> -			rockchip,pins = <RK_GPIO0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   
>   		pmic_sleep: pmic-sleep {
> -			rockchip,pins = <RK_GPIO0 RK_PA0 RK_FUNC_2 &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> index f5aa3cad67c5..6cc310255da8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
> @@ -226,73 +226,73 @@
>   
>   	emmc {
>   		emmc_bus8: emmc-bus8 {
> -			rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 19 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 20 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 21 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 22 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 23 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 24 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 25 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC3 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC4 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC5 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC6 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC7 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD0 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD1 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc-clk {
> -			rockchip,pins = <2 4 RK_FUNC_2 &pcfg_pull_none_drv_8ma>;
> +			rockchip,pins = <2 RK_PA4 2 &pcfg_pull_none_drv_8ma>;
>   		};
>   
>   		emmc-cmd {
> -			rockchip,pins = <1 26 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PD2 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc_reset: emmc-reset {
> -			rockchip,pins = <2 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	keys {
>   		pwr_key: pwr-key {
> -			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_down>;
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
>   	leds {
>   		stby_pwren: stby-pwren {
> -			rockchip,pins = <0 12 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		led_ctl: led-ctl {
> -			rockchip,pins = <3 29 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	sdmmc {
>   		sdmmc_clk: sdmmc-clk {
> -			rockchip,pins = <2 9 RK_FUNC_1 &pcfg_pull_none_drv_8ma>;
> +			rockchip,pins = <2 RK_PB1 1 &pcfg_pull_none_drv_8ma>;
>   		};
>   
>   		sdmmc_cmd: sdmmc-cmd {
> -			rockchip,pins = <2 10 RK_FUNC_1 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <2 RK_PB2 1 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		sdmmc_cd: sdmmc-cd {
> -			rockchip,pins = <2 11 RK_FUNC_1 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <2 RK_PB3 1 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		sdmmc_bus1: sdmmc-bus1 {
> -			rockchip,pins = <2 5 RK_FUNC_1 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		sdmmc_bus4: sdmmc-bus4 {
> -			rockchip,pins = <2 5 RK_FUNC_1 &pcfg_pull_up_drv_8ma>,
> -					<2 6 RK_FUNC_1 &pcfg_pull_up_drv_8ma>,
> -					<2 7 RK_FUNC_1 &pcfg_pull_up_drv_8ma>,
> -					<2 8 RK_FUNC_1 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up_drv_8ma>,
> +					<2 RK_PA6 1 &pcfg_pull_up_drv_8ma>,
> +					<2 RK_PA7 1 &pcfg_pull_up_drv_8ma>,
> +					<2 RK_PB0 1 &pcfg_pull_up_drv_8ma>;
>   		};
>   	};
>   
>   	usb {
>   		host_vbus_drv: host-vbus-drv {
> -			rockchip,pins = <0 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> index 41edcfd53184..231db0305a03 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> @@ -218,17 +218,17 @@
>   &pinctrl {
>   	keys {
>   		pwr_key: pwr-key {
> -			rockchip,pins = <0 2 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	pmic {
>   		pmic_sleep: pmic-sleep {
> -			rockchip,pins = <0 0 RK_FUNC_2 &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
>   		};
>   
>   		pmic_int: pmic-int {
> -			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> index d34064c65f10..006a1fb6a816 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
> @@ -235,64 +235,64 @@
>   
>   	emmc {
>   		emmc_bus8: emmc-bus8 {
> -			rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 19 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 20 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 21 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 22 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 23 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 24 RK_FUNC_2 &pcfg_pull_up_drv_8ma>,
> -					<1 25 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC3 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC4 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC5 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC6 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PC7 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD0 2 &pcfg_pull_up_drv_8ma>,
> +					<1 RK_PD1 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc-clk {
> -			rockchip,pins = <2 4 RK_FUNC_2 &pcfg_pull_none_drv_8ma>;
> +			rockchip,pins = <2 RK_PA4 2 &pcfg_pull_none_drv_8ma>;
>   		};
>   
>   		emmc-cmd {
> -			rockchip,pins = <1 26 RK_FUNC_2 &pcfg_pull_up_drv_8ma>;
> +			rockchip,pins = <1 RK_PD2 2 &pcfg_pull_up_drv_8ma>;
>   		};
>   
>   		emmc_reset: emmc-reset {
> -			rockchip,pins = <2 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	ir {
>   		ir_int: ir-int {
> -			rockchip,pins = <3 30 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	keys {
>   		pwr_key: pwr-key {
> -			rockchip,pins = <0 2 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	leds {
>   		stby_pwren: stby-pwren {
> -			rockchip,pins = <0 12 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		led_ctl: led-ctl {
> -			rockchip,pins = <3 29 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	sdio {
>   		wifi_reg_on: wifi-reg-on {
> -			rockchip,pins = <3 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		bt_rst: bt-rst {
> -			rockchip,pins = <3 5 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	usb {
>   		host_vbus_drv: host-vbus-drv {
> -			rockchip,pins = <0 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 06e7c31d7d07..fd86188010b2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -881,345 +881,345 @@
>   
>   		emmc {
>   			emmc_clk: emmc-clk {
> -				rockchip,pins = <2 4 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PA4 2 &pcfg_pull_none>;
>   			};
>   
>   			emmc_cmd: emmc-cmd {
> -				rockchip,pins = <1 26 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PD2 2 &pcfg_pull_up>;
>   			};
>   
>   			emmc_pwr: emmc-pwr {
> -				rockchip,pins = <1 27 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PD3 2 &pcfg_pull_up>;
>   			};
>   
>   			emmc_bus1: emmc-bus1 {
> -				rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up>;
>   			};
>   
>   			emmc_bus4: emmc-bus4 {
> -				rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 19 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 20 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 21 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up>,
> +						<1 RK_PC3 2 &pcfg_pull_up>,
> +						<1 RK_PC4 2 &pcfg_pull_up>,
> +						<1 RK_PC5 2 &pcfg_pull_up>;
>   			};
>   
>   			emmc_bus8: emmc-bus8 {
> -				rockchip,pins = <1 18 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 19 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 20 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 21 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 22 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 23 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 24 RK_FUNC_2 &pcfg_pull_up>,
> -						<1 25 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC2 2 &pcfg_pull_up>,
> +						<1 RK_PC3 2 &pcfg_pull_up>,
> +						<1 RK_PC4 2 &pcfg_pull_up>,
> +						<1 RK_PC5 2 &pcfg_pull_up>,
> +						<1 RK_PC6 2 &pcfg_pull_up>,
> +						<1 RK_PC7 2 &pcfg_pull_up>,
> +						<1 RK_PD0 2 &pcfg_pull_up>,
> +						<1 RK_PD1 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		gmac {
>   			rgmii_pins: rgmii-pins {
> -				rockchip,pins =	<3 22 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 24 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 19 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 8 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 9 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 10 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 14 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 28 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 13 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 15 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 16 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 17 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 18 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 25 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 20 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins =	<3 RK_PC6 1 &pcfg_pull_none>,
> +						<3 RK_PD0 1 &pcfg_pull_none>,
> +						<3 RK_PC3 1 &pcfg_pull_none>,
> +						<3 RK_PB0 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB1 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB2 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB6 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PD4 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB5 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB7 1 &pcfg_pull_none>,
> +						<3 RK_PC0 1 &pcfg_pull_none>,
> +						<3 RK_PC1 1 &pcfg_pull_none>,
> +						<3 RK_PC2 1 &pcfg_pull_none>,
> +						<3 RK_PD1 1 &pcfg_pull_none>,
> +						<3 RK_PC4 1 &pcfg_pull_none>;
>   			};
>   
>   			rmii_pins: rmii-pins {
> -				rockchip,pins =	<3 22 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 24 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 19 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 8 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 9 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 13 RK_FUNC_1 &pcfg_pull_none_12ma>,
> -						<3 15 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 16 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 20 RK_FUNC_1 &pcfg_pull_none>,
> -						<3 21 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins =	<3 RK_PC6 1 &pcfg_pull_none>,
> +						<3 RK_PD0 1 &pcfg_pull_none>,
> +						<3 RK_PC3 1 &pcfg_pull_none>,
> +						<3 RK_PB0 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB1 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB5 1 &pcfg_pull_none_12ma>,
> +						<3 RK_PB7 1 &pcfg_pull_none>,
> +						<3 RK_PC0 1 &pcfg_pull_none>,
> +						<3 RK_PC4 1 &pcfg_pull_none>,
> +						<3 RK_PC5 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c0 {
>   			i2c0_xfer: i2c0-xfer {
> -				rockchip,pins = <0 6 RK_FUNC_1 &pcfg_pull_none>,
> -						<0 7 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>,
> +						<0 RK_PA7 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c1 {
>   			i2c1_xfer: i2c1-xfer {
> -				rockchip,pins = <2 21 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 22 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PC5 1 &pcfg_pull_none>,
> +						<2 RK_PC6 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c2 {
>   			i2c2_xfer: i2c2-xfer {
> -				rockchip,pins = <0 9 RK_FUNC_2 &pcfg_pull_none>,
> -						<3 31 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PB1 2 &pcfg_pull_none>,
> +						<3 RK_PD7 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c3 {
>   			i2c3_xfer: i2c3-xfer {
> -				rockchip,pins = <1 16 RK_FUNC_1 &pcfg_pull_none>,
> -						<1 17 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <1 RK_PC0 1 &pcfg_pull_none>,
> +						<1 RK_PC1 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c4 {
>   			i2c4_xfer: i2c4-xfer {
> -				rockchip,pins = <3 24 RK_FUNC_2 &pcfg_pull_none>,
> -						<3 25 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PD0 2 &pcfg_pull_none>,
> +						<3 RK_PD1 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c5 {
>   			i2c5_xfer: i2c5-xfer {
> -				rockchip,pins = <3 26 RK_FUNC_2 &pcfg_pull_none>,
> -						<3 27 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PD2 2 &pcfg_pull_none>,
> +						<3 RK_PD3 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2s {
>   			i2s_8ch_bus: i2s-8ch-bus {
> -				rockchip,pins = <2 12 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 13 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 14 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 15 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 16 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 17 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 18 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 19 RK_FUNC_1 &pcfg_pull_none>,
> -						<2 20 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PB4 1 &pcfg_pull_none>,
> +						<2 RK_PB5 1 &pcfg_pull_none>,
> +						<2 RK_PB6 1 &pcfg_pull_none>,
> +						<2 RK_PB7 1 &pcfg_pull_none>,
> +						<2 RK_PC0 1 &pcfg_pull_none>,
> +						<2 RK_PC1 1 &pcfg_pull_none>,
> +						<2 RK_PC2 1 &pcfg_pull_none>,
> +						<2 RK_PC3 1 &pcfg_pull_none>,
> +						<2 RK_PC4 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm0 {
>   			pwm0_pin: pwm0-pin {
> -				rockchip,pins = <3 8 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PB0 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm1 {
>   			pwm1_pin: pwm1-pin {
> -				rockchip,pins = <0 8 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PB0 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm3 {
>   			pwm3_pin: pwm3-pin {
> -				rockchip,pins = <3 29 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PD5 3 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		sdio0 {
>   			sdio0_bus1: sdio0-bus1 {
> -				rockchip,pins = <2 28 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PD4 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_bus4: sdio0-bus4 {
> -				rockchip,pins = <2 28 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 29 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 30 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 31 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PD4 1 &pcfg_pull_up>,
> +						<2 RK_PD5 1 &pcfg_pull_up>,
> +						<2 RK_PD6 1 &pcfg_pull_up>,
> +						<2 RK_PD7 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_cmd: sdio0-cmd {
> -				rockchip,pins = <3 0 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA0 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_clk: sdio0-clk {
> -				rockchip,pins = <3 1 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PA1 1 &pcfg_pull_none>;
>   			};
>   
>   			sdio0_cd: sdio0-cd {
> -				rockchip,pins = <3 2 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA2 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_wp: sdio0-wp {
> -				rockchip,pins = <3 3 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA3 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_pwr: sdio0-pwr {
> -				rockchip,pins = <3 4 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA4 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_bkpwr: sdio0-bkpwr {
> -				rockchip,pins = <3 5 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA5 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_int: sdio0-int {
> -				rockchip,pins = <3 6 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PA6 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		sdmmc {
>   			sdmmc_clk: sdmmc-clk {
> -				rockchip,pins = <2 9 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PB1 1 &pcfg_pull_none>;
>   			};
>   
>   			sdmmc_cmd: sdmmc-cmd {
> -				rockchip,pins = <2 10 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PB2 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_cd: sdmmc-cd {
> -				rockchip,pins = <2 11 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PB3 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_bus1: sdmmc-bus1 {
> -				rockchip,pins = <2 5 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_bus4: sdmmc-bus4 {
> -				rockchip,pins = <2 5 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 6 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 7 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 8 RK_FUNC_1 &pcfg_pull_up>;
> +				rockchip,pins = <2 RK_PA5 1 &pcfg_pull_up>,
> +						<2 RK_PA6 1 &pcfg_pull_up>,
> +						<2 RK_PA7 1 &pcfg_pull_up>,
> +						<2 RK_PB0 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spdif {
>   			spdif_tx: spdif-tx {
> -				rockchip,pins =	<2 RK_PC7 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins =	<2 RK_PC7 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		spi0 {
>   			spi0_clk: spi0-clk {
> -				rockchip,pins = <1 29 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PD5 2 &pcfg_pull_up>;
>   			};
>   			spi0_cs0: spi0-cs0 {
> -				rockchip,pins = <1 24 RK_FUNC_3 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PD0 3 &pcfg_pull_up>;
>   			};
>   			spi0_cs1: spi0-cs1 {
> -				rockchip,pins = <1 25 RK_FUNC_3 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PD1 3 &pcfg_pull_up>;
>   			};
>   			spi0_tx: spi0-tx {
> -				rockchip,pins = <1 23 RK_FUNC_3 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC7 3 &pcfg_pull_up>;
>   			};
>   			spi0_rx: spi0-rx {
> -				rockchip,pins = <1 22 RK_FUNC_3 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC6 3 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi1 {
>   			spi1_clk: spi1-clk {
> -				rockchip,pins = <1 14 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PB6 2 &pcfg_pull_up>;
>   			};
>   			spi1_cs0: spi1-cs0 {
> -				rockchip,pins = <1 15 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PB7 2 &pcfg_pull_up>;
>   			};
>   			spi1_cs1: spi1-cs1 {
> -				rockchip,pins = <3 28 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <3 RK_PD4 2 &pcfg_pull_up>;
>   			};
>   			spi1_rx: spi1-rx {
> -				rockchip,pins = <1 16 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC0 2 &pcfg_pull_up>;
>   			};
>   			spi1_tx: spi1-tx {
> -				rockchip,pins = <1 17 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <1 RK_PC1 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi2 {
>   			spi2_clk: spi2-clk {
> -				rockchip,pins = <0 12 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <0 RK_PB4 2 &pcfg_pull_up>;
>   			};
>   			spi2_cs0: spi2-cs0 {
> -				rockchip,pins = <0 13 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <0 RK_PB5 2 &pcfg_pull_up>;
>   			};
>   			spi2_rx: spi2-rx {
> -				rockchip,pins = <0 10 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <0 RK_PB2 2 &pcfg_pull_up>;
>   			};
>   			spi2_tx: spi2-tx {
> -				rockchip,pins = <0 11 RK_FUNC_2 &pcfg_pull_up>;
> +				rockchip,pins = <0 RK_PB3 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		tsadc {
>   			otp_gpio: otp-gpio {
> -				rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   			};
>   
>   			otp_out: otp-out {
> -				rockchip,pins = <0 3 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PA3 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart0 {
>   			uart0_xfer: uart0-xfer {
> -				rockchip,pins = <2 24 RK_FUNC_1 &pcfg_pull_up>,
> -						<2 25 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PD0 1 &pcfg_pull_up>,
> +						<2 RK_PD1 1 &pcfg_pull_none>;
>   			};
>   
>   			uart0_cts: uart0-cts {
> -				rockchip,pins = <2 26 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PD2 1 &pcfg_pull_none>;
>   			};
>   
>   			uart0_rts: uart0-rts {
> -				rockchip,pins = <2 27 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PD3 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart1 {
>   			uart1_xfer: uart1-xfer {
> -				rockchip,pins = <0 20 RK_FUNC_3 &pcfg_pull_up>,
> -						<0 21 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PC4 3 &pcfg_pull_up>,
> +						<0 RK_PC5 3 &pcfg_pull_none>;
>   			};
>   
>   			uart1_cts: uart1-cts {
> -				rockchip,pins = <0 22 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PC6 3 &pcfg_pull_none>;
>   			};
>   
>   			uart1_rts: uart1-rts {
> -				rockchip,pins = <0 23 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PC7 3 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart2 {
>   			uart2_xfer: uart2-xfer {
> -				rockchip,pins = <2 6 RK_FUNC_2 &pcfg_pull_up>,
> -						<2 5 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PA6 2 &pcfg_pull_up>,
> +						<2 RK_PA5 2 &pcfg_pull_none>;
>   			};
>   			/* no rts / cts for uart2 */
>   		};
>   
>   		uart3 {
>   			uart3_xfer: uart3-xfer {
> -				rockchip,pins = <3 29 RK_FUNC_2 &pcfg_pull_up>,
> -						<3 30 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PD5 2 &pcfg_pull_up>,
> +						<3 RK_PD6 3 &pcfg_pull_none>;
>   			};
>   
>   			uart3_cts: uart3-cts {
> -				rockchip,pins = <3 16 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PC0 2 &pcfg_pull_none>;
>   			};
>   
>   			uart3_rts: uart3-rts {
> -				rockchip,pins = <3 17 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <3 RK_PC1 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart4 {
>   			uart4_xfer: uart4-xfer {
> -				rockchip,pins = <0 27 RK_FUNC_3 &pcfg_pull_up>,
> -						<0 26 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PD3 3 &pcfg_pull_up>,
> +						<0 RK_PD2 3 &pcfg_pull_none>;
>   			};
>   
>   			uart4_cts: uart4-cts {
> -				rockchip,pins = <0 24 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PD0 3 &pcfg_pull_none>;
>   			};
>   
>   			uart4_rts: uart4-rts {
> -				rockchip,pins = <0 25 RK_FUNC_3 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PD1 3 &pcfg_pull_none>;
>   			};
>   		};
>   	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> index 959ddc3c7df5..77008dca45bc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> @@ -208,19 +208,19 @@
>   	pmic {
>   		pmic_int_l: pmic-int-l {
>   			rockchip,pins =
> -				<1 21 RK_FUNC_GPIO &pcfg_pull_up>;
> +				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   
>   		pmic_dvs2: pmic-dvs2 {
>   			rockchip,pins =
> -				<1 18 RK_FUNC_GPIO &pcfg_pull_down>;
> +				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
>   	usb2 {
>   		vcc5v0_host_en: vcc5v0-host-en {
>   			rockchip,pins =
> -				<4 25 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> index 027d428917b8..6b059bd7a04f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -95,53 +95,53 @@
>   	gmac {
>   		rgmii_sleep_pins: rgmii-sleep-pins {
>   			rockchip,pins =
> -				<3 15 RK_FUNC_GPIO &pcfg_output_low>;
> +				<3 RK_PB7 RK_FUNC_GPIO &pcfg_output_low>;
>   		};
>   	};
>   
>   	pcie {
>   		pcie_drv: pcie-drv {
>   			rockchip,pins =
> -				<1 24 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>   			};
>   	};
>   
>   	usb2 {
>   		host_vbus_drv: host-vbus-drv {
>   			rockchip,pins =
> -				<4 27 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<4 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	leds {
>   		user_led1: user_led1 {
>   			rockchip,pins =
> -				<4 25 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		user_led2: user_led2 {
>   			rockchip,pins =
> -				<4 26 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		user_led3: user_led3 {
>   			rockchip,pins =
> -				<4 30 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		user_led4: user_led4 {
>   			rockchip,pins =
> -				<1 0 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		wlan_led: wlan_led {
>   			rockchip,pins =
> -				<1 1 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		bt_led: bt_led {
>   			rockchip,pins =
> -				<1 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
> index d1cf404b8708..a9f4d6d7d2b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
> @@ -73,7 +73,7 @@
>   &pinctrl {
>   	tpm {
>   		h1_int_od_l: h1-int-od-l {
> -			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> index 931640e9aed4..7cd6d470c1cb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> @@ -365,27 +365,27 @@ ap_i2c_tp: &i2c5 {
>   &pinctrl {
>   	discrete-regulators {
>   		pp1500_en: pp1500-en {
> -			rockchip,pins = <RK_GPIO0 10 RK_FUNC_GPIO
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   
>   		pp1800_audio_en: pp1800-audio-en {
> -			rockchip,pins = <RK_GPIO0 2 RK_FUNC_GPIO
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO
>   					 &pcfg_pull_down>;
>   		};
>   
>   		pp3000_en: pp3000-en {
> -			rockchip,pins = <RK_GPIO0 12 RK_FUNC_GPIO
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   
>   		pp3300_disp_en: pp3300-disp-en {
> -			rockchip,pins = <RK_GPIO4 27 RK_FUNC_GPIO
> +			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   
>   		wlan_module_pd_l: wlan-module-pd-l {
> -			rockchip,pins = <RK_GPIO0 4 RK_FUNC_GPIO
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO
>   					 &pcfg_pull_down>;
>   		};
>   	};
> @@ -393,10 +393,10 @@ ap_i2c_tp: &i2c5 {
>   
>   &wifi {
>   	wifi_perst_l: wifi-perst-l {
> -		rockchip,pins = <2 27 RK_FUNC_GPIO &pcfg_pull_none>;
> +		rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>   	};
>   
>   	wlan_host_wake_l: wlan-host-wake-l {
> -		rockchip,pins = <0 8 RK_FUNC_GPIO &pcfg_pull_none>;
> +		rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> index 15e254a77391..3e2272b56eb7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
> @@ -290,24 +290,24 @@ ap_i2c_dig: &i2c2 {
>   	digitizer {
>   		/* Has external pullup */
>   		cpu1_dig_irq_l: cpu1-dig-irq-l {
> -			rockchip,pins = <2 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		/* Has external pullup */
>   		cpu1_dig_pdct_l: cpu1-dig-pdct-l {
> -			rockchip,pins = <2 5 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	discrete-regulators {
>   		cpu3_pen_pwr_en: cpu3-pen-pwr-en {
> -			rockchip,pins = <4 30 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	pen {
>   		cpu1_pen_eject: cpu1-pen-eject {
> -			rockchip,pins = <0 13 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> index 62ea7d6a7d4a..50dfab51f175 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> @@ -455,58 +455,58 @@ camera: &i2c7 {
>   
>   /* PINCTRL OVERRIDES */
>   &ec_ap_int_l {
> -	rockchip,pins = <1 18 RK_FUNC_GPIO &pcfg_pull_up>;
> +	rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
>   };
>   
>   &ap_fw_wp {
> -	rockchip,pins = <0 13 RK_FUNC_GPIO &pcfg_pull_none>;
> +	rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
>   };
>   
>   &bl_en {
> -	rockchip,pins = <4 21 RK_FUNC_GPIO &pcfg_pull_none>;
> +	rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
>   };
>   
>   &bt_host_wake_l {
> -	rockchip,pins = <1 2 RK_FUNC_GPIO &pcfg_pull_none>;
> +	rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>   };
>   
>   &ec_ap_int_l {
> -	rockchip,pins = <1 18 RK_FUNC_GPIO &pcfg_pull_up>;
> +	rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
>   };
>   
>   &headset_int_l {
> -	rockchip,pins = <1 23 RK_FUNC_GPIO &pcfg_pull_up>;
> +	rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
>   };
>   
>   &i2s0_8ch_bus {
>   	rockchip,pins =
> -		<3 24 RK_FUNC_1 &pcfg_pull_none_6ma>,
> -		<3 25 RK_FUNC_1 &pcfg_pull_none_6ma>,
> -		<3 26 RK_FUNC_1 &pcfg_pull_none_6ma>,
> -		<3 27 RK_FUNC_1 &pcfg_pull_none_6ma>,
> -		<3 31 RK_FUNC_1 &pcfg_pull_none_6ma>,
> -		<4 0 RK_FUNC_1 &pcfg_pull_none_6ma>;
> +		<3 RK_PD0 1 &pcfg_pull_none_6ma>,
> +		<3 RK_PD1 1 &pcfg_pull_none_6ma>,
> +		<3 RK_PD2 1 &pcfg_pull_none_6ma>,
> +		<3 RK_PD3 1 &pcfg_pull_none_6ma>,
> +		<3 RK_PD7 1 &pcfg_pull_none_6ma>,
> +		<4 RK_PA0 1 &pcfg_pull_none_6ma>;
>   };
>   
>   /* there is no external pull up, so need to set this pin pull up */
>   &sdmmc_cd_gpio {
> -	rockchip,pins = <1 11 RK_FUNC_GPIO &pcfg_pull_up>;
> +	rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
>   };
>   
>   &sd_pwr_1800_sel {
> -	rockchip,pins = <2 28 RK_FUNC_GPIO &pcfg_pull_up>;
> +	rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
>   };
>   
>   &sdmode_en {
> -	rockchip,pins = <0 2 RK_FUNC_GPIO &pcfg_pull_down>;
> +	rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_down>;
>   };
>   
>   &touch_reset_l {
> -	rockchip,pins = <0 10 RK_FUNC_GPIO &pcfg_pull_down>;
> +	rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_down>;
>   };
>   
>   &touch_int_l {
> -	rockchip,pins = <1 4 RK_FUNC_GPIO &pcfg_pull_down>;
> +	rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
>   };
>   
>   &pinctrl {
> @@ -523,84 +523,84 @@ camera: &i2c7 {
>   
>   	camera {
>   		pp1250_cam_en: pp1250-dvdd {
> -			rockchip,pins = <2 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		pp2800_cam_en: pp2800-avdd {
> -			rockchip,pins = <2 24 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		ucam_rst: ucam_rst {
> -			rockchip,pins = <2 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		wcam_rst: wcam_rst {
> -			rockchip,pins = <2 5 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	digitizer {
>   		pen_int_odl: pen-int-odl {
> -			rockchip,pins = <1 0 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   
>   		pen_reset_l: pen-reset-l {
> -			rockchip,pins = <0 12 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	discrete-regulators {
>   		display_rst_l: display-rst-l {
> -			rockchip,pins = <4 25 RK_FUNC_GPIO &pcfg_pull_down>;
> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   
>   		ppvarp_lcd_en: ppvarp-lcd-en {
> -			rockchip,pins = <4 27 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		ppvarn_lcd_en: ppvarn-lcd-en {
> -			rockchip,pins = <4 28 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	dmic {
>   		dmic_en: dmic-en {
> -			rockchip,pins = <4 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	pen {
>   		pen_eject_odl: pen-eject-odl {
> -			rockchip,pins = <1 1 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	tpm {
>   		h1_int_od_l: h1-int-od-l {
> -			rockchip,pins = <1 17 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
>   
>   &wifi {
>   	bt_en_1v8_l: bt-en-1v8-l {
> -		rockchip,pins = <0 8 RK_FUNC_GPIO &pcfg_pull_none>;
> +		rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>   	};
>   
>   	wlan_pd_1v8_l: wlan-pd-1v8-l {
> -		rockchip,pins = <0 4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>   	};
>   
>   	/* Default pull-up, but just to be clear */
>   	wlan_rf_kill_1v8_l: wlan-rf-kill-1v8-l {
> -		rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>   	};
>   
>   	wifi_perst_l: wifi-perst-l {
> -		rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   	};
>   
>   	wlan_host_wake_l: wlan-host-wake-l {
> -		rockchip,pins = <1 3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
> index da03fa9c5662..dd5624975c9b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
> @@ -676,29 +676,29 @@ ap_i2c_audio: &i2c8 {
>   
>   	backlight-enable {
>   		bl_en: bl-en {
> -			rockchip,pins = <1 17 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	cros-ec {
>   		ec_ap_int_l: ec-ap-int-l {
> -			rockchip,pins = <RK_GPIO0 1 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	discrete-regulators {
>   		sd_io_pwr_en: sd-io-pwr-en {
> -			rockchip,pins = <RK_GPIO2 2 RK_FUNC_GPIO
> +			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   
>   		sd_pwr_1800_sel: sd-pwr-1800-sel {
> -			rockchip,pins = <RK_GPIO2 28 RK_FUNC_GPIO
> +			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   
>   		sd_slot_pwr_en: sd-slot-pwr-en {
> -			rockchip,pins = <RK_GPIO4 29 RK_FUNC_GPIO
> +			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO
>   					 &pcfg_pull_none>;
>   		};
>   	};
> @@ -706,17 +706,17 @@ ap_i2c_audio: &i2c8 {
>   	codec {
>   		/* Has external pullup */
>   		headset_int_l: headset-int-l {
> -			rockchip,pins = <1 23 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		mic_int: mic-int {
> -			rockchip,pins = <1 13 RK_FUNC_GPIO &pcfg_pull_down>;
> +			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
>   	max98357a {
>   		sdmode_en: sdmode-en {
> -			rockchip,pins = <1 2 RK_FUNC_GPIO &pcfg_pull_down>;
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
> @@ -727,7 +727,7 @@ ap_i2c_audio: &i2c8 {
>   			 * to hack this as gpio, so the EP could be able to
>   			 * de-assert it along and make ClockPM(CPM) work.
>   			 */
> -			rockchip,pins = <2 26 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
> @@ -738,20 +738,20 @@ ap_i2c_audio: &i2c8 {
>   		 */
>   		sdmmc_bus4: sdmmc-bus4 {
>   			rockchip,pins =
> -				<4 8 RK_FUNC_1 &pcfg_pull_none_8ma>,
> -				<4 9 RK_FUNC_1 &pcfg_pull_none_8ma>,
> -				<4 10 RK_FUNC_1 &pcfg_pull_none_8ma>,
> -				<4 11 RK_FUNC_1 &pcfg_pull_none_8ma>;
> +				<4 RK_PB0 1 &pcfg_pull_none_8ma>,
> +				<4 RK_PB1 1 &pcfg_pull_none_8ma>,
> +				<4 RK_PB2 1 &pcfg_pull_none_8ma>,
> +				<4 RK_PB3 1 &pcfg_pull_none_8ma>;
>   		};
>   
>   		sdmmc_clk: sdmmc-clk {
>   			rockchip,pins =
> -				<4 12 RK_FUNC_1 &pcfg_pull_none_8ma>;
> +				<4 RK_PB4 1 &pcfg_pull_none_8ma>;
>   		};
>   
>   		sdmmc_cmd: sdmmc-cmd {
>   			rockchip,pins =
> -				<4 13 RK_FUNC_1 &pcfg_pull_none_8ma>;
> +				<4 RK_PB5 1 &pcfg_pull_none_8ma>;
>   		};
>   
>   		/*
> @@ -765,12 +765,12 @@ ap_i2c_audio: &i2c8 {
>   		 */
>   		sdmmc_cd: sdmmc-cd {
>   			rockchip,pins =
> -				<0 7 RK_FUNC_1 &pcfg_pull_none>;
> +				<0 RK_PA7 1 &pcfg_pull_none>;
>   		};
>   
>   		/* This is where we actually hook up CD; has external pull */
>   		sdmmc_cd_gpio: sdmmc-cd-gpio {
> -			rockchip,pins = <4 24 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
> @@ -780,47 +780,47 @@ ap_i2c_audio: &i2c8 {
>   			 * Pull down SPI1 CLK/CS/RX/TX during suspend, to
>   			 * prevent leakage.
>   			 */
> -			rockchip,pins = <1 9 RK_FUNC_GPIO &pcfg_pull_down>,
> -					<1 10 RK_FUNC_GPIO &pcfg_pull_down>,
> -					<1 7 RK_FUNC_GPIO &pcfg_pull_down>,
> -					<1 8 RK_FUNC_GPIO &pcfg_pull_down>;
> +			rockchip,pins = <1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>,
> +					<1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_down>,
> +					<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>,
> +					<1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
>   	touchscreen {
>   		touch_int_l: touch-int-l {
> -			rockchip,pins = <3 13 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   
>   		touch_reset_l: touch-reset-l {
> -			rockchip,pins = <4 26 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	trackpad {
>   		ap_i2c_tp_pu_en: ap-i2c-tp-pu-en {
> -			rockchip,pins = <3 12 RK_FUNC_GPIO &pcfg_output_high>;
> +			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_output_high>;
>   		};
>   
>   		trackpad_int_l: trackpad-int-l {
> -			rockchip,pins = <1 4 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	wifi: wifi {
>   		wlan_module_reset_l: wlan-module-reset-l {
> -			rockchip,pins = <1 11 RK_FUNC_GPIO &pcfg_pull_none>;
> +			rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
>   		bt_host_wake_l: bt-host-wake-l {
>   			/* Kevin has an external pull up, but Gru does not */
> -			rockchip,pins = <0 3 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	write-protect {
>   		ap_fw_wp: ap-fw-wp {
> -			rockchip,pins = <1 18 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> index 931c3dbf1b7d..2a127985ab17 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> @@ -125,7 +125,7 @@
>   	ir {
>   		ir_rx: ir-rx {
>   			/* external pullup to VCC3V3_SYS, despite being 1.8V :/ */
> -			rockchip,pins = <0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 2166be171df8..0541dfce924d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -547,7 +547,7 @@
>   	sd {
>   		sdmmc0_pwr_h: sdmmc0-pwr-h {
>   			rockchip,pins =
> -				<RK_GPIO0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> index 1e6a71066c16..d80d6b726820 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> @@ -168,27 +168,27 @@
>   		haikou_pin_hog: haikou-pin-hog {
>   			rockchip,pins =
>   			  /* LID_BTN */
> -			  <RK_GPIO0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
> +			  <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
>   			  /* BATLOW# */
> -			  <RK_GPIO0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
> +			  <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
>   			  /* SLP_BTN# */
> -			  <RK_GPIO0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
> +			  <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
>   			  /* BIOS_DISABLE# */
> -			  <RK_GPIO0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
> +			  <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	leds {
>   		led_sd_haikou: led-sd-gpio {
>   			rockchip,pins =
> -			  <RK_GPIO1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +			  <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	usb2 {
>   		otg_vbus_drv: otg-vbus-drv {
>   			rockchip,pins =
> -			  <RK_GPIO0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +			  <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index 4f75bb6b2f14..6be1d4430427 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -414,10 +414,10 @@
>    */
>   &i2s0_2ch_bus {
>   	rockchip,pins =
> -		<RK_GPIO3 RK_PD0 RK_FUNC_1 &pcfg_pull_none>,
> -		<RK_GPIO3 RK_PD2 RK_FUNC_1 &pcfg_pull_none>,
> -		<RK_GPIO3 RK_PD3 RK_FUNC_1 &pcfg_pull_none>,
> -		<RK_GPIO3 RK_PD7 RK_FUNC_1 &pcfg_pull_none>;
> +		<3 RK_PD0 1 &pcfg_pull_none>,
> +		<3 RK_PD2 1 &pcfg_pull_none>,
> +		<3 RK_PD3 1 &pcfg_pull_none>,
> +		<3 RK_PD7 1 &pcfg_pull_none>;
>   };
>   
>   &io_domains {
> @@ -441,29 +441,29 @@
>   	i2c8 {
>   		i2c8_xfer_a: i2c8-xfer {
>   			rockchip,pins =
> -			  <RK_GPIO1 RK_PC4 RK_FUNC_1 &pcfg_pull_up>,
> -			  <RK_GPIO1 RK_PC5 RK_FUNC_1 &pcfg_pull_up>;
> +			  <1 RK_PC4 1 &pcfg_pull_up>,
> +			  <1 RK_PC5 1 &pcfg_pull_up>;
>   		};
>   	};
>   
>   	leds {
>   		led_pin_module: led-module-gpio {
>   			rockchip,pins =
> -			  <RK_GPIO2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +			  <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
>   	pmic {
>   		pmic_int_l: pmic-int-l {
>   			rockchip,pins =
> -			  <RK_GPIO1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
> +			  <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   	};
>   
>   	usb2 {
>   		vcc5v0_host_en: vcc5v0-host-en {
>   			rockchip,pins =
> -			  <RK_GPIO4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +			  <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index 5ba2aeca0fa8..c7d48d41e184 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -411,62 +411,62 @@
>   	sdmmc {
>   		sdmmc_bus1: sdmmc-bus1 {
>   			rockchip,pins =
> -				<4 8 RK_FUNC_1 &pcfg_pull_up_8ma>;
> +				<4 RK_PB0 1 &pcfg_pull_up_8ma>;
>   		};
>   
>   		sdmmc_bus4: sdmmc-bus4 {
>   			rockchip,pins =
> -				<4 8 RK_FUNC_1 &pcfg_pull_up_8ma>,
> -				<4 9 RK_FUNC_1 &pcfg_pull_up_8ma>,
> -				<4 10 RK_FUNC_1 &pcfg_pull_up_8ma>,
> -				<4 11 RK_FUNC_1 &pcfg_pull_up_8ma>;
> +				<4 RK_PB0 1 &pcfg_pull_up_8ma>,
> +				<4 RK_PB1 1 &pcfg_pull_up_8ma>,
> +				<4 RK_PB2 1 &pcfg_pull_up_8ma>,
> +				<4 RK_PB3 1 &pcfg_pull_up_8ma>;
>   		};
>   
>   		sdmmc_clk: sdmmc-clk {
>   			rockchip,pins =
> -				<4 12 RK_FUNC_1 &pcfg_pull_none_18ma>;
> +				<4 RK_PB4 1 &pcfg_pull_none_18ma>;
>   		};
>   
>   		sdmmc_cmd: sdmmc-cmd {
>   			rockchip,pins =
> -				<4 13 RK_FUNC_1 &pcfg_pull_up_8ma>;
> +				<4 RK_PB5 1 &pcfg_pull_up_8ma>;
>   		};
>   	};
>   
>   	sdio0 {
>   		sdio0_bus4: sdio0-bus4 {
>   			rockchip,pins =
> -				<2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
> -				<2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
> -				<2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
> -				<2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
> +				<2 RK_PC4 1 &pcfg_pull_up_20ma>,
> +				<2 RK_PC5 1 &pcfg_pull_up_20ma>,
> +				<2 RK_PC6 1 &pcfg_pull_up_20ma>,
> +				<2 RK_PC7 1 &pcfg_pull_up_20ma>;
>   		};
>   
>   		sdio0_cmd: sdio0-cmd {
>   			rockchip,pins =
> -				<2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
> +				<2 RK_PD0 1 &pcfg_pull_up_20ma>;
>   		};
>   
>   		sdio0_clk: sdio0-clk {
>   			rockchip,pins =
> -				<2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
> +				<2 RK_PD1 1 &pcfg_pull_none_20ma>;
>   		};
>   	};
>   
>   	pmic {
>   		pmic_int_l: pmic-int-l {
>   			rockchip,pins =
> -				<1 21 RK_FUNC_GPIO &pcfg_pull_up>;
> +				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
>   		};
>   
>   		vsel1_gpio: vsel1-gpio {
>   			rockchip,pins =
> -				<1 17 RK_FUNC_GPIO &pcfg_pull_down>;
> +				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   
>   		vsel2_gpio: vsel2-gpio {
>   			rockchip,pins =
> -				<1 14 RK_FUNC_GPIO &pcfg_pull_down>;
> +				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 946d3589575a..04623e52ac5d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -471,7 +471,7 @@
>   	fan {
>   		motor_pwr: motor-pwr {
>   			rockchip,pins =
> -				<RK_GPIO1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
> @@ -493,7 +493,7 @@
>   	sd {
>   		sdmmc0_pwr_h: sdmmc0-pwr-h {
>   			rockchip,pins =
> -				<RK_GPIO0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 382297ecfefa..f54c855f8cdf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2053,14 +2053,14 @@
>   
>   		clock {
>   			clk_32k: clk-32k {
> -				rockchip,pins = <0 0 RK_FUNC_2 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		edp {
>   			edp_hpd: edp-hpd {
>   				rockchip,pins =
> -					<4 23 RK_FUNC_2 &pcfg_pull_none>;
> +					<4 RK_PC7 2 &pcfg_pull_none>;
>   			};
>   		};
>   
> @@ -2068,576 +2068,576 @@
>   			rgmii_pins: rgmii-pins {
>   				rockchip,pins =
>   					/* mac_txclk */
> -					<3 17 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PC1 1 &pcfg_pull_none_13ma>,
>   					/* mac_rxclk */
> -					<3 14 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB6 1 &pcfg_pull_none>,
>   					/* mac_mdio */
> -					<3 13 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB5 1 &pcfg_pull_none>,
>   					/* mac_txen */
> -					<3 12 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PB4 1 &pcfg_pull_none_13ma>,
>   					/* mac_clk */
> -					<3 11 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB3 1 &pcfg_pull_none>,
>   					/* mac_rxdv */
> -					<3 9 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB1 1 &pcfg_pull_none>,
>   					/* mac_mdc */
> -					<3 8 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB0 1 &pcfg_pull_none>,
>   					/* mac_rxd1 */
> -					<3 7 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA7 1 &pcfg_pull_none>,
>   					/* mac_rxd0 */
> -					<3 6 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA6 1 &pcfg_pull_none>,
>   					/* mac_txd1 */
> -					<3 5 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PA5 1 &pcfg_pull_none_13ma>,
>   					/* mac_txd0 */
> -					<3 4 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PA4 1 &pcfg_pull_none_13ma>,
>   					/* mac_rxd3 */
> -					<3 3 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA3 1 &pcfg_pull_none>,
>   					/* mac_rxd2 */
> -					<3 2 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA2 1 &pcfg_pull_none>,
>   					/* mac_txd3 */
> -					<3 1 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PA1 1 &pcfg_pull_none_13ma>,
>   					/* mac_txd2 */
> -					<3 0 RK_FUNC_1 &pcfg_pull_none_13ma>;
> +					<3 RK_PA0 1 &pcfg_pull_none_13ma>;
>   			};
>   
>   			rmii_pins: rmii-pins {
>   				rockchip,pins =
>   					/* mac_mdio */
> -					<3 13 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB5 1 &pcfg_pull_none>,
>   					/* mac_txen */
> -					<3 12 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PB4 1 &pcfg_pull_none_13ma>,
>   					/* mac_clk */
> -					<3 11 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB3 1 &pcfg_pull_none>,
>   					/* mac_rxer */
> -					<3 10 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB2 1 &pcfg_pull_none>,
>   					/* mac_rxdv */
> -					<3 9 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB1 1 &pcfg_pull_none>,
>   					/* mac_mdc */
> -					<3 8 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PB0 1 &pcfg_pull_none>,
>   					/* mac_rxd1 */
> -					<3 7 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA7 1 &pcfg_pull_none>,
>   					/* mac_rxd0 */
> -					<3 6 RK_FUNC_1 &pcfg_pull_none>,
> +					<3 RK_PA6 1 &pcfg_pull_none>,
>   					/* mac_txd1 */
> -					<3 5 RK_FUNC_1 &pcfg_pull_none_13ma>,
> +					<3 RK_PA5 1 &pcfg_pull_none_13ma>,
>   					/* mac_txd0 */
> -					<3 4 RK_FUNC_1 &pcfg_pull_none_13ma>;
> +					<3 RK_PA4 1 &pcfg_pull_none_13ma>;
>   			};
>   		};
>   
>   		i2c0 {
>   			i2c0_xfer: i2c0-xfer {
>   				rockchip,pins =
> -					<1 15 RK_FUNC_2 &pcfg_pull_none>,
> -					<1 16 RK_FUNC_2 &pcfg_pull_none>;
> +					<1 RK_PB7 2 &pcfg_pull_none>,
> +					<1 RK_PC0 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c1 {
>   			i2c1_xfer: i2c1-xfer {
>   				rockchip,pins =
> -					<4 2 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 1 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PA2 1 &pcfg_pull_none>,
> +					<4 RK_PA1 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c2 {
>   			i2c2_xfer: i2c2-xfer {
>   				rockchip,pins =
> -					<2 1 RK_FUNC_2 &pcfg_pull_none_12ma>,
> -					<2 0 RK_FUNC_2 &pcfg_pull_none_12ma>;
> +					<2 RK_PA1 2 &pcfg_pull_none_12ma>,
> +					<2 RK_PA0 2 &pcfg_pull_none_12ma>;
>   			};
>   		};
>   
>   		i2c3 {
>   			i2c3_xfer: i2c3-xfer {
>   				rockchip,pins =
> -					<4 17 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 16 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC1 1 &pcfg_pull_none>,
> +					<4 RK_PC0 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c4 {
>   			i2c4_xfer: i2c4-xfer {
>   				rockchip,pins =
> -					<1 12 RK_FUNC_1 &pcfg_pull_none>,
> -					<1 11 RK_FUNC_1 &pcfg_pull_none>;
> +					<1 RK_PB4 1 &pcfg_pull_none>,
> +					<1 RK_PB3 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c5 {
>   			i2c5_xfer: i2c5-xfer {
>   				rockchip,pins =
> -					<3 11 RK_FUNC_2 &pcfg_pull_none>,
> -					<3 10 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PB3 2 &pcfg_pull_none>,
> +					<3 RK_PB2 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c6 {
>   			i2c6_xfer: i2c6-xfer {
>   				rockchip,pins =
> -					<2 10 RK_FUNC_2 &pcfg_pull_none>,
> -					<2 9 RK_FUNC_2 &pcfg_pull_none>;
> +					<2 RK_PB2 2 &pcfg_pull_none>,
> +					<2 RK_PB1 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c7 {
>   			i2c7_xfer: i2c7-xfer {
>   				rockchip,pins =
> -					<2 8 RK_FUNC_2 &pcfg_pull_none>,
> -					<2 7 RK_FUNC_2 &pcfg_pull_none>;
> +					<2 RK_PB0 2 &pcfg_pull_none>,
> +					<2 RK_PA7 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2c8 {
>   			i2c8_xfer: i2c8-xfer {
>   				rockchip,pins =
> -					<1 21 RK_FUNC_1 &pcfg_pull_none>,
> -					<1 20 RK_FUNC_1 &pcfg_pull_none>;
> +					<1 RK_PC5 1 &pcfg_pull_none>,
> +					<1 RK_PC4 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2s0 {
>   			i2s0_2ch_bus: i2s0-2ch-bus {
>   				rockchip,pins =
> -					<3 24 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 25 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 26 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 27 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 31 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 0 RK_FUNC_1 &pcfg_pull_none>;
> +					<3 RK_PD0 1 &pcfg_pull_none>,
> +					<3 RK_PD1 1 &pcfg_pull_none>,
> +					<3 RK_PD2 1 &pcfg_pull_none>,
> +					<3 RK_PD3 1 &pcfg_pull_none>,
> +					<3 RK_PD7 1 &pcfg_pull_none>,
> +					<4 RK_PA0 1 &pcfg_pull_none>;
>   			};
>   
>   			i2s0_8ch_bus: i2s0-8ch-bus {
>   				rockchip,pins =
> -					<3 24 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 25 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 26 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 27 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 28 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 29 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 30 RK_FUNC_1 &pcfg_pull_none>,
> -					<3 31 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 0 RK_FUNC_1 &pcfg_pull_none>;
> +					<3 RK_PD0 1 &pcfg_pull_none>,
> +					<3 RK_PD1 1 &pcfg_pull_none>,
> +					<3 RK_PD2 1 &pcfg_pull_none>,
> +					<3 RK_PD3 1 &pcfg_pull_none>,
> +					<3 RK_PD4 1 &pcfg_pull_none>,
> +					<3 RK_PD5 1 &pcfg_pull_none>,
> +					<3 RK_PD6 1 &pcfg_pull_none>,
> +					<3 RK_PD7 1 &pcfg_pull_none>,
> +					<4 RK_PA0 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		i2s1 {
>   			i2s1_2ch_bus: i2s1-2ch-bus {
>   				rockchip,pins =
> -					<4 3 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 4 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 5 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 6 RK_FUNC_1 &pcfg_pull_none>,
> -					<4 7 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PA3 1 &pcfg_pull_none>,
> +					<4 RK_PA4 1 &pcfg_pull_none>,
> +					<4 RK_PA5 1 &pcfg_pull_none>,
> +					<4 RK_PA6 1 &pcfg_pull_none>,
> +					<4 RK_PA7 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		sdio0 {
>   			sdio0_bus1: sdio0-bus1 {
>   				rockchip,pins =
> -					<2 RK_PC4 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PC4 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_bus4: sdio0-bus4 {
>   				rockchip,pins =
> -					<2 RK_PC4 RK_FUNC_1 &pcfg_pull_up>,
> -					<2 RK_PC5 RK_FUNC_1 &pcfg_pull_up>,
> -					<2 RK_PC6 RK_FUNC_1 &pcfg_pull_up>,
> -					<2 RK_PC7 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PC4 1 &pcfg_pull_up>,
> +					<2 RK_PC5 1 &pcfg_pull_up>,
> +					<2 RK_PC6 1 &pcfg_pull_up>,
> +					<2 RK_PC7 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_cmd: sdio0-cmd {
>   				rockchip,pins =
> -					<2 RK_PD0 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PD0 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_clk: sdio0-clk {
>   				rockchip,pins =
> -					<2 RK_PD1 RK_FUNC_1 &pcfg_pull_none>;
> +					<2 RK_PD1 1 &pcfg_pull_none>;
>   			};
>   
>   			sdio0_cd: sdio0-cd {
>   				rockchip,pins =
> -					<2 RK_PD2 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PD2 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_pwr: sdio0-pwr {
>   				rockchip,pins =
> -					<2 RK_PD3 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PD3 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_bkpwr: sdio0-bkpwr {
>   				rockchip,pins =
> -					<2 RK_PD4 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PD4 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_wp: sdio0-wp {
>   				rockchip,pins =
> -					<0 RK_PA3 RK_FUNC_1 &pcfg_pull_up>;
> +					<0 RK_PA3 1 &pcfg_pull_up>;
>   			};
>   
>   			sdio0_int: sdio0-int {
>   				rockchip,pins =
> -					<0 RK_PA4 RK_FUNC_1 &pcfg_pull_up>;
> +					<0 RK_PA4 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		sdmmc {
>   			sdmmc_bus1: sdmmc-bus1 {
>   				rockchip,pins =
> -					<4 RK_PB0 RK_FUNC_1 &pcfg_pull_up>;
> +					<4 RK_PB0 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_bus4: sdmmc-bus4 {
>   				rockchip,pins =
> -					<4 RK_PB0 RK_FUNC_1 &pcfg_pull_up>,
> -					<4 RK_PB1 RK_FUNC_1 &pcfg_pull_up>,
> -					<4 RK_PB2 RK_FUNC_1 &pcfg_pull_up>,
> -					<4 RK_PB3 RK_FUNC_1 &pcfg_pull_up>;
> +					<4 RK_PB0 1 &pcfg_pull_up>,
> +					<4 RK_PB1 1 &pcfg_pull_up>,
> +					<4 RK_PB2 1 &pcfg_pull_up>,
> +					<4 RK_PB3 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_clk: sdmmc-clk {
>   				rockchip,pins =
> -					<4 RK_PB4 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PB4 1 &pcfg_pull_none>;
>   			};
>   
>   			sdmmc_cmd: sdmmc-cmd {
>   				rockchip,pins =
> -					<4 RK_PB5 RK_FUNC_1 &pcfg_pull_up>;
> +					<4 RK_PB5 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_cd: sdmmc-cd {
>   				rockchip,pins =
> -					<0 RK_PA7 RK_FUNC_1 &pcfg_pull_up>;
> +					<0 RK_PA7 1 &pcfg_pull_up>;
>   			};
>   
>   			sdmmc_wp: sdmmc-wp {
>   				rockchip,pins =
> -					<0 RK_PB0 RK_FUNC_1 &pcfg_pull_up>;
> +					<0 RK_PB0 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		sleep {
>   			ap_pwroff: ap-pwroff {
> -				rockchip,pins = <1 5 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <1 RK_PA5 1 &pcfg_pull_none>;
>   			};
>   
>   			ddrio_pwroff: ddrio-pwroff {
> -				rockchip,pins = <0 1 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <0 RK_PA1 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		spdif {
>   			spdif_bus: spdif-bus {
>   				rockchip,pins =
> -					<4 21 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC5 1 &pcfg_pull_none>;
>   			};
>   
>   			spdif_bus_1: spdif-bus-1 {
>   				rockchip,pins =
> -					<3 RK_PC0 RK_FUNC_3 &pcfg_pull_none>;
> +					<3 RK_PC0 3 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		spi0 {
>   			spi0_clk: spi0-clk {
>   				rockchip,pins =
> -					<3 6 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA6 2 &pcfg_pull_up>;
>   			};
>   			spi0_cs0: spi0-cs0 {
>   				rockchip,pins =
> -					<3 7 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA7 2 &pcfg_pull_up>;
>   			};
>   			spi0_cs1: spi0-cs1 {
>   				rockchip,pins =
> -					<3 8 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PB0 2 &pcfg_pull_up>;
>   			};
>   			spi0_tx: spi0-tx {
>   				rockchip,pins =
> -					<3 5 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA5 2 &pcfg_pull_up>;
>   			};
>   			spi0_rx: spi0-rx {
>   				rockchip,pins =
> -					<3 4 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA4 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi1 {
>   			spi1_clk: spi1-clk {
>   				rockchip,pins =
> -					<1 9 RK_FUNC_2 &pcfg_pull_up>;
> +					<1 RK_PB1 2 &pcfg_pull_up>;
>   			};
>   			spi1_cs0: spi1-cs0 {
>   				rockchip,pins =
> -					<1 10 RK_FUNC_2 &pcfg_pull_up>;
> +					<1 RK_PB2 2 &pcfg_pull_up>;
>   			};
>   			spi1_rx: spi1-rx {
>   				rockchip,pins =
> -					<1 7 RK_FUNC_2 &pcfg_pull_up>;
> +					<1 RK_PA7 2 &pcfg_pull_up>;
>   			};
>   			spi1_tx: spi1-tx {
>   				rockchip,pins =
> -					<1 8 RK_FUNC_2 &pcfg_pull_up>;
> +					<1 RK_PB0 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi2 {
>   			spi2_clk: spi2-clk {
>   				rockchip,pins =
> -					<2 11 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PB3 1 &pcfg_pull_up>;
>   			};
>   			spi2_cs0: spi2-cs0 {
>   				rockchip,pins =
> -					<2 12 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PB4 1 &pcfg_pull_up>;
>   			};
>   			spi2_rx: spi2-rx {
>   				rockchip,pins =
> -					<2 9 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PB1 1 &pcfg_pull_up>;
>   			};
>   			spi2_tx: spi2-tx {
>   				rockchip,pins =
> -					<2 10 RK_FUNC_1 &pcfg_pull_up>;
> +					<2 RK_PB2 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi3 {
>   			spi3_clk: spi3-clk {
>   				rockchip,pins =
> -					<1 17 RK_FUNC_1 &pcfg_pull_up>;
> +					<1 RK_PC1 1 &pcfg_pull_up>;
>   			};
>   			spi3_cs0: spi3-cs0 {
>   				rockchip,pins =
> -					<1 18 RK_FUNC_1 &pcfg_pull_up>;
> +					<1 RK_PC2 1 &pcfg_pull_up>;
>   			};
>   			spi3_rx: spi3-rx {
>   				rockchip,pins =
> -					<1 15 RK_FUNC_1 &pcfg_pull_up>;
> +					<1 RK_PB7 1 &pcfg_pull_up>;
>   			};
>   			spi3_tx: spi3-tx {
>   				rockchip,pins =
> -					<1 16 RK_FUNC_1 &pcfg_pull_up>;
> +					<1 RK_PC0 1 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi4 {
>   			spi4_clk: spi4-clk {
>   				rockchip,pins =
> -					<3 2 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA2 2 &pcfg_pull_up>;
>   			};
>   			spi4_cs0: spi4-cs0 {
>   				rockchip,pins =
> -					<3 3 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA3 2 &pcfg_pull_up>;
>   			};
>   			spi4_rx: spi4-rx {
>   				rockchip,pins =
> -					<3 0 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA0 2 &pcfg_pull_up>;
>   			};
>   			spi4_tx: spi4-tx {
>   				rockchip,pins =
> -					<3 1 RK_FUNC_2 &pcfg_pull_up>;
> +					<3 RK_PA1 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		spi5 {
>   			spi5_clk: spi5-clk {
>   				rockchip,pins =
> -					<2 22 RK_FUNC_2 &pcfg_pull_up>;
> +					<2 RK_PC6 2 &pcfg_pull_up>;
>   			};
>   			spi5_cs0: spi5-cs0 {
>   				rockchip,pins =
> -					<2 23 RK_FUNC_2 &pcfg_pull_up>;
> +					<2 RK_PC7 2 &pcfg_pull_up>;
>   			};
>   			spi5_rx: spi5-rx {
>   				rockchip,pins =
> -					<2 20 RK_FUNC_2 &pcfg_pull_up>;
> +					<2 RK_PC4 2 &pcfg_pull_up>;
>   			};
>   			spi5_tx: spi5-tx {
>   				rockchip,pins =
> -					<2 21 RK_FUNC_2 &pcfg_pull_up>;
> +					<2 RK_PC5 2 &pcfg_pull_up>;
>   			};
>   		};
>   
>   		testclk {
>   			test_clkout0: test-clkout0 {
>   				rockchip,pins =
> -					<0 0 RK_FUNC_1 &pcfg_pull_none>;
> +					<0 RK_PA0 1 &pcfg_pull_none>;
>   			};
>   
>   			test_clkout1: test-clkout1 {
>   				rockchip,pins =
> -					<2 25 RK_FUNC_2 &pcfg_pull_none>;
> +					<2 RK_PD1 2 &pcfg_pull_none>;
>   			};
>   
>   			test_clkout2: test-clkout2 {
>   				rockchip,pins =
> -					<0 8 RK_FUNC_3 &pcfg_pull_none>;
> +					<0 RK_PB0 3 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		tsadc {
>   			otp_gpio: otp-gpio {
> -				rockchip,pins = <1 6 RK_FUNC_GPIO &pcfg_pull_none>;
> +				rockchip,pins = <1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
>   			};
>   
>   			otp_out: otp-out {
> -				rockchip,pins = <1 6 RK_FUNC_1 &pcfg_pull_none>;
> +				rockchip,pins = <1 RK_PA6 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart0 {
>   			uart0_xfer: uart0-xfer {
>   				rockchip,pins =
> -					<2 16 RK_FUNC_1 &pcfg_pull_up>,
> -					<2 17 RK_FUNC_1 &pcfg_pull_none>;
> +					<2 RK_PC0 1 &pcfg_pull_up>,
> +					<2 RK_PC1 1 &pcfg_pull_none>;
>   			};
>   
>   			uart0_cts: uart0-cts {
>   				rockchip,pins =
> -					<2 18 RK_FUNC_1 &pcfg_pull_none>;
> +					<2 RK_PC2 1 &pcfg_pull_none>;
>   			};
>   
>   			uart0_rts: uart0-rts {
>   				rockchip,pins =
> -					<2 19 RK_FUNC_1 &pcfg_pull_none>;
> +					<2 RK_PC3 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart1 {
>   			uart1_xfer: uart1-xfer {
>   				rockchip,pins =
> -					<3 12 RK_FUNC_2 &pcfg_pull_up>,
> -					<3 13 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PB4 2 &pcfg_pull_up>,
> +					<3 RK_PB5 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart2a {
>   			uart2a_xfer: uart2a-xfer {
>   				rockchip,pins =
> -					<4 8 RK_FUNC_2 &pcfg_pull_up>,
> -					<4 9 RK_FUNC_2 &pcfg_pull_none>;
> +					<4 RK_PB0 2 &pcfg_pull_up>,
> +					<4 RK_PB1 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart2b {
>   			uart2b_xfer: uart2b-xfer {
>   				rockchip,pins =
> -					<4 16 RK_FUNC_2 &pcfg_pull_up>,
> -					<4 17 RK_FUNC_2 &pcfg_pull_none>;
> +					<4 RK_PC0 2 &pcfg_pull_up>,
> +					<4 RK_PC1 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart2c {
>   			uart2c_xfer: uart2c-xfer {
>   				rockchip,pins =
> -					<4 19 RK_FUNC_1 &pcfg_pull_up>,
> -					<4 20 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC3 1 &pcfg_pull_up>,
> +					<4 RK_PC4 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart3 {
>   			uart3_xfer: uart3-xfer {
>   				rockchip,pins =
> -					<3 14 RK_FUNC_2 &pcfg_pull_up>,
> -					<3 15 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PB6 2 &pcfg_pull_up>,
> +					<3 RK_PB7 2 &pcfg_pull_none>;
>   			};
>   
>   			uart3_cts: uart3-cts {
>   				rockchip,pins =
> -					<3 18 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PC2 2 &pcfg_pull_none>;
>   			};
>   
>   			uart3_rts: uart3-rts {
>   				rockchip,pins =
> -					<3 19 RK_FUNC_2 &pcfg_pull_none>;
> +					<3 RK_PC3 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uart4 {
>   			uart4_xfer: uart4-xfer {
>   				rockchip,pins =
> -					<1 7 RK_FUNC_1 &pcfg_pull_up>,
> -					<1 8 RK_FUNC_1 &pcfg_pull_none>;
> +					<1 RK_PA7 1 &pcfg_pull_up>,
> +					<1 RK_PB0 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		uarthdcp {
>   			uarthdcp_xfer: uarthdcp-xfer {
>   				rockchip,pins =
> -					<4 21 RK_FUNC_2 &pcfg_pull_up>,
> -					<4 22 RK_FUNC_2 &pcfg_pull_none>;
> +					<4 RK_PC5 2 &pcfg_pull_up>,
> +					<4 RK_PC6 2 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm0 {
>   			pwm0_pin: pwm0-pin {
>   				rockchip,pins =
> -					<4 RK_PC2 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC2 1 &pcfg_pull_none>;
>   			};
>   
>   			pwm0_pin_pull_down: pwm0-pin-pull-down {
>   				rockchip,pins =
> -					<4 RK_PC2 RK_FUNC_1 &pcfg_pull_down>;
> +					<4 RK_PC2 1 &pcfg_pull_down>;
>   			};
>   
>   			vop0_pwm_pin: vop0-pwm-pin {
>   				rockchip,pins =
> -					<4 RK_PC2 RK_FUNC_2 &pcfg_pull_none>;
> +					<4 RK_PC2 2 &pcfg_pull_none>;
>   			};
>   
>   			vop1_pwm_pin: vop1-pwm-pin {
>   				rockchip,pins =
> -					<4 RK_PC2 RK_FUNC_3 &pcfg_pull_none>;
> +					<4 RK_PC2 3 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm1 {
>   			pwm1_pin: pwm1-pin {
>   				rockchip,pins =
> -					<4 RK_PC6 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC6 1 &pcfg_pull_none>;
>   			};
>   
>   			pwm1_pin_pull_down: pwm1-pin-pull-down {
>   				rockchip,pins =
> -					<4 RK_PC6 RK_FUNC_1 &pcfg_pull_down>;
> +					<4 RK_PC6 1 &pcfg_pull_down>;
>   			};
>   		};
>   
>   		pwm2 {
>   			pwm2_pin: pwm2-pin {
>   				rockchip,pins =
> -					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
> +					<1 RK_PC3 1 &pcfg_pull_none>;
>   			};
>   
>   			pwm2_pin_pull_down: pwm2-pin-pull-down {
>   				rockchip,pins =
> -					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
> +					<1 RK_PC3 1 &pcfg_pull_down>;
>   			};
>   		};
>   
>   		pwm3a {
>   			pwm3a_pin: pwm3a-pin {
>   				rockchip,pins =
> -					<0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
> +					<0 RK_PA6 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		pwm3b {
>   			pwm3b_pin: pwm3b-pin {
>   				rockchip,pins =
> -					<1 RK_PB6 RK_FUNC_1 &pcfg_pull_none>;
> +					<1 RK_PB6 1 &pcfg_pull_none>;
>   			};
>   		};
>   
>   		hdmi {
>   			hdmi_i2c_xfer: hdmi-i2c-xfer {
>   				rockchip,pins =
> -					<4 RK_PC1 RK_FUNC_3 &pcfg_pull_none>,
> -					<4 RK_PC0 RK_FUNC_3 &pcfg_pull_none>;
> +					<4 RK_PC1 3 &pcfg_pull_none>,
> +					<4 RK_PC0 3 &pcfg_pull_none>;
>   			};
>   
>   			hdmi_cec: hdmi-cec {
>   				rockchip,pins =
> -					<4 RK_PC7 RK_FUNC_1 &pcfg_pull_none>;
> +					<4 RK_PC7 1 &pcfg_pull_none>;
>   			};
>   		};
>   
> 
