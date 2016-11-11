From: walter harms <wharms@bfs.de>
Subject: Re: [PATCH] drm/rockchip: return ERR_PTR instead of NULL
Date: Fri, 11 Nov 2016 09:13:27 +0100
Message-ID: <58257DA7.4020603@bfs.de>
References: <1478812256-26189-1-git-send-email-Julia.Lawall@lip6.fr> <5825229C.8080704@rock-chips.com>
Reply-To: wharms@bfs.de
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <kernel-janitors-owner@vger.kernel.org>
In-Reply-To: <5825229C.8080704@rock-chips.com>
Sender: kernel-janitors-owner@vger.kernel.org
To: Mark yao <mark.yao@rock-chips.com>
Cc: Julia Lawall <Julia.Lawall@lip6.fr>, kernel-janitors@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



Am 11.11.2016 02:45, schrieb Mark yao:
> On 2016年11月11日 05:10, Julia Lawall wrote:
>> rockchip_drm_framebuffer_init is only used in one case, in
>> rockchip_drm_fbdev.c, where its return value is tested using IS_ERR.  To
>> enable propagating the reason for the error, change the definition so
>> that
>> it returns an ERR_PTR value.
>>
>> Problem found with the help of Coccinelle.
>>
>> Signed-off-by: Julia Lawall <Julia.Lawall@lip6.fr>
> Thanks for the fix.
> 
> Applied to my drm-next.

Just for my curiosity.

can more go wrong that OOM ?

i did not see that.

re,
 wh


> 
>>
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_fb.c |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>> b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>> index 0f6eda0..01e11bf 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>> @@ -213,7 +213,7 @@ struct drm_framebuffer *
>>         rockchip_fb = rockchip_fb_alloc(dev, mode_cmd, &obj, 1);
>>       if (IS_ERR(rockchip_fb))
>> -        return NULL;
>> +        return ERR_CAST(rockchip_fb);
>>         return &rockchip_fb->fb;
>>   }
>>
>>
>>
>>
> 
> 
