From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH 1/2] clocksource/drivers/rockchip: Fix bad NO_IRQ usage
Date: Wed, 30 Sep 2015 18:17:33 +0800
Message-ID: <560BB6BD.4080509@gmail.com>
References: <560BB452.1020000@linaro.org>
 <1443607710-10415-1-git-send-email-daniel.lezcano@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1443607710-10415-1-git-send-email-daniel.lezcano@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Lezcano <daniel.lezcano@linaro.org>, tglx@linutronix.de
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux@arm.linux.org.uk, Heiko Stuebner <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC..." <linux-arm-kernel@lists.infradead.org>, "open list:CLOCKSOURCE, CLOC..." <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2015=E5=B9=B409=E6=9C=8830=E6=97=A5 18:08, Daniel Lezcano =E5=
=86=99=E9=81=93:
> The current code assumes the 'irq_of_parse_and_map' will return NO_IR=
Q in case
> of failure. Unfortunately, the NO_IRQ is not consistent across the di=
fferent
> architectures and we must not rely on it.
>
> NO_IRQ is equal to '-1' on ARM and 'irq_of_parse_and_map' returns '0'=
 in case
> of an error. Hence, the latter won't be detected and will lead to a c=
rash.
>
> Fix this by just checking 'irq' is different from zero.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

As Per- discuss,  you can free add my test tag.

  Tested-by: Caesar Wang <wxt@rock-chips.com>

> ---
>   drivers/clocksource/rockchip_timer.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksour=
ce/rockchip_timer.c
> index bb2c2b0..d3c1742 100644
> --- a/drivers/clocksource/rockchip_timer.c
> +++ b/drivers/clocksource/rockchip_timer.c
> @@ -148,7 +148,7 @@ static void __init rk_timer_init(struct device_no=
de *np)
>   	bc_timer.freq =3D clk_get_rate(timer_clk);
>  =20
>   	irq =3D irq_of_parse_and_map(np, 0);
> -	if (irq =3D=3D NO_IRQ) {
> +	if (!irq) {
>   		pr_err("Failed to map interrupts for '%s'\n", TIMER_NAME);
>   		return;
>   	}


--=20
Thanks,
Caesar
