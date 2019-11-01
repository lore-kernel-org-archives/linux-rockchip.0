From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: ethernet: arc: add the missed
 clk_disable_unprepare
Date: Fri, 01 Nov 2019 10:25:56 -0700 (PDT)
Message-ID: <20191101.102556.721413828280813656.davem@davemloft.net>
References: <20191101121725.13349-1-hslester96@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191101121725.13349-1-hslester96@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: hslester96@gmail.com
Cc: heiko@sntech.de, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri,  1 Nov 2019 20:17:25 +0800

> The remove misses to disable and unprepare priv->macclk like what is done
> when probe fails.
> Add the missed call in remove.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

Applied, thank you.
