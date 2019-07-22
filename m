From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Mon, 22 Jul 2019 14:35:18 -0700
Message-ID: <20190722213519.910D321900@mail.kernel.org>
References: <20190627222220.89175-1-nhuck@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: andy.yan@rock-chips.com, heiko@sntech.de, mturquette@baylibre.com, zhangqing@rock-chips.com
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com
List-Id: linux-rockchip.vger.kernel.org

Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> Clang produces the following warning
>=20
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      =3D { "apll", "gpll", "dpll" };
>=20
> Looks like this variable was never used. Deleting it to remove the
> warning.
>=20
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  drivers/clk/rockchip/clk-rv1108.c | 1 -
>  1 file changed, 1 deletion(-)

Heiko, can you pick this up? Looks like v5.4 material.

>=20
> diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk=
-rv1108.c
> index 96cc6af5632c..5947d3192866 100644
> --- a/drivers/clk/rockchip/clk-rv1108.c
> +++ b/drivers/clk/rockchip/clk-rv1108.c
> @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    =3D { "usbphy", "xin24m" =
};
>  PNAME(mux_hdmiphy_phy_p)       =3D { "hdmiphy", "xin24m" };
>  PNAME(mux_dclk_hdmiphy_pre_p)  =3D { "dclk_hdmiphy_src_gpll", "dclk_hdmi=
phy_src_dpll" };
>  PNAME(mux_pll_src_4plls_p)     =3D { "dpll", "gpll", "hdmiphy", "usb480m=
" };
> -PNAME(mux_pll_src_3plls_p)     =3D { "apll", "gpll", "dpll" };
>  PNAME(mux_pll_src_2plls_p)     =3D { "dpll", "gpll" };
>  PNAME(mux_pll_src_apll_gpll_p) =3D { "apll", "gpll" };
>  PNAME(mux_aclk_peri_src_p)     =3D { "aclk_peri_src_gpll", "aclk_peri_sr=
c_dpll" };
