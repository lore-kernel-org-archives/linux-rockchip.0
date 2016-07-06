From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous mode
Date: Wed, 6 Jul 2016 11:31:45 -0700
Message-ID: <CAD=FV=W7kjMsXR3aRogCpEZWgvt2UZ7rX0B2Zg9yZOW7oGwepw@mail.gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org> <20160706142719.73713123@bbrezillon>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160706142719.73713123@bbrezillon>
Sender: linux-kernel-owner@vger.kernel.org
To: Boris Brezillon <boris.brezillon@free-electrons.com>
Cc: Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Boris,

On Wed, Jul 6, 2016 at 5:27 AM, Boris Brezillon
<boris.brezillon@free-electrons.com> wrote:
> On Mon, 27 Jun 2016 21:53:11 -0700
> Douglas Anderson <dianders@chromium.org> wrote:
>
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
>> and use 10%
>
> I realize I may have introduced another bug when adding the
> ->enable()/disable() methods: we are only waiting for the ramp up delay
> when changing the voltage, but it should probably be applied when
> enabling the PWM, and conditionally applied when changing the voltage
> only if the PWM is enabled.

I'll certainly let Mark comment here, but:

* For enabling the PWM, I think you want want "regulator-enable-ramp-delay".

* Right, we probably shouldn't be delaying if the regulator is off.
I'll add that to my patch.

-Doug
