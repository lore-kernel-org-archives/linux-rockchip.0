From: David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v2] net: ethernet: stmmac: dwmac-rk: Add GMAC support for
 PX30
Date: Thu, 14 Jun 2018 16:14:31 +0800
Message-ID: <3aa2445f-ab2a-93b6-3a49-36be6c98d327@rock-chips.com>
References: <1528956927-32440-1-git-send-email-david.wu@rock-chips.com>
 <1961033.25ax7s0Z5i@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1961033.25ax7s0Z5i@diego>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: davem@davemloft.net, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

在 2018年06月14日 15:54, Heiko Stübner 写道:
> I don't see that new clock documented in the dt-binding.
> Also, which clock from the clock-controller does this connect to?

The clock is the "SCLK_GMAC_RMII" at the clock-controller, which could 
be set rate by the link speed.
