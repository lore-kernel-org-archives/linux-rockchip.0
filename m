From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] net: ethernet: stmmac: dwmac-rk: Add GMAC support for PX30
Date: Fri, 22 Jun 2018 09:30:54 +0200
Message-ID: <18221590.FEDROxemCD@phil>
References: <1528956927-32440-1-git-send-email-david.wu@rock-chips.com> <2582999.2hZx6CH9S6@diego> <157ecfc9-d0e6-7782-1cbc-d0fb76c81edb@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <157ecfc9-d0e6-7782-1cbc-d0fb76c81edb@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Wu <david.wu@rock-chips.com>
Cc: davem@davemloft.net, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi David,

Am Mittwoch, 20. Juni 2018, 04:40:35 CEST schrieb David Wu:
> 在 2018年06月14日 16:30, Heiko Stübner 写道:
> > Am Donnerstag, 14. Juni 2018, 10:14:31 CEST schrieb David Wu:
> >> Hi Heiko,
> >>
> >> 在 2018年06月14日 15:54, Heiko Stübner 写道:
> >>> I don't see that new clock documented in the dt-binding.
> >>> Also, which clock from the clock-controller does this connect to?
> >>
> >> The clock is the "SCLK_GMAC_RMII" at the clock-controller, which could
> >> be set rate by the link speed.
> > 
> > Hmm, while these huge number of clocks are somewhat strange,
> > shouldn't it be named something with _rmii instead of _speed then?
> 
> Okay, it is better to be named _speed.
> 
> > 
> > Also, I don't see any clk_enable action for that new clock, so you could
> > end up with being off?
> 
> The new speed is the parent of the clk_tx_rx, to enable/disable 
> clk_tx_rx, the new clock would be also enabled/disabled.

Still it is nicer to really enable it, so that the clock-framework can keep
track of usage counts.

Because also no-one hinders the chip-designer from putting a gate in
between in one of the next socs ;-)


Heiko
