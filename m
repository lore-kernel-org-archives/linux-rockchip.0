From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move
 rockchip to use it
Date: Tue, 22 Dec 2015 17:38:00 +0000
Message-ID: <20151222173800.GU960@e106497-lin.cambridge.arm.com>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <rmk+kernel@arm.linux.org.uk>, Mark Yao <mark.yao@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Nov 20, 2015 at 02:22:03PM +0000, Liviu Dudau wrote:
> Hello,
>=20
> This is v2 of the patchset trying to make drm_of_component_probe() co=
pe with finding
> both local crtc ports and remote encoder ones. Heiko St=C3=BCbner was=
 nice enough to test
> an earlier version that was patched following Russell's suggestions o=
n rk3288, but
> I haven't seen any reports from iMX or Armada users.
>=20
> Changelog:
>  v2: Updated the drm_of_component_probe() comment to explain why the =
reference count
>      is not dropped. Fixed the compare_port() function for rockchip a=
s described by
>      Russell.
>  v1: Original submission. http://lists.freedesktop.org/archives/dri-d=
evel/2015-November/094546.html

Gentle ping, this has now been tested by Rockchip people and fixes the =
earlier version
that had to be reverted in mainline. Can it be included in the -next so=
mewhere?

Many thanks,
Liviu

>=20
> Liviu Dudau (2):
>   drm: Improve drm_of_component_probe() to correctly handle ports and=
 remote ports.
>   drm/rockchip: Convert the probe function to the generic drm_of_comp=
onent_probe()
>=20
>  drivers/gpu/drm/armada/armada_drv.c         |  3 +-
>  drivers/gpu/drm/drm_of.c                    | 19 ++++--
>  drivers/gpu/drm/imx/imx-drm-core.c          |  3 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 98 ++++++-------------=
----------
>  include/drm/drm_of.h                        |  6 +-
>  5 files changed, 40 insertions(+), 89 deletions(-)
>=20
> --=20
> 2.6.2
>=20
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> http://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    =C2=AF\_(=E3=83=84)_/=C2=AF
