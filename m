From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 1/6] common/image-fdt.c: Make boot_get_fdt()
 perform a check for Android images
Date: Wed, 13 Jan 2016 10:21:57 -0500
Message-ID: <20160113152157.GY3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-2-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0978694393=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1452675200-15941-2-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>, Rob Herring <robh@kernel.org>, Paul Kocialkowski <contact@paulk.fr>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, Max Krummenacher <max.krummenacher@toradex.com>, Joe Hershberger <joe.hershberger@ni.com>
List-Id: linux-rockchip.vger.kernel.org


--===============0978694393==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xO5xrem3WM9Yl24j"
Content-Disposition: inline


--xO5xrem3WM9Yl24j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:15PM +0800, Jeffy Chen wrote:

> Android images don't have a fdt.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Acked-by: Simon Glass <sjg@chromium.org>
> ---
>=20
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>=20
>  common/image-fdt.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/common/image-fdt.c b/common/image-fdt.c
> index 5e4e5bd..41aaa0d 100644
> --- a/common/image-fdt.c
> +++ b/common/image-fdt.c
> @@ -379,6 +379,10 @@ int boot_get_fdt(int flag, int argc, char * const ar=
gv[], uint8_t arch,
>  				       (long)fdt_addr);
>  			}
>  			break;
> +#ifdef CONFIG_ANDROID_BOOT_IMAGE
> +		case IMAGE_FORMAT_ANDROID:
> +			goto no_fdt;
> +#endif
>  		default:
>  			puts("ERROR: Did not find a cmdline Flattened Device Tree\n");
>  			goto no_fdt;

Hang on, this doesn't seem right.  Rob or Paul can you comment more
here?  I know we've gone through some issues in the past with respect to
booting Android and FDT.  Thanks!

--=20
Tom

--xO5xrem3WM9Yl24j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlmuVAAoJEIRElH1W1v7Ny3sP/2Fqxou4TFjK6gsFr8GW3v0m
189B7muzujztGEfDnsyrz/v5hVU2yk6/N1WOFCIN0HRdqnzufz7CpWUTpQkS6jI2
JI3z07RwInvpPoMqXHhPA/+4UPt/Jh1jFIgmiJEKvUFbRuDZg8z6BJ6X6pVYePPD
QJ1msmiWEiUkdB5wYFtqIPc6BzjF6ztHNA8sr7xH6NmfDILh7wG09o3hfHFKwbMc
CkPY+d1BkU9fbSHdnvCfhuZeCiDGFjTWkQIRvxsXYAYBoziPr4Bx7kLGGPSNgDjg
ifi9QpFLsWhMFX1w5Vr0Wb4956SYvbJVQzQc5Z73z8DCBkVdA7q0hRG6ieqTyG5v
35eXfaP3UiZfIUjIWT1T31goheTAtkma5hMsrxBExVm+ktufnfdlnthCAhtRByiu
htYpsWDIgWWeHYtZIUC88vFHUbDqeXPU1XQ07uAZGJ9aB3zcjMRVkZYR6g40Sgtj
NEFJiuO2fMmqKYbmFLFb3OQ7ou+nXF0S7SIwUNipddQxDJoVLEOllPupIEuHIlZ8
sHn76TN0N8J6LXc7lrW9jbIN8OiZJluZPIJqdBKiID/syFHZBLv0k4W440M7wfmu
ARbVUpsquQ7+6HosaBLFG5ZUOoL/DBzvXV6vU8IiMLrbrHCeE5ud0b++f6SxOCu/
/3rRuK7JoZct9HsmUpwI
=WVq6
-----END PGP SIGNATURE-----

--xO5xrem3WM9Yl24j--

--===============0978694393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============0978694393==--
