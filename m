From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Mon, 23 Nov 2015 16:28:04 -0800
Message-ID: <CAD=FV=UcqEbFuyAq=RpbjmazFGdOyqNgQWQC7UDeL2O1crKn=A@mail.gmail.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
	<1447721484-22548-7-git-send-email-dianders@chromium.org>
	<87lh9uf1fw.fsf@saruman.tx.rr.com>
	<CAD=FV=UW-AbY9GnYOS_2V=dZTkL6NiZsO4urpf==qjcRDaEMDA@mail.gmail.com>
	<2B3535C5ECE8B5419E3ECBE30077290901DC3D9354@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC3D9354-Yu2iAY70zvrYN67daEjeMPufCSb+aD3WLzEdoUbNIic@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

John,

On Thu, Nov 19, 2015 at 8:33 PM, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> Patches 1-3:
> Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>
> Patch 2:
> Tested-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>
> Tested on core version 3.20 using internal TE for un-aligned
> buffers.
>
> I haven't had time to look into the scheduling patches yet. But I
> agree with you that there are fundamental problems. I'll await
> your rewrite.

Thanks!  I'm going to attempt to at least get things reposted with
your tags before Thanksgiving.  I'm hopeful that I'll actually be able
to post a RFC patch for the microframe rewrite by then, too!  :)

I have something that seems to be sane at
<https://chromium-review.googlesource.com/#/c/313808/>, but it
obviously still needs a lot of cleanup.  I also need to pick all of
the things that have landed on Felipe's tree recently and rebase atop
those.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
