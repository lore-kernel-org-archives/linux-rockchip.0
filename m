From: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: Linux next-20190807: arm64: build failed -
 phy-rockchip-inno-hdmi.c:1046:26: error: anonymous bit-field has negative
 width (-1)
Date: Thu, 8 Aug 2019 11:01:08 +1000
Message-ID: <20190808110108.2db1b128@canb.auug.org.au>
References: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/PnbChS=XA/gL0CFTVs6ccQo";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, Linux-Next Mailing List <linux-next@vger.kernel.org>, kishon@ti.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, lkft-triage@lists.linaro.org
List-Id: linux-rockchip.vger.kernel.org

--Sig_/PnbChS=XA/gL0CFTVs6ccQo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Naresh,

On Wed, 7 Aug 2019 16:48:15 +0530 Naresh Kamboju <naresh.kamboju@linaro.org=
> wrote:
>
> Linux next 20190807 arm64 default config build failed due to below error.
>=20
> /drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error:
> anonymous bit-field has negative width (-1)
>                 inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7=
_0(v));
>                                        ^
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note:
> expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
> #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
>                                                         ^
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded
> from macro 'UPDATE'
> #define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
>                                                 ^
> ../include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
>         (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
>          ^
> ../include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_C=
HECK'
>         ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
>                         ^
> ../include/linux/build_bug.h:16:47: note: expanded from macro
> 'BUILD_BUG_ON_ZERO'
> #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
>=20
> Config link,
> https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/cl=
ang-8/kernel.config
>=20
> Build link,
> https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/cl=
ang-8/build.log

I think the patch that caused this has been removed form linux-next for
today (it had other problems as well).

--=20
Cheers,
Stephen Rothwell

--Sig_/PnbChS=XA/gL0CFTVs6ccQo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1LdFQACgkQAVBC80lX
0GzDtgf/aEnfScThkUKIL3HX/GJiKdIkq1RrUzMyRCDBGdYLXLEqa5AkuWd6x0qb
9MkNVLdg6ZatO2+T1JMstagNLw6X8ts3zQczqd/10e1mBlB2cw2jdO7jbLRmEO0m
fz2igYmPkgFEN2ErYfwxdx0emqHpLkt0unV6TfSGNIt83isODNkH0YKS7LrSK+PK
FDGj+eCgSFt8xjQ4Cpz+4XMngun6OMn8nRVCGj0kcRlDBvtSavxzQCFmI9HzF7Yn
fHQ85Zg7m17qilNAJ+8HgjA5t5u18471SQxsgPujsuP1iWvRgdA5hzFujmFLpLDf
Jxlds7woEgx7Q41L5gg56wTFwJs8Sw==
=u6RM
-----END PGP SIGNATURE-----

--Sig_/PnbChS=XA/gL0CFTVs6ccQo--
