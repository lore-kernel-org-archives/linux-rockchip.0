From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] ARM: rockchip: Fix use of plain integer as NULL pointer
Date: Thu, 17 Mar 2016 14:54:47 +0100
Message-ID: <3852103.Khn1BuqerF@diego>
References: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, patches@linaro.org, lee.jones@linaro.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Peter,

no need to resend for that (will be lost when applying anyway), but for=
 future=20
patches please consider the things below:

Am Donnerstag, 17. M=E4rz 2016, 13:43:11 schrieb Peter Griffin:
> This fixes the following sparse build warning:
>=20
>      mach-rockchip/platsmp.c:68:43: Using plain integer as NULL point=
er
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

please bring aling tags received in previous versions to future ones, l=
ike the=20
one from Lee:

Acked-by: Lee Jones <lee.jones@linaro.org>

> ---

changes in v2:
- beautify commit message


otherwise, patch looks nice and I'll pick it up shortly


Thanks for catching this
Heiko

>  arch/arm/mach-rockchip/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/mach-rockchip/platsmp.c
> b/arch/arm/mach-rockchip/platsmp.c index d42a07e..4d827a0 100644
> --- a/arch/arm/mach-rockchip/platsmp.c
> +++ b/arch/arm/mach-rockchip/platsmp.c
> @@ -65,7 +65,7 @@ static struct reset_control *rockchip_get_core_rese=
t(int
> cpu) if (dev)
>  		np =3D dev->of_node;
>  	else
> -		np =3D of_get_cpu_node(cpu, 0);
> +		np =3D of_get_cpu_node(cpu, NULL);
>=20
>  	return of_reset_control_get(np, NULL);
>  }
