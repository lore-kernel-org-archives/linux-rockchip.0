From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: remove hardware cursor window
Date: Thu, 02 Jul 2015 15:03:34 +0800
Message-ID: <5594E246.6090500@rock-chips.com>
References: <1435744173-23112-1-git-send-email-mark.yao@rock-chips.com> <1617606.rtBNOYcypX@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1617606.rtBNOYcypX@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, Daniel Kurtz <djkurtz@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, tfiga@chromium.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sandy.huang@rock-chips.com, dkm@rock-chips.com, zwl@rock-chips.com, xw@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 2015=E5=B9=B407=E6=9C=8801=E6=97=A5 19:52, Heiko St=C3=BCbner wrote:
> Hi Mark,
>
> Am Mittwoch, 1. Juli 2015, 17:49:33 schrieb Mark Yao:
>> hardware cursor windows only have some fixed size, and not support
>> width virtual, when move hardware cursor windows outside of left,
>> the display would be wrong, so this window can't for cursor now.
>>
>> And Tag hardware cursor window as a overlay is wrong, will make
>> userspace wrong behaviour.
>>
>> So just remove the hardware cursor window
>>
>> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c |    1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c index 4603412..7373ba1=
 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> @@ -368,7 +368,6 @@ static const struct vop_win_data rk3288_vop_win_=
data[] =3D
>> { { .base =3D 0x40, .phy =3D &win01_data, .type =3D DRM_PLANE_TYPE_O=
VERLAY }, {
>> .base =3D 0x00, .phy =3D &win23_data, .type =3D DRM_PLANE_TYPE_OVERL=
AY }, { .base
>> =3D 0x50, .phy =3D &win23_data, .type =3D DRM_PLANE_TYPE_CURSOR }, -=
	{ .base =3D
>> 0x00, .phy =3D &cursor_data, .type =3D DRM_PLANE_TYPE_OVERLAY }, };
>>
>>   static const struct vop_data rk3288_vop =3D {
> you should probably also remove the
>
> 	static const struct vop_win_phy cursor_data
>
> completely then, as it is now unused?
>
>
> Heiko
>
>
>
OK

--=20
=EF=BC=ADark
