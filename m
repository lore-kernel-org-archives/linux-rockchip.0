From: Peter Robinson <pbrobinson@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add on-board WiFi/BT support for
 Rock960 boards
Date: Fri, 8 Feb 2019 16:45:01 +0000
Message-ID: <CALeDE9MNa+CDJR8bvS05f2UTKrhwMRo8jzdS5o8Ndu7H8V8Ldg@mail.gmail.com>
References: <20190207055349.27919-1-manivannan.sadhasivam@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190207055349.27919-1-manivannan.sadhasivam@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com, tom@vamrs.com, dev@vamrs.com, linux-kernel@vger.kernel.org, mani@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mani,

On Thu, Feb 7, 2019 at 5:54 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Add on-board WiFi/BT support for Rock960 boards such as Rock960 based
> on AP6356S and Ficus based on AP6354 wireless modules.
>
> Firmwares for the respective boards are available here:
>
> http://people.linaro.org/~manivannan.sadhasivam/rock960_wifi/
> http://people.linaro.org/~manivannan.sadhasivam/ficus_wifi/
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

There's some warnings on building these I noticed in testing this on Fedora:

  DTC     arch/arm64/boot/dts/rockchip/rk3399-ficus.dtb
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:490.3-13: Warning
(reg_format): /dwmmc@fe310000/wifi@1:reg: property has invalid length
(4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/rockchip/rk3399-ficus.dtb: Warning
(pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-ficus.dtb: Warning (i2c_bus_reg):
Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-ficus.dtb: Warning (spi_bus_reg):
Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:488.16-496.4: Warning
(avoid_default_addr_size): /dwmmc@fe310000/wifi@1: Relying on default
#address-cells value
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:488.16-496.4: Warning
(avoid_default_addr_size): /dwmmc@fe310000/wifi@1: Relying on default
#size-cells value

  DTC     arch/arm64/boot/dts/rockchip/rk3399-rock960.dtb
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:490.3-13: Warning
(reg_format): /dwmmc@fe310000/wifi@1:reg: property has invalid length
(4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtb: Warning
(pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtb: Warning
(i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtb: Warning
(spi_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:488.16-496.4: Warning
(avoid_default_addr_size): /dwmmc@fe310000/wifi@1: Relying on default
#address-cells value
arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi:488.16-496.4: Warning
(avoid_default_addr_size): /dwmmc@fe310000/wifi@1: Relying on default
#size-cells value

> ---
>  .../boot/dts/rockchip/rk3399-rock960.dtsi     | 96 ++++++++++++++++++-
>  1 file changed, 95 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index 56abbb08c133..1b2f7cd82244 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -9,6 +9,15 @@
>  #include "rk3399-opp.dtsi"
>
>  / {
> +       sdio_pwrseq: sdio-pwrseq {
> +               compatible = "mmc-pwrseq-simple";
> +               clocks = <&rk808 1>;
> +               clock-names = "ext_clock";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&wifi_enable_h>;
> +               reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +       };
> +
>         vcc1v8_s0: vcc1v8-s0 {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc1v8_s0";
> @@ -362,6 +371,20 @@
>  };
>
>  &pinctrl {
> +       bt {
> +               bt_enable_h: bt-enable-h {
> +                       rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               bt_host_wake_l: bt-host-wake-l {
> +                       rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               bt_wake_l: bt-wake-l {
> +                       rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
>         sdmmc {
>                 sdmmc_bus1: sdmmc-bus1 {
>                         rockchip,pins =
> @@ -387,6 +410,26 @@
>                 };
>         };
>
> +       sdio0 {
> +               sdio0_bus4: sdio0-bus4 {
> +                       rockchip,pins =
> +                               <2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
> +                               <2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
> +                               <2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
> +                               <2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
> +               };
> +
> +               sdio0_cmd: sdio0-cmd {
> +                       rockchip,pins =
> +                               <2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
> +               };
> +
> +               sdio0_clk: sdio0-clk {
> +                       rockchip,pins =
> +                               <2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
> +               };
> +       };
> +
>         pmic {
>                 pmic_int_l: pmic-int-l {
>                         rockchip,pins =
> @@ -403,6 +446,19 @@
>                                 <1 14 RK_FUNC_GPIO &pcfg_pull_down>;
>                 };
>         };
> +
> +       sdio-pwrseq {
> +               wifi_enable_h: wifi-enable-h {
> +                       rockchip,pins =
> +                               <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       wifi {
> +               wifi_host_wake_l: wifi-host-wake-l {
> +                       rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
>  };
>
>  &pwm2 {
> @@ -413,6 +469,33 @@
>         status = "okay";
>  };
>
> +&sdio0 {
> +       clock-frequency = <50000000>;
> +       bus-width = <4>;
> +       cap-sdio-irq;
> +       cap-sd-highspeed;
> +       no-emmc;
> +       keep-power-in-suspend;
> +       mmc-pwrseq = <&sdio_pwrseq>;
> +       non-removable;
> +       num-slots = <1>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +       sd-uhs-sdr104;
> +
> +       status = "okay";
> +
> +       brcmf: wifi@1 {
> +               compatible = "brcm,bcm4329-fmac";
> +               reg = <1>;
> +               interrupt-parent = <&gpio0>;
> +               interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> +               interrupt-names = "host-wake";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&wifi_host_wake_l>;
> +       };
> +};
> +
>  &sdhci {
>         bus-width = <8>;
>         mmc-hs400-1_8v;
> @@ -439,8 +522,19 @@
>
>  &uart0 {
>         pinctrl-names = "default";
> -       pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +       pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>         status = "okay";
> +
> +       bluetooth {
> +               compatible = "brcm,bcm43438-bt";
> +               clocks = <&rk808 1>;
> +               clock-names = "ext_clock";
> +               device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +               host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +               shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> +       };
>  };
>
>  &uart2 {
> --
> 2.17.1
>
