From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: fix cclk error handing
Date: Thu, 26 May 2016 23:47:39 +0200
Message-ID: <1509769.ko7YVcsoMN@phil>
References: <1464270549-12713-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1464270549-12713-1-git-send-email-zhengxing@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 26. Mai 2016, 21:49:08 schrieb Xing Zheng:
> It maybe due to a copy-paste error the error handing should be
> cclk not clk.
> 
> Reported-by: Lin Huang <lin.huang@rock-chips.com>
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>

applied to my clk-fixes branch after adapting the commit message a bit.


Thanks for catching that
Heiko
