From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] ARM: Rockchip: Fix use of plain integer as NULL pointer
Date: Thu, 17 Mar 2016 13:29:43 +0000
Message-ID: <20160317132943.GC13692@x1>
References: <1458213099-13786-1-git-send-email-peter.griffin@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1458213099-13786-1-git-send-email-peter.griffin@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, patches@linaro.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Nit: Subject line doesn't match the preferred format for the sub-arch.

On Thu, 17 Mar 2016, Peter Griffin wrote:

> This fixes the following sparse build warning
> mach-rockchip/platsmp.c:68:43: Using plain integer as NULL pointer

Nit: I would insert a '\n' between your wording and the quoted
warning.  For added clarity, I usually stick a tab before the quote.

> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  arch/arm/mach-rockchip/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch looks good though:

Acked-by: Lee Jones <lee.jones@linaro.org>

> diff --git a/arch/arm/mach-rockchip/platsmp.c b/arch/arm/mach-rockchi=
p/platsmp.c
> index d42a07e..4d827a0 100644
> --- a/arch/arm/mach-rockchip/platsmp.c
> +++ b/arch/arm/mach-rockchip/platsmp.c
> @@ -65,7 +65,7 @@ static struct reset_control *rockchip_get_core_rese=
t(int cpu)
>  	if (dev)
>  		np =3D dev->of_node;
>  	else
> -		np =3D of_get_cpu_node(cpu, 0);
> +		np =3D of_get_cpu_node(cpu, NULL);
> =20
>  	return of_reset_control_get(np, NULL);
>  }

--=20
Lee Jones
Linaro STMicroelectronics Landing Team Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
=46ollow Linaro: Facebook | Twitter | Blog
