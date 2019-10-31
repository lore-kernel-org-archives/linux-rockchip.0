From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
Date: Thu, 31 Oct 2019 17:57:35 +0100
Message-ID: <1719506.vT9a8mQdzu@phil>
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
> rk3399-roc-pc has a PCIe interface. Enable it for use with
> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
> Tested with Samsung 970 evo plus SSD.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index 9313251765c7..2d637d54994b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -158,6 +158,21 @@
>  		regulator-max-microvolt = <1400000>;
>  		vin-supply = <&vcc_sys>;
>  	};
> +
> +	/* on roc-rk3399-mezzanine board */

I'm undecided on this. From what I've seen that mezzanine board is some
sort of addon, like a raspberry pi hat. Therefore it's not always present,
so probably should not be part of the base board dts.

I'm thinking a dt-overlay that can then be activated might be the solution
of choice, but I've reached out to arm-soc poeple on irc to determine the
correct course.


Heiko

> +	vcc3v3_pcie: vcc3v3-pcie {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_pcie";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_pcie_en>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
>  };
>  
>  &cpu_l0 {
> @@ -514,6 +529,19 @@
>  	status = "okay";
>  };
>  
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_perst>;
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	lcd-panel {
>  		lcd_panel_reset: lcd-panel-reset {
> @@ -535,6 +563,16 @@
>  		};
>  	};
>  
> +	pcie {
> +		vcc3v3_pcie_en: vcc3v3-pcie-en {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_perst: pcie-perst {
> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		vsel1_gpio: vsel1-gpio {
>  			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> 
