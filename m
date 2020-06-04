From: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: Re: [PATCH v3 1/4] Makefile: Drop to handle rkspi image type
Date: Thu, 4 Jun 2020 16:55:43 +0200
Message-ID: <56A28F79-EB4C-4091-A72D-F4CDF3B0F60F@theobroma-systems.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
 <20200604145141.356702-2-jagan@amarulasolutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200604145141.356702-2-jagan@amarulasolutions.com>
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
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, =?utf-8?Q?Christoph_M=C3=BCllner?= <christoph.muellner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org



> On 04.06.2020, at 16:51, Jagan Teki <jagan@amarulasolutions.com> =
wrote:
>=20
> On rockchip platforms, SPI boot image creation is not
> straightforward like MMC boot image creation where former
> requires to specify tpl, spl in multimage format in mkimage,
> and later simply do a concatenate mkimaged-tpl with spl.
>=20
> On this note, let drop rkspi image type creation via kbuild
> and let inform via rockchip.rst
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> Changes for v3:
> - none
>=20
> Makefile | 11 ++---------
> 1 file changed, 2 insertions(+), 9 deletions(-)
>=20
> diff --git a/Makefile b/Makefile
> index 3851dd9fa0..db3b6b9991 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1438,22 +1438,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) =
$(SPL_PAYLOAD) FORCE
>=20
> ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
>=20
> -# rockchip image type
> -ifeq ($(CONFIG_SPL_SPI_LOAD),y)
> -ROCKCHIP_IMG_TYPE :=3D rkspi
> -else
> -ROCKCHIP_IMG_TYPE :=3D rksd
> -endif

This should not be either-or, but rather allow the creation of both a =
SPI and SD/eMMC image
for a platform, if so desired =E2=80=94 e.g. the RK3399-Q7 supports both =
SPI and eMMC boot and it
is a user-choice which location will be used for the bootloader.

In other words: make this a =E2=80=9Ccheckbox=E2=80=9D option in Kconfig =
and output a rkspi, a rksd or both
images depending on what is selected.

Thanks,
Philipp.

> -
> # TPL + SPL
> ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
> -MKIMAGEFLAGS_u-boot-tpl-rockchip.bin =3D -n $(CONFIG_SYS_SOC) -T =
$(ROCKCHIP_IMG_TYPE)
> +MKIMAGEFLAGS_u-boot-tpl-rockchip.bin =3D -n $(CONFIG_SYS_SOC) -T rksd
> tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
> 	$(call if_changed,mkimage)
> idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
> 	$(call if_changed,cat)
> else
> -MKIMAGEFLAGS_idbloader.img =3D -n $(CONFIG_SYS_SOC) -T =
$(ROCKCHIP_IMG_TYPE)
> +MKIMAGEFLAGS_idbloader.img =3D -n $(CONFIG_SYS_SOC) -T rksd
> idbloader.img: spl/u-boot-spl.bin FORCE
> 	$(call if_changed,mkimage)
> endif
> --=20
> 2.25.1
>=20
