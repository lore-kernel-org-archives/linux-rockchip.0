From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RESEND PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD
 pin as RK_FUNC_1
Date: Wed, 8 May 2019 14:52:02 +0100
Message-ID: <649bcf2d-429e-cd6d-1ed6-f797604fb90c@arm.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <20190508054151.21762-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190508054151.21762-6-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 08/05/2019 06:41, Jagan Teki wrote:
> sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> indeed failed to detect the sdcard on the board with below error
> 
>    Card did not respond to voltage select!
> 
> So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> is already defined in rk3399.dts so make use of same like
> other boards.

AFAICS this should also be true of RockPro64 and (at least with the 
Linux DT) Firefly - those aren't grabbing &sdmmc_cd by default either. I 
imagine that U-Boot might also see similar problems on Gru, where the 
card detect signal is on a completely different GPIO.

I'd note that in Linux, only rk3399-evb is actually *using* &sdmmc_cd - 
despite the fact that they claim it, nearly all the other boards also 
have "cd-gpios" and thus end up overriding the dedicated function with 
an implicit GPIO configuration anyway. Sapphire is the odd one out in 
using "broken-cd" as the less-efficient way of mitigating the runtime PM 
issue.

> Add these changes in -u-boot.dtsi to make Linux sync easy for future
> changes.
> 
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>   arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
>   1 file changed, 9 insertions(+)
>   create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> 
> diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> new file mode 100644
> index 0000000000..20db99c0b8
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +&sdmmc {
> +	pinctrl-names = "default";

That's already set in the base DTSI, so doesn't really need to be 
shadowed here.

> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
> +};
> 

I suppose you could also delete the "cd-gpios" property to make it 
really clear what this override is for (and save a few bytes if it's 
going to be ignored anyway).

Robin.
