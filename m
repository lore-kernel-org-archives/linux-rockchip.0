From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?UTF-8?Q?Re:_[PATCH_v7_4/4]_arm64:_rockchip:_dts:_rk3399:_Use_rk33?=
 =?UTF-8?B?OTktdS1ib290LmR0c2njgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1yb2Nr?=
 =?UTF-8?Q?chip-bounces+kever.yang=3drock-chips.com-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?=
 =?UTF-8?B?5Luj5Y+R44CR?=
Date: Wed, 8 May 2019 11:39:40 +0800
Message-ID: <8e954f57-ce89-744b-b20a-4085c16d824f@rock-chips.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507182152.4254-5-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/08/2019 02:21 AM, Jagan Teki wrote:
> Now we have
> - board specific -u-boot.dtsi files for board specific u-boot
>   dts changes.
> - soc specific rk3399-u-boot.dtsi for soc specific u-boot
>   dts changes.
>
> So, include the rk3399-u-boot-dtsi on respective board -u-boot.dtsi
> and drop the properties which are globally available in rk3399-u-boot.dtsi
>
> Right now rk3399-u-boot.dtsi has sdmmc, spi1 u-boot,dm-pre-reloc
> property and more properties and nodes can be move further based
> on the requirements.
>
> This would fix, the -u-boot.dtsi inclusion for evb, firefly, puma
> boards that was accidentally merged on below commit.
> "rockchip: dts: rk3399: Create initial rk3399-u-boot.dtsi"
> (sha1: e05b4a4fa84b65a0c8873e8f34721741fe2bc09d)
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>


Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
>  arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
>  arch/arm/dts/rk3399-gru.dtsi            | 1 -
>  arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
>  arch/arm/dts/rk3399-puma.dtsi           | 2 --
>  7 files changed, 10 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> index 7e2c57af22..20910e744b 100644
> --- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>   */
>  
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> index eab86bdb30..67b63a8352 100644
> --- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>   */
>  
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> index 9edb8cf841..726f396f32 100644
> --- a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>   */
>  
> +#include "rk3399-gru-u-boot.dtsi"
>  #include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-u-boot.dtsi b/arch/arm/dts/rk3399-gru-u-boot.dtsi
> new file mode 100644
> index 0000000000..7bddc3acdb
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-gru-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-u-boot.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
> index 4cdb4320b7..ca0fc391b2 100644
> --- a/arch/arm/dts/rk3399-gru.dtsi
> +++ b/arch/arm/dts/rk3399-gru.dtsi
> @@ -545,7 +545,6 @@ ap_i2c_audio: &i2c8 {
>  
>  &spi1 {
>  	status = "okay";
> -	u-boot,dm-pre-reloc;
>  
>  	pinctrl-names = "default", "sleep";
>  	pinctrl-1 = <&spi1_sleep>;
> diff --git a/arch/arm/dts/rk3399-puma-ddr1600.dts b/arch/arm/dts/rk3399-puma-ddr1600.dts
> index 337e0eabb4..42763f82d0 100644
> --- a/arch/arm/dts/rk3399-puma-ddr1600.dts
> +++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
> @@ -6,5 +6,6 @@
>  /dts-v1/;
>  
>  #include "rk3399-puma.dtsi"
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-ddr3-1600.dtsi"
>  
> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
> index 319a610022..897e0bda85 100644
> --- a/arch/arm/dts/rk3399-puma.dtsi
> +++ b/arch/arm/dts/rk3399-puma.dtsi
> @@ -647,8 +647,6 @@
>  
>  
>  &spi1 {
> -	u-boot,dm-pre-reloc;
> -
>  	status = "okay";
>  
>  	#address-cells = <1>;
