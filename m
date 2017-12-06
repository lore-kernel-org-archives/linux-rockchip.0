From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v3 1/2] usb: dwc2: host: Don't retry NAKed transactions
 right away
Date: Wed, 6 Dec 2017 06:06:35 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909026A0246C8@US01WEMBX2.internal.synopsys.com>
References: <20171030170802.14489-1-dianders@chromium.org>
 <dcee1898-a952-dcd3-8206-ab7c15eb589a@i2se.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, "balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org" <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org" <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, "linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 12/05/2017 08:18 AM, Stefan Wahren wrote:
> Hi Felipe,
> Hi John,
>
>
> Am 30.10.2017 um 18:08 schrieb Douglas Anderson:
>> On rk3288-veyron devices on Chrome OS it was found that plugging in an
>> Arduino-based USB device could cause the system to lockup, especially
>> if the CPU Frequency was at one of the slower operating points (like
>> 100 MHz / 200 MHz).
>>
>> Upon tracing, I found that the following was happening:
>> * The USB device (full speed) was connected to a high speed hub and
>>    then to the rk3288.  Thus, we were dealing with split transactions,
>>    which is all handled in software on dwc2.
>> * Userspace was initiating a BULK IN transfer
>> * When we sent the SSPLIT (to start the split transaction), we got an
>>    ACK.  Good.  Then we issued the CSPLIT.
>> * When we sent the CSPLIT, we got back a NAK.  We immediately (from
>>    the interrupt handler) started to retry and sent another SSPLIT.
>> * The device kept NAKing our CSPLIT, so we kept ping-ponging between
>>    sending a SSPLIT and a CSPLIT, each time sending from the interrupt
>>    handler.
>> * The handling of the interrupts was (because of the low CPU speed and
>>    the inefficiency of the dwc2 interrupt handler) was actually taking
>>    _longer_ than it took the other side to send the ACK/NAK.  Thus we
>>    were _always_ in the USB interrupt routine.
>> * The fact that USB interrupts were always going off was preventing
>>    other things from happening in the system.  This included preventing
>>    the system from being able to transition to a higher CPU frequency.
>>
>> As I understand it, there is no requirement to retry super quickly
>> after a NAK, we just have to retry sometime in the future.  Thus one
>> solution to the above is to just add a delay between getting a NAK and
>> retrying the transmission.  If this delay is sufficiently long to get
>> out of the interrupt routine then the rest of the system will be able
>> to make forward progress.  Even a 25 us delay would probably be
>> enough, but we'll be extra conservative and try to delay 1 ms (the
>> exact amount depends on HZ and the accuracy of the jiffy and how close
>> the current jiffy is to ticking, but could be as much as 20 ms or as
>> little as 1 ms).
>>
>> Presumably adding a delay like this could impact the USB throughput,
>> so we only add the delay with repeated NAKs.
>>
>> NOTE: Upon further testing of a pl2303 serial adapter, I found that
>> this fix may help with problems there.  Specifically I found that the
>> pl2303 serial adapters tend to respond with a NAK when they have
>> nothing to say and thus we end with this same sequence.
>>
>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> Cc: stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> Reviewed-by: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
>> ---
>>
>> Changes in v3:
>> - Add tested-by for Stefan Wahren
>> - Sent to Felipe Balbi as candiate to land this.
>> - Add Cc for stable (it's always been broken so go as far is as easy)
>>
>> Changes in v2:
>> - Address https://urldefense.proofpoint.com/v2/url?u=http-3A__crosreview.com_737520&d=DwICaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=U3o8uKoKhWme5_V9D-eeCkB11BFwt4KvWztBgdE9ZpA&m=Y_xpJ6Ks0XAK5_bQgmeQEvgKThZtPBQJ3cejNCGfEvM&s=olyPwyYvn_072esVwYxrCduKOKKJPUgc1YHX-CNhM1s&e= feedback
>>
>
> does it need a resend?
>

You can add my acked-by:

Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

Regards,
John

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
