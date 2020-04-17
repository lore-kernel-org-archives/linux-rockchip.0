From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: add core devicetree for rk3318
Date: Fri, 17 Apr 2020 13:05:27 +0200
Message-ID: <2141402.AJMLQ3pQEO@phil>
References: <20200417105739.3718-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200417105739.3718-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 17. April 2020, 12:57:39 CEST schrieb Johan Jonker:
> The rk3318 is basically a rk3328 with improved gpu,
> so add a dtsi based on that.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Please don't add dangling dtsi files.
I'd expect at least a board dts to actually use that and
also the updated gpu node.

From a cursory glance it looks like it gets upgraded from
450-MP2 to 450MP3 or so, so that would at least mean
another set of interrupts.

Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3318.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3318.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3318.dtsi b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
> new file mode 100644
> index 000000000..a32f771bc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
> @@ -0,0 +1,3 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include "rk3328.dtsi"
> 
