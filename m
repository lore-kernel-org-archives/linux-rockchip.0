From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: radxa-dalang: Update sdmmc
 properties
Date: Sat, 27 Jun 2020 23:10:40 +0800
Message-ID: <b580dc7f-ad5c-12ce-07b3-92188823f93d@rock-chips.com>
References: <20200618161220.219452-1-jagan@amarulasolutions.com>
 <20200618161220.219452-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200618161220.219452-2-jagan@amarulasolutions.com>
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>, U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/19 上午12:12, Jagan Teki wrote:
> Radxa dalang carrier boards are used to mount vmarc SoM's
> of rk3399pro and rk3288 to make complete SBC.
>
> Among these combinations, card detection gpio, max-frequency
> properties are used with rk3399pro SoM but not required for
> rk3288 SoM based on the hardware schematics.
>
> So, let's move these sdmmc specific properties on associate
> vmarc dtsi to make common use of dalang carrier device tree file.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/dts/rk3399pro-vmarc-som.dtsi           | 5 +++++
>   arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi | 2 --
>   2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/dts/rk3399pro-vmarc-som.dtsi b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> index 0a516334f1..6fd17e8a81 100644
> --- a/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm/dts/rk3399pro-vmarc-som.dtsi
> @@ -317,6 +317,11 @@
>   	status = "okay";
>   };
>   
> +&sdmmc {
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	max-frequency = <150000000>;
> +};
> +
>   &tsadc {
>   	status = "okay";
>   	rockchip,hw-tshut-mode = <1>;
> diff --git a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
> index df3712aedf..3e54f38f0a 100644
> --- a/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
> +++ b/arch/arm/dts/rockchip-radxa-dalang-carrier.dtsi
> @@ -52,10 +52,8 @@
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	vqmmc-supply = <&vccio_sd>;
> -	max-frequency = <150000000>;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
>   	status = "okay";
