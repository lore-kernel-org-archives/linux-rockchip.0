From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 3/6] clk: rockchip: add a COMPOSITE_DIV_OFFSET clock-type
Date: Fri, 14 Jun 2019 12:44:02 +0200
Message-ID: <130046083.dVx6RxQuTH@phil>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com> <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1557991736-13580-4-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 16. Mai 2019, 09:28:53 CEST schrieb Elaine Zhang:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> The div offset of some clocks are different from their mux offset
> and the COMPOSITE clock-type require that div and mux offset are
> the same, so add a new COMPOSITE_DIV_OFFSET clock-type to handle that.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

already applied that one from the v1 series.


Heiko
