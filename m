From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 0/5] clk: rockchip: fix up the clk for RK3368 SoC
Date: Fri, 10 Mar 2017 11:45:36 +0100
Message-ID: <3564953.RFZXb1jYdB@diego>
References: <1488884719-10350-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1488884719-10350-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@codeaurora.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-clk@vger.kernel.org, huangtao@rock-chips.com, xxx@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. März 2017, 19:05:14 CET schrieb Elaine Zhang:
> change in V2:
> split clock-id addition and the assignment in the clock-
> driver.
> 
> Elaine Zhang (5):
>   clk: rockchip: rk3368: fix up the timer-ids
>   clk: rockchip: rk3368: remove the unused id

folded this into the first patch and added a commit message explaining the 
timer-id circumstances

>   clk: rockchip: add clock ids for timer10-15 of RK3368 SoCs
>   clk: rockchip: rk3368: export SCLK_TIMERXX id for timers
>   clk: rockchip: rk3368: add some clks as critical

applied with some minor corrections to the subject (rk3368 in the regular 
wording) for 4.12


Thanks
Heiko
