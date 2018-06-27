From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v3] net: ethernet: stmmac: dwmac-rk: Add GMAC support
 for px30
Date: Wed, 27 Jun 2018 18:17:23 +0900 (KST)
Message-ID: <20180627.181723.1142068438004890978.davem@davemloft.net>
References: <1530001173-21935-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1530001173-21935-1-git-send-email-david.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: david.wu@rock-chips.com
Cc: heiko@sntech.de, robh+dt@kernel.org, mark.rutland@arm.com, huangtao@rock-chips.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: David Wu <david.wu@rock-chips.com>
Date: Tue, 26 Jun 2018 16:19:33 +0800

> Add constants and callback functions for the dwmac on px30 Soc.
> The base structure is the same, but registers and the bits in
> them are moved slightly, and add the clk_mac_speed for selecting
> mac speed.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>

This patch doesn't apply to net-next.
