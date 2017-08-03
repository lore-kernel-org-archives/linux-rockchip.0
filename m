From: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH 2/5] phy: rockchip-inno-usb2: Replace the extcon API
Date: Thu, 03 Aug 2017 17:11:22 +0900
Message-ID: <5982DAAA.8060201@samsung.com>
References: <1500254456-6525-1-git-send-email-cw00.choi@samsung.com>
        <CGME20170717012058epcas1p157e9a296eb5e415ae24bb51a1e6026db@epcas1p1.samsung.com>
        <1500254456-6525-3-git-send-email-cw00.choi@samsung.com>
        <06154871-a821-edab-23d8-340c5b0f5081@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <06154871-a821-edab-23d8-340c5b0f5081-l0cyMroinI0@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chanwoo-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 2017년 08월 02일 14:12, Kishon Vijay Abraham I wrote:
> 
> 
> On Monday 17 July 2017 06:50 AM, Chanwoo Choi wrote:
>> This patch uses the resource-managed extcon API for extcon_register_notifier()
>> and replaces the deprecated extcon API as following:
>> - extcon_get_cable_state_() -> extcon_get_state()
>> - extcon_set_cable_state_() -> extcon_set_state_sync()
>>
>> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>> acked-by: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
>   ^
> should be 'A' here.

My mistake. I'll fix it.

[snip]

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
