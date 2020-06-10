From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
Date: Wed, 10 Jun 2020 20:36:51 +0200
Message-ID: <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
 <20200610171511.GD201868@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200610171511.GD201868@chromium.org>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 10.06.20 19:15, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Tue, Jun 09, 2020 at 05:28:22PM +0200, Dafna Hirschfeld wrote:
>> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
>> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
>> This is a bug, the resizer should support the same formats
>> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
>>
>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d049374413dc..d64c064bdb1d 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>>   	u32 pad = code->pad;
>>   	int ret;
>>   
>> -	/* supported mbus codes are the same in isp sink pad */
>> -	code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
>> +	/* supported mbus codes are the same in isp video src pad */
>> +	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>>   	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>>   			       &dummy_cfg, code);
> 
> Actually, is this really the true? AFAIR the ISP itself can only output
> either Bayer or YUV 4:2:2. The resizer can take YUV 4:2:2 at its input
> and output YUV 4:4:4, 4:2:2 and 4:2:0. Bayer capture is handled with
> resizer bypass mode. We haven't tested that, but if implemented, it
> should probably be done by exposing a link between the ISP entity and a
> video node directly, without the resizer involved.
> 
> WDYT?

We can also implement it that way. Only the mainpath needs
a direct link from the isp since selfpath does not support bayer formats.
It makes it easier on userspace for bayer formats since it does not have to
configure the resizer.
On the other hand if the format is YUV it has the option
to either use the the resizer or not.

Thanks,
Dafna

> 
> Best regards,
> Tomasz
> 
