From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 2/5] clocksource: rockchip: remove unnecessary clear irq
 before request_irq
Date: Tue, 31 May 2016 01:09:45 +0200
Message-ID: <574CC839.60608@linaro.org>
References: <1464169802-6033-1-git-send-email-wxt@rock-chips.com>
 <1464169802-6033-3-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464169802-6033-3-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, briannorris@google.com, smbarber@google.com, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, cf@rock-chips.com, huangtao@rock-chips.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/25/2016 11:49 AM, Caesar Wang wrote:
> From: Huang Tao <huangtao@rock-chips.com>
>
> rk_timer_interrupt_clear and rk_timer_disable is unnecessary before
> request_irq. Timer should keep disabled before booting Linux.

That's true in the perfect world :/ Some version has u-boot letting the=
=20
timer with irq enabled, therefore as soon as request_irq is done, an ir=
q=20
fires and leads to a kernel panic.

On the other side, this timer is not used on the other rockchip version=
=20
than rk3399 because of no need of a broadcast timer, so removing these=20
two lines may be acceptable.

Can try the changes with another board, eg rk3288 (and forcing to use=20
this timer). Can you do the test and confirm it does not break with=20
different version of u-boot ?

Thanks!

   -- Daniel

> Signed-off-by: Huang Tao <huangtao@rock-chips.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
>   drivers/clocksource/rockchip_timer.c | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksour=
ce/rockchip_timer.c
> index b991b28..b93fed6 100644
> --- a/drivers/clocksource/rockchip_timer.c
> +++ b/drivers/clocksource/rockchip_timer.c
> @@ -158,9 +158,6 @@ static void __init rk_timer_init(struct device_no=
de *np)
>   	ce->cpumask =3D cpumask_of(0);
>   	ce->rating =3D 250;
>
> -	rk_timer_interrupt_clear(ce);
> -	rk_timer_disable(ce);
> -
>   	ret =3D request_irq(irq, rk_timer_interrupt, IRQF_TIMER, TIMER_NAM=
E, ce);
>   	if (ret) {
>   		pr_err("Failed to initialize '%s': %d\n", TIMER_NAME, ret);
>


--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
