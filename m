From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 7/7] ARM: zynq: Replace <linux/clk-provider.h> by <linux/of_clk.h>
Date: Wed, 12 Feb 2020 09:10:09 -0800
Message-ID: <158152740982.121156.13184951766685879540@swboyd.mtv.corp.google.com>
References: <20200212100830.446-1-geert+renesas@glider.be> <20200212100830.446-8-geert+renesas@glider.be>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200212100830.446-8-geert+renesas@glider.be>
Sender: linux-clk-owner@vger.kernel.org
To: Chen-Yu Tsai <wens@csie.org>, Heiko Stuebner <heiko@sntech.de>, Lubomir Rintel <lkundrak@v3.sk>, Magnus Damm <magnus.damm@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, Maxime Ripard <mripard@kernel.org>, Michal Simek <michal.simek@xilinx.com>, Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
List-Id: linux-rockchip.vger.kernel.org

Quoting Geert Uytterhoeven (2020-02-12 02:08:30)
> The Zynq platform code is not a clock provider, and just needs to call
> of_clk_init().
>=20
> Hence it can include <linux/of_clk.h> instead of <linux/clk-provider.h>.
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
