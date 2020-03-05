From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: fix mmc get phase
Date: Thu, 05 Mar 2020 13:54:59 -0800
Message-ID: <158344529963.25912.17580013895714045674@swboyd.mtv.corp.google.com>
References: <20200303192956.64410-1-jbrunet@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200303192956.64410-1-jbrunet@baylibre.com>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>
List-Id: linux-rockchip.vger.kernel.org

Quoting Jerome Brunet (2020-03-03 11:29:56)
> If the mmc clock has no rate, it can be assumed to be constant.
> In such case, there is no measurable phase shift. Just return 0
> in this case instead of returning an error.
>=20
> Fixes: 2760878662a2 ("clk: Bail out when calculating phase fails during c=
lk
> registration")
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---

Applied to clk-next right on top of the phase branch.
