From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] regulator: pwm: Fix regulator ramp delay for
 continuous mode
Date: Thu, 7 Jul 2016 09:30:57 -0700
Message-ID: <CAD=FV=UQw7ttMECtO0aomx56G6xGWZh96NRug6Y4QuPJfXq8Tw@mail.gmail.com>
References: <1467830521-15300-1-git-send-email-dianders@chromium.org> <577E1487.9010000@nvidia.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <577E1487.9010000@nvidia.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Laxman Dewangan <ldewangan@nvidia.com>
Cc: Mark Brown <broonie@kernel.org>, Boris Brezillon <boris.brezillon@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Thierry Reding <thierry.reding@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, afrid@nvidia.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Jul 7, 2016 at 1:36 AM, Laxman Dewangan <ldewangan@nvidia.com> wrote:
>
> On Thursday 07 July 2016 12:12 AM, Douglas Anderson wrote:
>>
>> The original commit adding support for continuous voltage mode didn't
>> handle the regulator ramp delay properly.  It treated the delay as a
>> fixed delay in uS despite the property being defined as uV / uS.  Let's
>> adjust it.  Luckily there appear to be no users of this ramp delay for
>> PWM regulators (as per grepping through device trees in linuxnext).
>>
>> Note also that the upper bound of usleep_range probably shouldn't be a
>> full 1 ms longer than the lower bound since I've seen plenty of hardware
>> with a ramp rate of ~5000 uS / uV and for small jumps the total delays
>> are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
>> and use 10%.
>>
>> NOTE: This commit doesn't add support for regulator-enable-ramp-delay.
>> That could be done in a future patch when someone has a user of that
>> featre.
>>
>> Though this patch is shows as "fixing" a bug, there are no actual known
>> users of continuous mode PWM regulator w/ ramp delay in mainline and so
>> this likely won't have any effect on anyone unless they are working
>> out-of-tree with private patches.  For anyone in this state, it is
>> highly encouraged to also pick Boris Brezillon's WIP patches to get
>> yourself a reliable and glitch-free regulator.
>>
>> Fixes: 4773be185a0f ("regulator: pwm-regulator: Add support for
>> continuous-voltage")
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
>
>
> Looks fine here.
> Acked-by: Laxman Dewangan <ldewangan@nvidia.com>
>
> BTW, for some PWM regulator, the settling time for voltage change is same
> for any steps.

In that case we should probably add a new PWM regulator property and
not abuse the existing one.  Maybe you use "pwm-regulator-settle-us"
or something?  ...and actually the right thing is probably to
implement 'regulator-ramp-delay' as doing several small steps in that
case.  So if you've got:

* settle time: 10 us
* ramp delay = 5000 uV / us
* voltage change of 200000 uV

In that case you'd probably want to break your 200 mV voltage change
into a few steps?  So you could do bump by 50mV, delay 10us, bump by
50mV, delay 10us, bump by 50mV, delay by 10us.

The final delay would be the same as with my patch applied but you'd
get there more smoothly.

-Doug
