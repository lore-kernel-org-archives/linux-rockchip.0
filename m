From: Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Thu, 18 Jan 2018 17:51:38 +0100
Message-ID: <CAFqH_50Px_a=YQkDvA+APgL7xC_=Rz9WGM0xOzXwBg4FF0t2cg@mail.gmail.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com> <20180117214601.GA111796@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20180117214601.GA111796-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Doug Anderson <dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Guenter Roeck <groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, lin.huang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

2018-01-17 22:46 GMT+01:00 Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>:
> On Fri, Jan 12, 2018 at 12:00:16PM +0800, William Wu wrote:
>> The dwc3_core_init() gets the PHYs and initializes the PHYs with
>> the usb_phy_init() and phy_init() functions before initializing
>> core, and power on the PHYs after core initialization is done.
>>
>> However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
>> USB3 PHY), it needs to do some special operation while power on
>> the Type-C PHY before initializing DWC3 core. It's because that
>> the RK3399 Type-C PHY requires to hold the DWC3 controller in
>> reset state to keep the PIPE power state in P2 while configuring
>> the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
>> timeout. In this case, if we power on the PHYs after the DWC3 core
>> initialization is done, the core will be reset to uninitialized
>> state after power on the PHYs.
>>
>> Fix this by powering on the PHYs before initializing core. And
>> because the GUID register may also be reset in this case, so we
>> need to configure the GUID register after powering on the PHYs.
>>
>> Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> This kinda should be part of your series:
>
> [PATCH 0/3] Reset USB3 controller before initializing Type-C PHY on rk3399
>

+1

> or at least mentioned there, because the series there doesn't quite
> right otherwise, no?
>
> Anyway, I think this patch looks OK. I don't immediately see good
> reasons for delaying the PHY init until later, and I do see reasons why
> it could be useful earlier:
>
> Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Tested on Samsung Chromebook Plus with current mainline

Tested-by: Enric Balletbo i Serra <enric.balletbo-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

>
>> ---
>>  drivers/usb/dwc3/core.c | 46 ++++++++++++++++++++++------------------------
>>  1 file changed, 22 insertions(+), 24 deletions(-)
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
