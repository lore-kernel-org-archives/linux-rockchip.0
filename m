From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] include: dt-bindings: rockchip: remove RK_FUNC defines
Date: Tue, 15 Oct 2019 22:10:42 +0200
Message-ID: <2236841.lnJlJmhppS@phil>
References: <20191015191000.2890-1-jbx6244@gmail.com> <20191015191000.2890-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191015191000.2890-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Dienstag, 15. Oktober 2019, 21:10:00 CEST schrieb Johan Jonker:
> The defines RK_FUNC_1, RK_FUNC_2, RK_FUNC_3 and RK_FUNC_4
> are no longer used, so remove them to prevent
> that someone start using them again.

That won't work. Devicetree provides a slightly flexible promise of
backwards compatibilty. So a new kernel should still work old devicetrees.
(not exactly sure if this means dt-binaries and sources or only binaries)

So while I think RK_FUNC_0-n should not be used anymore, we should
probably just mark them as "deprecated" in a first step.


Heiko


> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  include/dt-bindings/pinctrl/rockchip.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
> index dc5c1c73d..2798b6c03 100644
> --- a/include/dt-bindings/pinctrl/rockchip.h
> +++ b/include/dt-bindings/pinctrl/rockchip.h
> @@ -50,9 +50,5 @@
>  #define RK_PD7		31
>  
>  #define RK_FUNC_GPIO	0
> -#define RK_FUNC_1	1
> -#define RK_FUNC_2	2
> -#define RK_FUNC_3	3
> -#define RK_FUNC_4	4
>  
>  #endif
> 
