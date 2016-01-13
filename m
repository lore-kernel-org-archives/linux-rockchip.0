From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 5/6] rockchip: kylin: Enable boot with
 android boot image
Date: Wed, 13 Jan 2016 10:28:11 -0500
Message-ID: <20160113152811.GC3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1079434759=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1079434759==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gvfmMvdBxOmac5ck"
Content-Disposition: inline


--gvfmMvdBxOmac5ck
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:

> The android kernel is using appended dtb by default, and store
> ramdisk right after kernel & dtb.
> So we needs to relocate ramdisk, and use atags to pass params.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Acked-by: Simon Glass <sjg@chromium.org>
> ---
>=20
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>=20
>  include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk303=
6.h
> index b750b26..49997ec 100644
> --- a/include/configs/kylin_rk3036.h
> +++ b/include/configs/kylin_rk3036.h
> @@ -35,6 +35,29 @@
>  #undef CONFIG_EXTRA_ENV_SETTINGS
>  #define CONFIG_EXTRA_ENV_SETTINGS \
>  	"partitions=3D" PARTS_DEFAULT \
> +	"mmcdev=3D0\0" \
> +	"mmcpart=3D5\0" \
> +	"loadaddr=3D" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
> +
> +#define CONFIG_ANDROID_BOOT_IMAGE
> +#define CONFIG_SYS_BOOT_RAMDISK_HIGH

This should already be set.

> +#define CONFIG_SYS_HUSH_PARSER
> +
> +#undef CONFIG_BOOTCOMMAND
> +#define CONFIG_BOOTCOMMAND \
> +	"mmc dev ${mmcdev}; if mmc rescan; then " \
> +		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
> +		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
> +		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
> +		"bootm start ${loadaddr}; bootm ramdisk;" \
> +		"bootm prep; bootm go;" \
> +	"fi;" \
> +
> +/* Enable atags */
> +#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
> +#define CONFIG_INITRD_TAG
> +#define CONFIG_SETUP_MEMORY_TAGS
> +#define CONFIG_CMDLINE_TAG

But I'm confused as to what exactly is going on here.  Appended dtb is
not the same as ATAGS.  And you shouldn't need to split up bootm like
that.  Can you please explain a bit more?  Thanks!

--=20
Tom

--gvfmMvdBxOmac5ck
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlm0KAAoJEIRElH1W1v7NSZkP/1YwnjYi75A7w2OsiyF/7L1m
x8i0OPaTb1cPc7f8+YJxBCwwlxpSiaJtoNh0ok2JHaVernjOkOS6pWbfEwLMJj32
uzmh2vwptY/hm2sWAzqnAO4BLcb4qwev1oCff0IyxUhi0gV7eh3dYEguxQeoMOY3
A/QvoVyU49+d2UtuY8NYxbdV5Alh6NKD8uXAH4dQRpL7YayQS219FcSpXCaqaSUV
xN91fQr+mIFmpSmv430XwW7W4QkWFhAqOQkma8R511HjbXi1ku98OiE+biXYujy1
u19rkDfhNAEk69n4TPZ9nwOoSZkFKwhP5YC07pEFH3+BIlXe/t07rC70yD7589zz
NW8uTQZM7f/bAgMnCF2dkjJC8Aanv1CBisFQPYtbaWyazxi+ZCvwpzJpjgZdXmlm
b1xaIUCrusId4PrqhByumRhIqc102AFFP0GbGwpMGOFo1MtmrxvJPvob4+sz1vpM
fKvsPFAHQivsVeClhCifVaLxHzEBlZBeWLDukalnL1plxaov88QoHLjviVH5MBu+
ZF46hxwrl9ZBY4Y9DUAul7jky09eYFZipJLPP7hKJWoXSMRVA+JUfEKQzphZ8bf+
PLVtw/EU5UKN/jGy0oH/zW7XyCXIAfIusFqfbQniQqhp7ddK9rHhDPcJIkfpuoBo
PAdb2XBge67ZVlXgfe9Y
=bhu/
-----END PGP SIGNATURE-----

--gvfmMvdBxOmac5ck--

--===============1079434759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1079434759==--
