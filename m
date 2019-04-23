From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] clk: rockchip: undo several noc and special clocks as critical on rk3288
Date: Tue, 23 Apr 2019 12:17:46 +0200
Message-ID: <3726336.aAcGqF7Y7P@phil>
References: <20190412161747.107107-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190412161747.107107-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Caesar Wang <caesar.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 12. April 2019, 18:17:47 CEST schrieb Douglas Anderson:
> This is mostly a revert of commit 55bb6a633c33 ("clk: rockchip: mark
> noc and some special clk as critical on rk3288") except that we're
> keeping "pmu_hclk_otg0" as critical still.
> 
> NOTE: turning these clocks off doesn't seem to do a whole lot in terms
> of power savings (checking the power on the logic rail).  It appears
> to save maybe 1-2mW.  ...but still it seems like we should turn the
> clocks off if they aren't needed.
> 
> About "pmu_hclk_otg0" (the one clock from the original commit we're
> still keeping critical) from an email thread:
> 
> > pmu ahb clock
> >
> > Function: Clock to pmu module when hibernation and/or ADP is
> > enabled. Must be greater than or equal to 30 MHz.
> >
> > If the SOC design does not support hibernation/ADP function, only have
> > hclk_otg, this clk can be switched according to the usage of otg.
> > If the SOC design support hibernation/ADP, has two clocks, hclk_otg and
> > pmu_hclk_otg0.
> > Hclk_otg belongs to the closed part of otg logic, which can be switched
> > according to the use of otg.
> >
> > pmu_hclk_otg0 belongs to the always on part.
> >
> > As for whether pmu_hclk_otg0 can be turned off when otg is not in use,
> > we have not tested. IC suggest make pmu_hclk_otg0 always on.
> 
> For the rest of the clocks:
> 
> atclk: No documentation about this clock other than that it goes to
> the CPU.  CPU functions fine without it on.  Maybe needed for JTAG?
> 
> jtag: Presumably this clock is only needed if you're debugging with
> JTAG.  It doesn't seem like it makes sense to waste power for every
> rk3288 user.  In any case to do JTAG you'd need private patches to
> adjust the pinctrl the mux the JTAG out anyway.
> 
> pclk_dbg, pclk_core_niu: On veyron Chromebooks we turn these two
> clocks on only during kernel panics in order to access some coresight
> registers.  Since nothing in the upstream kernel does this we should
> be able to leave them off safely.  Maybe also needed for JTAG?
> 
> hsicphy12m_xin12m: There is no indication of why this clock would need
> to be turned on for boards that don't use HSIC.
> 
> pclk_ddrupctl[0-1], pclk_publ0[0-1]: On veyron Chromebooks we turn
> these 4 clocks on only when doing DDR transitions and they are off
> otherwise.  I see no reason why they'd need to be on in the upstream
> kernel which doesn't support DDRFreq.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.2

Thanks
Heiko
