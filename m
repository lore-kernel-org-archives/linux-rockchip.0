From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 2/3] ARM: rockchip: ensure CPU to enter WFI/WFE state
Date: Tue, 9 Jun 2015 11:13:19 -0700
Message-ID: <CAD=FV=W63LxYJtm=YyNmQynnL8SEJc6DkOtNQahnfVw=m0eBPw@mail.gmail.com>
References: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
	<1433843400-24831-3-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433843400-24831-3-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Russell King <linux@arm.linux.org.uk>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Caesar,

On Tue, Jun 9, 2015 at 2:49 AM, Caesar Wang <wxt@rock-chips.com> wrote:
> The patch can ensure that v7_exit_coherency_flush() in rockchip_cpu_die()
> executed in time.
> The mdelay(1) has enough time to fix the problem of CPU offlining.
> That's a workaround way in rockchip hotplug code,
> At least, we haven't a better way to solve it. Who know,
> that maybe fixed by chip (hardware) in the future.
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>
> ---
>
> Changes in v6:
> - Fix the delay 1ms describing.
> Series-changes: 5
> - Fix the patch decription.
> - Add the changelog.
> Series-changes: 2
> - As Kever points out, Fix the subject typo WFI/WFE.
>
>  arch/arm/mach-rockchip/platsmp.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
