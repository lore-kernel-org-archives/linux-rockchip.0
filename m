From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH 1/2] drm/rockchip: Use CRTC vblank event interface
Date: Mon, 16 Nov 2015 16:13:24 +0100
Message-ID: <20151116151323.GA8083@ulmo.nvidia.com>
References: <1447678222-6858-1-git-send-email-daniels@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0420315779=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1447678222-6858-1-git-send-email-daniels@collabora.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Stone <daniels@collabora.com>
Cc: linux-rockchip@lists.infradead.org, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

--===============0420315779==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 16, 2015 at 12:50:21PM +0000, Daniel Stone wrote:
> Passing -1 as the pipe for vblank events now triggers a WARN_ON, but had
> previously made multi-screen unusable anyway. Pass the correct pipe to
> the event-send function, and use the new API to make this a bit easier
> for us.
>=20
> Fixes WARN present since cc1ef118fc for every pageflip event sent:
> [  209.549969] ------------[ cut here ]------------
> [  209.554592] WARNING: CPU: 3 PID: 238 at drivers/gpu/drm/drm_irq.c:924 =
drm_vblank_count_and_time+0x80/0x88 [drm]()
> [  209.564832] Modules linked in: [...]
> [  209.612401] CPU: 3 PID: 238 Comm: irq/41-ff940000 Tainted: G        W =
      4.3.0-rc6+ #71
> [  209.620647] Hardware name: Rockchip (Device Tree)
> [  209.625348] [<c001bb80>] (unwind_backtrace) from [<c001615c>] (show_st=
ack+0x20/0x24)
> [  209.633079] [<c001615c>] (show_stack) from [<c02b2c50>] (dump_stack+0x=
8c/0x9c)
> [  209.640289] [<c02b2c50>] (dump_stack) from [<c0052e88>] (warn_slowpath=
_common+0x94/0xc4)
> [  209.648364] [<c0052e88>] (warn_slowpath_common) from [<c0052f74>] (war=
n_slowpath_null+0x2c/0x34)
> [  209.657139] [<c0052f74>] (warn_slowpath_null) from [<bf17dc30>] (drm_v=
blank_count_and_time+0x80/0x88 [drm])
> [  209.666875] [<bf17dc30>] (drm_vblank_count_and_time [drm]) from [<bf17=
e484>] (drm_send_vblank_event+0x74/0x7c [drm])
> [  209.677385] [<bf17e484>] (drm_send_vblank_event [drm]) from [<bf4c1144=
>] (vop_win_state_complete+0x4c/0x70 [rockchip_drm_vop])
> [  209.688757] [<bf4c1144>] (vop_win_state_complete [rockchip_drm_vop]) f=
rom [<bf4c3bdc>] (vop_isr_thread+0x170/0x1d4 [rockchip_drm_vop])
> [  209.700822] [<bf4c3bdc>] (vop_isr_thread [rockchip_drm_vop]) from [<c0=
0ab93c>] (irq_thread_fn+0x2c/0x50)
> [  209.710284] [<c00ab93c>] (irq_thread_fn) from [<c00abcac>] (irq_thread=
+0x13c/0x188)
> [  209.717927] [<c00abcac>] (irq_thread) from [<c00723c8>] (kthread+0xec/=
0x104)
> [  209.724965] [<c00723c8>] (kthread) from [<c0011638>] (ret_from_fork+0x=
14/0x3c)
> [  209.732171] ---[ end trace 0690bc604f5d535d ]---
>=20
> Signed-off-by: Daniel Stone <daniels@collabora.com>
> Cc: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> Cc: Thierry Reding <treding@nvidia.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWSfKQAAoJEN0jrNd/PrOhYFYP/3OwF9Do8vEdtC+hfO/mAZGG
TeM9mgscqWtrstGa6T1skVa0onDmCngHq9FITT9sFbiZlEKIgOWpxY4Lv8ZCZtWE
iKXSY2vRnqGuxCzcOXYSFQ1Y2H6ikWIbCJzr/E+we9A3fG0N5DcaB3iWb9W1uQwV
16eXj52H02Vp/YtCRp5ZxU23q7LPPIKF0rQlPZ9e7IQADMG20YlAtFk1gH0RoYx5
Kbb0EJpa70JXXa2shPxmb7sdfiVBvfpdH02aabxkgLOqdd3NeJNaijoKqRqv7Dcs
goAKQxp8tjW/hHQqp7jWtaJ5KqqguzuwUDx90Ii9XrRg9DgUNiUAm+PhQ1soECWt
/Yn0UXGT4HAEeeAmgt5DuoS31bNOA22OpKj2SyaY8AFvt0Ru/Le5b9/4W6HDwXWe
om7iqszzzEykigZnLixhT7H65Kqr0QnRX+H/+LpnXXncF8dZcVjJXzh/dvp2Zbxy
D2Yg42Pk6OfP8VgGCJEQzVls8Dy1yzQD3vVxTPgX2YID596qVRbyykj61LUxZ+Ph
4VNKed6q1seKiEj03g4hldDUvvOmWeXJfJIuT5y3Au+hzuwjdlXq7W5D12xrhix8
O5cIeObf2k/NjXJOuKNh1lSHIkAYUPhvgB4D84ozU8ncyTS7Z1vUO+YUO9oRYlLh
Fqf3iiuHZoA7akToYOLn
=pYZG
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--

--===============0420315779==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0420315779==--
