From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] power-domain: rockchip: fix up the PMU_GPU_PWRDW/UP_CNT
 for RK3399
Date: Mon, 26 Sep 2016 08:17:54 -0700
Message-ID: <CAD=FV=VeZj0u9Phqv4V5s4aJ73R57+tZbKz40rbMkMLPkkArCw@mail.gmail.com>
References: <1474874730-12802-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1474874730-12802-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Caesar Wang <wxt@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, xxx <xxx@rock-chips.com>, Xu Jianqun <jay.xu@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Xing Zheng <zhengxing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Sep 26, 2016 at 12:25 AM, Elaine Zhang <zhangqing@rock-chips.com> wrote:
> According to the advice of the IC,
> setting the PMU_GPU_PWRDW/PWRUP_CNT regs 6 cycel(250ns) for RK3399 SOC.
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/soc/rockchip/pm_domains.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This has problems on several levels.  Please see
<https://patchwork.kernel.org/patch/9288607/> for some context.

Note that ATF changes have landed, so my patch could probably land at any time.


> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
> index 7acd1517dd37..247dd6f6994a 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -722,11 +722,11 @@ static const struct rockchip_pmu_info rk3399_pmu = {
>         .idle_offset = 0x64,
>         .ack_offset = 0x68,
>
> -       .core_pwrcnt_offset = 0x9c,
> -       .gpu_pwrcnt_offset = 0xa4,
> +       .core_pwrcnt_offset = 0xac,
> +       .gpu_pwrcnt_offset = 0xac,

One specific thing that's wrong is that you're setting both the GPU
and the Core to the same register address, which is wrong.  You're
changing them from 0x9c (little) and 0xa4 (big) to 0xac (gpu) and 0xac
(gpu, again)

A second specific thing that is wrong is that there are 3 relevant
sets of counts in this CPU: big, little, and cpu.  This code only
handles two.  As per <https://patchwork.kernel.org/patch/9288607/>,
rather than fixing this code I think this belongs in ATF to manage.


> -       .core_power_transition_time = 24,
> -       .gpu_power_transition_time = 24,
> +       .core_power_transition_time = 6, /* 0.25us */
> +       .gpu_power_transition_time = 6, /* 0.25us */

If these transition times are actually good, please work with Caesar
to get a patch to ATF.  Please double-check with Xing Zheng to make
sure that suspend/resume isn't affected.

-Doug
