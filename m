From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/2] drm: drm_fourcc: add NV20 YUV
 =?UTF-8?B?Zm9ybWF044CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytzYQ==?=
 =?us-ascii?Q?ndy=2Ehuang=3Drock-chips=2Ecom=40lists=2Einfradea?=
 =?UTF-8?B?ZC5vcmfku6Plj5HjgJE=?=
Date: Fri, 26 Jun 2020 14:19:53 +0000 (UTC)
Message-ID: <f5c46547-3278-2226-e194-929fbfa95864@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-2-jonas@kwiboo.se>
 <d503eed1-571f-3e37-858b-b5de04cb79f7@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <d503eed1-571f-3e37-858b-b5de04cb79f7@rock-chips.com>
Content-Language: sv
Sender: linux-kernel-owner@vger.kernel.org
To: Huang Jiachai <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, =?UTF-8?b?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>, Brian Starkey <brian.starkey@arm.com>, Ben Davis <ben.davis@arm.com>
List-Id: linux-rockchip.vger.kernel.org

On 2020-06-17 14:07, Huang Jiachai wrote:
> Hi Jonas Karlman,
> 
>      Is there an another yuv 10bit format with 4:4:4 sub-simpling but 
> has no padding?
> 
>   Maybe we can call it DRM_FORMAT_NV30:
> 
> { .format = DRM_FORMAT_NV30,		.depth = 0,
>    .num_planes = 2, .char_per_block = { 5, 5, 0 },
>    .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 1,
>    .vsub = 1, .is_yuv = true },
> 
> this format can supported by rockchip rk3288/rk3399... platform, can you 
> add this format at this series patches?

I will send a v2 including this 4:4:4 format later this weekend.

Is there any hw block on rk3288/rk3399 that can produce a buffer in such format?
If I am not mistaken rkvdec only support 10-bit h264 in 4:2:0/4:2:2 and
hevc 4:2:0 10-bit, those are the formats I have been able to test so far.

Regards,
Jonas

> 
> 在 2020/6/8 4:25, Jonas Karlman 写道:
>> DRM_FORMAT_NV20 is a 2 plane format suitable for linear memory layout.
>> The format is similar to P210 with 4:2:2 sub-sampling but has no padding
>> between components. Instead, luminance and chrominance samples are grouped
>> into 4s so that each group is packed into an integer number of bytes:
>>
>> YYYY = UVUV = 4 * 10 bits = 40 bits = 5 bytes
>>
>> The '20' suffix refers to the optimum effective bits per pixel which is
>> achieved when the total number of luminance samples is a multiple of 4.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>   drivers/gpu/drm/drm_fourcc.c  | 4 ++++
>>   include/uapi/drm/drm_fourcc.h | 1 +
>>   2 files changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_fourcc.c b/drivers/gpu/drm/drm_fourcc.c
>> index 722c7ebe4e88..2a9c8ae719ed 100644
>> --- a/drivers/gpu/drm/drm_fourcc.c
>> +++ b/drivers/gpu/drm/drm_fourcc.c
>> @@ -278,6 +278,10 @@ const struct drm_format_info *__drm_format_info(u32 format)
>>   		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>>   		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>>   		  .vsub = 2, .is_yuv = true },
>> +		{ .format = DRM_FORMAT_NV20,		.depth = 0,
>> +		  .num_planes = 2, .char_per_block = { 5, 5, 0 },
>> +		  .block_w = { 4, 2, 0 }, .block_h = { 1, 1, 0 }, .hsub = 2,
>> +		  .vsub = 1, .is_yuv = true },
>>   		{ .format = DRM_FORMAT_Q410,		.depth = 0,
>>   		  .num_planes = 3, .char_per_block = { 2, 2, 2 },
>>   		  .block_w = { 1, 1, 1 }, .block_h = { 1, 1, 1 }, .hsub = 0,
>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>> index b5bf1c0e630e..244d32433a67 100644
>> --- a/include/uapi/drm/drm_fourcc.h
>> +++ b/include/uapi/drm/drm_fourcc.h
>> @@ -242,6 +242,7 @@ extern "C" {
>>    * index 1 = Cr:Cb plane, [39:0] Cr1:Cb1:Cr0:Cb0 little endian
>>    */
>>   #define DRM_FORMAT_NV15		fourcc_code('N', 'V', '1', '5') /* 2x2 subsampled Cr:Cb plane */
>> +#define DRM_FORMAT_NV20		fourcc_code('N', 'V', '2', '0') /* 2x1 subsampled Cr:Cb plane */
>>   
>>   /*
>>    * 2 plane YCbCr MSB aligned
> 
