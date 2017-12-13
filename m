From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v3] net: ethernet: arc: fix error handling in
 emac_rockchip_probe
Date: Wed, 13 Dec 2017 13:58:09 -0500 (EST)
Message-ID: <20171213.135809.2249165364822346437.davem@davemloft.net>
References: <20171211231338.5207-1-branislav@radocaj.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171211231338.5207-1-branislav@radocaj.org>
Sender: linux-kernel-owner@vger.kernel.org
To: branislav@radocaj.org
Cc: heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Branislav Radocaj <branislav@radocaj.org>
Date: Tue, 12 Dec 2017 00:13:38 +0100

> If clk_set_rate() fails, we should disable clk before return.
> Found by Linux Driver Verification project (linuxtesting.org).
> 
> Changes since v2 [1]:
> * Merged with latest code changes
> 
> Changes since v1:
> Update made thanks to David's review, much appreciated David.
> * Improved inconsistent failure handling of clock rate setting
> * For completeness of usecase, added arc_emac_probe error handling
> 
> Signed-off-by: Branislav Radocaj <branislav@radocaj.org>

Applied.
