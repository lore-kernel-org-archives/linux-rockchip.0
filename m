From: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Subject: Re: [PATCH 3/3] rockchip: fix incorrect detection of ram
 size
Date: Tue, 8 May 2018 12:21:24 +0200
Message-ID: <45A258A9-9825-41F4-965F-A821D52D5E4F@theobroma-systems.com>
References: <20180506142513.19911-1-hanetzer@startmail.com>
 <20180506142513.19911-4-hanetzer@startmail.com>
 <6a0116f8-fd8a-dd53-2759-0014c7ab2700@rock-chips.com>
 <20180507023413.mil4wj7xtjy6gnuw@proprietary-killer>
 <791299C0-EEC0-4DB1-97C4-A8DAD3B1A481@theobroma-systems.com>
 <20180508005215.s3uivl43jfaryv7j@proprietary-killer>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Content-Type: multipart/mixed; boundary="===============8828142644824458812=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20180508005215.s3uivl43jfaryv7j@proprietary-killer>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: "Marty E. Plummer" <hanetzer@startmail.com>
Cc: vagrant@debian.org, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============8828142644824458812==
Content-Type: multipart/signed;
 boundary="Apple-Mail=_FBB5852E-60DD-426B-8587-F911789191CE";
 protocol="application/pgp-signature"; micalg=pgp-sha512


--Apple-Mail=_FBB5852E-60DD-426B-8587-F911789191CE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Marty,

