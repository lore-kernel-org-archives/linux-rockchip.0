From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth
 at uart0
Date: Thu, 12 Dec 2019 10:22:27 +0000
Message-ID: <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-10-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191211235253.2539-10-smoch@web.de>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>, Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Soeren,

On 11/12/2019 11:52 pm, Soeren Moch wrote:
> With enabled wifi support (required for firmware loading) for the
> Ampak AP6359SA based wifi/bt combo module we now also can enable
> the bluetooth part.
> 
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> changes in v2:
> - new patch
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 29 ++++++++++++++++++-
>   1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 9fa92790d6e0..94cc462e234d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -561,6 +561,20 @@
>   };
> 
>   &pinctrl {
> +	bt {
> +		bt_enable_h: bt-enable-h {
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_host_wake_l: bt-host-wake-l {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_wake_l: bt-wake-l {
> +			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	buttons {
>   		pwrbtn: pwrbtn {
>   			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> @@ -729,8 +743,21 @@
> 
>   &uart0 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&uart0_xfer &uart0_cts>;
> +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>   	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		clocks = <&rk808 1>;
> +		clock-names = "extclk";

Is this right? Comparing the binding and the naming on the schematics, 
it seems more likely that this might be the LPO clock rather than the 
TXCO clock.

Robin.

> +		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +	};
>   };
> 
>   &uart2 {
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
