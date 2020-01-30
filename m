From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/3] clk: rockchip: convert basic pll lock_wait to use regmap_read_poll_timeout
Date: Thu, 30 Jan 2020 09:19:33 -0800
Message-ID: <20200130171934.0CCB920707@mail.kernel.org>
References: <20200129163821.1547295-1-heiko@sntech.de> <20200129163821.1547295-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200129163821.1547295-2-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, heiko@sntech.de, christoph.muellner@theobroma-systems.com, zhangqing@rock-chips.com, robin.murphy@arm.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2020-01-29 08:38:20)
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>=20
> Instead of open coding the polling of the lock status, use the
> handy regmap_read_poll_timeout for this. As the pll locking is
> normally blazingly fast and we don't want to incur additional
> delays, we're not doing any sleeps similar to for example the imx
> clk-pllv4 and define a very safe but still short timeout of 1ms.
>=20
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
