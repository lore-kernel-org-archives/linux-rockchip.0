From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?UTF-8?Q?Re:_[PATCH_v7_2/4]_arm64:_rockchip:_dts:_rk3399:_Add_boar?=
 =?UTF-8?B?ZCAtdS1ib290LmR0c2kgZmlsZXPjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51?=
 =?UTF-8?Q?x-rockchip-bounces+kever.yang=3drock-chips.com-IAPFreCvJWM7uuMidbF8XcXa4x6EXUF0@public.gmane.org?=
 =?UTF-8?B?Z+S7o+WPkeOAkQ==?=
Date: Wed, 8 May 2019 11:39:16 +0800
Message-ID: <989d9a0b-e6fa-9873-7cbc-147f4f14e6bb@rock-chips.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507182152.4254-3-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
> Devicetree files in RK3399 platform is synced from Linux, like other
> platforms does. Apart from these u-boot in rk3399 would also require
> some u-boot specific node like dmc.
>
> dmc node has big chunk of DDR timing parameters which are specific
> to specific board, and maintained with rk3399-sdram*.dtsi.
>
> So, create board specific -u-boot.dtsi files and move these sdram dtsi
> files accordingly. This would help of maintain u-boot specific changes
> separately without touching Linux dts(i) files which indeed easy for
> syncing from Linux between releases.
>
> These board specific -u-boot.dtsi can be extendible to add more u-boot
> specific nodes or properties in future.
>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>


Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 6 ++++++
>  arch/arm/dts/rk3399-evb.dts             | 1 -
>  arch/arm/dts/rk3399-ficus-u-boot.dtsi   | 6 ++++++
>  arch/arm/dts/rk3399-ficus.dts           | 1 -
>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-firefly.dts         | 1 -
>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-gru-bob.dts         | 1 -
>  arch/arm/dts/rk3399-rock960-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-rock960.dts         | 1 -
>  10 files changed, 30 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> new file mode 100644
> index 0000000000..7e2c57af22
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
> index 9162f3dd50..a506e8da37 100644
> --- a/arch/arm/dts/rk3399-evb.dts
> +++ b/arch/arm/dts/rk3399-evb.dts
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/pwm/pwm.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include "rk3399.dtsi"
> -#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
>  
>  / {
>  	model = "Rockchip RK3399 Evaluation Board";
> diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> new file mode 100644
> index 0000000000..eab86bdb30
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
> index 4af0e4e383..4b2dd82b67 100644
> --- a/arch/arm/dts/rk3399-ficus.dts
> +++ b/arch/arm/dts/rk3399-ficus.dts
> @@ -8,7 +8,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-rock960.dtsi"
> -#include "rk3399-sdram-ddr3-1600.dtsi"
>  
>  / {
>  	model = "96boards RK3399 Ficus";
> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> new file mode 100644
> index 0000000000..eab86bdb30
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
> index 46f2ffaf8d..a4cb64f8bd 100644
> --- a/arch/arm/dts/rk3399-firefly.dts
> +++ b/arch/arm/dts/rk3399-firefly.dts
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/pwm/pwm.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include "rk3399.dtsi"
> -#include "rk3399-sdram-ddr3-1600.dtsi"
>  
>  / {
>  	model = "Firefly-RK3399 Board";
> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> new file mode 100644
> index 0000000000..9edb8cf841
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
> index 0e3d91fc28..1ee0dc0d9f 100644
> --- a/arch/arm/dts/rk3399-gru-bob.dts
> +++ b/arch/arm/dts/rk3399-gru-bob.dts
> @@ -7,7 +7,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-gru-chromebook.dtsi"
> -#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>  
>  / {
>  	model = "Google Bob";
> diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> new file mode 100644
> index 0000000000..5256f6d3f2
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> + */
> +
> +#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
> index 25c58b4261..7e06bc97e5 100644
> --- a/arch/arm/dts/rk3399-rock960.dts
> +++ b/arch/arm/dts/rk3399-rock960.dts
> @@ -5,7 +5,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-rock960.dtsi"
> -#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
>  
>  / {
>  	model = "96boards Rock960";
