From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: cap: change RGB24 format to
 XBGR32
Date: Fri, 15 May 2020 08:16:16 +0200
Message-ID: <e9b91595-be82-c0d6-339c-daf61faa9821@collabora.com>
References: <20200328135311.21221-1-dafna.hirschfeld@collabora.com>
 <7d387293-5fc8-6d6e-bc5a-03138a247d50@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <7d387293-5fc8-6d6e-bc5a-03138a247d50@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

hi,
thanks for the review

On 30.03.20 22:19, Helen Koike wrote:
> 
> 
> On 3/28/20 10:53 AM, Dafna Hirschfeld wrote:
>> According to the manual, the YUV->RGB conversion outputs
> 
> s/manual/datasheet
It is actually from the TRM
> 
>> "24 bit word" that means that each pixel is 4 byte but the last
>> one should be ignored. This matches format V4L2_PIX_FMT_XBGR32.
> 
> I think you can re-word this a bit, since 24bits is 3 bytes, and this doesn't mean 4 bytes are used.
> 
> I guess you meant that datasheet says 4 bytes are used, with 24bits for the RGB and the last byte is ignored.
indeed, i'll change that
> 
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>> The patch rebased on to of the patch
>> "media: staging: rkisp1: cap: remove field fmt_type from struct rkisp1_capture_fmt_cfg"
>>
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 3abf38362f5a..5f248b68190e 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -281,7 +281,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>   	},
>>   	/* rgb */
>>   	{
>> -		.fourcc = V4L2_PIX_FMT_RGB24,
>> +		.fourcc = V4L2_PIX_FMT_XBGR32,
> 
> Shouldn't it be V4L2_PIX_FMT_RGBX32 ?> 
> Or the colors are inverted as well?
yes, the bytes are inverted

Thanks,
Dafna
> 
> Regards,
> Helen
> 
>>   		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>   		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>>   	}, {
>>
