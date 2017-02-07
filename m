From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 6/7] drm/rockchip: Respect page offset in IOMMU mmap
Date: Tue, 7 Feb 2017 13:33:59 +0100
Message-ID: <20170207123359.GB18315@ulmo.ba.sec>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
 <1486456749-19142-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2013002896=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1486456749-19142-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, =?utf-8?B?w5hyamFu?= Eide <orjan.eide@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============2013002896==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4SFOXa2GPu3tIq4H"
Content-Disposition: inline


--4SFOXa2GPu3tIq4H
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 07, 2017 at 04:39:09PM +0800, Mark Yao wrote:
> From: =C3=98rjan Eide <orjan.eide@arm.com>
>=20
> When mapping buffers through the PRIME DMA-buf mmap path we might be
> given an offset which has to be respected. The DRM GEM mmap path already
> takes care of zeroing out the fake mmap offset, so we can just make the
> IOMMU mmap implementation always respect the offset.
>=20
> TEST=3Dgraphics_GLBench

This is useless in an upstream context, please remove.

Thierry

--4SFOXa2GPu3tIq4H
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAliZvrUACgkQ3SOs138+
s6GqJw//alUU9b9vgcIhcS4Rmstd1GCtaftRUyCCokMq4+/+FpZ5/J/eSZVLghbz
RsFCeSawNUp7PmABiDvVCbBUqDWpCyqrhkSsY6mq994nCmyWe3M7Xdi09MK1l8YL
fo9DyjnD7j94O04gjntSsMMh/KsjwdOwgFslr//3VpJ5nG0OQ9jcSBdCzWDV+VaO
hpXZ2OzsUYhCZkpYl4rirxX3C5UExcXZxd0jUnANos1eZ8TCTxJ+hvMn7UuhwdrG
/g3eFxo5Rw/uX29bZOmdSJwTVFYHLy71jxOFVo30fSM1++GjnnFOjz58E9JRrjC9
qj8tTZhKPBg4FSQ1yyJ0Y3oaL3CAOY8tBg+hLXUw+U6Vj6PeYEL59nPo5i4G2rpM
xP88wPR7vPUV7KrZ9nE50KcnwgYP94W6efMPgx/FTcRNNGbu4jgAt1NIn5TM4bEW
H2kGD2dY2dgMFtFV/waCmMCuq0E1AQ0Sbp52Rrp/sjxqKvBtFyYNJ5BtAgB2bnX4
rZ19sGWsPwpJqOT4yOgTm7gYnj0P9P9mas9POalQoCA+eMO5YGXPKIjQBTgrCgvj
OfEooeva6jARD18OOrTr9zNcTiP6YJIFPZ+GLB8uC9lJBAsQGqQgxsTiN83TNw/S
6QlhiyNetEDmIsftxKbKCsSpKxrN0lb847fi084Ch2iq6HE6Qls=
=NjKL
-----END PGP SIGNATURE-----

--4SFOXa2GPu3tIq4H--

--===============2013002896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============2013002896==--
