From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
Date: Thu, 17 Oct 2019 15:26:41 +0200
Message-ID: <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4853232508975546053=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jagan Teki <jagan@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>, Da Xue <da@lessconfused.com>, linux-amarula <linux-amarula@amarulasolutions.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4853232508975546053==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC
Content-Type: multipart/mixed; boundary="eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV";
 protected-headers="v1"
From: Markus Reichl <m.reichl@fivetechno.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Da Xue <da@lessconfused.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Message-ID: <109d708e-d182-fafa-44ad-0e6e0f813e0d@fivetechno.de>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
 <87eezolynl.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>
In-Reply-To: <CAMty3ZD8uHsj0Jzs08sKG0JXfC6MU0MHdKs=kw4m5rupnoTtqg@mail.gmail.com>

--eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Jagan,

your patch fixes booting my rk3399-roc-pc with 5.4.0-rc3-next-20191017.
Without your patch roc-pc hangs here:
[    9.703526] pwm-regulator: supplied by regulator-dummy

Am 16.10.19 um 19:09 schrieb Jagan Teki:
> Hi Levin,
>=20
> On Tue, Oct 8, 2019 at 8:42 AM <djw@t-chip.com.cn> wrote:
>>
>> Jagan Teki <jagan@amarulasolutions.com> writes:
>>
>> > Hi Heiko,
>> >
>> > On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wro=
te:
>> >>
>> >> Hi Jagan,
>> >>
>> >> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki=
:
>> >> > ROC-PC is not able to boot linux console if PWM2_d is
>> >> > unattached to any pinctrl logic.
>> >> >
>> >> > To be precise the linux boot hang with last logs as,
>> >> > ...
>> >> > .....
>> >> > [    0.003367] Console: colour dummy device 80x25
>> >> > [    0.003788] printk: console [tty0] enabled
>> >> > [    0.004178] printk: bootconsole [uart8250] disabled
>> >> >
>> >> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
>> >> > VDD_LOG. So, for normal working operations this needs to
>> >> > active and pull-down.
>> >> >
>> >> > This patch fix, by attaching pinctrl active and pull-down
>> >> > the pwm2.
>> >>
>> >> This looks highly dubious on first glance. The pwm subsystem nor
>> >> the Rockchip pwm driver do not do any pinctrl handling.
>> >>
>> >> So I don't really see where that "active" pinctrl state is supposed=

>> >> to come from.
>> >>
>> >> Comparing with the pwm driver in the vendor tree I see that there
>> >> is such a state defined there. But that code there also looks stran=
ge
>> >> as that driver never again leaves this active state after entering =
it.
>> >>
>> >> Also for example all the Gru devices run with quite a number of pwm=
-
>> >> regulators without needing additional fiddling with the pwm itself,=
 so
>> >> I don't really see why that should be different here.
>> >
>> > I deed, I was supposed to think the same. but the vendor kernel dts
>> > from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
>> > information other than this vensor information, ie one of the reason=
 I
