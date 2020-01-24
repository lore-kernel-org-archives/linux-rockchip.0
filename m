From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Fri, 24 Jan 2020 10:27:35 -0500
Message-ID: <20200124152735.GR26536@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Uc2nn8srCdMFAHlk"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20200123162845.10651-5-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Anatolij Gustschin <agust@denx.de>
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


--Uc2nn8srCdMFAHlk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:

> Enable config options and console setting to respective
> rk3399 board for HDMI output.
>=20
> Boards supported and tested on this patch are:
> - NanoPc T4
> - NanoPi M4
> - NanoPi Neo4
> - ROC-RK3399-PC
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
>  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
>  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
>  configs/roc-pc-rk3399_defconfig      | 6 ++++++
>  include/configs/evb_rk3399.h         | 5 +++++
>  5 files changed, 29 insertions(+)
>=20
> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk339=
9_defconfig
> index bd6d60ff6c..17e8a18d31 100644
> --- a/configs/nanopc-t4-rk3399_defconfig
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk339=
9_defconfig
> index 74ede13c23..b73b2fdc27 100644
> --- a/configs/nanopi-m4-rk3399_defconfig
> +++ b/configs/nanopi-m4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-r=
k3399_defconfig
> index a44124aac0..2ecb50967b 100644
> --- a/configs/nanopi-neo4-rk3399_defconfig
> +++ b/configs/nanopi-neo4-rk3399_defconfig
> @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defc=
onfig
> index 3a051d9b0c..a9f99f992d 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
>  CONFIG_USB_ETHER_SMSC95XX=3Dy
>  CONFIG_SPL_TINY_MEMSET=3Dy
>  CONFIG_ERRNO_STR=3Dy
> +CONFIG_DM_VIDEO=3Dy
> +CONFIG_VIDEO_BPP16=3Dy
> +CONFIG_VIDEO_BPP32=3Dy
> +CONFIG_DISPLAY=3Dy
> +CONFIG_VIDEO_ROCKCHIP=3Dy
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> index c0b0358893..09eb361655 100644
> --- a/include/configs/evb_rk3399.h
> +++ b/include/configs/evb_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __EVB_RK3399_H
>  #define __EVB_RK3399_H
> =20
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=3Dserial,cros-ec-keyb\0" \
> +		"stdout=3Dserial,vidconsole\0" \
> +		"stderr=3Dserial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
> =20
>  #if defined(CONFIG_ENV_IS_IN_MMC)

This seems like another commit (along with the question I saw about
i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
so that we default to enabling everything still but let boards opt out
rather than forcing everyone to opt-in as it seems like there's a lot of
cases where people need to opt-in and didn't know.

--=20
Tom

--Uc2nn8srCdMFAHlk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4rDOQACgkQh/n2NdMd
dlIMsw//Siyk8dgBJqO6PiD3hE1PRyWVMcCzfwmhths5+0v1V/PVbwNhrFfXdBkA
r4NKvMI1AvM+LzpEBrn8djgxEaVHd0mc1INJ1lFDNvc6/fU3qgiOXYE7WKm2If02
4n84lqqk7o1vE3cw1UikooTOj4uOkrW0m7lSvb8mUbBaq50awDWfmdGZbEk5P0g8
jMIOpVBkK4pHHfr9uP+uAilmqeQcZG8rf1lTXl89eBDn2LuCR6Fc/JVb+fW11zoY
lYgJdhDonDM2pIPI7QJdP9Hr+u6E5nnQ95TAbUb7g0OPTvlT7CE+gTdhsG0rTmSk
eQTiLRz8zPQlWe+Swm5JIhAJaimS3hoXTNfM0zh4kt7MmWVs3u8/uxDn7s/m0pcG
THKyK1SWi+VlmUV1TB7ZIyL8/eWD6925H8dt+joKY2Au1l71JH44G2AUDSvotr0U
mv6nfL8LRO+ukzE3BGucDo5o9WKnqpANpoXplwcL8Ak4UTZbDOdTnz3EwhPcLTtz
GJQEMqIV2yoEEsasdcvSMnP7FEtZgy4xhsDwasEadBa8m1tIGeG/UcknTEoSLKEV
ezlouc1q4FllnD507PkuwpEs2ilI1/NCBD70mpxV0IeUrDa4BeqPiq8ZPqJUv0ev
er68P7cEoVr5d053nyIVM7SK4pR380h1pitLcA8Ac6Dv0O6u5ik=
=4o2C
-----END PGP SIGNATURE-----

--Uc2nn8srCdMFAHlk--
