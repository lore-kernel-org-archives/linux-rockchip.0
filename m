From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:49:51 +0200
Message-ID: <1978058.CBpQlN27Fr@phil>
References: <20190627222220.89175-1-nhuck@google.com> <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAKwvOd=RhoKvXzuGVe0PaQik8NEFhDkxuwv-T_s6KAtXCDVVvg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, mturquette@baylibre.com, sboyd@kernel.org, andy.yan@rock-chips.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 28. Juni 2019, 00:32:38 CEST schrieb Nick Desaulniers:
> On Thu, Jun 27, 2019 at 3:22 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Clang produces the following warning
> >
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> >
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> 
> Indeed, looks like it was dead when introduced in:
> commit e44dde279492 ("clk: rockchip: add clock controller for rk1108")
> 
> I don't see a pattern between when mux_pll_src_4plls_p vs
> mux_pll_src_2plls_p is used, so it's not clear where or even if
> mux_pll_src_3plls_p should be used.

The possible sources for a clock really differ often, so there is no general
rule on when to use which sources ... except looking it up in the soc
manual. And I guess any possible conflict will turn up when someone
wants to use a clock that currently may reference the wrong sources.
