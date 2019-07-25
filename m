From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:47:42 +0200
Message-ID: <1785547.ocfUNUBeK4@phil>
References: <20190627222220.89175-1-nhuck@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nathan Huckleberry <nhuck@google.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, andy.yan@rock-chips.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 28. Juni 2019, 00:22:20 CEST schrieb Nathan Huckleberry:
> Clang produces the following warning
> 
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> 
> Looks like this variable was never used. Deleting it to remove the
> warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

applied for 5.4

Thanks
Heiko
