From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v3 2/5] usb: dwc3: add dis_u2_freeclk_exists_quirk
Date: Fri, 27 May 2016 15:54:14 +0300
Message-ID: <87eg8npsp5.fsf@linux.intel.com>
References: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com> <1464348488-20760-3-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464348488-20760-3-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

William Wu <william.wu@rock-chips.com> writes:
> Add a quirk to clear the GUSB2PHYCFG.U2_FREECLK_EXISTS bit,
> which specifies whether the USB2.0 PHY provides a free-running
> PHY clock, which is active when the clock control input is active.
>
> Signed-off-by: William Wu <william.wu@rock-chips.com>

can you rebase on top of my testing/next? We're dropping pdata support.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXSEN2AAoJEIaOsuA1yqREWF8P/1F15YZ61dfk2hVJR3lAGB6a
cMPi12yQmjqJm1WLVpZbG0xlbzTSfGbEIiBfCTzAJoR0NqV26bFSmgx6Mbb1/Zb7
j5v6aEhCsxHnaGp0m8W7psoOE0Q8NZGdf3W1FqhZ8YOTSaclXFvJjut9IP3ywNca
zW58CFphlB9iVOdkw6R0F2MYmvvvfB0UOGs6KoWLXs4XqmxNBQw04q89EyDQYZA6
HWEgomqIffoC9hR82l1wqTNS1/IPJ5Q2LlSX4NpA4ianjFMUVOOIel9NJ/D2ERoY
3nSS2I+Pvm/Lkbtidf7M+JooxsWdDdbX4CXG1nWaB3mxnB1tnJWQooJZwmYTGjyp
tjeyE69Q9L/0JvVnLjKiruys5OjcIQ9uhdEXmkcEh0LLbIASXBdZ0yFdzEg+HBhP
+BRAyHMiGbDdR8YIWIrzP7+Jhy1cgGcRW2klhY+M187PVMD19IS+/rzkA+pfVxIr
2UMZWmuen42LEwYP5swdbOY1ZMTmGw8ARuWCyqz4I9uczY1SH/T+HGwwu2Y5SMY+
77uofQJN5ValzcN4EBiwBPoBfk0L5FBe786Pp7fAJD4eRN3nVAlNkSaOsdVEBu3g
/ljxO6n2grzbRyGupNt+PsAhmCZlDFxNx+TLnAym2Dways+MVOHI9mFL1c8wlRJw
IyNmh6hlMZWvqhFQkkNg
=Ym0K
-----END PGP SIGNATURE-----
--=-=-=--
