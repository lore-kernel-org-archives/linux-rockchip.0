From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: arch counter doesn't tick in
 system suspend
Date: Tue, 4 Oct 2016 15:14:49 -0700
Message-ID: <CAD=FV=XGwc8k-OctcKmdJoFK44v86qegAAFDOpN71wpciA=3Tg@mail.gmail.com>
References: <1475604730-140264-1-git-send-email-briannorris@chromium.org> <1475604730-140264-2-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1475604730-140264-2-git-send-email-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, Stephen Boyd <sboyd@codeaurora.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Marc Zyngier <marc.zyngier@arm.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Caesar Wang <wxt@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Oct 4, 2016 at 11:12 AM, Brian Norris <briannorris@chromium.org> wrote:
> The "arm,no-tick-in-suspend" property was introduced to note
> implementations where the system counter does not quite follow the ARM
> specification that it "must be implemented in an always-on power
> domain".
>
> Particularly, RK3399's counter stops ticking when we switch from the
> 24MHz clock to the 32KHz clock in low-power suspend, so let's mark it as
> such.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> v2: new in v2
>
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
