From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 3/3] clk: rockchip: convert rk3036 pll type to use internal lock status
Date: Thu, 30 Jan 2020 09:19:39 -0800
Message-ID: <20200130171940.497AC206F0@mail.kernel.org>
References: <20200129163821.1547295-1-heiko@sntech.de> <20200129163821.1547295-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200129163821.1547295-3-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, heiko@sntech.de, christoph.muellner@theobroma-systems.com, zhangqing@rock-chips.com, robin.murphy@arm.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2020-01-29 08:38:21)
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>=20
> The rk3036 pll type exposes its lock status in both its pllcon registers
> as well as the General Register Files. To remove one dependency convert
> it to the "internal" lock status, similar to how rk3399 handles it.
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
