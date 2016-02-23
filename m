From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 2/8] clk: rockchip: rk3036: fix and add node id for emac clock
Date: Tue, 23 Feb 2016 01:02:51 +0100
Message-ID: <1547339.dzsB9RftPO@phil>
References: <1454384032-6794-1-git-send-email-wxt@rock-chips.com> <2143221.dkVJ5VuQke@phil> <56C924B7.8090301@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56C924B7.8090301@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <caesar.upstream@gmail.com>
Cc: Caesar Wang <wxt@rock-chips.com>, zhengxing <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org, jeffy.chen@rock-chips.com, linux-kernel@vger.kernel.org, leozwang@google.com, keescook@google.com
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 21. Februar 2016, 10:45:11 schrieb Caesar Wang:
> Heiko,
>=20
> =E5=9C=A8 2016=E5=B9=B402=E6=9C=8821=E6=97=A5 10:26, Heiko Stuebner =E5=
=86=99=E9=81=93:
> > Hi Caesar, Xing,
> >=20
> > Am Dienstag, 2. Februar 2016, 11:48:19 schrieb Caesar Wang:
> >> From: zhengxing <zhengxing@rock-chips.com>
> >>=20
> >> In the emac driver, we need to refer HCLK_MAC since there are
> >> only 3PLLs (APLL/GPLL/DPLL) on the rk3036, most clock are under th=
e
> >> GPLL, and it is unable to provide the accurate rate for mac_ref wh=
ich
> >> need to 50MHz probability, we should let it under the DPLL and are
> >> able to set the freq which integer multiples of 50MHz, so we add t=
hese
> >> emac node for reference.
> >>=20
> >> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
> >> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> >=20
> > [...]
> >=20
> >> --- a/drivers/clk/rockchip/clk-rk3036.c
> >> +++ b/drivers/clk/rockchip/clk-rk3036.c
> >> @@ -343,8 +343,11 @@ static struct rockchip_clk_branch
> >> rk3036_clk_branches[] __initdata =3D { RK2928_CLKSEL_CON(16), 0, 2=
,
> >> MFLAGS,
> >> 2, 5, DFLAGS,
> >>=20
> >>   			RK2928_CLKGATE_CON(10), 5, GFLAGS),
> >>=20
> >> -	COMPOSITE_NOGATE(0, "mac_pll_src", mux_pll_src_3plls_p, 0,
> >> -			RK2928_CLKSEL_CON(21), 0, 2, MFLAGS, 9, 5, DFLAGS),
> >> +	MUX(SCLK_MACPLL, "mac_pll_pre", mux_pll_src_3plls_p, 0,
> >> +			RK2928_CLKSEL_CON(21), 0, 2, MFLAGS),
> >> +	DIV(0, "mac_pll_src", "mac_pll_pre", 0,
> >> +			RK2928_CLKSEL_CON(21), 9, 5, DFLAGS),
> >> +
> >=20
> > CLK_SET_RATE_NO_REPARENT should do the trick as well.
> >=20
> > And the whole hclk + clkid part should be separate patches. I took =
the
> > liberty of splitting them already in [0] to see if I could get the =
emac
> > running on my kylin board.
> >=20
> > Probing emac + phy does suceed, but there is no link-detection.
> > Building your kylin-develop4.4 branch [1] results in the same (aka =
no
> > transmission).
> >=20
> > Only with the original uboot + 4.1-based kernel that was already on=
 the
> > device did I manage to get a network connection.
>=20
> I guess you need apply the uboot patch[0].
>=20
> patch[0]:
> http://lists.denx.de/pipermail/u-boot/2016-February/245814.html
>=20
> or get the uboot from rockchip github:
> https://github.com/rockchip-linux/u-boot/commits/rk3036

I have a uboot with the ddr-freq change already, and the clocks look li=
ke
expected (both on the android system as well as on my mainline kernel w=
ith
the adapted clock change):

    pll_dpll                              1            1   400000000   =
       0 0 =20
       dpll                               1            1   400000000   =
       0 0 =20
          mac_pll_src                     1            1    50000000   =
       0 0 =20
             mac_clk_ref                  3            3    50000000   =
       0 0 =20
                mac_clk                   1            1    25000000   =
       0 0 =20

The probing itself also seems to work like a charm:

[    3.064437] rockchip_emac 10200000.ethernet: ARC EMAC detected with =
id: 0x7fd02
[    3.072123] rockchip_emac 10200000.ethernet: IRQ is 29
[    3.090055] rockchip_emac 10200000.ethernet: MAC address is now a2:d=
6:55:be:be:ad
[    3.100732] libphy: Synopsys MII Bus: probed
[    3.202432] rockchip_emac 10200000.ethernet: connected to RTL8201F E=
thernet phy with id 0x1cc816
(same with the real generic phy)

Digging a bit into the phy status it looks like it never detects the li=
nk,
so my current guess is that I have some sort of clock issue that isn't
shown in the general clock summary, as the phy should only need the
mac clock to do the link negotiation. I'll dig some more.


Heiko

> > Is there some additional setup missing somewhere?
> >=20
> >=20
> > Heiko
> >=20
> > [0] https://github.com/mmind/linux-rockchip/commits/tmp/rk3036-emac
> > The 3 additional patches are not strictly necessary there.
> >=20
> > [1] https://github.com/rockchip-linux/kernel/tree/kylin-develop4.4
>=20
> The lastest kylin-develop.4.4.y from my github:
> https://github.com/Caesar-github/rockchip/tree/kylin/develop-4.4.y
>=20
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
