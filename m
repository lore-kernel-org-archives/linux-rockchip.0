From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: fix I2S1 clock gate register for rk3328
Date: Mon, 19 Nov 2018 14:40:06 +0100
Message-ID: <22369238.AtuRxmQGGH@phil>
References: <20181118041612.2773-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181118041612.2773-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 18. November 2018, 05:16:12 CET schrieb Katsuhiro Suzuki:
> This patch fixes definition of I2S1 clock gate register for rk3328.
> Current setting is not related I2S clocks.
>   - bit6 of CRU_CLKGATE_CON0 means clk_ddrmon_en
>   - bit6 of CRU_CLKGATE_CON1 means clk_i2s1_en
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 4.21


Thanks
Heiko
