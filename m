From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v4] net: ethernet: stmmac: dwmac-rk: Add GMAC support
 for px30
Date: Fri, 29 Jun 2018 22:19:25 +0900 (KST)
Message-ID: <20180629.221925.1974171391493646561.davem@davemloft.net>
References: <1530149601-23337-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1530149601-23337-1-git-send-email-david.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: david.wu@rock-chips.com
Cc: heiko@sntech.de, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: David Wu <david.wu@rock-chips.com>
Date: Thu, 28 Jun 2018 09:33:21 +0800

> Add constants and callback functions for the dwmac on px30 Soc.
> The base structure is the same, but registers and the bits in
> them are moved slightly, and add the clk_mac_speed for selecting
> mac speed.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>

Applied.
