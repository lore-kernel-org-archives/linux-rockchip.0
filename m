From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila-MRsr7dthA9VWk0Htik3J/w@public.gmane.org>
Subject: Re: iwlwifi firmware loading problems, rk3399
Date: Wed, 20 May 2020 15:34:14 +0300
Message-ID: <f27e0e85-6e45-15bd-1460-4140671ee4cd@nextfour.com>
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
 <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-US
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Emmanuel Grumbach <egrumbach-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Emmanuel Grumbach <emmanuel.grumbach-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 20.5.2020 15.27, Emmanuel Grumbach wrote:
>> Hi,
>>
>> We have custom made, Rockchip rk3399 based board with a standard M.2
>> socket for wifi/bt card.
>>
>> We have tried man different cards, like Intel 9260 and Intel AX200, but
>> are experiencing problems while loading the firmware.
>>
>>     Failed to load firmware chunk!
>>
>> etc. I have a little debugged and the problem seems that the interrupts
>> that acknowledges the load to proceed, is not coming, randomly.
>> I have tried many firmwares. Do you have any pointers where to look next?
> I guess you need to debug your board :)
> The interrupt is not coming, then.. there isn't much the driver can do.

Well it does get interrupts, but stops getting them during fw loading at 
some point which causes it to fail. I have seen similar posts while 
googling and they are happening on x86/ubuntu and popular platforms. So 
I'm afraid it is something with iwlwifi or its usage of MSIX or such. 
The kernel version is 5.4.

>> Thanks,
>> Mika
>>
