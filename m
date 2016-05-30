From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 3/5] clocksource: rockchip: add dynamic irq flag to the
 timer
Date: Tue, 31 May 2016 01:16:46 +0200
Message-ID: <574CC9DE.1050501@linaro.org>
References: <1464169802-6033-1-git-send-email-wxt@rock-chips.com>
 <1464169802-6033-4-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464169802-6033-4-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, briannorris@google.com, smbarber@google.com, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, cf@rock-chips.com, huangtao@rock-chips.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/25/2016 11:50 AM, Caesar Wang wrote:
> From: Huang Tao <huangtao@rock-chips.com>
>
> The rockchip timer is broadcast timer. Add CLOCK_EVT_FEAT_DYNIRQ
> flag and set cpumask to all cpu to save power by avoid unnecessary
> wakeups and IPIs.
>
> Signed-off-by: Huang Tao <huangtao@rock-chips.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
>   drivers/clocksource/rockchip_timer.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clocksource/rockchip_timer.c b/drivers/clocksour=
ce/rockchip_timer.c
> index b93fed6..f3dfb1a 100644
> --- a/drivers/clocksource/rockchip_timer.c
> +++ b/drivers/clocksource/rockchip_timer.c
> @@ -150,12 +150,13 @@ static void __init rk_timer_init(struct device_=
node *np)
>   	}
>
>   	ce->name =3D TIMER_NAME;
> -	ce->features =3D CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
> +	ce->features =3D CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT |
> +		       CLOCK_EVT_FEAT_DYNIRQ;
>   	ce->set_next_event =3D rk_timer_set_next_event;
>   	ce->set_state_shutdown =3D rk_timer_shutdown;
>   	ce->set_state_periodic =3D rk_timer_set_periodic;
>   	ce->irq =3D irq;
> -	ce->cpumask =3D cpumask_of(0);
> +	ce->cpumask =3D cpu_all_mask;

s/cpu_all_mask/cpu_possible_mask/

>   	ce->rating =3D 250;
>
>   	ret =3D request_irq(irq, rk_timer_interrupt, IRQF_TIMER, TIMER_NAM=
E, ce);
>


--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
