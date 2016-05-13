From: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 0/5] support rockchip dwc3 driver
Date: Fri, 13 May 2016 12:37:11 +0300
Message-ID: <87wpmyqoxk.fsf@linux.intel.com>
References: <1462794377-6528-1-git-send-email-william.wu@rock-chips.com> <1463131501-22551-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1463131501-22551-1-git-send-email-william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org> writes:
> This series add support for rockchip dwc3 driver,
> and add additional optional properties for specific
> platforms (e.g., rockchip platform).
>
> William Wu (5):
>   usb: dwc3: of-simple: add compatible for rockchip
>   usb: dwc3: add dis_u2_freeclk_exists_quirk
>   usb: dwc3: add phyif_utmi_quirk
>   usb: dwc3: add dis_del_phy_power_chg_quirk
>   usb: dwc3: rockchip: add devicetree bindings documentation
>
>  Documentation/devicetree/bindings/usb/dwc3.txt     |  9 +++++
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      | 45 ++++++++++++++++=
++++++
>  drivers/usb/dwc3/core.c                            | 39 ++++++++++++++++=
++-
>  drivers/usb/dwc3/core.h                            | 20 ++++++++++
>  drivers/usb/dwc3/dwc3-of-simple.c                  |  1 +
>  drivers/usb/dwc3/platform_data.h                   |  4 ++
>  6 files changed, 117 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.t=
xt

I didn't get patch 5/5 :-s

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXNaBHAAoJEIaOsuA1yqREon0P+wQrNwm/Zg5mmZD2NUe3iX6+
YhdTGtDcJfpYTwlaQIgqXXFjYKrOkfcyVp2+uApYRhIn3U9FuV84iMXZH5mweKF0
nDt+Y5hXbYGEcOb4vE+AidPSRw8xZS10sZ/ycsuGqE+hCiTjn0bLbMaScZNh835l
ZIpHVJ9spjr9UjNAcNBp5ljY6+dxIYzGuqEtXnh/uKK/vi7blHxLvjz8sqQIsjoI
1Wq4ft5AD8+gP1cxNGTlP99I20znBPC08y+hrCn4YUK5LPSkAt43vpOvbfTB4/4h
7H3iMoLcLJvs95udhqWeBmWeqC5m+9CyewkIj2kLjD+1xwDJpKmkayEpGXy18Opd
9Blx0hiGz3NKRHz4Md+Cx0YorVyAtmigvG6eog+6by9gxLdn/07Efckl/k3u3ixb
KqAJckj89wlqugwzcIkqlovmX2UH/4GeOr3gTN+KxrFqg89fZjvUfq7Xr60fX1/q
XP6ijT14r5RZT3Qy5fmyflpISV7yW8Gk0QOxpzDq0TQi9ErZ95ip5gUlOILQq+Tg
Z2yBa279JdZ3d4NRu1v+7xFUetTRBNbV7mmCCIT9fBMxBenergxa8cYhJYVIVWrX
TglyCezeqezwauZwcO+5GQnuPe7iDL+VIEu5/+nhnzxuTU1+kiBncdMGnDAS6uXy
A+TEa7HJwXTub5oHlVTW
=esBu
-----END PGP SIGNATURE-----
--=-=-=--
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
