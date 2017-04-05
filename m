From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH v2 8/9] drm/rockchip: gem: Don't alloc/free gem buf before
 drm dev registered
Date: Wed, 05 Apr 2017 09:28:17 +0800
Message-ID: <58E44831.900@rock-chips.com>
References: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com> <1491046529-4310-9-git-send-email-jeffy.chen@rock-chips.com> <20170403074101.f3ykqpdphklwummz@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170403074101.f3ykqpdphklwummz@phenom.ffwll.local>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, briannorris@chromium.org, dianders@chromium.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Daniel,

On 04/03/2017 03:41 PM, Daniel Vetter wrote:
> On Sat, Apr 01, 2017 at 07:35:28PM +0800, Jeffy Chen wrote:
>> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>> ---
>>
>> Changes in v2: None
>
> Wut? How is this even possible? If you haven't registered the driver yet,
> there's no way for userspace to call allocation functions. Anything else
> is a driver bug that should be handled by fixing the driver load sequence.
> The only thing I can imagine is that you init the fbdev stuff too early,
> in that case pls fix that. Not apply this duct-tape here.
after unbind drm drivers, userspace may still have the chance to call 
gem ioctls before we call drm_dev_register again. and we can add a 
sanity check here to avoid invalid access.

i'll try to make a better commit message in next version soon, thanx for 
reply.
>
> Thanks, Daniel
>
>>
>>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> index df9e570..2bf8024 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
>> @@ -184,6 +184,9 @@ static int rockchip_gem_alloc_buf(struct rockchip_gem_object *rk_obj,
>>   	struct drm_device *drm = obj->dev;
>>   	struct rockchip_drm_private *private = drm->dev_private;
>>
>> +	if (!drm->registered)
>> +		return -ENODEV;
>> +
>>   	if (private->domain)
>>   		return rockchip_gem_alloc_iommu(rk_obj, alloc_kmap);
>>   	else
>> @@ -208,6 +211,11 @@ static void rockchip_gem_free_dma(struct rockchip_gem_object *rk_obj)
>>
>>   static void rockchip_gem_free_buf(struct rockchip_gem_object *rk_obj)
>>   {
>> +	struct drm_device *drm = rk_obj->base.dev;
>> +
>> +	if (!drm->registered)
>> +		return;
>> +
>>   	if (rk_obj->pages)
>>   		rockchip_gem_free_iommu(rk_obj);
>>   	else
>> --
>> 2.1.4
>>
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>
