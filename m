From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
Date: Tue, 17 Dec 2019 16:02:53 +0800
Message-ID: <CAGb2v65TA0patyNO_xw0gpWR62N4Q_40amFW9OUh7jat3f9J8g@mail.gmail.com>
References: <20191217052328.25633-1-wens@kernel.org> <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>, "open list:THERMAL" <linux-pm@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 17, 2019 at 4:01 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
>
> Hi Chen-Yu,
>
> On 17/12/2019 06:23, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > By default of-based thermal driver do not have hwmon entries registered=
.
> >
> > Do this explicitly so users can use standard hwmon interfaces and tools
> > to read the temperature.
> >
> > This is based on similar changes for bcm2835_thermal in commit
> > d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").
>
> Thanks for submitting this patch, but it is duplicate with:
>
> https://lore.kernel.org/linux-arm-kernel/20191212061702.BFE2D6E85603@coro=
na.crabdance.com/
>
> which I picked up.

No problem. Thanks for the pointer.

ChenYu

>   -- Daniel
>
>
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  drivers/thermal/rockchip_thermal.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockc=
hip_thermal.c
> > index 9ed8085bb792..d53ba7dabf16 100644
> > --- a/drivers/thermal/rockchip_thermal.c
> > +++ b/drivers/thermal/rockchip_thermal.c
> > @@ -19,6 +19,8 @@
> >  #include <linux/mfd/syscon.h>
> >  #include <linux/pinctrl/consumer.h>
> >
> > +#include "thermal_hwmon.h"
> > +
> >  /*
> >   * If the temperature over a period of time High,
> >   * the resulting TSHUT gave CRU module,let it reset the entire chip,
> > @@ -1210,7 +1212,11 @@ rockchip_thermal_register_sensor(struct platform=
_device *pdev,
> >               return error;
> >       }
> >
> > -     return 0;
> > +     /* thermal_zone doesn't enable hwmon as default, enable it here *=
/
> > +     sensor->tzd->tzp->no_hwmon =3D false;
> > +     error =3D thermal_add_hwmon_sysfs(sensor->tzd);
> > +
> > +     return error;
> >  }
> >
> >  /**
> >
>
>
> --
>  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for A=
RM SoCs
>
> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
> <http://twitter.com/#!/linaroorg> Twitter |
> <http://www.linaro.org/linaro-blog/> Blog
>
