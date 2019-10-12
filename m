From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Subject: Re: [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
Date: Sat, 12 Oct 2019 18:37:59 +0800
Message-ID: <23d554e3-4345-25bd-f5be-00222485164c@gmx.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
 <9816875f-6166-ce55-6ed5-211e6a40b4fe@gmx.com>
 <b75d1b23-78e4-01e0-77e0-26de152a8b89@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============9068094149968586444=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <b75d1b23-78e4-01e0-77e0-26de152a8b89@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com, linux-amarula@amarulasolutions.com, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9068094149968586444==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 2019/10/8 =E4=B8=8A=E5=8D=888:31, Kever Yang wrote:
> Hi Qu and Mani,
>=20
>=20
> This patch has already on the mater, you can try with master code and
> use idbloader.img
>=20
> directly.
>=20
>=20
> Thanks,

Confirmed it works perfectly on RockPi 4, while the previous tag
v2019.04, it boots but could easily hit SError memory error.

Great work!

Thanks,
Qu
>=20
> - Kever
>=20
> On 2019/10/6 =E4=B8=8A=E5=8D=889:30, Qu Wenruo wrote:
>>
>> On 2019/10/6 =E4=B8=8A=E5=8D=889:05, Qu Wenruo wrote:
>>>
>>> On 2019/7/16 =E4=B8=8B=E5=8D=887:56, Jagan Teki wrote:
>>>> This is next revison of lpddr4 support on rk3399 compared to
>>>> previous set[1]. It has some changes based on the commit orders
>>>> and squashing few patches together and rest is same.
>>>>
>>>> Thanks to
>>>> - YouMin Chen
>>>> - Akash Gajjar
>>>> - Kever Yang
>>>> for supporting all the help on this work.
>>>>
>>>> Changes for v3:
>>>> - squash set_rate code in one patch
>>>> - tested in Rockpro64 and Rock-PI-4
>>> Great works! Can't wait to try them on both boards!
>>>
>>> Would you mind to setup a git repo for this large patchset?
>>> It would be much easier for other guys to test, other than fetching a=
ll
>>> the patches and apply them.
>> In fact the patchset can't be applied to current master due to conflic=
ts.
>> And furthermore the hash doesn't match any existing tree.
>>
>> Would you mind to rebase it to current master? Or at least a git repo =
so
>> I could try to rebase them.
>>
>> Thanks,
>> Qu
>>> Thanks,
>>> Qu
>>>
>>>> - order them in proper way
>>>> - rebase on master
>>>> Changes for v2:
>>>> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
>>>> - support data_training and set_rate via sdram_rk3399_ops
>>>> - add proper sys_reg_enc macros
>>>> - add new patch to rename variable sdram_params with params
>>>> - fix few commit messages.
>>>>
>>>> patch 0001 - 0018: add dram config enc macro
>>>>
>>>> patch 0019: configure phy IO in ds odt
>>>>
>>>> patch 0020: add LPDDR4 config
>>>>
>>>> patch 0021 - 0043: lpddr4 data training changes
>>>>
>>>> patch 0044 - 0046: syscon pmu support
>>>>
>>>> patch 0047: set 50MHz ddr clock
>>>>
>>>> patch 0048: set 400MHz ddr clock
>>>>
>>>> patch 0049: LPDDR4-400 timings
>>>>
>>>> patch 0050: LPDDR4-800 timings
>>>>
>>>> patch 0051 - 0052: lpddr4 set rate
>>>>
>>>> patch 0053: enable lpddr4 support on Rockpro64
>>>>
>>>> patch 0054: enable lpddr4 support on Rock-PI 4
>>>>
>>>> patch 0055: add LPDDR-100 timings via dts
>>>>
>>>> patch 0056: use LPDDR-100 timings on Rockpro64
>>>>
>>>> patch 0057: use LPDDR-100 timings on Rock-PI 4
>>>>
>>>> [1] https://patchwork.ozlabs.org/cover/1116734/
>>>>
>>>> Any inputs?
>>>> Jagan.
>>>>
>>>> Jagan Teki (57):
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddrtype enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add channel number encoder macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add row_3_4 enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add chipinfo macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add rank enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add column enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add bk enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add dbw enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs0_rw macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs1_rw macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add bw enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Rename sys_reg with sys_reg2
>>>> =C2=A0=C2=A0 ram: rk3399: Update cs0_row to use sys_reg3
>>>> =C2=A0=C2=A0 ram: rk3399: Update cs1_row to use sys_reg3
>>>> =C2=A0=C2=A0 ram: rk3399: Add cs1_col enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddr version enc macro
>>>> =C2=A0=C2=A0 ram: rk3399: Add ddrtimingC0
>>>> =C2=A0=C2=A0 ram: rk3399: Add DdrMode
>>>> =C2=A0=C2=A0 ram: rk3399: Configure phy IO in ds odt
>>>> =C2=A0=C2=A0 ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 rank mask for ca training
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 rank mask for wdql training
>>>> =C2=A0=C2=A0 ram: rk3399: Move mode_sel assignment
>>>> =C2=A0=C2=A0 ram: rk3399: Don't wait for PLL lock in lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Avoid two channel ZQ Cal Start at the same=
 time
>>>> =C2=A0=C2=A0 ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Map chipselect for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Configure tsel write ca for lpddr4
>>>> =C2=A0=C2=A0 ram: rk3399: Don't disable dfi dram clk for lpddr4, ran=
k 1
>>>> =C2=A0=C2=A0 ram: rk3399: Add IO settings
>>>> =C2=A0=C2=A0 ram: sdram: Configure lpddr4 tsel rd, wr based on IO se=
ttings
>>>> =C2=A0=C2=A0 ram: rk3399: Add tsel control clock drive
>>>> =C2=A0=C2=A0 ram: rk3399: Configure soc odt support
>>>> =C2=A0=C2=A0 ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 vref based on io settings
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 mode_sel based on io setting=
s
>>>> =C2=A0=C2=A0 ram: rk3399: Update lpddr4 vref_mode_ac
>>>> =C2=A0=C2=A0 ram: rk3399: Simplify data training first argument
>>>> =C2=A0=C2=A0 ram: rk3399: Handle data training via ops
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDR4 mr detection
>>>> =C2=A0=C2=A0 arm: include: rockchip: Add rk3399 pmu file
>>>> =C2=A0=C2=A0 rockchip: rk3399: syscon: Add pmu support
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu=

>>>> =C2=A0=C2=A0 clk: rockchip: rk3399: Set 50MHz ddr clock
>>>> =C2=A0=C2=A0 clk: rockchip: rk3399: Set 400MHz ddr clock
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDDR4-400 timings inc
>>>> =C2=A0=C2=A0 ram: rk3399: Add LPPDDR4-800 timings inc
>>>> =C2=A0=C2=A0 ram: rk3399: Add set_rate sdram rk3399 ops
>>>> =C2=A0=C2=A0 ram: rk3399: Add lpddr4 set rate support
>>>> =C2=A0=C2=A0 configs: rockpro64: Enable LPDDR4 support
>>>> =C2=A0=C2=A0 configs: rock-pi-4: Enable LPDDR4 support
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: Add LPDDR4-100 timings
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>>>> =C2=A0=C2=A0 rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>>>>
>>>> =C2=A0 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0 | 1537 +++++++++++++++
>>>> =C2=A0 arch/arm/dts/rk3399-u-boot.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
 4 +
>>>> =C2=A0 .../include/asm/arch-rockchip/pmu_rk3399.h=C2=A0=C2=A0=C2=A0 =
|=C2=A0=C2=A0 72 +
>>>> =C2=A0 .../include/asm/arch-rockchip/sdram_common.h=C2=A0 |=C2=A0=C2=
=A0 31 +
>>>> =C2=A0 .../include/asm/arch-rockchip/sdram_rk3399.h=C2=A0 |=C2=A0=C2=
=A0 29 +-
>>>> =C2=A0 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |=C2=A0=C2=A0=C2=
=A0 8 +
>>>> =C2=A0 configs/rock-pi-4-rk3399_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 configs/rockpro64-rk3399_defconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 1 +
>>>> =C2=A0 drivers/clk/rockchip/clk_rk3399.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 8 +
>>>> =C2=A0 drivers/ram/rockchip/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 7 +
>>>> =C2=A0 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc=C2=A0 | 1570 +++=
++++++++++++
>>>> =C2=A0 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc=C2=A0 | 1570 +++=
++++++++++++
>>>> =C2=A0 drivers/ram/rockchip/sdram_rk3399.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1726
>>>> ++++++++++++++---
>>>> =C2=A0 15 files changed, 6317 insertions(+), 249 deletions(-)
>>>> =C2=A0 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>>>> =C2=A0 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3=
399.h
>>>> =C2=A0 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-4=
00.inc
>>>> =C2=A0 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-8=
00.inc
>>>>
>>>
>>> _______________________________________________
>>> U-Boot mailing list
>>> U-Boot@lists.denx.de
>>> https://lists.denx.de/listinfo/u-boot
>>>
>=20
>=20


--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2hrQcACgkQwj2R86El
/qizPAf9FB5zYnYT5BLDI2xa4JZj4OCXXjOzM+xmgJNV3UgIvMEFQQZMRUKZpB2r
Sj/CKLmsOn2HwiBYxa/j5kgnyogQX57691036zOQ8CPL6Crch4KJ2bpQc1+Zecu8
RG0pVc9jsaPUNtkLz08aExpNrxGnm9BOAQzHOURjgHbcDAidCxcoewXEPU+6RpuI
fRYPVSS8AAJuZzbwrPuhm5HNqcwQZ6bQB0TfF3MAUmsloRa9nUl9eLnbXfK/UWn5
YoaTe2RZfIW6TyCwwFQ7S1OQRPIlCg6XrBtUTzpw2QLrPsM9PTCANBRVUPiiBhUS
japO4InnNaZ+FY9ZsOWFnB7UHEHycw==
=jyso
-----END PGP SIGNATURE-----

--bP66AjoczJsd9IuK8IUEVwTljq9uLfPb6--

--===============9068094149968586444==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

--===============9068094149968586444==--
