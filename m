From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/9] media: rkvdec: h264: Support profile and level
 controls
Date: Fri, 03 Jul 2020 05:30:27 +0000 (UTC)
Message-ID: <75d272ab-2d48-6dc6-3b60-22d5922ffd1e@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
 <20200701215616.30874-2-jonas@kwiboo.se>
 <8daa49704a14764bfe0797cbf802bad3d64ede17.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8daa49704a14764bfe0797cbf802bad3d64ede17.camel@collabora.com>
Content-Language: sv
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-03 04:54, Ezequiel Garcia wrote:
> On Wed, 2020-07-01 at 21:56 +0000, Jonas Karlman wrote:
>> The Rockchip Video Decoder used in RK3399 supports H.264 profiles from
>> Baseline to High 4:2:2 up to Level 5.1, except for the Extended profile.
>>
>> Expose the V4L2_CID_MPEG_VIDEO_H264_PROFILE and the
>> V4L2_CID_MPEG_VIDEO_H264_LEVEL control, so that userspace can query the
>> driver for the list of supported profiles and level.
>>
>> In current state only Baseline to High profile is supported by the driver.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> I think the patch is good so:
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
> However, feel free to just drop this patch and support the profiles
> and levels at the end of the patchset, once High 10 and High 422
> support is there.

Sure, that makes more sense, will move to end in v2.

Regards,
Jonas

> 
> Thanks,
> Ezequiel
> 
>> ---
>>  drivers/staging/media/rkvdec/rkvdec.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>> index 0f81b47792f6..b1de55aa6535 100644
>> --- a/drivers/staging/media/rkvdec/rkvdec.c
>> +++ b/drivers/staging/media/rkvdec/rkvdec.c
>> @@ -94,6 +94,19 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
>>  		.cfg.def = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
>>  		.cfg.max = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
>>  	},
>> +	{
>> +		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
>> +		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
>> +		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
>> +		.cfg.menu_skip_mask =
>> +			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
>> +		.cfg.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
>> +	},
>> +	{
>> +		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
>> +		.cfg.min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
>> +		.cfg.max = V4L2_MPEG_VIDEO_H264_LEVEL_5_1,
>> +	},
>>  };
>>  
>>  static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
> 
> 