> On 8 May 2018, at 02:52, Marty E. Plummer <hanetzer@startmail.com> =
wrote:
>=20
> On Mon, May 07, 2018 at 11:16:28AM +0200, Dr. Philipp Tomsich wrote:
>>=20
>>> On 7 May 2018, at 04:34, Marty E. Plummer <hanetzer@startmail.com> =
wrote:
>>>=20
>>> On Mon, May 07, 2018 at 10:20:55AM +0800, Kever Yang wrote:
>>>> Hi Marty,
>>>>=20
>>>>=20
>>>> On 05/06/2018 10:25 PM, Marty E. Plummer wrote:
>>>>> Taken from coreboot's src/soc/rockchip/rk3288/sdram.c
>>>>>=20
>>>>> Without this change, my u-boot build for the asus c201 chromebook =
(4GiB)
>>>>> is incorrectly detected as 0 Bytes of ram.
>>>>=20
>>>> I know the root cause for this issue, and I have a local patch for =
it.
>>>> The rk3288 is 32bit, and 4GB size is just out of range, so we need =
to before
>>>> the max size before return with '<<20'. Sorry for forgot to send it =
out.
>>>>=20
>>>>>=20
>>>>> Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
>>>>> ---
>>>>> arch/arm/mach-rockchip/sdram_common.c | 62 =
++++++++++++++++-----------
>>>>> 1 file changed, 37 insertions(+), 25 deletions(-)
>>>>>=20
>>>>> diff --git a/arch/arm/mach-rockchip/sdram_common.c =
b/arch/arm/mach-rockchip/sdram_common.c
>>>>> index 76dbdc8715..a9c9f970a4 100644
>>>>> --- a/arch/arm/mach-rockchip/sdram_common.c
>>>>> +++ b/arch/arm/mach-rockchip/sdram_common.c
>>>>> @@ -10,6 +10,8 @@
>>>>> #include <asm/io.h>
>>>>> #include <asm/arch/sdram_common.h>
>>>>> #include <dm/uclass-internal.h>
>>>>> +#include <linux/kernel.h>
>>>>> +#include <linux/sizes.h>
>>>>>=20
>>>>> DECLARE_GLOBAL_DATA_PTR;
>>>>> size_t rockchip_sdram_size(phys_addr_t reg)
>>>>> @@ -19,34 +21,44 @@ size_t rockchip_sdram_size(phys_addr_t reg)
>>>>> 	size_t size_mb =3D 0;
>>>>> 	u32 ch;
>>>>>=20
>>>>> -	u32 sys_reg =3D readl(reg);
>>>>> -	u32 ch_num =3D 1 + ((sys_reg >> SYS_REG_NUM_CH_SHIFT)
>>>>> -		       & SYS_REG_NUM_CH_MASK);
>>>>> +	if (!size_mb) {
>>>>=20
>>>> I don't understand this and follow up changes, we don't really need =
it,
>>>> isn't it?
>>>> I think don't need the changes before here.
>>> Yeah, that was just another level of indentation for the if =
(!size_mb)
>>> guard, but I've reworked the patch to not do that as it was pointed =
out
>>> that since size_mb is initialized to 0 prior.
>>>>> +		/*
>>>>> +		 * we use the 0x00000000~0xfeffffff space
>>>>> +		 * since 0xff000000~0xffffffff is soc register space
>>>>> +		 * so we reserve it
>>>>> +		 */
>>>>> +		size_mb =3D min(size_mb, 0xff000000/SZ_1M);
>>>>=20
>>>> This is what we really need, as Klaus point out, we need to use
>>>> SDRAM_MAX_SIZE
>>>> instead of hard code.
>>> Yeah, I've got a rework on that which uses SDRAM_MAX_SIZE as =
instructed,
>>> build and boot tested on my hardware.
>>=20
>> In that case you just masked the problem but didn???t solve it: =
assuming size_mb
>> is size_t (I???ll assume this is 64bit, but did not check), then your =
4GB is 0x1_0000_0000 )
>> which overflows to 0x0 when converted to a u32.
>>=20
>> In other words: we need to figure out where the truncation occurs =
(image what
>> happens if a new 32bit processor with LPAE comes out???).
>>=20
> A very valid point. With the following patch to sdram_common.c and
> sdram_rk3288.c applied I get the debug output that follows it:
> diff --git a/arch/arm/mach-rockchip/sdram_common.c =
b/arch/arm/mach-rockchip/sdram_common.c
> index 232a7fa655..0fe69bf558 100644
> --- a/arch/arm/mach-rockchip/sdram_common.c
> +++ b/arch/arm/mach-rockchip/sdram_common.c
> @@ -4,6 +4,7 @@
>  * SPDX-License-Identifier:     GPL-2.0+
>  */
>=20
> +#define DEBUG 1
> #include <common.h>
> #include <dm.h>
> #include <ram.h>
> @@ -39,16 +40,19 @@ size_t rockchip_sdram_size(phys_addr_t reg)
> 			SYS_REG_ROW_3_4_MASK;
>=20
> 		chipsize_mb =3D (1 << (cs0_row + col + bk + bw - 20));
> +		debug("%s: %d: chipsize_mb %x\n", __func__, __LINE__, =
chipsize_mb);
>=20
> 		if (rank > 1)
> 			chipsize_mb +=3D chipsize_mb >> (cs0_row - =
cs1_row);
> 		if (row_3_4)
> 			chipsize_mb =3D chipsize_mb * 3 / 4;
> 		size_mb +=3D chipsize_mb;
> +		debug("%s: %d: size_mb %x\n", __func__, __LINE__, =
size_mb);
> 		debug("rank %d col %d bk %d cs0_row %d bw %d row_3_4 =
%d\n",
> 		      rank, col, bk, cs0_row, bw, row_3_4);
> 	}
>=20
> +	debug("%s: %d: size_mb %x\n", __func__, __LINE__, size_mb);
> 	size_mb =3D min(size_mb, SDRAM_MAX_SIZE/SZ_1M);
>=20
> 	return (size_t)size_mb << 20;
> diff --git a/drivers/ram/rockchip/sdram_rk3288.c =
b/drivers/ram/rockchip/sdram_rk3288.c
> index d99bf12476..9738eb088f 100644
> --- a/drivers/ram/rockchip/sdram_rk3288.c
> +++ b/drivers/ram/rockchip/sdram_rk3288.c
> @@ -7,6 +7,7 @@
>  * Adapted from coreboot.
>  */
>=20
> +#define DEBUG 1
> #include <common.h>
> #include <clk.h>
> #include <dm.h>
>=20
> ---
> U-Boot SPL 2018.05-rc3-02370-g309384e84b-dirty (May 07 2018 - 19:42:15 =
-0500)
> Trying to boot from SPI
>=20
>=20
> U-Boot 2018.05-rc3-02370-g309384e84b-dirty (May 07 2018 - 19:42:15 =
-0500)
>=20
> Model: Google Speedy
> DRAM:  rockchip_sdram_size ff73009c 3c50dc50
> rockchip_sdram_size: 42: chipsize_mb 400
> rockchip_sdram_size: 49: size_mb 800
> rank 2 col 11 bk 3 cs0_row 14 bw 2 row_3_4 0
> rockchip_sdram_size: 42: chipsize_mb 400
> rockchip_sdram_size: 49: size_mb 1000
> rank 2 col 11 bk 3 cs0_row 14 bw 2 row_3_4 0
> rockchip_sdram_size: 54: size_mb 1000
> SDRAM base=3D0, size=3Dfe000000
> 4 GiB
> MMC:   dwmmc@ff0c0000: 1, dwmmc@ff0d0000: 2, dwmmc@ff0f0000: 0
> In:    cros-ec-keyb
> Out:   vidconsole
> Err:   vidconsole
> Model: Google Speedy
> rockchip_dnl_key_pressed: adc_channel_single_shot fail!
> Net:   Net Initialization Skipped
> No ethernet found.
> Hit any key to stop autoboot:  0
> I guess we need to change the size_t to something larger; unless I'm
> mistaken, that's a 32 bit value, right? and 0x100000000 is at least 40

