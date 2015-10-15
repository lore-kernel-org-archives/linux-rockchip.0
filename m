From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] usb: dwc2: host: Fix use after free w/ simultaneous irqs
Date: Thu, 15 Oct 2015 16:38:20 -0700
Message-ID: <CAD=FV=UExajBowJ9CRJEiutzSL5TaKdDFeuZJGcOrQsj6PAx8A@mail.gmail.com>
References: <1444863089-24636-1-git-send-email-dianders@chromium.org>
	<2B3535C5ECE8B5419E3ECBE30077290901DC399145@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC399145-Yu2iAY70zvrYN67daEjeMPufCSb+aD3WLzEdoUbNIic@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org" <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

John,

On Thu, Oct 15, 2015 at 4:21 PM, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> Passing a NULL qtd to some of the subcases will lead to a NULL
> pointer dereference in that function or some function that it
> calls.
>
> I think you could just check the qtd after each call and bail if
> it's not ok.

I worry a little bit about ignoring an interrupt that we've already
acknowledged, but if you think that's safer I can certainly change the
patch.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
