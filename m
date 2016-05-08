From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: fix the rk3399 sdmmc sample / drv name
Date: Sun, 08 May 2016 22:51:14 +0200
Message-ID: <4645491.pfFL9jxaO2@phil>
References: <1462404985-27957-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1462404985-27957-1-git-send-email-dianders@chromium.org>
Sender: linux-clk-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: zhengxing@rock-chips.com, linux-rockchip@lists.infradead.org, briannorris@chromium.org, mturquette@baylibre.com, sboyd@codeaurora.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. Mai 2016, 16:36:25 schrieb Douglas Anderson:
> The rk3399 clock table had a simple typo in it, calling the SDMMC sample
> and drive clocks by the wrong name.  Fix this minor typo.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied to my clk-branch


Thanks for catching this
Heiko
