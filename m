From: Randy Li <randy.li@rock-chips.com>
Subject: Re: the dp helper would try to enable the i2c channel for
 rockchip-edp
Date: Thu, 20 Oct 2016 15:38:29 +0800
Message-ID: <410fd2c1-e841-cffb-51ba-cc4907c81203@rock-chips.com>
References: <24daffe0-42a4-2a37-d685-7d9ecf9c3b11@rock-chips.com>
 <CAAObsKBkQuUgk_p76Mc3U-tMy6mhX0puwKNoNHZcrWW1LRfbPg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAAObsKBkQuUgk_p76Mc3U-tMy6mhX0puwKNoNHZcrWW1LRfbPg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Gustavo Padovan <gustavo.padovan@collabora.co.uk>
List-Id: linux-rockchip.vger.kernel.org



On 10/20/2016 03:18 PM, Tomeu Vizoso wrote:
> On 19 October 2016 at 15:52, Randy Li <randy.li@rock-chips.com> wrote:
>> Hello,
>>
>>   Recently, I want to use a eDP panel in my RK3288 platform, but I got the
>> following message:
>>
>> [    8.935918] i2c i2c-6: of_i2c: modalias failure on /dp@ff970000/ports
>> [    8.936018] rockchip-drm display-subsystem: bound ff970000.dp (ops
>> rockchip_dp_component_ops [analogix_dp_rockchip])
>> It try to enable the eDP aux channel and add a new I2C controller, but it
>> failed then the whole display subsystem is broken, the panel doesn't power
>> on either.
>>
>>   I hope somebody could figure out what is wrong with it.
>
> Hi Randy,
>
> you want to debug why the call to of_modalias_node fails.
>
But I didn't know who register that I2C controller, as the system only 
have 6 I2C controller(0-5).
> Good luck,
>
> Tomeu
>
>
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>

-- 
Randy Li
The third produce department
===========================================================================
This email message, including any attachments, is for the sole
use of the intended recipient(s) and may contain confidential and
privileged information. Any unauthorized review, use, disclosure or
distribution is prohibited. If you are not the intended recipient, please
contact the sender by reply e-mail and destroy all copies of the original
message. [Fuzhou Rockchip Electronics, INC. China mainland]
===========================================================================
