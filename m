From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH 1/2] drm/rockchip: Don't build rockchip_drm_vop as
 modules
Date: Mon, 25 Jan 2016 11:54:07 +0100
Message-ID: <1453719247.30130.22.camel@collabora.co.uk>
References: <1452673328-29188-1-git-send-email-mark.yao@rock-chips.com>
	 <1452673328-29188-2-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452673328-29188-2-git-send-email-mark.yao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2016-01-13 at 16:22 +0800, Mark Yao wrote:
> rockchip_drm_vop's module init had moved to rockchip_vop_reg.c
> so no need to build rockchip_drm_vop.ko

Looks like this didn't make it for the Linux 4.5 merge window, which
unfortunately means in 4.5-rc1 DRM on rockchip is broken :/

> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> ---
> =C2=A0drivers/gpu/drm/rockchip/Makefile |=C2=A0=C2=A0=C2=A0=C2=A05 ++=
---
> =C2=A01 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/Makefile
> b/drivers/gpu/drm/rockchip/Makefile
> index a9d380f..9e6e992 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -3,9 +3,8 @@
> =C2=A0# Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and hi=
gher.
> =C2=A0
> =C2=A0rockchipdrm-y :=3D rockchip_drm_drv.o rockchip_drm_fb.o
> rockchip_drm_fbdev.o \
> -		rockchip_drm_gem.o
> +		rockchip_drm_gem.o rockchip_drm_vop.o
> =C2=A0
> =C2=A0obj-$(CONFIG_ROCKCHIP_DW_HDMI) +=3D dw_hdmi-rockchip.o
> =C2=A0
> -obj-$(CONFIG_DRM_ROCKCHIP) +=3D rockchipdrm.o rockchip_drm_vop.o \
> -				rockchip_vop_reg.o
> +obj-$(CONFIG_DRM_ROCKCHIP) +=3D rockchipdrm.o rockchip_vop_reg.o

--=20
Sjoerd Simons
Collabora Ltd.
