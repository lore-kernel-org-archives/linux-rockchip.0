From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add marvell BT irq config
Date: Thu, 11 Jun 2020 07:52:21 +0200
Message-ID: <4d989400-0a2c-e6c8-8c83-d6d15464a10d@gmail.com>
References: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Abhishek Pandit-Subedi <abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-bluetooth-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chromeos-bluetooth-upstreaming-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 6/11/20 4:06 AM, Abhishek Pandit-Subedi wrote:
> Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
> and pinctrl block to devicetree so the btmrvl driver can correctly
> configure the wakeup interrupt.
> 
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> The Veyron Mighty Chromebook (rk3288 based board) is missing the wake
> configuration for Bluetooth. Without this change, the wake irq was not
> configurable and wake on Bluetooth was broken.
> 
> I verified this change with additional changes in the Bluetooth driver
> (the series is at https://patchwork.kernel.org/cover/11599101/). The
> driver changes are not necessary for this dts change and shouldn't block
> it.
> 
> 
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> index 171ba6185b6d39..976c0c17a71199 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> @@ -51,6 +51,21 @@ &sdmmc {
>  			&sdmmc_bus4>;
>  };
>  

> +&sdio0 {

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

&sdio0 goes above &sdmmc.

> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	btmrvl: btmrvl@2 {
> +		compatible = "marvell,sd8897-bt";
> +		reg = <2>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
> +		marvell,wakeup-pin = /bits/ 16 <13>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_l>;
> +	};
> +};
> +
>  &vcc_5v {
>  	enable-active-high;
>  	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
> 
