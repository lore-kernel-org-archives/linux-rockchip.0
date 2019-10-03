From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/5] clk: rockchip: fix up the frac clk get rate error
Date: Thu, 03 Oct 2019 11:11:01 -0700
Message-ID: <20191003181102.803B120862@mail.kernel.org>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com> <1569553244-3165-3-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1569553244-3165-3-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Elaine Zhang (2019-09-26 20:00:41)
> support fractional divider with only one level parent clock

Please put a lot more description in here. A single sentence doesn't
help anyone understand the motivation for the change.

>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/clk.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index fac5a4a3f5c3..8f77c3f9fab7 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -190,16 +190,21 @@ static void rockchip_fractional_approximation(struc=
t clk_hw *hw,
>         if (((rate * 20 > p_rate) && (p_rate % rate !=3D 0)) ||
>             (fd->max_prate && fd->max_prate < p_rate)) {
>                 p_parent =3D clk_hw_get_parent(clk_hw_get_parent(hw));
> -               p_parent_rate =3D clk_hw_get_rate(p_parent);
> -               *parent_rate =3D p_parent_rate;
> -               if (fd->max_prate && p_parent_rate > fd->max_prate) {
> -                       div =3D DIV_ROUND_UP(p_parent_rate, fd->max_prate=
);
> -                       *parent_rate =3D p_parent_rate / div;
> +               if (!p_parent) {
> +                       *parent_rate =3D p_rate;
> +               } else {
> +                       p_parent_rate =3D clk_hw_get_rate(p_parent);
> +                       *parent_rate =3D p_parent_rate;
> +                       if (fd->max_prate && p_parent_rate > fd->max_prat=
e) {
> +                               div =3D DIV_ROUND_UP(p_parent_rate,
> +                                                  fd->max_prate);
> +                               *parent_rate =3D p_parent_rate / div;
> +                       }
>                 }
> =20
>                 if (*parent_rate < rate * 20) {
> -                       pr_err("%s parent_rate(%ld) is low than rate(%ld)=
*20, fractional div is not allowed\n",
> -                              clk_hw_get_name(hw), *parent_rate, rate);
> +                       pr_warn("%s p_rate(%ld) is low than rate(%ld)*20,=
 use integer or half-div\n",
> +                               clk_hw_get_name(hw), *parent_rate, rate);

Hm.. now it's changed to a warning?

>                         *m =3D 0;
>                         *n =3D 1;
>                         return;
> --=20
> 1.9.1
>=20
>=20
>=20
