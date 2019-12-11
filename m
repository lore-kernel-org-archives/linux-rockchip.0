From: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
Date: Wed, 11 Dec 2019 14:40:19 +0100
Message-ID: <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191211132623.430-2-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



> On 11.12.2019, at 14:26, Jagan Teki <jagan@amarulasolutions.com> =
wrote:
>=20
> The maximum transfer length (in a single transaction) for the Rockchip
> SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
> frames and is encoded as (num_frames - 1) in CTRLR1.
>=20
> So the 0x10000 is offset value for 64K but the actual size value would
> be 'minus 1' from 0x10000.

NAK. Please see 2 code lines below your change to see that the =E2=80=9Cmi=
nus 1=E2=80=9D
is applied there=E2=80=A6 so a todo of 0x10000 will write 0xffff to =
regs->ctrlr1.

The problem must be somewhere else and this patch will only mask the
underlying issue.

>=20
> With the existing code of 0x10000 transfer length leads to read
> failure when we try to read the flash with > 0x10000 size like,
>=20
> 1. sf read failure when with > 0x10000
>=20
> 2. Boot from SPI flash failed during spi_flash_read call in
>   common/spl/spl_spi.c
>=20
> Observed and Tested in
> - Rockpro64 with Gigadevice flash
> - ROC-RK3399-PC with Winbond flash
>=20
> This reverts commit e647decdd93c7408741329432f26758fbec04c7a.
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> drivers/spi/rk_spi.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/spi/rk_spi.c b/drivers/spi/rk_spi.c
> index c04535ac44..d9a310ce80 100644
> --- a/drivers/spi/rk_spi.c
> +++ b/drivers/spi/rk_spi.c
> @@ -451,7 +451,7 @@ static int rockchip_spi_xfer(struct udevice *dev, =
unsigned int bitlen,
>=20
> 	/* This is the original 8bit reader/writer code */
> 	while (len > 0) {
> -		int todo =3D min(len, 0x10000);
> +		int todo =3D min(len, 0xffff);
>=20
> 		rkspi_enable_chip(regs, false);
> 		writel(todo - 1, &regs->ctrlr1);
> --=20
> 2.18.0.321.gffc6fa0e3
>=20
