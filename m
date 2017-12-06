From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: ethernet: arc: fix error handling in
 emac_rockchip_probe
Date: Wed, 06 Dec 2017 15:46:22 -0500 (EST)
Message-ID: <20171206.154622.1837920620671638254.davem@davemloft.net>
References: <20171206172433.3457-1-branislav@radocaj.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171206172433.3457-1-branislav@radocaj.org>
Sender: linux-kernel-owner@vger.kernel.org
To: branislav@radocaj.org
Cc: heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Branislav Radocaj <branislav@radocaj.org>
Date: Wed,  6 Dec 2017 18:24:33 +0100

>     If clk_set_rate() fails, we should disable clk
>     before return.
> 
>     Found by Linux Driver Verification project (linuxtesting.org).
> 
>     Signed-off-by: Branislav Radocaj <branislav@radocaj.org>

Please eliminate this indentation of your commit message and
resubmit.

Thank you.
