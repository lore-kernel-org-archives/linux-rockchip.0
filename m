From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 2/2] rockchip: Add SF distro bootcmd
Date: Tue, 4 Feb 2020 12:00:58 -0500
Message-ID: <20200204170058.GK13379@bill-the-cat>
References: <20200203091924.15385-1-jagan@amarulasolutions.com>
 <20200203091924.15385-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="K7jxEI7rEZN6gxvu"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20200203091924.15385-2-jagan@amarulasolutions.com>
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


--K7jxEI7rEZN6gxvu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 03, 2020 at 02:49:24PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash in Rockchip.
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> Included the SF device at the last of the target devices
> list since all the rest of the devices on the list have
> more possibility to boot the distribution due to the
> size of the SPI flash is concern.
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  include/configs/rockchip-common.h | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip=
-common.h
> index b55e09a9ca..8e7c994266 100644
> --- a/include/configs/rockchip-common.h
> +++ b/include/configs/rockchip-common.h
> @@ -41,11 +41,26 @@
>  	#define BOOT_TARGET_DHCP(func)
>  #endif
> =20
> +#if CONFIG_IS_ENABLED(CMD_SF)
> +	#define BOOT_TARGET_SF(func)	func(SF, sf, na)
> +#else
> +	#define BOOT_TARGET_SF(func)
> +#endif
> +
> +#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) \
> +	"bootcmd_sf=3Dsf probe 0 0 0 && " \
> +		"sf read ${scriptaddr} ${script_offset_f} ${script_size_f} && " \
> +		"source ${scriptaddr}; echo SCRIPT FAILED: continuing...;\0"
> +
> +#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) \
> +	"sf "
> +
>  #define BOOT_TARGET_DEVICES(func) \
>  	BOOT_TARGET_MMC(func) \
>  	BOOT_TARGET_USB(func) \
>  	BOOT_TARGET_PXE(func) \
> -	BOOT_TARGET_DHCP(func)
> +	BOOT_TARGET_DHCP(func) \
> +	BOOT_TARGET_SF(func)
> =20
>  #ifdef CONFIG_ARM64
>  #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"

Something I lamented in another thread is that we need to move things to
include/environment/ so that they can be re-used easily.  Lets start by
putting the "distro boot" SF stuff in to include/environment/distro/sf.h
and #include that here.  That way anything else that really does have
something written to SPI flash in this manner can opt-in without
duplication of the logic.

Thanks!

--=20
Tom

--K7jxEI7rEZN6gxvu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl45o0cACgkQh/n2NdMd
dlIJVA/+LYWNOCrEOXtp6OQbell8TSLP5thzSfglbL5z4HwuWQkAPfJA/UXb6uqB
ZQ2fbYJg0zu8DaCgjeNxh2I5D88szY/igoJopcZjaCeF0G4+CnAddXP2pID5Iasi
NX1sFFq/K8lLZ/Vs4V3jTGNqK+d3IfsIgJKaBGw4RZx5O2apjQ67L2VIb5y0mnGH
+FfjZqljLD2cfR4nUU2vKqu4vwCPW2mFGomX3mgyXHP1ipTxKt5n/gVoFXgge/aY
R39qhjwFvwuTm1VoTdoztPr+YFB825pF5p5QkoinFOtN+nEJySRV0hrqGM65cMKa
9qFwjuHrJIQQQOhdeMPQKsDf3lg2SGCbSQusNttyh4LSKmvNlj3Ygi+Ug8oKaYUu
R1yEzS9kS/weiad/2bo67DQUTrBiVKWj42DmUe1EgoSON1+MljzBNpGJCm/UjnY5
vFE8nBA9pYhDcaqIurpwREfTRVb7N8lntBw1/9wu73zaSj0i7q2MGJAzYokwclRn
tojrA2bqircGqXFotxPkB5hFi5OTqDkvivkZPRxZ/LPzkwlbqlYlaQw/ued7vKY+
Bgl8mQQ9ko+DX3UFFyrrThl30ZZoC4LsLjehcN0nXovgSgGSkVD4jM68vK7urH4k
x0cenRdkjvZxAsrJ2AVQT7SrBIj5f3r7OWIJwD1jSWAVkIx3owU=
=SGbc
-----END PGP SIGNATURE-----

--K7jxEI7rEZN6gxvu--
