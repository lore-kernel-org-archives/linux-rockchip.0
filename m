From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] power-domain: rockchip: fix up the PMU_GPU_PWRDW/UP_CNT for RK3399
Date: Mon, 26 Sep 2016 17:25:49 +0200
Message-ID: <6388447.xfRkPC5TP9@phil>
References: <1474874730-12802-1-git-send-email-zhangqing@rock-chips.com> <CAD=FV=VeZj0u9Phqv4V5s4aJ73R57+tZbKz40rbMkMLPkkArCw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=VeZj0u9Phqv4V5s4aJ73R57+tZbKz40rbMkMLPkkArCw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Caesar Wang <wxt@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, xxx <xxx@rock-chips.com>, Xu Jianqun <jay.xu@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Xing Zheng <zhengxing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 26. September 2016, 08:17:54 CEST schrieb Doug Anderson:
> Hi,
> 
> On Mon, Sep 26, 2016 at 12:25 AM, Elaine Zhang <zhangqing@rock-chips.com> 
wrote:
> > According to the advice of the IC,
> > setting the PMU_GPU_PWRDW/PWRUP_CNT regs 6 cycel(250ns) for RK3399 SOC.
> > 
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > ---
> > 
> >  drivers/soc/rockchip/pm_domains.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> This has problems on several levels.  Please see
> <https://patchwork.kernel.org/patch/9288607/> for some context.
> 
> Note that ATF changes have landed, so my patch could probably land at any
> time.

thanks for the heads up. As before I still agree with you that this is better 
done in the ATF, so I guess I can merge your other patch for 4.10 now.


Heiko
