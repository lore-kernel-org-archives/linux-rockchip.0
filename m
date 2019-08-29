From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: limit clock rate of eMMC for rk3328
 boards
Date: Thu, 29 Aug 2019 12:18:04 +0100
Message-ID: <13f7aa42-068d-e849-1355-68ec566f9712@arm.com>
References: <1567068062-174383-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1567068062-174383-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Liang Chen <cl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 29/08/2019 09:41, Shawn Lin wrote:
> max-frequency is missing for rk3328-evb and rk3328-rock64, so the
> eMMC will run into 200MHz bus clock in HS200 mode. The IO can only
> support up to 150MHz for rk3228 Soc, so now rk3328 boards are not
> always boot properly.

Hmm, if 150MHz is a fundamental limitation of the SoC, maybe we should 
just add it to the .dtsi? Board-level files could still override it with 
a lower value if need be, but it would obviate the worry of missing it 
when adding new boards.

Robin.

> Fixes: 955bebde057e ("arm64: dts: rockchip: add rk3328-rock64 board")
> Fixes: 0c1f8546753f ("arm64: dts: rockchip: add RK3328 eavluation board devicetree")
> Cc: Liang Chen <cl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
>   arch/arm64/boot/dts/rockchip/rk3328-evb.dts    | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> index 49c4b96..a5d8b0c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> @@ -73,6 +73,7 @@
>   &emmc {
>   	bus-width = <8>;
>   	cap-mmc-highspeed;
> +	max-frequency = <150000000>;
>   	non-removable;
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 62936b4..e99e22e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -132,6 +132,7 @@
>   &emmc {
>   	bus-width = <8>;
>   	cap-mmc-highspeed;
> +	max-frequency = <150000000>;
>   	mmc-hs200-1_8v;
>   	non-removable;
>   	pinctrl-names = "default";
> 
