From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 7/9] media: rkvdec: h264: Use bytesperline and buffer
 height to calculate stride
Date: Fri, 03 Jul 2020 11:40:04 +0000 (UTC)
Message-ID: <957479f7-6427-1cc6-700c-b3efe0cb6ff1@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
 <20200701215616.30874-8-jonas@kwiboo.se>
 <d34520b6799ddf84d9bd6de1cc6352f28c665c9a.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <d34520b6799ddf84d9bd6de1cc6352f28c665c9a.camel@collabora.com>
Content-Language: sv
Sender: linux-media-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-03 05:21, Ezequiel Garcia wrote:
> Hi Jonas,
> 
> On Wed, 2020-07-01 at 21:56 +0000, Jonas Karlman wrote:
>> Use bytesperline and buffer height to calculate the strides configured.
>>
>> This does not really change anything other than ensuring the bytesperline
>> that is signaled to userspace matches was is configured in HW.
>>
> 
> Are you seeing any issue due to this?

Not seeing any issue, I just feelt more confident when both the driver and
application use the same value to configure the stride and when used for
drm framebuffer pitch.

> 
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/staging/media/rkvdec/rkvdec-h264.c | 27 +++++++++++++---------
>>  1 file changed, 16 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>> index 9c8e49642cd9..1cb6af590138 100644
>> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>> @@ -891,10 +891,11 @@ static void config_registers(struct rkvdec_ctx *ctx,
>>  	dma_addr_t rlc_addr;
>>  	dma_addr_t refer_addr;
>>  	u32 rlc_len;
>> -	u32 hor_virstride = 0;
>> -	u32 ver_virstride = 0;
>> -	u32 y_virstride = 0;
>> -	u32 yuv_virstride = 0;
>> +	u32 hor_virstride;
>> +	u32 ver_virstride;
>> +	u32 y_virstride;
>> +	u32 uv_virstride;
>> +	u32 yuv_virstride;
>>  	u32 offset;
>>  	dma_addr_t dst_addr;
>>  	u32 reg, i;
>> @@ -904,16 +905,20 @@ static void config_registers(struct rkvdec_ctx *ctx,
>>  
>>  	f = &ctx->decoded_fmt;
>>  	dst_fmt = &f->fmt.pix_mp;
>> -	hor_virstride = (sps->bit_depth_luma_minus8 + 8) * dst_fmt->width / 8;
>> -	ver_virstride = round_up(dst_fmt->height, 16);
>> +	hor_virstride = dst_fmt->plane_fmt[0].bytesperline;
>> +	ver_virstride = dst_fmt->height;
>>  	y_virstride = hor_virstride * ver_virstride;
>>  
> 
> So far so good.
> 
>> -	if (sps->chroma_format_idc == 0)
>> -		yuv_virstride = y_virstride;
>> -	else if (sps->chroma_format_idc == 1)
>> -		yuv_virstride += y_virstride + y_virstride / 2;
>> +	if (sps->chroma_format_idc == 1)
>> +		uv_virstride = y_virstride / 2;
>>  	else if (sps->chroma_format_idc == 2)
>> -		yuv_virstride += 2 * y_virstride;
>> +		uv_virstride = y_virstride;
>> +	else if (sps->chroma_format_idc == 3)
>> +		uv_virstride = 2 * y_virstride;
>> +	else
>> +		uv_virstride = 0;
>> +
>> +	yuv_virstride = y_virstride + uv_virstride;
>>  
> 
> Is the chunk above related to the patch, or mostly
> cleaning/improving the code?

You are correct it is mostly cleaning/improving the code,
this should probably be moved to a separate patch or skipped altogether.

Initial 10-bit implementation was made for HEVC so I just backported the code
I ended up with for HEVC back to H.264. Will skip this cleaning/improving in
this series and possible include it as part of a future HEVC series.

Regards,
Jonas

> 
> Thanks,
> Ezequiel
> 
>>  	reg = RKVDEC_Y_HOR_VIRSTRIDE(hor_virstride / 16) |
>>  	      RKVDEC_UV_HOR_VIRSTRIDE(hor_virstride / 16) |
> 
> 
