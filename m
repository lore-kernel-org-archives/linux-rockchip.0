From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 4/5] clocksource: rockchip: add support for rk3399 SoC
Date: Wed, 1 Jun 2016 08:16:41 +0200
Message-ID: <574E7DC9.4000102@linaro.org>
References: <1464169802-6033-1-git-send-email-wxt@rock-chips.com>
 <1464169802-6033-5-git-send-email-wxt@rock-chips.com>
 <574CCCB4.1030001@linaro.org> <574D95AF.2020905@rock-chips.com>
 <574D9A66.4090209@linaro.org> <574E4130.8090600@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <574E4130.8090600@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "Huang, Tao" <huangtao@rock-chips.com>, Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dianders@chromium.org, briannorris@google.com, smbarber@google.com, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, cf@rock-chips.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 06/01/2016 03:58 AM, Huang, Tao wrote:
> Hi Daniel:
> On 2016=E5=B9=B405=E6=9C=8831=E6=97=A5 22:06, Daniel Lezcano wrote:

[ ... ]

>>> -CLOCKSOURCE_OF_DECLARE(rk_timer, "rockchip,rk3288-timer", rk_timer=
_init);
>>> +static void __init rk3288_timer_init(struct device_node *np)
>>> +{
>>> +	bc_timer.ctrl =3D TIMER_CONTROL_REG3288;
>>> +	rk_timer_init(np);
>>
>> 	rk_timer_init(np);
>> 	bc_timer.ctrl =3D bc_timer.base + TIMER_CONTROL_REG3288;
>
> No. It's not such simple. You will access null pointer when
> rk_timer_init, if we keep rk_timer_disable call in init or after
> request_irq/clockevents_config_and_register and interrupt happen
> immediately.
>
> So the code maybe:
> static void __init rk3288_timer_init(struct device_node *np)
> {
> 	bc_timer.base =3D of_iomap(np, 0);
> 	if (!bc_timer.base) {
> 		pr_err("Failed to get base address for '%s'\n", TIMER_NAME);
> 		return;
> 	}
> 	bc_timer.ctrl =3D bc_timer.base + TIMER_CONTROL_REG3288;
> 	rk_imter_init(np); // of course remove of_iomap from init.
>
> Is this what you want?

Not necessarily. There are plenty of variants.

eg. rk_timer_init(np, TIMER_CONTROL_REG3288);



--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
