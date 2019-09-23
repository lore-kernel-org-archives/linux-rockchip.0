From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
Date: Mon, 23 Sep 2019 17:34:14 +0200
Message-ID: <332335a5-dc7f-2cce-601f-f73e9243dee5@collabora.com>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Dear All,

As a result of my mistake I've sent this patch with an incorrect SOB chain. 
Please kindly disregard this patch.

@Neil: thank you for your time you spent reviewing it and answering and I'm 
sorry it's to no effect.
@Ezequiel, @Tomeu: I apologize to you. My mistake.

Regards,

Andrzej Pietrasiewicz


W dniu 23.09.2019 o 15:53, Neil Armstrong pisze:
> On 23/09/2019 14:20, Andrzej Pietrasiewicz wrote:
>> From: Ezequiel Garcia <ezequiel@collabora.com>
>>
>> AFBC is a proprietary lossless image compression protocol and format.
>> It helps reduce memory bandwidth of the graphics pipeline operations.
>> This, in turn, improves power efficiency.
>>
>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>> [locking improvements]
>> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
>> [squashing the above, commit message and Rockchip AFBC modifier]
>> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
>> ---
>>   drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 27 ++++++
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 94 ++++++++++++++++++++-
>>   drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 12 +++
>>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 ++++
>>   include/uapi/drm/drm_fourcc.h               |  3 +
>>   5 files changed, 151 insertions(+), 3 deletions(-)
>>
> 
> [...]
> 
>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>> index 3feeaa3f987a..ba6caf06c824 100644
>> --- a/include/uapi/drm/drm_fourcc.h
>> +++ b/include/uapi/drm/drm_fourcc.h
>> @@ -742,6 +742,9 @@ extern "C" {
>>    */
>>   #define AFBC_FORMAT_MOD_BCH     (1ULL << 11)
>>   
>> +#define AFBC_FORMAT_MOD_ROCKCHIP \
>> +	(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)
> 
> This define looks useless, what's Rockchip specific here ?
> 
> Neil
> 
>> +
>>   /*
>>    * Allwinner tiled modifier
>>    *
>>
> 
