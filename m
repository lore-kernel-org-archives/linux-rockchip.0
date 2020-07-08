From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 12/12] media: rkvdec: h264: Support profile and level
 controls
Date: Wed, 08 Jul 2020 09:34:10 +0000 (UTC)
Message-ID: <dc1fcf7a-cc5e-0bee-ae74-d8d1464a1815@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
 <20200706215430.22859-1-jonas@kwiboo.se>
 <20200706215430.22859-13-jonas@kwiboo.se>
 <97a4c51aa5cfcdef7f4c96fcf84f85bd7c8b3729.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <97a4c51aa5cfcdef7f4c96fcf84f85bd7c8b3729.camel@collabora.com>
Content-Language: sv
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-08 05:19, Ezequiel Garcia wrote:
> On Mon, 2020-07-06 at 21:54 +0000, Jonas Karlman wrote:
>> The Rockchip Video Decoder used in RK3399 supports H.264 profiles from
>> Baseline to High 4:2:2 up to Level 5.1, except for the Extended profile.
>>
>> Expose the V4L2_CID_MPEG_VIDEO_H264_PROFILE and the
>> V4L2_CID_MPEG_VIDEO_H264_LEVEL control, so that userspace can query the
>> driver for the list of supported profiles and level.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>> ---
>> Changes in v2:
>> - Moved to end
>> - Collect r-b tag
>> ---
>>  drivers/staging/media/rkvdec/rkvdec.c | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>> index 4faee9262392..b21031535330 100644
>> --- a/drivers/staging/media/rkvdec/rkvdec.c
>> +++ b/drivers/staging/media/rkvdec/rkvdec.c
>> @@ -144,6 +144,19 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
>>  		.cfg.def = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
>>  		.cfg.max = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
>>  	},
>> +	{
>> +		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
>> +		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
> 
> Nicolas recently pointed out to me that our drivers
> can't support ASO/FMO baseline features, and so
> seems we need to leave baseline out.

I will change min to V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE in v3.

Regards,
Jonas

> 
> (Applies to Hantro as well).
> 
> Thanks,
> Ezequiel
> 
>> +		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422,
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
