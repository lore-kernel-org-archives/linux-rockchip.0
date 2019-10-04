From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Fri, 4 Oct 2019 01:01:01 +0100
Message-ID: <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191003215036.15023-3-smoch@web.de>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Soeren Moch <smoch@web.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-10-03 10:50 pm, Soeren Moch wrote:
> According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
> connected to a microSD (TF card) slot, which cannot be switched to 1.8V.

Really? AFAICS the SDMMC0 wiring looks pretty much identical to the 
NanoPC-T4 schematic (it's the same reference design, after all), and I 
know that board can happily drive a UHS-I microSD card with 1.8v I/Os, 
because mine's doing so right now.

Robin.

> So also configure the vcc_sdio regulator, which drives the i/o voltage
> of the sdmmc controller, accordingly.
> 
> While at it, also remove the cap-mmc-highspeed property of the sdmmc
> controller, since no mmc card can be connected here.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 2e44dae4865a..084f1d994a50 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -353,7 +353,7 @@
>   				regulator-name = "vcc_sdio";
>   				regulator-always-on;
>   				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> +				regulator-min-microvolt = <3000000>;
>   				regulator-max-microvolt = <3000000>;
>   				regulator-state-mem {
>   					regulator-on-in-suspend;
> @@ -624,7 +624,6 @@
> 
>   &sdmmc {
>   	bus-width = <4>;
> -	cap-mmc-highspeed;
>   	cap-sd-highspeed;
>   	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>   	disable-wp;
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
