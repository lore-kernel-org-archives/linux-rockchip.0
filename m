From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 06/15] drm/rockchip: vop: limit resolution width to 3840
Date: Mon, 6 Jan 2020 21:34:09 +0000
Message-ID: <HE1PR06MB40113EDB12EB739D19AB225FAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204812.5944-1-jonas@kwiboo.se>
 <HE1PR06MB40111E90F5DA4718126E6A92AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <3203294.bEmSZkBOq4@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <3203294.bEmSZkBOq4@diego>
Content-Language: en-US
Content-ID: <C7279E574F34114DB66C0CD97F5F0DB6@eurprd06.prod.outlook.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: =?Windows-1252?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Kishon Vijay Abraham I <kishon@ti.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Zheng Yang <zhengyang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On 2020-01-06 22:18, Heiko St=FCbner wrote:
> Hi Jonas,
>
> Am Montag, 6. Januar 2020, 21:48:25 CET schrieb Jonas Karlman:
>> Using a destination width that is more then 3840 pixels
>> is not supported in scl_vop_cal_scl_fac().
>>
>> Work around this limitation by filtering all modes with
>> a width above 3840 pixels.
> could you try to send the whole series to people? I only get this patch6
> of a series of 15 and that is way confusing not knowing what you want
> to actually achieve.

Very strange, you are the recipient of all patches, and they where delivere=
d to
patchworks at [1] and [2], I also have a copy of this series at [3].

This is part of a series for adding support for more HDMI modes on the RK32=
28/RK3328.
Also preparation for adding bus format negotiation for YUV420 and 10-bit ou=
tput mode,
early bus format work is located at [4].

[1] https://patchwork.kernel.org/cover/11320061/
[2] https://patchwork.freedesktop.org/series/71675/
[3] https://github.com/Kwiboo/linux-rockchip/commits/next-20200106-inno-hdm=
i-phy
[4] https://github.com/Kwiboo/linux-rockchip/commits/next-20200106-bus-form=
at

>
> Hence I can also just point to rk3229, rk3328, rk3368 and rk3399 that
> report a max output of 4096x2160 , which would be larger than that
> 3840 value?

Currently the scaling code in rockchip drm driver is limiting the use of la=
rge framebuffers at [5].
This scaling limitation made it impossible for me to use any 4096x mode tha=
t my TV supports.

if (dst_w > 3840) {
=A0=A0=A0 DRM_DEV_ERROR(vop->dev, "Maximum dst width (3840) exceeded\n");

[5] https://github.com/torvalds/linux/blob/master/drivers/gpu/drm/rockchip/=
rockchip_drm_vop.c#L329-L332

Regards,
Jonas

>
>
> Heiko
>
>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop.c
>> index d04b3492bdac..f181897cbfad 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> @@ -1036,6 +1036,15 @@ static void vop_crtc_disable_vblank(struct drm_cr=
tc *crtc)
>>  	spin_unlock_irqrestore(&vop->irq_lock, flags);
>>  }
>>  =

>> +enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
>> +					 const struct drm_display_mode *mode)
>> +{
>> +	if (mode->hdisplay > 3840)
>> +		return MODE_BAD_HVALUE;
>> +
>> +	return MODE_OK;
>> +}
>> +
>>  static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>>  				const struct drm_display_mode *mode,
>>  				struct drm_display_mode *adjusted_mode)
>> @@ -1377,6 +1386,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc =
*crtc,
>>  }
>>  =

>>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs =3D {
>> +	.mode_valid =3D vop_crtc_mode_valid,
>>  	.mode_fixup =3D vop_crtc_mode_fixup,
>>  	.atomic_check =3D vop_crtc_atomic_check,
>>  	.atomic_begin =3D vop_crtc_atomic_begin,
>>
