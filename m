From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 04/10] ARM: dts: rockchip: add startup delay to rk3288-veyron panel-regulators
Date: Thu, 20 Jun 2019 14:28:14 +0200
Message-ID: <2226970.BAPq4liE1j@diego>
References: <1458265206-15733-1-git-send-email-heiko@sntech.de> <1458265206-15733-5-git-send-email-heiko@sntech.de> <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Yakir Yang <ykk@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Donnerstag, 20. Juni 2019, 03:27:55 CEST schrieb Doug Anderson:
> On Wed, Fri, 18 Mar 2016 Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > The panels need a bit of time to actually turn on. If this isn't
> > observed, this results in problems when trying talk to the panels
> > and thus produces detection errors. 100ms seem to be a safe value
> > for the time being.
> >
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 +
> >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 +
> >  4 files changed, 4 insertions(+)
> 
> I know it was 3 years ago, but any idea how to reproduce the problems
> you were seeing without this patch?  I believe the downstream kernel
> never had any delay like this and I'm not aware of any issues.
>
> I wonder if the need for this extra 100 ms delay is no longer there
> now that we have:
> 
> 3157694d8c7f pwm-backlight: Add support for PWM delays proprieties.
> 5fb5caee92ba pwm-backlight: Enable/disable the PWM before/after LCD
> enable toggle.
> 6d5922dd0d60 ARM: dts: rockchip: set PWM delay backlight settings for Veyron

I just did a non-scientific test on my jerry+minnie and yes, simply
reverting that patch does not seem to affect display bringup and I still
get a prompt.

So I guess we could just revert that patch in light of the changes.
[patches welcome ;-) ]

Heiko
