From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: update cpu opp table for rk3399 op1
Date: Mon, 24 Apr 2017 11:15:48 +0200
Message-ID: <3119382.DFiP2J6FnE@diego>
References: <1493014730-9670-1-git-send-email-wxt@rock-chips.com> <2250946.xrPjMl5Kf1@diego> <f4c389af-5b1f-9197-0df4-f8407ed8622a@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <f4c389af-5b1f-9197-0df4-f8407ed8622a@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, briannorris@chromium.org, dianders@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 24. April 2017, 16:49:08 CEST schrieb Caesar Wang:
> 在 2017年04月24日 16:26, Heiko Stübner 写道:
> > Hi Caesar,
> > 
> > Am Montag, 24. April 2017, 14:18:50 CEST schrieb Caesar Wang:
> >> Update the cpu opp table for rk3399 op1.
> > 
> > Ideally this should contain something about the "why".
> > Are these new voltage settings safer to operate under?
> 
> The before opp table is for earlier batch of rk3399 SoCs,  that's no
> enough for the current and
> newer batch of rk3399 op1. In order to suit for the rk3399 op1, we need
> to little voltages changed.

just to make sure, this is also safe for all the non-chromebook rk3399 socs 
(like the firefly and tv-boxes, etc), right?


Thanks
Heiko
