From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v5 4/6] dt/bindings: power: add RK3399 SoCs header for power-domain
Date: Wed, 09 Mar 2016 11:57:30 +0100
Message-ID: <1757559.IpfTQRFBYT@diego>
References: <1456992233-25164-1-git-send-email-zhangqing@rock-chips.com> <2748667.mSDu940Rq4@diego> <56DFFCAA.2030401@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56DFFCAA.2030401@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <caesar.upstream@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com, khilman@baylibre.com, huangtao@rock-chips.com, xxx@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Mittwoch, 9. M=C3=A4rz 2016, 18:36:26 schrieb Caesar Wang:
> =E5=9C=A8 2016=E5=B9=B403=E6=9C=8809=E6=97=A5 17:55, Heiko St=C3=BCbn=
er =E5=86=99=E9=81=93:
> > Hi Caesar,
> >=20
> > Am Dienstag, 8. M=C3=A4rz 2016, 18:45:06 schrieb Caesar Wang:
> >> =E5=9C=A8 2016=E5=B9=B403=E6=9C=8803=E6=97=A5 16:03, Elaine Zhang =
=E5=86=99=E9=81=93:
> >>> According to a description from TRM, add all the power domains
> >>>=20
> >>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>> ---
> >>>=20
> >>>    include/dt-bindings/power/rk3399-power.h | 53
> >>>    ++++++++++++++++++++++++++++++++ 1 file changed, 53 insertions=
(+)
> >>>    create mode 100644 include/dt-bindings/power/rk3399-power.h
> >>>=20
> >>> diff --git a/include/dt-bindings/power/rk3399-power.h
> >>> b/include/dt-bindings/power/rk3399-power.h new file mode 100644
> >>> index 0000000..69fbd67
> >>> --- /dev/null
> >>> +++ b/include/dt-bindings/power/rk3399-power.h
> >>> @@ -0,0 +1,53 @@
> >>> +#ifndef __DT_BINDINGS_POWER_RK3399_POWER_H__
> >>> +#define __DT_BINDINGS_POWER_RK3399_POWER_H__
> >>> +
> >>> +/* VD_CORE_L */
> >>> +#define RK3399_PD_A53_L0	0
> >>> +#define RK3399_PD_A53_L1	1
> >>> +#define RK3399_PD_A53_L2	2
> >>> +#define RK3399_PD_A53_L3	3
> >>> +#define RK3399_PD_SCU_L		4
> >>> +
> >>> +/* VD_CORE_B */
> >>> +#define RK3399_PD_A72_B0	5
> >>> +#define RK3399_PD_A72_B1	6
> >>> +#define RK3399_PD_SCU_B		7
> >>> +
> >>> +/* VD_CENTER */
> >>> +#define RK3399_PD_CENTER	8
> >>> +#define RK3399_PD_VCODEC	9
> >>> +#define RK3399_PD_RGA		10
> >>> +#define RK3399_PD_IEP		11
> >>> +#define RK3399_PD_VDU		12
> >>> +
> >>> +/* VD_LOGIC */
> >>> +#define RK3399_PD_PERILP	13
> >>> +#define RK3399_PD_PERIHP	14
> >>> +#define RK3399_PD_VIO		15
> >>> +#define RK3399_PD_VO		16
> >>=20
> >> ...
> >> ISP?
> >>=20
> >>> +#define RK3399_PD_VOPB		17
> >>> +#define RK3399_PD_VOPL		18
> >>> +#define RK3399_PD_ISP0		19
> >>> +#define RK3399_PD_ISP1		20
> >>> +#define RK3399_PD_HDCP		21
> >>> +#define RK3399_PD_TCPD0		22
> >>> +#define RK3399_PD_TCPD1		23
> >>> +#define RK3399_PD_GIC		24
> >>> +#define RK3399_PD_ALIVE		25
> >>> +#define RK3399_PD_USB3		26
> >>> +#define RK3399_PD_SD		27
> >>> +#define RK3399_PD_CCI		28
> >>> +#define RK3399_PD_CCI0		29
> >>> +#define RK3399_PD_CCI1		30
> >>> +#define RK3399_PD_GMAC		31
> >>> +#define RK3399_PD_EMMC		32
> >>> +#define RK3399_PD_EDP		33
> >>> +#define RK3399_PD_SDIOAUDIO	34
> >>> +
> >>> +/* VD_GPU */
> >>> +#define RK3399_PD_GPU		35
> >>> +
> >>> +/* VD_PMU */
> >>> +#define RK3399_PD_PMU		36
> >>> +
> >>=20
> >> Would you please follow the TRM?
> >=20
> > could you elaborate a bit on what you mean?
> >=20
> > Looking at the "Table 11-1 RK3399 Power Domain and Voltage Domain S=
ummary"
> > in the TRM, Elaine's list seems to match that table quite nicely, s=
o
> > looks ok to me at first glance.
>=20
> That's also trivial...
>=20
> The comments from the first time I saw this file and TRM.:-)
>=20
> Can we define the lists according to order the TRM?
>=20
> For example:
>=20
> +/* VD_CORE_L */
> +#define RK3399_PD_A53_L0	0
> +#define RK3399_PD_A53_L1	1
> +#define RK3399_PD_A53_L2	2
> +#define RK3399_PD_A53_L3	3
> +#define RK3399_PD_SCU_L	4
> +
> +/* VD_CORE_B */
> +#define RK3399_PD_A72_B0	5
> +#define RK3399_PD_A72_B1	6
> +#define RK3399_PD_SCU_B	7
> +
> +/* VD_LOGIC */
> +#define RK3399_PD_PERILP	13
> +#define RK3399_PD_PERIHP	14
> +#define RK3399_PD_VIO		15
> +#define RK3399_PD_ISP0		16
> +#define RK3399_PD_ISP1		17
> +#define RK3399_PD_VO		18
> +#define RK3399_PD_HDCP	19
> +#define RK3399_PD_TCPD0	20
> +#define RK3399_PD_TCPD1	21
> .....
>=20
> +/* VD_CENTER */
> ....
>=20
> +/* VD_GPU */
> ....
>=20
> +/* VD_PMU */
>=20
>=20
> Please ignore it and sorry the noise if that's the wrong ideas.:-)

I may be simply be blind, but I don't see the difference .... ah no, no=
w I see=20
it, some voltage domains are swapped in the original (VD_CENTER before=20
VD_LOGIC, while in the TRM it's the other way around).

So while it doesn't matter much, I would slightly prefer the ordering b=
eing=20
according to the TRM table. Reason is the same as for ordering the cloc=
k-tree=20
according to the diagrams - it makes future reading easier ;-)


Heiko
