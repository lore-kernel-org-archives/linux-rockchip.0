From: David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v2] net: ethernet: stmmac: dwmac-rk: Add GMAC support for
 PX30
Date: Wed, 20 Jun 2018 10:40:35 +0800
Message-ID: <157ecfc9-d0e6-7782-1cbc-d0fb76c81edb@rock-chips.com>
References: <1528956927-32440-1-git-send-email-david.wu@rock-chips.com>
 <1961033.25ax7s0Z5i@diego>
 <3aa2445f-ab2a-93b6-3a49-36be6c98d327@rock-chips.com>
 <2582999.2hZx6CH9S6@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <2582999.2hZx6CH9S6@diego>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: davem@davemloft.net, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

在 2018年06月14日 16:30, Heiko Stübner 写道:
> Am Donnerstag, 14. Juni 2018, 10:14:31 CEST schrieb David Wu:
>> Hi Heiko,
>>
>> 在 2018年06月14日 15:54, Heiko Stübner 写道:
>>> I don't see that new clock documented in the dt-binding.
>>> Also, which clock from the clock-controller does this connect to?
>>
>> The clock is the "SCLK_GMAC_RMII" at the clock-controller, which could
>> be set rate by the link speed.
> 
> Hmm, while these huge number of clocks are somewhat strange,
> shouldn't it be named something with _rmii instead of _speed then?

Okay, it is better to be named _speed.

> 
> Also, I don't see any clk_enable action for that new clock, so you could
> end up with being off?

The new speed is the parent of the clk_tx_rx, to enable/disable 
clk_tx_rx, the new clock would be also enabled/disabled.

> 
> And someone could convert the driver to use the new clk-bulk APIs [0],
> so the large number of clk_prepare_enable calls would be a bit
> trimmed down.
> 
> 
> Heiko
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/clk-bulk.c
> 
> 
> 
> 
> 
