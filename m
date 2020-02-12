From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: fix incorrect configuration of rk3228 aclk_gpu* clocks
Date: Wed, 12 Feb 2020 23:36:18 +0100
Message-ID: <3638560.bLjz2vc75D@phil>
References: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200114162503.7548-1-justin.swartz@risingedge.co.za>
Sender: linux-clk-owner@vger.kernel.org
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Justin,

Am Dienstag, 14. Januar 2020, 17:25:02 CET schrieb Justin Swartz:
> The following changes prevent the unrecoverable freezes and rcu_sched
> stall warnings experienced in each of my attempts to take advantage of
> lima.
> 
> Replace the COMPOSITE_NOGATE definition of aclk_gpu_pre with a
> COMPOSITE that retains the selection of HDMIPHY as the PLL source, but
> instead makes uses of the aclk_gpu PLL source gate and parent names
> defined by mux_pll_src_4plls_p rather than mux_aclk_gpu_pre_p.
> 
> Remove the now unused mux_aclk_gpu_pre_p and the four named but also
> unused definitions (cpll_gpu, gpll_gpu, hdmiphy_gpu and usb480m_gpu)
> of the aclk_gpu PLL source gate.
> 
> Use the correct gate offset for aclk_gpu and aclk_gpu_noc.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

thanks a lot for diving through the clock controller and fixing the
issues. I've checked against the TRM as well and the previous state
was quite wrong and your changes match the hardware manual.

I've applied it as fix for 5.6 now.

Thanks
Heiko
