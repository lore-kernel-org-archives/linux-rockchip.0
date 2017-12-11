From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v2] net: ethernet: arc: fix error handling in
 emac_rockchip_probe
Date: Mon, 11 Dec 2017 12:13:13 -0500 (EST)
Message-ID: <20171211.121313.2095634506477592012.davem@davemloft.net>
References: <20171209115133.19205-1-branislav@radocaj.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20171209115133.19205-1-branislav@radocaj.org>
Sender: netdev-owner@vger.kernel.org
To: branislav@radocaj.org
Cc: heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Branislav Radocaj <branislav@radocaj.org>
Date: Sat,  9 Dec 2017 12:51:33 +0100

> If clk_set_rate() fails, we should disable clk before return.
> Found by Linux Driver Verification project (linuxtesting.org).
> 
> Signed-off-by: Branislav Radocaj <branislav@radocaj.org>
> ---
> 
> Changes since v2:
> * Improved inconsistent failure handling of clock rate setting
> * For completeness of usecase, added arc_emac_probe error handling

This doesn't apply to any of my trees.
