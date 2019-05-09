From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Use clk_hw_get_rate() in MMC phase calculation
Date: Thu, 09 May 2019 10:46:14 +0200
Message-ID: <23276655.4tYWeNrtuJ@phil>
References: <20190507204935.256982-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190507204935.256982-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, hal@halemmerich.com, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. Mai 2019, 22:49:35 CEST schrieb Douglas Anderson:
> When calculating the MMC phase we can just use clk_hw_get_rate()
> instead of clk_get_rate().  This avoids recalculating the rate.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko
