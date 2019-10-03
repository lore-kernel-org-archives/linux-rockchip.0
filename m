From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 4/5] clk: rockchip: add pll up and down when change pll freq
Date: Thu, 03 Oct 2019 11:13:53 -0700
Message-ID: <20191003181354.304B520862@mail.kernel.org>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com> <1569553244-3165-5-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1569553244-3165-5-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Elaine Zhang (2019-09-26 20:00:43)
> set pll sequence:
>         ->set pll to slow mode or other plls
>         ->set pll down
>         ->set pll params
>         ->set pll up
>         ->wait pll lock status
>         ->set pll to normal mode
>=20
> To slove the system error:

solve?

> wait_pll_lock: timeout waiting for pll to lock
> pll_set_params: pll update unsucessful,
>                 trying to restore old params
>=20

This commit text needs help. It looks like pseudo-code.
