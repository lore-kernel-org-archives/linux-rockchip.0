From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Subject: Re: [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
Date: Sun, 6 Oct 2019 09:05:43 +0800
Message-ID: <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3297700627209003986=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
Cc: linux-rockchip@lists.infradead.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-amarula@amarulasolutions.com, gajjar04akash@gmail.com
List-Id: linux-rockchip.vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3297700627209003986==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 2019/7/16 =E4=B8=8B=E5=8D=887:56, Jagan Teki wrote:
> This is next revison of lpddr4 support on rk3399 compared to
> previous set[1]. It has some changes based on the commit orders
> and squashing few patches together and rest is same.
>=20
> Thanks to
> - YouMin Chen
> - Akash Gajjar
> - Kever Yang
> for supporting all the help on this work.
>=20
> Changes for v3:
> - squash set_rate code in one patch
> - tested in Rockpro64 and Rock-PI-4

Great works! Can't wait to try them on both boards!

Would you mind to setup a git repo for this large patchset?
It would be much easier for other guys to test, other than fetching all
the patches and apply them.

Thanks,
Qu

> - order them in proper way
> - rebase on master
> Changes for v2:
> - handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
> - support data_training and set_rate via sdram_rk3399_ops
> - add proper sys_reg_enc macros
> - add new patch to rename variable sdram_params with params
> - fix few commit messages.
>=20
> patch 0001 - 0018: add dram config enc macro
>=20
> patch 0019: configure phy IO in ds odt
>=20
> patch 0020: add LPDDR4 config=20
>=20
> patch 0021 - 0043: lpddr4 data training changes
>=20
> patch 0044 - 0046: syscon pmu support
>=20
> patch 0047: set 50MHz ddr clock
>=20
> patch 0048: set 400MHz ddr clock
>=20
> patch 0049: LPDDR4-400 timings
>=20
> patch 0050: LPDDR4-800 timings
>=20
> patch 0051 - 0052: lpddr4 set rate
>=20
> patch 0053: enable lpddr4 support on Rockpro64
>=20
> patch 0054: enable lpddr4 support on Rock-PI 4
>=20
> patch 0055: add LPDDR-100 timings via dts
>=20
> patch 0056: use LPDDR-100 timings on Rockpro64
>=20
> patch 0057: use LPDDR-100 timings on Rock-PI 4
>=20
> [1] https://patchwork.ozlabs.org/cover/1116734/
>=20
> Any inputs?
> Jagan.
>=20
> Jagan Teki (57):
>   ram: rk3399: Add ddrtype enc macro
>   ram: rk3399: Add channel number encoder macro
>   ram: rk3399: Add row_3_4 enc macro
>   ram: rk3399: Add chipinfo macro
>   ram: rk3399: Add rank enc macro
>   ram: rk3399: Add column enc macro
>   ram: rk3399: Add bk enc macro
>   ram: rk3399: Add dbw enc macro
>   ram: rk3399: Add cs0_rw macro
>   ram: rk3399: Add cs1_rw macro
>   ram: rk3399: Add bw enc macro
>   ram: rk3399: Rename sys_reg with sys_reg2
>   ram: rk3399: Update cs0_row to use sys_reg3
>   ram: rk3399: Update cs1_row to use sys_reg3
>   ram: rk3399: Add cs1_col enc macro
>   ram: rk3399: Add ddr version enc macro
>   ram: rk3399: Add ddrtimingC0
>   ram: rk3399: Add DdrMode
>   ram: rk3399: Configure phy IO in ds odt
>   ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
>   ram: rk3399: Add lpddr4 rank mask for ca training
>   ram: rk3399: Add lpddr4 rank mask for wdql training
>   ram: rk3399: Move mode_sel assignment
>   ram: rk3399: Don't wait for PLL lock in lpddr4
>   ram: rk3399: Avoid two channel ZQ Cal Start at the same time
>   ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
>   ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
>   ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
>   ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
>   ram: rk3399: Map chipselect for lpddr4
>   ram: rk3399: Configure tsel write ca for lpddr4
>   ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
>   ram: rk3399: Add IO settings
>   ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
>   ram: rk3399: Add tsel control clock drive
>   ram: rk3399: Configure soc odt support
>   ram: rk3399: Get lpddr4 tsel_rd_en from io settings
>   ram: rk3399: Update lpddr4 vref based on io settings
>   ram: rk3399: Update lpddr4 mode_sel based on io settings
>   ram: rk3399: Update lpddr4 vref_mode_ac
>   ram: rk3399: Simplify data training first argument
>   ram: rk3399: Handle data training via ops
>   ram: rk3399: Add LPPDR4 mr detection
>   arm: include: rockchip: Add rk3399 pmu file
>   rockchip: rk3399: syscon: Add pmu support
>   rockchip: dts: rk3399: Add u-boot, dm-pre-reloc for pmu
>   clk: rockchip: rk3399: Set 50MHz ddr clock
>   clk: rockchip: rk3399: Set 400MHz ddr clock
>   ram: rk3399: Add LPPDDR4-400 timings inc
>   ram: rk3399: Add LPPDDR4-800 timings inc
>   ram: rk3399: Add set_rate sdram rk3399 ops
>   ram: rk3399: Add lpddr4 set rate support
>   configs: rockpro64: Enable LPDDR4 support
>   configs: rock-pi-4: Enable LPDDR4 support
>   rockchip: dts: rk3399: Add LPDDR4-100 timings
>   rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
>   rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
>=20
>  arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
>  arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++++++
>  arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
>  .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
>  .../include/asm/arch-rockchip/sdram_common.h  |   31 +
>  .../include/asm/arch-rockchip/sdram_rk3399.h  |   29 +-
>  arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
>  configs/rock-pi-4-rk3399_defconfig            |    1 +
>  configs/rockpro64-rk3399_defconfig            |    1 +
>  drivers/clk/rockchip/clk_rk3399.c             |    8 +
>  drivers/ram/rockchip/Kconfig                  |    7 +
>  .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++++++
>  .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++++++
>  drivers/ram/rockchip/sdram_rk3399.c           | 1726 ++++++++++++++---=

>  15 files changed, 6317 insertions(+), 249 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
>  create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
>  create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
>=20


--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFLBAEBCAA1FiEELd9y5aWlW6idqkLhwj2R86El/qgFAl2ZPecXHHF1d2VucnVv
LmJ0cmZzQGdteC5jb20ACgkQwj2R86El/qjVXwf/aTaS4C1huw3OA/3/RMMU9lO2
ir8ufEWHraGd+7dNP3rq5okpzluN8pE+lFdVQGb/QJ2ZhXGyPfta/jBQZOvgI4FS
v+ASQTVmaTQqujYqRA8tAMt0YYsXZKndEAAE4ofDtI2NAEtC8jaDKGbTnxV4a4UD
AsAMAOsDJSvCL2eoQ3/TQXqxIq9mKi00WmcjsjrIII8pgnPmUWlEzcg8E/0Nf2+k
lFHN3gFiBs7a0hInN2lq0821ixwN2tPHu7Sn+VLDcteJIV3anedZqGnjN07fIlBj
004DezhGaM7Yr2bpmVRJ/6SCFnCTWMWvVpmxhW0Tg4xGsA0faQ+kU9Iktaobng==
=GtC+
-----END PGP SIGNATURE-----

--EAeyPowDKJixi4UqNTTb91KnR1Ixr2aGv--

--===============3297700627209003986==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

--===============3297700627209003986==--
