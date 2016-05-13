From: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 0/5] support rockchip dwc3 driver
Date: Fri, 13 May 2016 17:48:21 +0800
Message-ID: <5735A2E5.2020505@rock-chips.com>
References: <1462794377-6528-1-git-send-email-william.wu@rock-chips.com> <1463131501-22551-1-git-send-email-william.wu@rock-chips.com> <87wpmyqoxk.fsf@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87wpmyqoxk.fsf-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Dear Felipe,
On 05/13/2016 05:37 PM, Felipe Balbi wrote:
> Hi,
>
> William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org> writes:
>> This series add support for rockchip dwc3 driver,
>> and add additional optional properties for specific
>> platforms (e.g., rockchip platform).
>>
>> William Wu (5):
>>    usb: dwc3: of-simple: add compatible for rockchip
>>    usb: dwc3: add dis_u2_freeclk_exists_quirk
>>    usb: dwc3: add phyif_utmi_quirk
>>    usb: dwc3: add dis_del_phy_power_chg_quirk
>>    usb: dwc3: rockchip: add devicetree bindings documentation
>>
>>   Documentation/devicetree/bindings/usb/dwc3.txt     |  9 +++++
>>   .../devicetree/bindings/usb/rockchip,dwc3.txt      | 45 ++++++++++++++++++++++
>>   drivers/usb/dwc3/core.c                            | 39 ++++++++++++++++++-
>>   drivers/usb/dwc3/core.h                            | 20 ++++++++++
>>   drivers/usb/dwc3/dwc3-of-simple.c                  |  1 +
>>   drivers/usb/dwc3/platform_data.h                   |  4 ++
>>   6 files changed, 117 insertions(+), 1 deletion(-)
>>   create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
> I didn't get patch 5/5 :-s
Sorry, maybe there are something wrong with our mailbox server.
I'll resend patch 5/5 later.
>


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