4GB is actually the 33rd bit set and the lower 32bits cleared (i.e. the =
largest
32bit value =E2=80=9Cplus one=E2=80=9D).

> bits, unless I'm missing the issue here somewhere. However, that would
> take a change to include/ram.h, and would impact far more than just
> rk3288/rockchip devices across the board, so I'm unsure how to =
proceed.
>=20
> Use the min macro here for now, and begin work migrating the ram_info
> size member to a 64-bit container?

The min() doesn=E2=80=99t make any sense here, as we implement the hook =
function
=E2=80=98board_get_usable_ram_top=E2=80=99 just a few lines later=E2=80=A6=

We are at the start of the merge window right now, so I=E2=80=99d rather =
hold off a
week (or two) and have a permanent solution than merging just a band-aid
now and then having the full fix come in later during the merge window.

I briefly reviewed the situation yesterday and it looks like the size =
field in
ram_info is the culprit: it=E2=80=99s defined as =E2=80=98size_t=E2=80=99,=
 which again is __SIZE_TYPE__
which again is =E2=80=98unsigned int=E2=80=99 on a (32bit) arm-*-eabi =
compiler.

Expanding this to a phys_size_t won=E2=80=99t be doing us much good, =
either (as
that one will also be 32bits for the RK3288).

The root cause of this is really that the RAM size and the =E2=80=98usable=
 RAM=E2=80=99 are
two different concepts in U-Boot.  On a 32bit physical address space =
with
memory-mapped peripherals, we can never have the full 4GB of DRAM as
we=E2=80=99ll also have some of the physical address-space set aside for =
the MMIO;
however, the MMIO range is only removed from the DRAM size when the
usable ram-top is evaluated=E2=80=A6 so the size can be 4GB after all =
and overflow
the 32bit size_t.  Note that this separation into two different steps =
makes a
lot of sense, as processors might not use MMIO but specialised =
instructions
to access peripheral space=E2=80=94in which case there might indeed be a =
usable
memory of 4GB on a 32bit physical address space.

=46rom what I can tell, we=E2=80=99ll need to do two things:
(a)	fix arch/arm/mach-rockchip/sdram_common.c to not use 32bit types
	for the memory size
(b)	touch ram.h to change the type of the =E2=80=98size=E2=80=99 =
field in ram_info (it needs
	to be larger than 32bits

I=E2=80=99d like Simon=E2=80=99s input (as he owns ram.h) and can create =
a patchset for this
change, if he agrees that this is the way forward.

Regards,
Philipp.

>>>>=20
>>>> Thanks,
>>>> - Kever
>>>>> 	}
>>>>>=20
>>>>> 	return (size_t)size_mb << 20;
>>>>=20
>>>>=20
>>> _______________________________________________
>>> U-Boot mailing list
>>> U-Boot@lists.denx.de <mailto:U-Boot@lists.denx.de>
>>> https://lists.denx.de/listinfo/u-boot =
<https://lists.denx.de/listinfo/u-boot>


--Apple-Mail=_FBB5852E-60DD-426B-8587-F911789191CE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEzBAEBCgAdFiEEiYUpNmRO2QAtLWkiJoAVwQ5yiE0FAlrxeiQACgkQJoAVwQ5y
iE35hQf8Cvwnk3/CSA5gmc4VXHKA9BgPUIVSN4EaRopMAE09Okui2ox7WhdV5H0N
jBE6mysJx4j38hRUGt/n3suqnuyA8+iUe/qxd5w6LJ2h/SVKnURPxev0RF2uVlWH
iGW0lg4RIZH78tn4LQ5N6an+aZ07WiR/LKeSpQzTYSGqgeMv8/pj7ti3UYLUuygH
aQKgVx5Qsb483nOfmKrHc4lVsMbUYP9rIO4S3V7OH2qjo9WWF/mRSsxVvu/hsUFK
MuWcFq1A/TCrA+BwGSJBneNhOGWVZtJ4c8mo54QLqr9fUNu7/etfu4+QRughJ86m
sd1rSoT+Pa0LJN3Nzuo/6MJHjD70Vw==
=O0dJ
-----END PGP SIGNATURE-----

--Apple-Mail=_FBB5852E-60DD-426B-8587-F911789191CE--

--===============8828142644824458812==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

--===============8828142644824458812==--
