From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous mode
Date: Wed, 6 Jul 2016 11:30:59 -0700
Message-ID: <CAD=FV=W2JDP3EAdz9CWUKbcoCz34Mm7oCF2QCD4W45tyBOaP+A@mail.gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk> <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
 <20160702075939.GD6247@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160702075939.GD6247@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Mark,

On Sat, Jul 2, 2016 at 12:59 AM, Mark Brown <broonie@kernel.org> wrote:
> On Fri, Jul 01, 2016 at 01:17:48PM -0700, Doug Anderson wrote:
>
>> Anyway, let me know if you want me to post the untested, rebased
>> patch...  Personally I'd prefer to wait for Boris's patches and the
>> land the tested version.
>
> We've got some boards in kernelci.org using PWM regulators I think, or
> perhaps someone else can test.  It does seem like a real fix so...

OK, post coming up then.  Sorry for the delay--I was on holiday the
last two days.

Note: which boards are you thinking would test this?  My grep showed
zero boards using regulator-ramp-delay with PWM regulator.  While this
is an important fix for anyone using the ramp delay, I'm not convinced
that anyone in mainline is using it.

-Doug
