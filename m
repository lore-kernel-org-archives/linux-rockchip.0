From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
Date: Wed, 20 Nov 2019 21:21:08 +0530
Message-ID: <CAMty3ZC2NzTWq8YPbePRyPdixxMO7mrPZrzagwjrTkhGHGRR=g@mail.gmail.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-3-jagan@amarulasolutions.com> <1707486.7nrk6WTBgP@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1707486.7nrk6WTBgP@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>, devicetree <devicetree@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Wed, Nov 20, 2019 at 6:59 PM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> looks good in general, just some small things below:
>
> Am Mittwoch, 20. November 2019, 12:39:20 CET schrieb Jagan Teki:
> > VMARC RK3399Pro SOM is a standard SMARC SOM design with
> > Rockchip RK3399Pro SoC, which is designed by Vamrs.
> >
> > Specification:
> > - Rockchip RK3399Pro
> > - PMIC: RK809-3
> > - SD slot, 16GiB eMMC
> > - 2xUSB-2.0, 1xUSB3.0
> > - USB-C for power supply
> > - Ethernet, PCIe
> > - HDMI, MIPI-DSI/CSI, eDP
> >
> > Add initial support for VMARC RK3399Pro SOM, this would use
> > with associated carrier board.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 339 ++++++++++++++++++
> >  1 file changed, 339 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dt=
si
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > new file mode 100644
> > index 000000000000..ddf6ebc9fbe3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > @@ -0,0 +1,339 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> > + * Copyright (c) 2019 Vamrs Limited
> > + * Copyright (c) 2019 Amarula Solutions(India)
> > + */
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +
> > +/ {
> > +     compatible =3D "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
> > +
> > +     clkin_gmac: external-gmac-clock {
> > +             compatible =3D "fixed-clock";
> > +             clock-frequency =3D <125000000>;
> > +             clock-output-names =3D "clkin_gmac";
> > +             #clock-cells =3D <0>;
> > +     };
> > +
> > +     vcc5v0_sys: vcc5v0-sys-regulator {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vcc5v0_sys";
> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
>
> Is vcc5v0_sys really the topmost regulator getting the outside
> power-supply?

Thanks for pointing this, I forgot to check the vin supply in carrier
board schematics, yes it is VCC12V_DCIN (with 5V to 24V range) like
rock-pi-4. Will update the same.

>
>
> > +     };
> > +
> > +     vcc_lan: vcc3v3-phy-regulator {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vcc_lan";
>
> vcc_lan / vcc_phy is mostly coming from the vendor bsp in some way
> and will be named differently in schematics ... also it should be connect=
ed
> to the regulator tree.

Infact bsp named this as vcc_phy, I got the vcc_lan from schematics[1]
page 16. Yes it is using VCCIO_3V3_S0 (SWOUT2 from regulator tree), I
will mark this regulator.

>
> [...]
>
> > +&tsadc {
> > +     status =3D "okay";
> > +
> > +     /* tshut mode 0:CRU 1:GPIO */
>
> I think we can live without the additional comments for properties :-)

True, I have reused it from rock-pi-4 thought that it would compatible
with old. will remove.

[1] https://dl.radxa.com/rockpin10/docs/hw/VMARC_RK3399Pro_sch_V1.1_2019061=
9.pdf

Jagan.
