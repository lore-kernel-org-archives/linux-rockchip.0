From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: add sdmmc support for px5-evb
Date: Fri, 14 Oct 2016 19:29:08 +0200
Message-ID: <5652149.PmckHYSsLx@phil>
References: <1474516939-22001-1-git-send-email-shawn.lin@rock-chips.com>
 <1474516939-22001-2-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1474516939-22001-2-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 22. September 2016, 12:02:18 CEST schrieb Shawn Lin:
> px5-evb has one sdmmc slot, so we could support sdmmc.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

applied for 4.10 with the changes described below. Please keep them in mind 
for future patches :-) .


>  arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts index 3e0b522..f59049b
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> @@ -98,6 +98,25 @@
>  	vqmmc-supply = <&vcc18_flash>;
>  };
> 
> +&sdmmc {

moved sdmmc node to its alphabetical correct position

> +	status = "okay";
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <200>;
> +	rockchip,default-sample-phase = <90>;
> +	num-slots = <1>;

restored alphabetical ordering

> +	no-emmc;
> +	no-sdio;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_bus4>, <&sdmmc_cd>;
> +	vmmc-supply = <&vcc_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +};
> +
> +

removed 2nd blank line

>  &i2c0 {
>  	status = "okay";


Heiko
