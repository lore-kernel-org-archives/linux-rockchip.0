From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
Date: Wed, 10 Jun 2020 18:11:06 +0200
Message-ID: <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
 <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org



On 27.05.20 01:04, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> According to the TRM, the YUV->RGB conversion outputs
>> "24 bit word". What it means is that 4 bytes are used with
>> 24bit for the RGB and the last byte is ignored.
> 
> I don't see this mentioned in the datasheets I have. On the other
> hand, XBGR32 indeed makes much more sense, as the 3-byte RGB isn't a
> very popular format. Have you validated that the hardware behavior
> indeed matches that?

Hi, yes I validated it, I also found it mentioned here:

http://rockchip.fr/RK3288%20TRM/rk3288-chapter-31-image-signal-processing-(isp).pdf

under section "31.3.9 YCbCr to RGB Conversion"

Thanks,
Dafna
> 
> Best regards,
> Tomasz
> 
>> This matches format V4L2_PIX_FMT_XBGR32.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index f69235f82c45..61b9ebe577b2 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -276,7 +276,7 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>>          },
>>          /* rgb */
>>          {
>> -               .fourcc = V4L2_PIX_FMT_RGB24,
>> +               .fourcc = V4L2_PIX_FMT_XBGR32,
>>                  .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>>                  .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>>          }, {
>> --
>> 2.17.1
>>
