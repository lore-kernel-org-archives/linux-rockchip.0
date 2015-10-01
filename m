From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH] clk: rockchip: don't use clk_ APIs in the pll
 init-callback
Date: Thu, 1 Oct 2015 15:12:17 -0700
Message-ID: <20151001221217.GM19319@codeaurora.org>
References: <2341478.8ucNaho7mA@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2341478.8ucNaho7mA@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 10/01, Heiko St=FCbner wrote:
> Separate the update of pll registers from the actual set_rate functio=
n
> so that the init callback does not need to access clk-API functions.
>=20
> As we now have separated the getting and setting of the pll parameter=
s
> we can also directly use these new functions in other places too.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
