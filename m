From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vcc_host1_5v GPIO polarity on
 rk3328-rock64
Date: Sat, 9 Mar 2019 11:52:09 +0900
Message-ID: <164d616b-f445-2aa6-e57a-e6db446eb121@katsuster.net>
References: <4e9800cd-ac6d-9eb8-60d4-8e4b1aa761b9@iris.mystia.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4e9800cd-ac6d-9eb8-60d4-8e4b1aa761b9@iris.mystia.org>
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
To: Tomohiro Mayama <parly-gh@iris.mystia.org>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Mayama-san,

On 2019/03/08 1:18, Tomohiro Mayama wrote:
> This patch makes USB ports functioning again.
> 
> Signed-off-by: Tomohiro Mayama <parly-gh@iris.mystia.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 21107d0f4378..7f365e448867 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -45,8 +45,7 @@
>   
>   	vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
>   		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>   		pinctrl-names = "default";
>   		pinctrl-0 = <&usb20_host_drv>;
>   		regulator-name = "vcc_host1_5v";
> 

After this patch applied, USB and S/PDIF both work well.

Tested-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>


$ lsusb
Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 046d:c526 Logitech, Inc. Nano Receiver
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub


Best Regards,
Katsuhiro Suzuki
