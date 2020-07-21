From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 5/9] media: staging: rkisp1: add a pointer to
 rkisp1_device from struct rkisp1_isp
Date: Tue, 21 Jul 2020 17:30:07 +0200
Message-ID: <fa457a47-4005-8c64-d135-96b321ddd6a6@collabora.com>
References: <20200718145918.17752-1-dafna.hirschfeld@collabora.com>
 <20200718145918.17752-6-dafna.hirschfeld@collabora.com>
 <d8475ade-94a3-48ad-02d7-f03810ddf6dc@collabora.com>
 <114a3242-88e9-46a1-c8c8-f5bfd424d05a@collabora.com>
 <CAAFQd5BLuwfnQfYbaWmtre5YCx-_YG4E10cZxeL+6pESap_U0A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <CAAFQd5BLuwfnQfYbaWmtre5YCx-_YG4E10cZxeL+6pESap_U0A@mail.gmail.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: Helen Koike <helen.koike@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 21.07.20 14:36, Tomasz Figa wrote:
> On Tue, Jul 21, 2020 at 2:26 PM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
>>
>> Hi,
>>
>> On 20.07.20 21:25, Helen Koike wrote:
>>>
>>>
>>> On 7/18/20 11:59 AM, Dafna Hirschfeld wrote:
>>>> The code in rkisp1-isp.c requires access to struct 'rkisp1_device'
>>>> in several places. It access it using the 'container_of' macro.
>>>> This patch adds a pointer to 'rkisp1_device' in struct 'rkisp1_isp'
>>>> to simplify the access.
>>>
>>> What is wrong with container_of?
>>
>> I remember Laurent suggested it a while ago.
>> I also feel container_of is a bit cumbersome and other entities already have a pointer to rkisp1_device.
>>
> 
> Do we even need the rkisp1_isp struct? Could we just pass rkisp1_device instead?

pass to where ?  You mean to the function rkisp1_mipi_csi2_start ?

Thanks,
Dafna


> 
> Best regards,
> Tomasz
> 
