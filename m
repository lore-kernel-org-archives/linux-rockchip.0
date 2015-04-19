From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH] drm: rockchip: Turn off VT switching on suspend
Date: Sun, 19 Apr 2015 19:08:23 +0800
Message-ID: <55338CA7.3090404@rock-chips.com>
References: <1427797370-32441-1-git-send-email-wxt@rock-chips.com> <1427797370-32441-2-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1427797370-32441-2-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Daniel Kurtz <djkurtz@chromium.org>, Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

Hi Mark,

Can you apply it into your drm branch if it's indeed uesful for u?

=D4=DA 2015=C4=EA03=D4=C231=C8=D5 18:22, Caesar Wang =D0=B4=B5=C0:
> drm/rockchip already has support for disabling all displays on suspen=
d
> and enabling them on resume.
>
> Disable automatic VT switching on suspend by the pm console tracking
> layer.
>
> Tested on veyron, used `echo mem > sys/power/state`
>    =3D> verified no VT switch
>
> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
>   drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/=
gpu/drm/rockchip/rockchip_drm_fbdev.c
> index a5d889a..eb4e0db 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> @@ -119,6 +119,9 @@ static int rockchip_drm_fbdev_create(struct drm_f=
b_helper *helper,
>   	DRM_DEBUG_KMS("FB [%dx%d]-%d kvaddr=3D%p offset=3D%ld size=3D%d\n"=
,
>   		      fb->width, fb->height, fb->depth, rk_obj->kvaddr,
>   		      offset, size);
> +
> +	fbi->skip_vt_switch =3D true;
> +
>   	return 0;
>  =20
>   err_drm_framebuffer_unref:

--=20
***********************************************************************=
***************
=CD=F5=CF=FE=CC=DA    Caesar Wang
Product R&D Dept.III
=46uzhou Rockchip Electronics Co.Ltd
Addr=A3=BA  NO.18 Building, A District, Fuzhou Software Park,Gulou Dist=
rict,Fuzhou, Fujian,China(Fuzhou Headquarters)
               21F,Malata Building,Kejizhongyi Avenue,Nanshan District,=
Shenzhen  (Shenzhen Office)
Tel=A3=BA+86-591-83991906/07 - 8221
Mobile:+86 15059456742
E-mail : wxt@rock-chips.com
***********************************************************************=
****************
***********************************************************************=
****************
IMPORTANT NOTICE: This email is from Fuzhou Rockchip Electronics Co., L=
td .The contents of this email and any attachments may
contain information that is privileged, confidential and/or exempt from=
 disclosure under applicable law and relevant NDA.
If you are not the intended recipient, you are hereby notified that any=
 disclosure, copying, distribution, or use of the
information is STRICTLY PROHIBITED. Please immediately contact the send=
er as soon as possible and destroy the material
in its entirety in any format. Thank you.
***********************************************************************=
****************
