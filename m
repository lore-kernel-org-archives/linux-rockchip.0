From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: power-domain: Add a sanity check on pd->num_clks
Date: Mon, 05 Mar 2018 21:26:23 +0100
Message-ID: <2446754.ohlkqz2d1D@diego>
References: <20180305091722.22246-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180305091722.22246-1-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Elaine Zhang <zhangqing@rock-chips.com>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 5. März 2018, 10:17:22 CET schrieb Jeffy Chen:
> The of_count_phandle_with_args() can fail and return error(for example,
> rk3399 pd_vio doesn't have clocks). That would break the pd probe.
> 
> Add a sanity check on pd->num_clks to avoid that.
> 
> Fixes: 65084121d59d ("soc: rockchip: power-domain: use clk_bulk APIs")
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>

applied for 4.17


Thanks
Heiko
