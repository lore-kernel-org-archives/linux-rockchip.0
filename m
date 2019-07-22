From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Mon, 22 Jul 2019 23:44:18 +0200
Message-ID: <19079299.fd1ZiCyHlL@phil>
References: <20190627222220.89175-1-nhuck@google.com> <20190722213519.910D321900@mail.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190722213519.910D321900@mail.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Stephen Boyd <sboyd@kernel.org>
Cc: Nathan Huckleberry <nhuck@google.com>, andy.yan@rock-chips.com, mturquette@baylibre.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
List-Id: linux-rockchip.vger.kernel.org

Hi Stephen,

Am Montag, 22. Juli 2019, 23:35:18 CEST schrieb Stephen Boyd:
> Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> > Clang produces the following warning
> > 
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> > 
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> > 
> > Cc: clang-built-linux@googlegroups.com
> > Link: https://github.com/ClangBuiltLinux/linux/issues/524
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  drivers/clk/rockchip/clk-rv1108.c | 1 -
> >  1 file changed, 1 deletion(-)
> 
> Heiko, can you pick this up? Looks like v5.4 material.

yep ... I'm planning to do that :-)

Heiko


> > diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> > index 96cc6af5632c..5947d3192866 100644
> > --- a/drivers/clk/rockchip/clk-rv1108.c
> > +++ b/drivers/clk/rockchip/clk-rv1108.c
> > @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
> >  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
> >  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
> >  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> > -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };
> >  PNAME(mux_pll_src_2plls_p)     = { "dpll", "gpll" };
> >  PNAME(mux_pll_src_apll_gpll_p) = { "apll", "gpll" };
> >  PNAME(mux_aclk_peri_src_p)     = { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };
