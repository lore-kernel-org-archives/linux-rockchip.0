From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/4] ARM: multi_v7_defconfig: Enable ACT8865 PMIC driver
Date: Mon, 07 Sep 2015 12:53:15 +0200
Message-ID: <2290865.A4pAyymAaJ@diego>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk> <3043964.0UPNRg7XJB@diego> <55ED6B9E.1030705@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ED6B9E.1030705@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Javier Martinez Canillas <javier@osg.samsung.com>, Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Olof Johansson <olof@lixom.net>, Stephen Warren <swarren@nvidia.com>, Thierry Reding <treding@nvidia.com>, Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Andy,

Am Montag, 7. September 2015, 18:49:02 schrieb Andy Yan:
> PMIC RK808 used on many rk3288 boards ,such as Popmetal.
> It is a MFD with function regulator and RTC. So if you plan to enable
> RK808, please also enable CONFIG_RTC_DRV_RK808.

I think that could go into a separate patch5 ... enabling
	CONFIG_RTC_DRV_RK808=3Dm
	CONFIG_RTC_DRV_HYM8563=3Dm

the two rtc types used on all(?) Rockchip boards. So enable the rk808=20
mfd+regulator here and do the rtcs separately later.


> On 2015=E5=B9=B409=E6=9C=8807=E6=97=A5 17:33, Heiko St=C3=BCbner wrot=
e:
> > Hi,
> >=20
> > I guess one could rename that to something like
> > "ARM: multi_v7_defconfig: Enable regulators used on most rockchip b=
oards"
> >=20
> > and as well add
> >=20
> > CONFIG_REGULATOR_FAN53555=3Dy
> > CONFIG_MFD_RK808=3Dy
> > CONFIG_REGULATOR_RK808=3Dy
> >=20
> > fan5355 is the driver providing support for the syr82x used on all =
rk3288
> > boards with an act8846.
> >=20
> > Am Sonntag, 6. September 2015, 22:16:04 schrieb Sjoerd Simons:
> >> Active Semi act8846 is used as the PMIC on various Rockchip boards=
,
> >> enable the ACT8865 driver to support this.
> >>=20
> >> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> >>=20
> >> ---
> >>=20
> >>   arch/arm/configs/multi_v7_defconfig | 1 +
> >>   1 file changed, 1 insertion(+)
> >>=20
> >> diff --git a/arch/arm/configs/multi_v7_defconfig
> >> b/arch/arm/configs/multi_v7_defconfig index 25a1d574..7058fef 1006=
44
> >> --- a/arch/arm/configs/multi_v7_defconfig
> >> +++ b/arch/arm/configs/multi_v7_defconfig
> >> @@ -401,6 +401,7 @@ CONFIG_MFD_TPS65090=3Dy
> >>=20
> >>   CONFIG_MFD_TPS6586X=3Dy
> >>   CONFIG_MFD_TPS65910=3Dy
> >>   CONFIG_REGULATOR_AB8500=3Dy
> >>=20
> >> +CONFIG_REGULATOR_ACT8865=3Dy
> >>=20
> >>   CONFIG_REGULATOR_AS3711=3Dy
> >>   CONFIG_REGULATOR_AS3722=3Dy
> >>   CONFIG_REGULATOR_AXP20X=3Dy
> >=20
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
