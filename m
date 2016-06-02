From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 1/2] Documentation: bindings: add DT documentation for
 Rockchip USB2PHY
Date: Thu, 2 Jun 2016 10:53:02 +0800
Message-ID: <574F9F8E.5000801@rock-chips.com>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com>
 <6548390.RQDBBuPzBf@diego> <574E9845.30501@rock-chips.com>
 <4799985.esYaUoo40j@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4799985.esYaUoo40j@diego>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, pawel.moll-5wv7dgnIgG8@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, ijc+devicetree-KcIKpvwj1kUDXYZnReoRVg@public.gmane.org, galak-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 06/02/2016 06:17 AM, Heiko St=FCbner wrote:
> Hi Frank,
>
> Am Mittwoch, 1. Juni 2016, 16:09:41 schrieb Frank Wang:
>>> You might want to add the bvalid and id interrupts for the otg phys=
 as
>>> well
>>> already - would make handling legacy devicetree files easier. [=3D =
if they
>>> get specified later, the driver would always need to also handle
>>> devicetrees where they aren't specified].
>>
>> Hmmm! you mean that I can specify these properties into documentatio=
n,
>> even if the driver have not handled (implemented) them in current?
>
> The devicetree bindings are supposed to be a generic hardware-descrip=
tion.
> And a driver then simply implements that binding. So if the interrupt=
 is part
> of the hardware it can be part of the binding, independent of the dri=
ver.
>
> I guess it really comes down to, will you need those interrupts later=
 in the
> driver, then they should definitly be specified now, as later on you =
cannot
> require them anymore and always need to also support devicetrees not =
having
> them.
>

Got it, I have already added them in the new patches which I will hand=20
out later.

BR.
=46rank

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
