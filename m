From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 03/22] clocksource/drivers/rockchip: Make the driver more compatible
Date: Mon, 02 Nov 2015 16:33:27 +0100
Message-ID: <5093304.EN6Bc2EjLr@wuerfel>
References: <1446469011-22710-1-git-send-email-daniel.lezcano@linaro.org> <1446469011-22710-3-git-send-email-daniel.lezcano@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446469011-22710-3-git-send-email-daniel.lezcano@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, tglx@linutronix.de, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, john.stultz@linaro.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Monday 02 November 2015 13:56:31 Daniel Lezcano wrote:
>  static inline void rk_timer_disable(struct clock_event_device *ce)
>  {
>         writel_relaxed(TIMER_DISABLE, rk_base(ce) + TIMER_CONTROL_REG);
> -       dsb();
> +       dsb(sy);
>  }
>  
>  static inline void rk_timer_enable(struct clock_event_device *ce, u32 flags)
>  {
>         writel_relaxed(TIMER_ENABLE | TIMER_INT_UNMASK | flags,
>                        rk_base(ce) + TIMER_CONTROL_REG);
> -       dsb();
> +       dsb(sy);
>  }
>  
> 

This will fail the compile test, because dsb() is not available on non-ARM
architectures. Would it be enough to just use the normal writel() accessor
here?

	Arnd
