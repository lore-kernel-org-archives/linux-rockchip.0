From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Mon, 22 May 2017 17:02:23 +0200
Message-ID: <2392465.b79CVULcOX@phil>
References: <1493014730-9670-1-git-send-email-wxt@rock-chips.com> <3119382.DFiP2J6FnE@diego> <CAJrj+DPzj0hieOHHpoxL4_uPUyaOa7LADJw+4_82VDZiPKxy1g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAJrj+DPzj0hieOHHpoxL4_uPUyaOa7LADJw+4_82VDZiPKxy1g@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, briannorris@chromium.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, dianders@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Eddie, Caesar,

Am Montag, 24. April 2017, 18:29:26 CEST schrieb Eddie Cai:
> Hi Heiko
> 
> 2017-04-24 17:15 GMT+08:00 Heiko Stübner <heiko@sntech.de>:
> > Am Montag, 24. April 2017, 16:49:08 CEST schrieb Caesar Wang:
> >> 在 2017年04月24日 16:26, Heiko Stübner 写道:
> >> > Hi Caesar,
> >> >
> >> > Am Montag, 24. April 2017, 14:18:50 CEST schrieb Caesar Wang:
> >> >> Update the cpu opp table for rk3399 op1.
> >> >
> >> > Ideally this should contain something about the "why".
> >> > Are these new voltage settings safer to operate under?
> >>
> >> The before opp table is for earlier batch of rk3399 SoCs,  that's no
> >> enough for the current and
> >> newer batch of rk3399 op1. In order to suit for the rk3399 op1, we need
> >> to little voltages changed.
> >
> > just to make sure, this is also safe for all the non-chromebook rk3399 socs
> > (like the firefly and tv-boxes, etc), right?
> This is only for op1. other 3399s should have a different opp table

digging this up, as I'm right now working on a rk3399-firefly, could you
provide the correct opp tables for the available rk3399 variants please?

I.e. generally safe opps for boards like the firefly and the special ones
for op1-based devices?


Thanks
Heiko
