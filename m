From: Huang Jiachai <hjc@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/2=5d_drm=3a_drm=5ffourcc=3a_add_NV20_YUV?=
 =?UTF-8?B?IGZvcm1hdOOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlwLWJv?=
 =?UTF-8?Q?unces+sandy=2ehuang=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
Date: Sun, 28 Jun 2020 09:51:29 +0800
Message-ID: <bee64956-8ab0-c358-9762-63c5a5b97b6a@rock-chips.com>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-2-jonas@kwiboo.se>
 <d503eed1-571f-3e37-858b-b5de04cb79f7@rock-chips.com>
 <f5c46547-3278-2226-e194-929fbfa95864@kwiboo.se>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <f5c46547-3278-2226-e194-929fbfa95864@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>, Brian Starkey <brian.starkey@arm.com>, Ben Davis <ben.davis@arm.com>, =?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jonas Karlman,

在 2020/6/26 22:19, Jonas Karlman 写道:
> On 2020-06-17 14:07, Huang Jiachai wrote:
>> Hi Jonas Karlman,
>>
>>       Is there an another yuv 10bit format with 4:4:4 sub-simpling but
>> has no padding?
>>
>>    Maybe we can call it DRM_FORMAT_NV30:
>>
>> { .format = DRM_FORMAT_NV30,		.depth = 0,
>>     .num_planes = 2, .char_per_block = { 5, 5, 0 },
>>     .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 1,
>>     .vsub = 1, .is_yuv = true },
>>
>> this format can supported by rockchip rk3288/rk3399... platform, can you
>> add this format at this series patches?
> I will send a v2 including this 4:4:4 format later this weekend.
>
> Is there any hw block on rk3288/rk3399 that can produce a buffer in such format?
> If I am not mistaken rkvdec only support 10-bit h264 in 4:2:0/4:2:2 and
> hevc 4:2:0 10-bit, those are the formats I have been able to test so far.
>
> Regards,
> Jonas

yes,rockchip platform hw video decoder 10-bit yuv format only can 
support 4:2:0/4:2:2 so far, but the software decoder path maybe output 
4:4:4-10 format to VOP.

>
>> 在 2020/6/8 4:25, Jonas Karlman 写道:
>>> DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
>>> The format is similar to P210 with 4:2:2 sub-sampling but has no padding
>>> between components. Instead, luminance and chrominance samples are grouped
>>> into 4s so that each group is packed into an integer number of bytes:
>>>
>>> YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
>>>
>>> The '20' suffix refers to the optimum effective bits per pixel which is
>>> achieved when the total number of luminance samples is a multiple of 4.
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>> ---
>>>    drivers/gpu/drm/drm_fourcc.c  | 4 ++++
>>>    include/uapi/drm/drm_fourcc.h | 1 +
>>>    2 files changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
>>> index 722c7ebe4e88..2a9c8ae719ed 100644
>>> --- a/drivers/gpu/drm/drm_fourcc.c
>>> +++ b/drivers/gpu/drm/drm_fourcc.c
>>> @@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
>>>    		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>>>    		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>>>    		  .vsub = 2, .is_yuv = true },
>>> +		{ .format = DRM_FORMAT_NV20,		.depth = 0,
>>> +		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>>> +		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>>> +		  .vsub = 1, .is_yuv = true },
>>>    		{ .format = DRM_FORMAT_Q410,		.depth = 0,
>>>    		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
>>>    		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
>>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>>> index b5bf1c0e630e..244d32433a67 100644
>>> --- a/include/uapi/drm/drm_fourcc.h
>>> +++ b/include/uapi/drm/drm_fourcc.h
>>> @@ -242,6 +242,7 @@ extern "C" {
>>>     * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
>>>     */
>>>    #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
>>> +#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
>>>    
>>>    /*
>>>     * 2 plane YCbCr MSB aligned
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
Best Regard

黄家钗
Sandy Huang
Addr: 福州市鼓楼区铜盘路软件大道89号福州软件园A区21号楼(350003)
       No. 21 Building, A District, No.89,software Boulevard 
Fuzhou,Fujian,PRC
Tel：+86 0591-87884919  8690
E-mail：hjc@rock-chips.com
