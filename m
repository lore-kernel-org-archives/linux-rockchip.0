From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: add multiple clocks handling
Date: Mon, 17 Apr 2017 18:33:33 +0800
Message-ID: <3e6e6c8f-35a2-4ce9-521a-677d384e24a6@rock-chips.com>
References: <1486608279-22278-1-git-send-email-frank.wang@rock-chips.com>
 <1486608279-22278-3-git-send-email-frank.wang@rock-chips.com>
 <1905699.rAdUkra9dJ@diego> <87mvc5fr4h.fsf@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87mvc5fr4h.fsf-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi John,

I apologize if this was presumptuous, would you like to have a look this 
series please?


On 2017/3/28 21:49, Felipe Balbi wrote:
> Hi,
>
> Heiko Stübner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> writes:
>> Am Donnerstag, 9. Februar 2017, 10:44:39 CET schrieb Frank Wang:
>>> Since dwc2 may have one or more input clocks need to manage for some
>>> platform, so this adds change clk to clk's array of struct dwc2_hsotg
>>> to handle more clocks operation.
>>>
>>> Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> for the simple clock handling the dwc2-driver does right now, this looks
>> adquate and honoring EPROBE_DEFER is a nice touch ;-), so
>>
>> Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> John, care to look at this series?
>

BR.
Frank


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
