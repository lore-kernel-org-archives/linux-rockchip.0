From: Laxman Dewangan <ldewangan@nvidia.com>
Subject: Re: [PATCH v2] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Thu, 7 Jul 2016 14:06:23 +0530
Message-ID: <577E1487.9010000@nvidia.com>
References: <1467830521-15300-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1467830521-15300-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>
Cc: boris.brezillon@free-electrons.com, lee.jones@linaro.org, briannorris@chromium.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, thierry.reding@gmail.com, lgirdwood@gmail.com, linux-kernel@vger.kernel.org, afrid@nvidia.com
List-Id: linux-rockchip.vger.kernel.org


On Thursday 07 July 2016 12:12 AM, Douglas Anderson wrote:
> The original commit adding support for continuous voltage mode didn't
> handle the regulator ramp delay properly.  It treated the delay as a
> fixed delay in uS despite the property being defined as uV / uS.  Let's
> adjust it.  Luckily there appear to be no users of this ramp delay for
> PWM regulators (as per grepping through device trees in linuxnext).
>
> Note also that the upper bound of usleep_range probably shouldn't be a
> full 1 ms longer than the lower bound since I've seen plenty of hardware
> with a ramp rate of ~5000 uS / uV and for small jumps the total delays
> are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
> and use 10%.
>
> NOTE: This commit doesn't add support for regulator-enable-ramp-delay.
> That could be done in a future patch when someone has a user of that
> featre.
>
> Though this patch is shows as "fixing" a bug, there are no actual known
> users of continuous mode PWM regulator w/ ramp delay in mainline and so
> this likely won't have any effect on anyone unless they are working
> out-of-tree with private patches.  For anyone in this state, it is
> highly encouraged to also pick Boris Brezillon's WIP patches to get
> yourself a reliable and glitch-free regulator.
>
> Fixes: 4773be185a0f ("regulator: pwm-regulator: Add support for continuous-voltage")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>


Looks fine here.
Acked-by: Laxman Dewangan <ldewangan@nvidia.com>

BTW, for some PWM regulator, the settling time for voltage change is 
same for any steps.
