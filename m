From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Fix static checker warning in
 rockchip_ddrclk_get_parent call
Date: Tue, 16 Oct 2018 11:18:15 -0700
Message-ID: <153971389560.5275.17687261861802609299@swboyd.mtv.corp.google.com>
References: <20181016134144.12461-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181016134144.12461-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Michael Turquette <mturquette@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Quoting Enric Balletbo i Serra (2018-10-16 06:41:44)
> Fixes the signedness bug returning '(-22)' on the return type by removing=
 the
> sanity checker in rockchip_ddrclk_get_parent(). The function should return
> and unsigned value only and it's safe to remove the sanity checker as the
> core functions that call get_parent like clk_core_get_parent_by_index alr=
eady
> ensures the validity of the clk index returned (index >=3D core->num_pare=
nts).
> =

> Fixes: a4f182bf81f18 ("clk: rockchip: add new clock-type for the ddrclk")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
