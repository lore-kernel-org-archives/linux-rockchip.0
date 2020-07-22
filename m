From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 06/12] arm64: dts: rockchip: Add PCIe for RockPI N10
Date: Wed, 22 Jul 2020 20:29:36 +0800
Message-ID: <90e4c2d3-e6ec-109f-558f-c2d07e5ecfcb@rock-chips.com>
References: <20200721152443.37602-1-jagan@amarulasolutions.com>
 <20200721152443.37602-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152443.37602-7-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/7/21 下午11:24, Jagan Teki wrote:
> This patch adds support to enable PCIe for RockPI N10.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - none
>
>   arch/arm/dts/rk3399pro-vmarc-som.dtsi | 40 +++++++++++++++++++++++++--
>   1 file changed, 38 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> index ebccc4a153..5d087be04a 100644
> --- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> @@ -11,6 +11,18 @@
>   
>   / {
>   	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
> +
> +	vcc3v3_pcie: vcc-pcie-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_pwr>;
> +		regulator-name = "vcc3v3_pcie";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
>   };
>   
>   &cpu_l0 {
> @@ -142,7 +154,8 @@
>   				regulator-min-microvolt = <900000>;
>   				regulator-max-microvolt = <900000>;
>   				regulator-state-mem {
> -					regulator-off-in-suspend;
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
>   				};
>   			};
>   
> @@ -177,7 +190,8 @@
>   				regulator-min-microvolt = <1850000>;
>   				regulator-max-microvolt = <1850000>;
>   				regulator-state-mem {
> -					regulator-off-in-suspend;
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1850000>;
>   				};
>   			};
>   
> @@ -304,6 +318,22 @@
>   	sdmmc-supply = <&vccio_sd>;
>   };
>   
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +	max-link-speed = <2>;
> +	num-lanes = <4>;
> +	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> +	pinctrl-names = "default";
> +	vpcie0v9-supply = <&vcca_0v9>;	/* VCC_0V9_S0 */
> +	vpcie1v8-supply = <&vcca_1v8>;	/* VCC_1V8_S0 */
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
>   &pinctrl {
>   	hym8563 {
>   		hym8563_int: hym8563-int {
> @@ -311,6 +341,12 @@
>   		};
>   	};
>   
> +	pcie {
> +		pcie_pwr: pcie-pwr {
> +			rockchip,pins =	<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
>   	pmic {
>   		pmic_int_l: pmic-int-l {
>   			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
