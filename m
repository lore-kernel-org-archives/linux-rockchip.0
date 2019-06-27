From: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 27 Jun 2019 15:32:38 -0700
Message-ID: <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
References: <20190627222220.89175-1-nhuck@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nathan Huckleberry <nhuck@google.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, andy.yan@rock-chips.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jun 27, 2019 at 3:22 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces the following warning
>
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
>
> Looks like this variable was never used. Deleting it to remove the
> warning.

Indeed, looks like it was dead when introduced in:
commit e44dde279492 ("clk: rockchip: add clock controller for rk1108")

I don't see a pattern between when mux_pll_src_4plls_p vs
mux_pll_src_2plls_p is used, so it's not clear where or even if
mux_pll_src_3plls_p should be used.  Given that there hasn't been a
response to your original question
(https://groups.google.com/forum/#!topic/clang-built-linux/NqJT9OPH5C8)
and this patch is no functional change as the variable is already
dead, I don't think it will hurt to remove it.  It should also boost
the signal to noise ratio of this warning.

Thanks for looking into it, and the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> index 96cc6af5632c..5947d3192866 100644
> --- a/drivers/clk/rockchip/clk-rv1108.c
> +++ b/drivers/clk/rockchip/clk-rv1108.c
> @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
>  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
>  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
>  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };

Thanks,
~Nick Desaulniers
