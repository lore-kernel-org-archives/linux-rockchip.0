From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 4/5] clk: rockchip: add pll up and down when change pll freq
Date: Mon, 30 Dec 2019 11:06:55 -0800
Message-ID: <20191230190656.869962053B@mail.kernel.org>
References: <20191204081859.19454-1-zhangqing@rock-chips.com> <20191204081859.19454-5-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191204081859.19454-5-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Elaine Zhang (2019-12-04 00:18:58)
> set pll sequence:
>         ->set pll to slow mode or other plls
>         ->set pll down
>         ->set pll params
>         ->set pll up
>         ->wait pll lock status
>         ->set pll to normal mode
>=20
> To slove the system error:

s/slove/solve/

> wait_pll_lock: timeout waiting for pll to lock
> pll_set_params: pll update unsucessful,
>                 trying to restore old params
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
