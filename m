From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1] clk: Export __clk_lookup()
Date: Wed, 22 Jul 2020 17:51:33 -0700
Message-ID: <159546549321.3847286.4678382117195983280@swboyd.mtv.corp.google.com>
References: <20200722023230.10826-1-zhangqing@rock-chips.com> <14639646.VOZsFJ8Tpa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <14639646.VOZsFJ8Tpa@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2020-07-22 11:26:50)
> Hi Elaine,
>=20
> Am Mittwoch, 22. Juli 2020, 04:32:30 CEST schrieb Elaine Zhang:
> > Export __clk_lookup() to support user built as module.
> >=20
> > ERROR:
> > drivers/clk/rockchip/clk.ko: In function
> > `rockchip_clk_protect_critical':
> > drivers/clk/rockchip/clk.c:741:
> > undefined reference to `__clk_lookup'
>=20
> can you elaborate a bit more on why this would be needed?
>=20
> Because right now the Rockchip clocks are of course built into
> the main kernel image (especially due to them being needed during early
> boot) and __clk_lookup actually is a pretty deep part of the clock-
> framework itself, as probably also denoted by the "__" in the function
> name.
>=20

Can you stop using __clk_lookup()? The plan is to remove it.
