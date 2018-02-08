From: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Thu, 8 Feb 2018 08:50:19 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113A67EBD@am04wembxa.internal.synopsys.com>
References: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
 <20180207142749.GD29606@kroah.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/7/2018 6:28 PM, gregkh wrote:
> On Wed, Feb 07, 2018 at 10:48:57AM +0100, Mirza Krak wrote:
>> Hi.
>>
>> I initially started a thread on a different mailing list [1], and you
>> can take look there for some additional background.
>>
>> I am using a 4.14.15 stable kernel on a RK3288 SoC (FireFly RK3288
>> board) which uses the DW2 USB core. I have noticed that when
>> connecting a USB device there is unreasonable high CPU load produced
>> by the USB interrupts.
> 
> That's a normal problem with that kind of hardware.  I've seen devices
> with that type of USB core take a 30% cpu usage just when you plug a USB
> keyboard into the device.
> 
> There's not much the kernel can do about horrible hardware, sorry, go
> complain to the device manufacturer :(
> 
>> Here is one example with a MIDI keyboard connected on USB (not really
>> doing anything on it)
>>
>>     79     2 root     SW       0   0%  19% [irq/45-dwc2_hso]
>>     78     2 root     SW       0   0%  11% [irq/45-ff540000]
> 
> It doesn't matter if anything is happening on the device, USB goes and
> polls the device all the time, that's just the way that the protocol
> works.  With hardware like this, that polling is done by the kernel
> driver/CPU and does not have offload capability to the USB controller to
> handle this type of housekeeping.  Because of that, you see tons of CPU
> interrupts and a high load.
> 
> Again, not much we can do about that, sorry :(
> 
> good luck!
> 
> greg k-h
> --
> To unsubscribe from this list: send the line "unsubscribe linux-usb" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  https://urldefense.proofpoint.com/v2/url?u=http-3A__vger.kernel.org_majordomo-2Dinfo.html&d=DwIBAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=mnEzj_Q87pyYPBxV3CbMXuG55KNzxqhYf7tuz517xjg&s=eftxO7ffuUu2L87Mqwa6K8p7s1mpI__boRvzDI70HvY&e=
> 
dwc2 HW doesn't track (u)frames internally. SW forced to track (u)frames 
by unmasking SOF interrupts. This is why when any device with periodic 
EP connected to port require to unmask SOF's as result seen high CPU 
load. dwc2 SW dynamically mask/unmask SOF interrupts depend on using 
periodic EP by connected device.
There are no any polling in SW.

Lot of HW functionality delegated to dwc2 driver to reduce gate count in HW.
This "horrible" core very small and cheap.

good luck!

Minas
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
