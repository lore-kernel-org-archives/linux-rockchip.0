From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/3] clk: rockchip: Make rkpwm a critical clock on rk3288
Date: Thu, 11 Apr 2019 21:27:13 +0200
Message-ID: <4051007.xZozYk3gQ9@diego>
References: <20190409204707.150347-1-dianders@chromium.org> <20190409204707.150347-3-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190409204707.150347-3-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Caesar Wang <caesar.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org, Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 9. April 2019, 22:47:06 CEST schrieb Douglas Anderson:
> Most rk3288-based boards are derived from the EVB and thus use a PWM
> regulator for the logic rail.  However, most rk3288-based boards don't
> specify the PWM regulator in their device tree.  We'll deal with that
> by making it critical.
> 
> NOTE: it's important to make it critical and not just IGNORE_UNUSED
> because all PWMs in the system share the same clock.  We don't want
> another PWM user to turn the clock on and off and kill the logic rail.
> 
> This change is in preparation for actually having the PWMs in the
> rk3288 device tree actually point to the proper PWM clock.  Up until
> now they've all pointed to the clock for the old IP block and they've
> all worked due to the fact that rkpwm was IGNORE_UNUSED and that the
> clock rates for both clocks were the same.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.2
I've added a comment line describing the pwm-reg reason.


Heiko