>> > have marked "Levin Du" who initially supported this board.
>> >
>> > One, think I have seen was this pinctrl active fixed the boot hang.
>> > any inputs from would be very helpful.
>> >
>> > Levin Du, any inputs?
>> >
>> > [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-lin=
ux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>> >
>>
>> A grep of the `pwm2` shows that there's such block in rk3399-nanopi4.d=
tsi:
>>
>>     &pwm2 {
>>             pinctrl-names =3D "active";
>>             pinctrl-0 =3D <&pwm2_pin_pull_down>;
>>             status =3D "okay";
>>     };
>>
>> But last time I checked, using the mainline U-Boot (the roc-rk3399-pc =
is
>> in mainline now) with mainline linux v5.2-rc7, no such setting is
>> necessary, and the board boots happily.
>>
>> I cannot find the use of "active" pinctrl state in the
>> `drivers/pwm/pwm-rockchip.c`. If the pinctrl state needs to be setup a=
s
>> default, the `pinctrl-names` needs to be "default" or "init" (see
>> `drivers/base/pinctrl.c`) .
>>
>> Jagan, what version of board do you use? I checked with
>> "ROC-RK3399-PC-V1.0-A 2018-07-12".
>=20
> I have ROC-RK3399-PC-V1.A 2018.09.25 and powering with TYPE-C0 port.
>=20
> And here the boot log
>=20
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
> [    0.000000] Linux version 5.4.0-rc3-next-20191016
> (jagan@jagan-XPS-13-9350) (gcc version 6.3.1 20170109 (Linaro GCC
> 6.3-2017.02)) #1 SMP PREEMPT Wed Oct 16 21:17:23 IST 2019
> [    0.000000] Machine model: Firefly ROC-RK3399-PC Board
> [    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff1a0000 (options=
 '')
> [    0.000000] printk: bootconsole [uart8250] enabled
> [    0.000000] efi: Getting EFI parameters from FDT:
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 32 MiB at 0x000000003e000000
> [    0.000000] NUMA: No NUMA configuration found
> [    0.000000] NUMA: Faking a node at [mem
> 0x0000000000200000-0x00000000f7ffffff]
> [    0.000000] NUMA: NODE_DATA [mem 0xf77ef100-0xf77f0fff]
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000200000-0x000000003fffffff]
> [    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000f7ffffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000200000-0x00000000f7ffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000200000-0x00000000f=
7ffffff]
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: PSCIv1.1 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: MIGRATE_INFO_TYPE not supported.
> [    0.000000] psci: SMC Calling Convention v1.1
> [    0.000000] percpu: Embedded 22 pages/cpu s52952 r8192 d28968 u90112=

> [    0.000000] Detected VIPT I-cache on CPU0
> [    0.000000] CPU features: detected: ARM erratum 845719
> [    0.000000] CPU features: detected: GIC system register CPU interfac=
e
> [    0.000000] Speculative Store Bypass Disable mitigation not required=

> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 9=
99432
> [    0.000000] Policy zone: DMA32
> [    0.000000] Kernel command line:
> earlycon=3Duart8250,mmio32,0xff1a0000 root=3D/dev/mmcblk1p1 rootwait
> [    0.000000] Dentry cache hash table entries: 524288 (order: 10,
> 4194304 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 262144 (order: 9,
> 2097152 bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] software IO TLB: mapped [mem 0x3a000000-0x3e000000] (64M=
B)
> [    0.000000] Memory: 3856004K/4061184K available (12028K kernel
> code, 1870K rwdata, 6440K rodata, 5056K init, 451K bss, 172412K
> reserved, 32768K cma-reserved)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
6, Nodes=3D1
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_c=
pu_ids=3D6.
> [    0.000000]  Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay
> is 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu=
_ids=3D6
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> [    0.000000] GICv3: 256 SPIs implemented
> [    0.000000] GICv3: 0 Extended SPIs implemented
> [    0.000000] GICv3: Distributor has no Range Selector support
> [    0.000000] GICv3: 16 PPIs implemented
> [    0.000000] GICv3: no VLPI support, no direct LPI support
> [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fe=
f00000
> [    0.000000] ITS [mem 0xfee20000-0xfee3ffff]
> [    0.000000] ITS@0x00000000fee20000: allocated 65536 Devices
> @f6880000 (flat, esz 8, psz 64K, shr 0)
> [    0.000000] ITS: using cache flushing for cmd queue
> [    0.000000] GICv3: using LPI property table @0x00000000f6840000
> [    0.000000] GIC: using cache flushing for LPI property table
> [    0.000000] GICv3: CPU0: using allocated LPI pending table
> @0x00000000f6850000
> [    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] {
> /cpus/cpu@0[0] /cpus/cpu@1[1] /cpus/cpu@2[2] /cpus/cpu@3[3] }
> [    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] {
> /cpus/cpu@100[4] /cpus/cpu@101[5] }
> [    0.000000] random: get_random_bytes called from
> start_kernel+0x2b8/0x454 with crng_init=3D0
> [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> [    0.000006] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps
> every 4398046511097ns
> [    0.003201] Console: colour dummy device 80x25
> [    0.003624] printk: console [tty0] enabled
> [    0.004020] printk: bootconsole [uart8250] disabled

I had to put "console=3DttyS2,1500000" in kernel command line to get furt=
her logging beyond this point.

>=20
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20

Gru=C3=9F,
--=20
Markus Reichl


--eKrkufQi7b6iPRdhDHIVSCqbS78ZKOHkV--

--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVKeIeBh0ZWJOldzLOiXeDmsa/bIFAl2obBsACgkQOiXeDmsa
/bI9KQwAgQfw3C+rC34IN8Q9bXiz6TNeMZKEMllj2WeYpNb5Jjv46Df6sJ2NDFTI
LLlGGcdm0nCcS/EQPeQaJd47ezOonE+0J7SV9W/JCku9agyYNv+pBFfS83zGkwFZ
Z+mKgdjedqrcEwtGrhVChVxFJm1wHJ5u8NkQHcY9CIw5Z8kS91mO3vXqtu2qU3p8
csS/aJb4suWiSUSyuwWcKCnOMJAf6AB+b6HQEZiiM6hyQqJqQequ3RmAo3YPLTOo
REKCHSdUrK/x2NstwWSuu2pooHcH4jnvo4hCkG7jp08MJJsw7UlSVgua0PSvoDbj
5bWAVb/nJ768yrdhFFJHVwIjDj9HuTbrXwANZz6EZZOvDa2m3wqUbS2Oq39QUXeI
ImH6vQQjmB9dCiuiLNYFcS1R0JgIHIXl2+Mh95sVjjZYDDX7PrLZ8fpZgkjqI7VB
X88BQBvBz/y6IaVoqNGJd2aGEapS9X3HaTHJ+YqY5m+Y4dKEMMDMDBIvlf/5A3x3
QFaC6ens
=AEAy
-----END PGP SIGNATURE-----

--Mkl0xAKohbcENoFuufIfKYeOWfNDdwTbC--


--===============4853232508975546053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4853232508975546053==--
