From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Wed, 25 Nov 2015 16:44:22 -0800
Message-ID: <CAD=FV=XtrsN60+VK-Y9ouyswXum4dY0v85x-yAyV3narSvUCGw@mail.gmail.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
	<1447721484-22548-7-git-send-email-dianders@chromium.org>
	<87lh9uf1fw.fsf@saruman.tx.rr.com>
	<CAD=FV=UW-AbY9GnYOS_2V=dZTkL6NiZsO4urpf==qjcRDaEMDA@mail.gmail.com>
	<2B3535C5ECE8B5419E3ECBE30077290901DC3D9354@US01WEMBX2.internal.synopsys.com>
	<CAD=FV=UcqEbFuyAq=RpbjmazFGdOyqNgQWQC7UDeL2O1crKn=A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAD=FV=UcqEbFuyAq=RpbjmazFGdOyqNgQWQC7UDeL2O1crKn=A@mail.gmail.com>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Nov 23, 2015 at 4:28 PM, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> John,
>
> On Thu, Nov 19, 2015 at 8:33 PM, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>> Patches 1-3:
>> Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>>
>> Patch 2:
>> Tested-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>>
>> Tested on core version 3.20 using internal TE for un-aligned
>> buffers.
>>
>> I haven't had time to look into the scheduling patches yet. But I
>> agree with you that there are fundamental problems. I'll await
>> your rewrite.
>
> Thanks!  I'm going to attempt to at least get things reposted with
> your tags before Thanksgiving.  I'm hopeful that I'll actually be able
> to post a RFC patch for the microframe rewrite by then, too!  :)
>
> I have something that seems to be sane at
> <https://chromium-review.googlesource.com/#/c/313808/>, but it
> obviously still needs a lot of cleanup.  I also need to pick all of
> the things that have landed on Felipe's tree recently and rebase atop
> those.

I didn't succeed at getting something postable.  :(  I could easily
repost some of the earlier patches (like fixing aligned memory, etc)
if there's a desire for those, but I figured I'd wait until I had
something postable for the microframe scheduler.

I've definitely made progress in the last few days and things are a
bit cleaner at <https://chromium-review.googlesource.com/#/c/313808/3>.
It's also working reasonably well, but I'd still like to understand
some of the behavior I'm seeing before I actually post it to the
mailing list.

I'm going to be away from my computer for about a week, so I'll plan
to pick this up again when I'm back...

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
