From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cif test clocks for rk3399
Date: Mon, 8 Jan 2018 11:17:35 -0800
Message-ID: <20180108191733.GA59523@google.com>
References: <1515390531-13147-1-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1515390531-13147-1-git-send-email-zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shunqian,

On Mon, Jan 08, 2018 at 01:48:51PM +0800, Shunqian Zheng wrote:
> There are three pins can act as cif test clock for rk3399.
> They're sourced from 24M and output 24M by default and some boards
> may use them as camera 24M xvclk.
> 
> Signed-off-by: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 7aa2144..daad42f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2293,6 +2293,23 @@
>  			};
>  		};
>  
> +		test {

Doesn't really matter much, but 'test' is a weird group name to me. I
think 'testclk' or 'test-clk' might be a more descriptive name?

> +			test_clkout0: test-clkout0 {
> +				rockchip,pins =
> +					<0 0 RK_FUNC_1 &pcfg_pull_none>;
> +			};
> +
> +			test_clkout1: test-clkout1 {
> +				rockchip,pins =
> +					<2 25 RK_FUNC_2 &pcfg_pull_none>;
> +			};
> +
> +			test_clkout2: test-clkout2 {
> +				rockchip,pins =
> +					<0 8 RK_FUNC_3 &pcfg_pull_none>;

Your function indexing is a little confusing to me, but one or more of
your datasheet, TRM, or patch are incorrect here. The datasheet says
"Func 3" (which is 1-indexed, so really means RK_FUNC_2) should be
TEST_CLKOUT2, but your TRM agrees with the patch, saying
2'b11=test_clkout2. So I think your patch is correct, but the datasheet
needs updated?

All in all, I think the patch looks good though:

Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

> +			};
> +		};
> +
>  		tsadc {
>  			otp_gpio: otp-gpio {
>  				rockchip,pins = <1 6 RK_FUNC_GPIO &pcfg_pull_none>;
> -- 
> 1.9.1
> 
