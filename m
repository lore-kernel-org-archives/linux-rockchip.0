From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 2/8] mfd: rk808: use syscore for RK805 PMIC shutdown
Date: Mon, 9 Dec 2019 21:08:31 +0530
Message-ID: <CANAwSgTSDX=36eF3UxVyVykguRjd90=x4iT27s=nJg5ezG_V7w@mail.gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com> <20191206184536.2507-3-linux.amoon@gmail.com>
 <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <f1327196-66c9-d152-c0ca-914d43d6f55e@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Daniel Schultz <d.schultz@phytec.de>, devicetree <devicetree@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On Mon, 9 Dec 2019 at 19:04, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/12/2019 6:45 pm, Anand Moon wrote:
> > Use common syscore_shutdown for RK805 PMIC to do
> > clean I2C shutdown, drop the unused pm_pwroff_prep_fn
> > and pm_pwroff_fn function pointers.
>
> Coincidentally, I've also been looking at RK805 for the sake of trying
> to get suspend to behave on my RK3328 box, and I've ended up with some
> slightly different cleanup patches - I'll tidy them up and post them for
> comparison as soon as I can.

No issue if their is better clean approach, I will definitely test that ser=
ies.
>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >   drivers/mfd/rk808.c | 33 +++++++++++++++++----------------
> >   1 file changed, 17 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> > index e637f5bcc8bb..713d989064ba 100644
> > --- a/drivers/mfd/rk808.c
> > +++ b/drivers/mfd/rk808.c
> > @@ -467,16 +467,6 @@ static void rk808_update_bits(unsigned int reg, un=
signed int mask,
> >                       "can't write to register 0x%x: %x!\n", reg, ret);
> >   }
> >
> > -static void rk805_device_shutdown(void)
> > -{
> > -     rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
> > -}
> > -
> > -static void rk805_device_shutdown_prepare(void)
> > -{
> > -     rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN=
);
> > -}
> > -
> >   static void rk808_device_shutdown(void)
> >   {
> >       rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
> > @@ -491,10 +481,23 @@ static void rk8xx_syscore_shutdown(void)
> >   {
> >       struct rk808 *rk808 =3D i2c_get_clientdata(rk808_i2c_client);
> >
> > -     if (system_state =3D=3D SYSTEM_POWER_OFF &&
> > -         (rk808->variant =3D=3D RK809_ID || rk808->variant =3D=3D RK81=
7_ID)) {
> > -             rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK=
,
> > -                             SLPPIN_DN_FUN);
> > +     if (system_state =3D=3D SYSTEM_POWER_OFF) {
> > +             dev_info(&rk808_i2c_client->dev, "System Shutdown Event\n=
");
> > +
> > +             switch (rk808->variant) {
> > +             case RK805_ID:
> > +                     rk808_update_bits(RK805_GPIO_IO_POL_REG,
> > +                                     SLP_SD_MSK, SHUTDOWN_FUN);
> > +                     rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DE=
V_OFF);
>
> Why this change? Shutdown via the SLEEP pin is working just fine on my
> box :/
>
> Robin.

As per RK-805 datasheet [0] below.
For clean poweroff we need to set in DEV_CTRL_REG reg
Bit 0 DEV_OFF: write =E2=80=9C1=E2=80=9D to turn down the PMU.

[0] http://files.pine64.org/doc/rock64/Rockchip_RK805_Datasheet_V1.1%C2%A02=
0160921.pdf

-Anand
