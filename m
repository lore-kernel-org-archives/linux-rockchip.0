From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: Re: [PATCH] drm/rockchip: vop: Reset yrgb_mst when re-enabling
Date: Mon, 21 Mar 2016 15:55:26 +0100
Message-ID: <CAAObsKBt-+syM+btLdRj64OYBzZNV96a7zpmRyn5nSoTuwQsVg@mail.gmail.com>
References: <1458300147-6472-1-git-send-email-tomeu.vizoso@collabora.com> <56ECA841.40803@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <56ECA841.40803@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark yao <mark.yao@rock-chips.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On 19 March 2016 at 02:15, Mark yao <mark.yao@rock-chips.com> wrote:
> On 2016=E5=B9=B403=E6=9C=8818=E6=97=A5 19:22, Tomeu Vizoso wrote:
>>
>> When the VOP is re-enabled, it will start scanning right away the
>> framebuffers that were configured from the last time, even if those =
have
>> been destroyed already. To prevent the VOP from trying to access fre=
ed
>> memory, reset the registers that hold pointers to framebuffers right
>> after we can write to them, but before the VOP is awaken from standb=
y.
>>
>> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>> Link:
>> http://lkml.kernel.org/g/CAAObsKAv+05ih5U+=3D4kic_NsjGMhfxYheHR8xXXm=
acZs+p5SHw@mail.gmail.com
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> index 5e57f5b2e4b0..0df91c28740b 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
>> @@ -429,6 +429,7 @@ static void vop_dsp_hold_valid_irq_disable(struc=
t vop
>> *vop)
>>   static void vop_enable(struct drm_crtc *crtc)
>>   {
>>         struct vop *vop =3D to_vop(crtc);
>> +       int i;
>>         int ret;
>>         if (vop->is_enabled)
>> @@ -476,6 +477,18 @@ static void vop_enable(struct drm_crtc *crtc)
>>          */
>>         vop->is_enabled =3D true;
>>   +     /*
>> +        * Before turning the VOP completely on, unset the registers
>> +        * containing FB addresses to avoid the HW start scanning ol=
d FBs.
>> +        */
>> +       for (i =3D 0; i < vop->data->win_size; i++) {
>> +               struct vop_win *vop_win =3D &vop->win[i];
>> +               const struct vop_win_data *win =3D vop_win->data;
>> +
>> +               VOP_WIN_SET(vop, win, yrgb_mst, 0x0);
>> +               VOP_WIN_SET(vop, win, uv_mst, 0x0);
>> +       }
>> +
>
> Hi Tomeu
>
> Thanks for your fix.
>
> Set yrgb_mst and uv_mst is not a good idea, because 0x0 also is a mem=
ory
> buffer address, ddr will access the 0x0 buffer.
> I think you may enable DRM_FBDEV_EMULATION, the 0x0 address is iommu =
mmaped
> address for fbdev, so your test can works.
> but if DRM_FBDEV_EMULATION is not define, may be 0x0 address is unmma=
ped,
> would get the iommu crash.

I have checked with DRM_FBDEV_EMULATION disabled and seems to work equa=
lly well.

> I think we can use atomic disable function like this:
> for_each_plane_in_state(old_state, plane, old_plane_state, i) {
>     const struct drm_plane_helper_funcs *funcs;
>     funcs =3D plane->helper_private;
>     funcs->atomic_disable(plane, old_plane_state);
> }
>
> But I think we'd better find why we need do this hack here.
>
> Does the old FB address is ummaped when crtc disabling? why plane is =
not
> disabled?

Planes aren't being disabled because the CRTC is being disabled
already, see http://lxr.free-electrons.com/source/drivers/gpu/drm/drm_a=
tomic_helper.c#L1306

Exynos is already disabling all planes when a crtc is disabled:

http://lxr.free-electrons.com/source/drivers/gpu/drm/exynos/exynos_drm_=
fimd.c#L782

I don't like it because there's state in the drm core and in the
drivers that is left inconsistent.

Regards,

Tomeu

> Thanks.
>
>>         spin_lock(&vop->reg_lock);
>>         VOP_CTRL_SET(vop, standby, 0);
>
>
>
> --
> =EF=BC=ADark Yao
>
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
