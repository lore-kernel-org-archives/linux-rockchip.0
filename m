From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 3/7] drm/rockchip: gem: add mutex lock for drm mm
Date: Tue, 7 Feb 2017 13:19:09 +0100
Message-ID: <20170207121909.GA18315@ulmo.ba.sec>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
 <1486456542-18675-4-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1240555821=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1486456542-18675-4-git-send-email-mark.yao@rock-chips.com>
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1240555821==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 07, 2017 at 04:35:38PM +0800, Mark Yao wrote:
> drm_mm_insert_node_generic and drm_mm_remove_node may access same
> resource with list ops, it's not threads safe, so protect this context
> with mutex lock.
>=20
> Fix bug:
> [49451.856244] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [49451.856350] BUG: KASAN: wild-memory-access on address dead000000000108
> [49451.856379] Write of size 8 by task Binder:218_4/683
> [49451.856417] CPU: 2 PID: 683 Comm: Binder:218_4 Not tainted 4.4.36 #62
> [49451.856443] Hardware name: Rockchip RK3399 Excavator Board edp (Androi=
d) (DT)
> [49451.856469] Call trace:
> [49451.856519] [<ffffff900808a9d0>] dump_backtrace+0x0/0x230
> [49451.856556] [<ffffff900808ac14>] show_stack+0x14/0x1c
> [49451.856592] [<ffffff90084a4de0>] dump_stack+0xa0/0xc8
> [49451.856633] [<ffffff900821b700>] kasan_report+0x110/0x4dc
> [49451.856670] [<ffffff900821aa84>] __asan_store8+0x24/0x7c
> [49451.856715] [<ffffff90086158c4>] drm_mm_insert_node_generic+0x2dc/0x464
> [49451.856760] [<ffffff90086406a8>] rockchip_gem_iommu_map+0x60/0x158
> [49451.856794] [<ffffff9008640bb4>] rockchip_gem_create_object+0x278/0x488
> [49451.856827] [<ffffff9008641020>] rockchip_gem_create_with_handle+0x24/=
0x10c
> [49451.856862] [<ffffff9008641364>] rockchip_gem_create_ioctl+0x3c/0x50
> [49451.856896] [<ffffff900860aee4>] drm_ioctl+0x354/0x52c
> [49451.856939] [<ffffff900823d948>] do_vfs_ioctl+0x670/0x78c
> [49451.856976] [<ffffff900823dac4>] SyS_ioctl+0x60/0x88
> [49451.857009] [<ffffff9008082ef0>] el0_svc_naked+0x24/0x28
>=20
> Change-Id: I2ea377aa9ca24f70c59e2d86f2a6ad5ccb9c0891

This is meaningless in an upstream tree. Please remove.

Thierry

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAliZuzoACgkQ3SOs138+
s6FH3A/6AwgZdl4NnAX/xBmWmzAiHXyJW/ATNJm2yBvmgaaM5JjssQAeg8nJ00LB
WGQOroSDrgHuPRonXQX9WQY2z4eSquPIj9qLhF+EB7CzgUQ7S4dSvn8sHxyTxT74
b1S4vT1gC2mSj3XONXN4MZBEolr5AYHshxDJsKHnPQuan3LNkLBK97vycH2CtCna
aB4XdUQWCbC0qxxvmnOuZh34yf8BUfebdkQqEnD8QlB6SFuZmK3+Zq23ZciKRgme
qG28kWSKq14rySL+RnPsTitAKLSfVwGw22CA6CaSEHa0ieR6MpjTMdEKt9zz2Ejb
HpNf+3iLdyMEgDwftat6ys1HXD1qQX6BHQN1N7tXLZ49Wz1nfqcDZJIwANFR94j+
ocSFuPutMDwQ9cwmQe61awjr86OQuA8Mdso6faIx6AQTgUhs2ZmtYH2p4F35u6x9
ZmbIeGmWttqbiiXoUYuCXtgecAhgN7y3lUZPX+6gwO+jYyfXMriV+hCDv++9v230
WBi396AEp4PToZUfO2L9iz3Lp+wjakMjGpqjfsz7VZ9GkKkHJBjlzztxyDUZzyBq
A9jWogXMl6qS7ZYyZd9a06gEAeunz9ttbg9pULZCQi94VqZWuQxE6buF2BsXyj9e
dTnzyNI5Y2sWHX1ZYkmc70gQwIBZHhB6JPgsRfuVf36lRStAc+A=
=1y6h
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--

--===============1240555821==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1240555821==--
