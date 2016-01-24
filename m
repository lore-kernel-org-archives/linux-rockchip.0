From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v5 20/21] usb: dwc2: host: Totally redo the microframe scheduler
Date: Sat, 23 Jan 2016 21:44:58 -0800
Message-ID: <CAD=FV=XJ1h1nOmFMNXUkjnrk=CGk27GHNvYAAQvnOz6Fv0eKWA@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
	<1453486736-15358-21-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1453486736-15358-21-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Jan 22, 2016 at 10:18 AM, Douglas Anderson
<dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> This totally reimplements the microframe scheduler in dwc2 to attempt to
> handle periodic splits properly.  The old code didn't even try, so this
> was a significant effort since periodic splits are one of the most
> complicated things in USB.
>
> I've attempted to keep the old "don't use the microframe" schduler
> around for now, but not sure it's needed.  It has also only been lightly
> tested.
>
> I think it's pretty certain that this scheduler isn't perfect and might
> have some bugs, but it seems much better than what was there before.
> With this change my stressful USB test (USB webcam + USB audio + some
> keyboards) crackles less.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v5:
> - Moved defines outside of ifdef to avoid gadget-only compile error.
>
> Changes in v4:
> - Figured out what the microframe scheduler was supposed to do.
> - Microframe rewrite is totally different from v3, hopefully more right.
> - Microframe rewrite is later in the series now.
>
> Changes in v3:
> - The uframe scheduler patch is folded into optimization series.
> - Optimize uframe scheduler "single uframe" case a little.
> - uframe scheduler now atop logging patches.
> - uframe scheduler now before delayed bandwidth release patches.
> - Add defines like EARLY_FRAME_USEC
> - Reorder dwc2_deschedule_periodic() in prep for future patches.
> - uframe scheduler now shows real usefulness w/ future patches!
> - Assuming single_tt is new for v3; not terribly well tested (yet).
> - Keep track and use our uframe new for v3.
>
> Changes in v2:
> - Totally rewrote uframe scheduler again after writing test code.
> - uframe scheduler atop delayed bandwidth release patches.
>
>  drivers/usb/dwc2/core.h      |   85 ++-
>  drivers/usb/dwc2/hcd.c       |   87 ++-
>  drivers/usb/dwc2/hcd.h       |   79 ++-
>  drivers/usb/dwc2/hcd_queue.c | 1208 +++++++++++++++++++++++++++++++++++-------
>  4 files changed, 1271 insertions(+), 188 deletions(-)

Needs more testing, but possibly the next version of this patch will
include <https://chromium-review.googlesource.com/#/c/323326/>.  If
you happen to be testing / reviewing this patch, please consider it
with the proposed fixup.  I'm happy to send out a squashed version if
that makes someone's review easier.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
