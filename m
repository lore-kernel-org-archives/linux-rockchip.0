From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: remove include for irq.h
Date: Fri, 03 Apr 2020 18:08:04 +0200
Message-ID: <2606579.xTHnjFkxbI@phil>
References: <20200403154329.11256-1-jbx6244@gmail.com> <20200403154329.11256-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403154329.11256-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 3. April 2020, 17:43:28 CEST schrieb Johan Jonker:
> The 'irq.h' file is already included through 'arm-gic.h',
> so remove them from all Rockchip dtsi files.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 3 +--
>  arch/arm/boot/dts/rk322x.dtsi | 3 +--
>  arch/arm/boot/dts/rk3288.dtsi | 5 ++---
>  arch/arm/boot/dts/rk3xxx.dtsi | 1 -
>  arch/arm/boot/dts/rv1108.dtsi | 4 ++--
>  5 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
> index 781ac7583..55f3838b2 100644
> --- a/arch/arm/boot/dts/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rk3036.dtsi
> @@ -1,10 +1,9 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
> +#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> -#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>

that movement of the *-cru.h files are unrelated changes,
as they're not described in the commit message.

If you really want to move these this should be a separate commit.


Heiko
