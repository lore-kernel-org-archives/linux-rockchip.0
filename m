From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 2/2] rockchip: power-domain: support qos save and restore
Date: Fri, 01 Apr 2016 18:19:47 +0200
Message-ID: <3121335.t9IV1BMS6Y@phil>
References: <1458285444-31129-1-git-send-email-zhangqing@rock-chips.com> <6919893.LfaTZNRxZs@phil> <56FDDE09.9080601@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56FDDE09.9080601@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Elaine,

Am Freitag, 1. April 2016, 10:33:45 schrieb Elaine Zhang:
> I agree with most of your modifications.
> Except, the u32 *qos_save_regs below

you're right. I didn't take that into account when my open-coding my id=
ea.
A bit more below:

> On 04/01/2016 12:31 AM, Heiko Stuebner wrote:
> > Hi Elaine,
> >=20
> > Am Freitag, 18. M=E4rz 2016, 15:17:24 schrieb Elaine Zhang:
> >> support qos save and restore when power domain on/off.
> >>=20
> >> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >=20
> > overall looks nice already ... some implementation-specific comment=
s
> > below.>=20
> >> ---
> >>=20
> >>   drivers/soc/rockchip/pm_domains.c | 87
> >>=20
> >> +++++++++++++++++++++++++++++++++++++-- 1 file changed, 84
> >> insertions(+),
> >> 3 deletions(-)
> >>=20
> >> diff --git a/drivers/soc/rockchip/pm_domains.c
> >> b/drivers/soc/rockchip/pm_domains.c index 18aee6b..c5f4be6 100644
> >> --- a/drivers/soc/rockchip/pm_domains.c
> >> +++ b/drivers/soc/rockchip/pm_domains.c
> >> @@ -45,10 +45,21 @@ struct rockchip_pmu_info {
> >>=20
> >>   	const struct rockchip_domain_info *domain_info;
> >>  =20
> >>   };
> >>=20
> >> +#define MAX_QOS_NODE_NUM	20
> >> +#define MAX_QOS_REGS_NUM	5
> >> +#define QOS_PRIORITY		0x08
> >> +#define QOS_MODE		0x0c
> >> +#define QOS_BANDWIDTH		0x10
> >> +#define QOS_SATURATION		0x14
> >> +#define QOS_EXTCONTROL		0x18
> >> +
> >>=20
> >>   struct rockchip_pm_domain {
> >>  =20
> >>   	struct generic_pm_domain genpd;
> >>   	const struct rockchip_domain_info *info;
> >>   	struct rockchip_pmu *pmu;
> >>=20
> >> +	int num_qos;
> >> +	struct regmap *qos_regmap[MAX_QOS_NODE_NUM];
> >> +	u32 qos_save_regs[MAX_QOS_NODE_NUM][MAX_QOS_REGS_NUM];
> >=20
> > struct regmap **qos_regmap;
> > u32 *qos_save_regs;
>=20
> when we save and restore qos registers we need save five regs for eve=
ry
> qos. like this :
> for (i =3D 0; i < pd->num_qos; i++) {
> 		regmap_read(pd->qos_regmap[i],
> 			    QOS_PRIORITY,
> 			    &pd->qos_save_regs[i][0]);
> 		regmap_read(pd->qos_regmap[i],
> 			    QOS_MODE,
> 			    &pd->qos_save_regs[i][1]);
> 		regmap_read(pd->qos_regmap[i],
> 			    QOS_BANDWIDTH,
> 			    &pd->qos_save_regs[i][2]);
> 		regmap_read(pd->qos_regmap[i],
> 			    QOS_SATURATION,
> 			    &pd->qos_save_regs[i][3]);
> 		regmap_read(pd->qos_regmap[i],
> 			    QOS_EXTCONTROL,
> 			    &pd->qos_save_regs[i][4]);
> 	}
> so we can not define qos_save_regs like u32 *qos_save_regs;,
> and apply buff like
> pd->qos_save_regs =3D kcalloc(pd->num_qos * MAX_QOS_REGS_NUM, sizeof(=
u32),
> GFP_KERNEL);

so how about simply swapping indices and doing it like

u32 *qos_save_regs[MAX_QOS_REGS_NUM];

for (i =3D 0; i < MAX_QOS_REGS_NUM; i++) {
	qos_save_regs[i] =3D kcalloc(pd->num_qos, sizeof(u32));
	/* error handling here */
}

=2E..
		regmap_read(pd->qos_regmap[i],
			    QOS_SATURATION,
			    &pd->qos_save_regs[3][i]);
=2E..


Asked the other way around, how did you measure to set MAX_QOS_REGS_NUM=
 to=20
20? From looking at the rk3399 TRM, it seems there are only 38 QoS=20
generators on the SoC in general (24 on the rk3288 with PD_VIO having a=
=20
maximum of 9 qos generators), so preparing for 20 seems a bit overkill =
;-)


Heiko
