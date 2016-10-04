From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] clocksource: arm_arch_timer: Don't assume clock
 runs in suspend
Date: Tue, 4 Oct 2016 15:14:29 -0700
Message-ID: <CAD=FV=VO2f78AMRfWbhn8MZ8y1wKFPUdOf64BUpKuS+GEvnWGA@mail.gmail.com>
References: <1475604730-140264-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1475604730-140264-1-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, Stephen Boyd <sboyd@codeaurora.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Marc Zyngier <marc.zyngier@arm.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Caesar Wang <wxt@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Oct 4, 2016 at 11:12 AM, Brian Norris <briannorris@chromium.org> wrote:
> The ARM ARM specifies that the system counter "must be implemented in an
> always-on power domain," and so we try to use the counter as a source of
> timekeeping across suspend/resume. Unfortunately, some SoCs (e.g.,
> Rockchip's RK3399) do not keep the counter ticking properly when
> switched from their high-power clock to the lower-power clock used in
> system suspend. Support this quirk by adding a new device tree property.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> v2:
>  * add new device tree property, instead of re-using the "always-on"
>    property (which has different meaning)
>
>  Documentation/devicetree/bindings/arm/arch_timer.txt | 5 +++++
>  drivers/clocksource/arm_arch_timer.c                 | 9 ++++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)

FWIW:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
