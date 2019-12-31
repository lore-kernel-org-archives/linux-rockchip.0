From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Subject: Re: [PATCH v5 6/7] rockchip: Add Single boot image (with binman,
 pad_cat)
Date: Tue, 31 Dec 2019 11:04:08 +0300
Message-ID: <CAJs94EZgpHmkHAfDQUH_mqW82Jw_QJWiJgx_8Uny1ru1WfbrHw@mail.gmail.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-7-jagan@amarulasolutions.com>
 <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Akash Gajjar <akash@openedev.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

=D0=B2=D1=82, 31 =D0=B4=D0=B5=D0=BA. 2019 =D0=B3. =D0=B2 10:54, Matwey V. K=
ornilov <matwey.kornilov@gmail.com>:
>
> =D0=BF=D0=BD, 30 =D0=B4=D0=B5=D0=BA. 2019 =D0=B3. =D0=B2 11:28, Jagan Tek=
i <jagan@amarulasolutions.com>:
> >
> > All rockchip platforms support TPL or SPL-based bootloader
> > in mainline with U-Boot proper as final stage. For each
> > stage we need to burn the image on to flash with respective
> > offsets.
> >
> > This patch creates a single boot image component using
> > - binman, for arm32 rockchip platforms
> > - pad_cat, for arm64 rockchip platforms.
> >
> > This would help users to get rid of burning different
> > boot stage images.
> >
> > The new image called 'u-boot-rockchip.bin'
> > which can burn into flash like:
> >
> > =E2=82=B9 sudo dd if=3Du-boot-rockchip.bin of=3D/dev/sda seek=3D64
> >
> > This would support all rockchip platforms, except rk3128
> > since it doesn't support for SPL yet.
> >
> > Cc: Kever Yang <kever.yang@rock-chips.com>
> > Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> >  Makefile                          | 18 ++++++++++++++----
> >  arch/arm/Kconfig                  |  1 +
> >  arch/arm/dts/rk3036-u-boot.dtsi   |  2 ++
> >  arch/arm/dts/rk3288-u-boot.dtsi   |  2 ++
> >  arch/arm/dts/rockchip-u-boot.dtsi | 21 +++++++++++++++++++++
> >  include/configs/rockchip-common.h |  2 ++
> >  6 files changed, 42 insertions(+), 4 deletions(-)
> >  create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
> >
> > diff --git a/Makefile b/Makefile
> > index b48693e560..d5b6c45c89 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -909,7 +909,7 @@ ALL-y +=3D u-boot-with-dtb.bin
> >  endif
> >
> >  ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
> > -ALL-y +=3D u-boot-spl-rockchip.bin
> > +ALL-y +=3D u-boot-rockchip.bin
> >  endif
> >
> >  LDFLAGS_u-boot +=3D $(LDFLAGS_FINAL)
> > @@ -1387,15 +1387,25 @@ ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
> >  MKIMAGEFLAGS_u-boot-tpl-rockchip.bin =3D -n $(CONFIG_SYS_SOC) -T $(ROC=
KCHIP_IMG_TYPE)
> >  tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
> >         $(call if_changed,mkimage)
> > -u-boot-spl-rockchip.bin: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bi=
n FORCE
> > +spl/u-boot-spl-rockchip.bin: tpl/u-boot-tpl-rockchip.bin spl/u-boot-sp=
l.bin FORCE
> >         $(call if_changed,cat)
> >  else
> >  MKIMAGEFLAGS_u-boot-spl-rockchip.bin =3D -n $(CONFIG_SYS_SOC) -T $(ROC=
KCHIP_IMG_TYPE)
> > -u-boot-spl-rockchip.bin: spl/u-boot-spl.bin FORCE
> > +spl/u-boot-spl-rockchip.bin: spl/u-boot-spl.bin FORCE
> >         $(call if_changed,mkimage)
> >  endif
> >
> > -endif
> > +ifeq ($(CONFIG_ARM64),)
> > +u-boot-rockchip.bin: spl/u-boot-spl-rockchip.bin u-boot.img FORCE
> > +       $(call if_changed,binman)
> > +else
> > +OBJCOPYFLAGS_u-boot-rockchip.bin =3D -I binary -O binary \
> > +       --pad-to=3D$(CONFIG_SPL_PAD_TO) --gap-fill=3D0xff
> > +u-boot-rockchip.bin: spl/u-boot-spl-rockchip.bin u-boot.itb FORCE
> > +       $(call if_changed,pad_cat)
> > +endif # CONFIG_ARM64
> > +
> > +endif # CONFIG_ARCH_ROCKCHIP
> >
> >  ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
> >  MKIMAGEFLAGS_lpc32xx-spl.img =3D -T lpc32xximage -a $(CONFIG_SPL_TEXT_=
BASE)
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index f9dab073ea..7bd99ba3bb 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -1590,6 +1590,7 @@ config ARCH_STM32MP
> >  config ARCH_ROCKCHIP
> >         bool "Support Rockchip SoCs"
> >         select BLK
> > +       select BINMAN if !ARM64
> >         select DM
> >         select DM_GPIO
> >         select DM_I2C
> > diff --git a/arch/arm/dts/rk3036-u-boot.dtsi b/arch/arm/dts/rk3036-u-bo=
ot.dtsi
> > index 1e7d079315..41ac054b81 100644
> > --- a/arch/arm/dts/rk3036-u-boot.dtsi
> > +++ b/arch/arm/dts/rk3036-u-boot.dtsi
> > @@ -2,3 +2,5 @@
> >  /*
> >   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> >   */
> > +
> > +#include "rockchip-u-boot.dtsi"
> > diff --git a/arch/arm/dts/rk3288-u-boot.dtsi b/arch/arm/dts/rk3288-u-bo=
ot.dtsi
> > index 3f00a3b6d3..6d31735362 100644
> > --- a/arch/arm/dts/rk3288-u-boot.dtsi
> > +++ b/arch/arm/dts/rk3288-u-boot.dtsi
> > @@ -3,6 +3,8 @@
> >   * Copyright (C) 2019 Rockchip Electronics Co., Ltd
> >   */
> >
> > +#include "rockchip-u-boot.dtsi"
> > +
> >  / {
> >         chosen {
> >                 u-boot,spl-boot-order =3D \
> > diff --git a/arch/arm/dts/rockchip-u-boot.dtsi b/arch/arm/dts/rockchip-=
u-boot.dtsi
> > new file mode 100644
> > index 0000000000..bc0b1412a2
> > --- /dev/null
> > +++ b/arch/arm/dts/rockchip-u-boot.dtsi
> > @@ -0,0 +1,21 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> > + */
> > +
> > +#include <config.h>
> > +
> > +/ {
> > +       binman {
> > +               filename =3D "u-boot-rockchip.bin";
> > +               pad-byte =3D <0xff>;
> > +
> > +               blob {
> > +                       filename =3D "spl/u-boot-spl-rockchip.bin";
> > +               };
> > +
> > +               u-boot-img {
> > +                       offset =3D <CONFIG_SPL_PAD_TO>;
> > +               };
> > +       };
> > +};
> > diff --git a/include/configs/rockchip-common.h b/include/configs/rockch=
ip-common.h
> > index 68e1105a4b..d7f5ca9fa4 100644
> > --- a/include/configs/rockchip-common.h
> > +++ b/include/configs/rockchip-common.h
> > @@ -9,6 +9,8 @@
> >
> >  #define CONFIG_SYS_NS16550_MEM32
> >
> > +#define CONFIG_SPL_PAD_TO              8355840
>
> I may be wrong, but shouldn't CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR
> be used here?

I.e.

#define CONFIG_SPL_PAD_TO ((CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR - 64) *=
 512)

>
> > +
> >  #ifndef CONFIG_SPL_BUILD
> >
> >  /* First try to boot from SD (index 0), then eMMC (index 1) */
> > --
> > 2.18.0.321.gffc6fa0e3
> >
>
>
> --
> With best regards,
> Matwey V. Kornilov



--=20
With best regards,
Matwey V. Kornilov
