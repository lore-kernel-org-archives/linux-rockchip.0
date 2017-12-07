From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: ethernet: arc: fix error handling in
 emac_rockchip_probe
Date: Thu, 07 Dec 2017 13:52:07 -0500 (EST)
Message-ID: <20171207.135207.212566260948460919.davem@davemloft.net>
References: <20171206230738.2560-1-branislav@radocaj.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171206230738.2560-1-branislav@radocaj.org>
Sender: linux-kernel-owner@vger.kernel.org
To: branislav@radocaj.org
Cc: heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Branislav Radocaj <branislav@radocaj.org>
Date: Thu,  7 Dec 2017 00:07:38 +0100

> If clk_set_rate() fails, we should disable clk before return.
> Found by Linux Driver Verification project (linuxtesting.org).
> 
> Signed-off-by: Branislav Radocaj <branislav@radocaj.org>

Ok, but this probe routine is very inconsistent in how it handles
clock rate setting failures now.

Above your changes, if the RGMII clk can't have it's rate set, we
just continue.
