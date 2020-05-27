From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of
 BGR666 format
Date: Wed, 27 May 2020 07:14:16 -0300
Message-ID: <1c5f335b-0f31-bfb6-7dfe-91b5372489f0@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
 <fc4dbc40-ab57-0ca4-4ac7-5ffdb7f0ad81@collabora.com>
 <CAHD77H=iq3BpwD3=yL1DttUH_=vt8nO-5N_Kiu427BrUHJQ-zQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <CAHD77H=iq3BpwD3=yL1DttUH_=vt8nO-5N_Kiu427BrUHJQ-zQ@mail.gmail.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org



On 5/26/20 7:57 PM, Tomasz Figa wrote:
> On Thu, May 21, 2020 at 12:35 AM Helen Koike <helen.koike@collabora.com> wrote:
>>
>>
>>
>> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
>>> The rkisp1 supports RGB encoding with 6 bits per
>>> color with the following format:
>>> - - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -
>>
>> Is this the same as V4L2_PIX_FMT_XBGR32 format, but with colors range from 0 to 63 ?
>>
>> I was wondering what is the usage of such a format. If it is useful, then I'm sad
>> to see this being removed from the driver, since this is a v4l2 api limitation, and not
>> a hw limitation.
> 
> Sounds like some relic of the past. ;)
> 
> In general, RGB formats are not very useful in this hardware. One
> wastes the precious bandwidth, but doesn't get more color resolution,
> since the pipeline uses YUV 4:2:2 internally anyway. The typical usage
> scenarios with video or JPEG encoding and preview are much better off
> with the available YUV formats.

Thanks for your input.

Right, then in this case, I don't oppose removing it.

> 
>>
>> Regards,
>> Helen
>>
>>>
>>> This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
>>> this format from the driver's formats list.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

>>> ---
>>>  drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
>>>  1 file changed, 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> index 61b9ebe577b2..2660e44eda88 100644
>>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> @@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>>               .fourcc = V4L2_PIX_FMT_RGB565,
>>>               .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>>               .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
>>> -     }, {
>>> -             .fourcc = V4L2_PIX_FMT_BGR666,
>>> -             .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>> -             .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
>>>       },
>>>  };
>>>
>>>
