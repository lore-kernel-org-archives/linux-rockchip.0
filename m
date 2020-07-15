From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 4/4] media: staging: rkisp1: cap: in stream start, replace
 calls to rkisp1_handle_buffer with rkisp1_set_next_buf
Date: Wed, 15 Jul 2020 07:04:50 -0300
Message-ID: <a93da361-2de1-667c-2fa5-78bd65ccc6c4@collabora.com>
References: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
 <20200714123832.28011-5-dafna.hirschfeld@collabora.com>
 <01c025b1-6d8d-0c24-1303-848ce0438c75@collabora.com>
 <4fe827dc-f240-dc20-59a2-4855e6edbfeb@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <4fe827dc-f240-dc20-59a2-4855e6edbfeb@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 7/15/20 4:36 AM, Dafna Hirschfeld wrote:
> Hi,
> 
> On 14.07.20 17:11, Helen Koike wrote:
>> Hi Dafna,
>>
>> Thanks for the patch, just a small thing below.
>>
>> On 7/14/20 9:38 AM, Dafna Hirschfeld wrote:
>>> The function 'rkisp1_stream_start' calls 'rkisp1_handle_buffer'
>>> in order to update the 'buf.curr' and 'buf.next' fields and
>>> configure the device before streaming starts. This cause a wrong
>>> increment of the debugs field 'frame_drop'. This patch replaces
>>> the call to 'rkisp1_handle_buffer' with a call to
>>> 'rkisp1_set_next_buf'.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> ---
>>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> index 7f400aefe550..c05280950ea0 100644
>>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>>> @@ -916,7 +916,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
>>>       cap->ops->config(cap);
>>>         /* Setup a buffer for the next frame */
>>> -    rkisp1_handle_buffer(cap);
>>> +    rkisp1_set_next_buf(cap);
>>
>> You should also protect with the cap->buf.lock, or move the lock protection to rkisp1_set_next_buf() and update patch 2/4.
> 
> I am not sure if protection here is needed. The streaming is not enabled yet, so
> it is promised that we don't run the isr in parallel and ioctls are already synchronized by the framework
> so I think it is safe not to use locking here , but I'm not sure actually.

I was just wondering in case we re-start a stream quickly after stopping it, but since rkisp1_stream_stop() actually waits
for the hardware, so I don't think there is an issue indeed.

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> 
> Thanks,
> Dafna
> 
> 
>>
>> Regards,
>> Helen
>>
>>>       cap->ops->enable(cap);
>>>       /* It's safe to config ACTIVE and SHADOW regs for the
>>>        * first stream. While when the second is starting, do NOT
>>> @@ -931,7 +931,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
>>>           /* force cfg update */
>>>           rkisp1_write(rkisp1,
>>>                    RKISP1_CIF_MI_INIT_SOFT_UPD, RKISP1_CIF_MI_INIT);
>>> -        rkisp1_handle_buffer(cap);
>>> +        rkisp1_set_next_buf(cap);
>>>       }
>>>       cap->is_streaming = true;
>>>   }
>>>
