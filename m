From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Mon, 30 Oct 2017 10:14:54 -0700
Message-ID: <CAD=FV=UsYccsvicnce8wDpt3LaLQE23wdc7a4-m7OOhNS2JKgA@mail.gmail.com>
References: <20171026202200.6417-1-dianders@chromium.org> <60370001.40630.1509205907119@email.1und1.de>
 <CAD=FV=WK_9AsutYhOTh9HMXwac1PJEXtHvXUYnztGmp6H3gbWg@mail.gmail.com> <87h8uhdoj2.fsf@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87h8uhdoj2.fsf-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 30, 2017 at 1:32 AM, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> Hi,
>
> Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>> Hi,
>>
>> On Sat, Oct 28, 2017 at 8:51 AM, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org> wrote:
>>> Hi Doug,
>>>
>>> [add Felipe since this should go through his tree]
>>
>> Ah.  Sorry Felipe!  I know you've landed some dwc2 stuff in the past
>
> No problems :-)
>
>> but for some reason get_maintainer didn't ID you so I thought maybe
>> you weren't doing it anymore.  Please let me know if you'd like me to
>> send this to you again with collected Reviewed-by and Tested-by tags.
>
> Yeah, please resend with all tags collected, however let's wait for a
> week or so and give other people time to catch up. I already sent my
> pull request to Greg, this would, anyway, go into the -rc cycle.

Doh!  I just re-read this one more time (after sending v3) and
realized I had read it incorrectly.  I read it as "please send the
patch with the tags and I'll wait a week before landing", but you
actually said "please wait a week before re-sending".  Sorry for the
noise.  In the very least, you should be on the "To" line now so if
anyone else has any extra tags it should be very easy for you to see
them.

Right that there's no massive urgency.  It's been broken forever.


> Please add a Cc stable tag too, if necessary.

Good point.  It's a little weird since it doesn't "fix" any specific
commit, so I guess it will be up to stable folks to decide how far to
go back.  The dwc2 devices I work with are actually on 3.14, but we
have some pretty massive backports related to dwc2 there...


-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
