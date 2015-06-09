From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v5 1/3] ARM: rockchip: fix the CPU soft reset
Date: Tue, 09 Jun 2015 09:46:47 +0200
Message-ID: <9253141.D1erkaHIPa@diego>
References: <1433747496-7642-1-git-send-email-wxt@rock-chips.com> <20150608094334.GX7557@n2100.arm.linux.org.uk> <557636CC.6010809@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <557636CC.6010809@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>, =?utf-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 9. Juni 2015, 08:43:56 schrieb Caesar Wang:
> =E5=9C=A8 2015=E5=B9=B406=E6=9C=8808=E6=97=A5 17:43, Russell King - A=
RM Linux =E5=86=99=E9=81=93:
> > On Mon, Jun 08, 2015 at 03:11:34PM +0800, Caesar Wang wrote:
> >> diff --git a/arch/arm/mach-rockchip/platsmp.c
> >> b/arch/arm/mach-rockchip/platsmp.c index 5b4ca3c..bd40852 100644
> >> --- a/arch/arm/mach-rockchip/platsmp.c
> >> +++ b/arch/arm/mach-rockchip/platsmp.c
> >> @@ -72,6 +72,7 @@ static struct reset_control
> >> *rockchip_get_core_reset(int cpu)>>=20
> >>   static int pmu_set_power_domain(int pd, bool on)
> >>   {
> >>  =20
> >>   	u32 val =3D (on) ? 0 : BIT(pd);
> >>=20
> >> +	struct reset_control *rstc =3D rockchip_get_core_reset(pd);
> >>=20
> >>   	int ret;
> >>   =09
> >>   	/*
> >>=20
> >> @@ -80,20 +81,15 @@ static int pmu_set_power_domain(int pd, bool o=
n)
> >>=20
> >>   	 * processor is powered down.
> >>   	 */
> >>   =09
> >>   	if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9) {
> >>=20
> >> -		struct reset_control *rstc =3D rockchip_get_core_reset(pd);
> >> -
> >> +		/* We only require the reset on the RK3288 at the moment */
> >>=20
> >>   		if (IS_ERR(rstc)) {
> >>   	=09
> >>   			pr_err("%s: could not get reset control for core %d\n",
> >>   		=09
> >>   			       __func__, pd);
> >>   		=09
> >>   			return PTR_ERR(rstc);
> >>   	=09
> >>   		}
> >>=20
> >> -		if (on)
> >> -			reset_control_deassert(rstc);
> >> -		else
> >> +		if (!on)
> >>=20
> >>   			reset_control_assert(rstc);
> >>=20
> >> -
> >> -		reset_control_put(rstc);
> >>=20
> >>   	}
> >=20
> > Do we need the CPU part number check for the assertion/deassertion =
of
> > the reset control?  Surely the DT provides this where appropriate a=
nd
> > omits it where it's inappropriate?
> >=20
> > If so, I'd separate out the decision whether to error out from the
> >=20
> > decision whether to assert the reset control, like this:
> > 	if (IS_ERR(rstc) && read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9)=
 {
> > =09
> > 		pr_err("%s: could not get reset control for core %d\n",
> > 	=09
> > 		       __func__, pd);
> > 	=09
> > 		return PTR_ERR(rstc);
> > =09
> > 	}
> > =09
> > 	if (!IS_ERR(rstc) && !on)
> > =09
> > 		reset_control_assert(rstc);
> >=20
> > or maybe:
> > 	if (IS_ERR(rstc) && PTR_ERR(rstc) !=3D -ENOENT) {
> > =09
> > 		pr_err("%s: could not get reset control for core %d: %d\n",
> > 	=09
> > 		       __func__, pd, PTR_ERR(rstc));
> > 	=09
> > 		return PTR_ERR(rstc);
> > =09
> > 	}
> > =09
> > 	if (!IS_ERR(rstc) && !on)
> > =09
> > 		reset_control_assert(rstc);
> >=20
> > which lets you detect whether of_reset_control_get() failed because=
 the
> > reset control was not present (and thus not required) vs failed for=
 some
> > other reason - and this means that the issue of whether the reset
> > control is used is entirely up to the supplied DT file.
>=20
> Sound resonable for me.
>=20
> I hope get the Heiko and Kever option.
> After all the code is uploaded by Heiko and Kever.

Russell's suggestion is very nice indeed.

We have reset controls for the cpu cores on all Rockchip SoCs but curre=
ntly=20
only absolutely require them on the rk3288, so what Russell suggested h=
andles=20
this nicely if we require this later for other SoCs as well (like the A=
7 ones)=20
=2E


Heiko

>=20
> >>   	ret =3D regmap_update_bits(pmu, PMU_PWRDN_CON, BIT(pd), val);
> >>=20
> >> @@ -112,6 +108,12 @@ static int pmu_set_power_domain(int pd, bool =
on)
> >>=20
> >>   		}
> >>   =09
> >>   	}
> >>=20
> >> +	if (read_cpuid_part() !=3D ARM_CPU_PART_CORTEX_A9 && on)
> >> +		reset_control_deassert(rstc);
> >> +
> >> +	if (!IS_ERR(rstc))
> >> +		reset_control_put(rstc);
> >> +
> >=20
> > and here:
> > 	if (!IS_ERR(rstc)) {
> > =09
> > 		if (on)
> > 	=09
> > 			reset_control_deassert(rstc);
> > 	=09
> > 		reset_control_put(rstc);
> > =09
> > 	}
>=20
> Ditto.
