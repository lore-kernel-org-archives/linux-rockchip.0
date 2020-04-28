From: Kever Yang <kever.yang@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_1/6=5d_arm64=3a_dts=3a_rk3399-puma=3a_M?=
 =?UTF-8?B?b3ZlIHUtYm9vdCBwcm9wZXJ0aWVzIGludG8gLXUtYm9vdC5kdHNp44CQ6K+35rOo?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5n?=
 =?UTF-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Tue, 28 Apr 2020 22:12:20 +0800
Message-ID: <00538470-fd55-da15-780c-13ea90bd3f9e@rock-chips.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200428100019.19155-2-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, Peter Robinson <pbrobinson@gmail.com>, sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/4/28 下午6:00, Jagan Teki wrote:
> Move U-Boot specific properties into rk3399-puma u-boot
> specific dtsi file.
>
> This would help to sync the devicetrees from Linux whenever
> required instead of adding specific nodes.
>
> Cc: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - none
>
>   arch/arm/dts/rk3399-puma-u-boot.dtsi | 16 ++++++++++++++++
>   arch/arm/dts/rk3399-puma.dtsi        | 11 -----------
>   2 files changed, 16 insertions(+), 11 deletions(-)
>
> diff --git a/arch/arm/dts/rk3399-puma-u-boot.dtsi b/arch/arm/dts/rk3399-puma-u-boot.dtsi
> index 52f62b5d39..e664779227 100644
> --- a/arch/arm/dts/rk3399-puma-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-puma-u-boot.dtsi
> @@ -22,3 +22,19 @@
>          };
>   
>   };
> +
> +&bios_enable {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&gpio1 {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&gpio3 {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&spiflash {
> +	u-boot,dm-pre-reloc;
> +};
> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
> index 558b6337df..246a892cb7 100644
> --- a/arch/arm/dts/rk3399-puma.dtsi
> +++ b/arch/arm/dts/rk3399-puma.dtsi
> @@ -91,7 +91,6 @@
>   	 */
>   	bios_enable: bios_enable {
>   		compatible = "regulator-fixed";
> -		u-boot,dm-pre-reloc;
>   		regulator-name = "bios_enable";
>   		enable-active-high;
>   		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
> @@ -520,14 +519,6 @@
>   	status = "okay";
>   };
>   
> -&gpio1 {
> -	u-boot,dm-pre-reloc;
> -};
> -
> -&gpio3 {
> -	u-boot,dm-pre-reloc;
> -};
> -
>   &pinctrl {
>   	/* Pins that are not explicitely used by any devices */
>   	pinctrl-names = "default";
> @@ -633,8 +624,6 @@
>   	#size-cells = <0>;
>   
>   	spiflash: w25q32dw@0 {
> -		u-boot,dm-pre-reloc;
> -
>   		compatible = "jedec,spi-nor";
>   		reg = <0>;
>   		spi-max-frequency = <49500000>;
