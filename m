From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Remove 48 MHz PLL rate from rk3288
Date: Thu, 06 Jun 2019 12:53:33 +0200
Message-ID: <4759206.qoGe4VK7Kb@phil>
References: <20190604223200.345-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190604223200.345-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Stephen Boyd <sboyd@kernel.org>, mka@chromium.org, seanpaul@chromium.org, Urja Rannikko <urjaman@gmail.com>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 5. Juni 2019, 00:31:59 CEST schrieb Douglas Anderson:
> The 48 MHz PLL rate is not present in the downstream chromeos-3.14
> tree.  Looking at history, it was originally removed in
> <https://crrev.com/c/265810> ("CHROMIUM: clk: rockchip: expand more
> clocks support") with no explanation.  Much of that patch was later
> reverted in <https://crrev.com/c/284595> ("CHROMIUM: clk: rockchip:
> Revert more questionable PLL rates"), but that patch left in the
> removal of 48 MHz.  What I wrote in that patch:
> 
> > Note that the original change also removed the rate (48000000, 1,
> > 64, 32) from the table.  I have no idea why that was squashed in
> > there, but that rate was invalid anyway (it appears to have an out
> > of bounds NO).  I'm not putting that rate in.
> 
> Reading the TRM I see that NO is defined as
> - NO: 1, 2-16 (even only)
> ...and furthermore only 4 bits are assigned for NO-1, which means that
> the highest NO we could even represent is 16.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko
