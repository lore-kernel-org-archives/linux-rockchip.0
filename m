From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
Date: Thu, 23 Apr 2020 16:20:25 -0400
Message-ID: <CAMdYzYppYADDTGD26uO4zpUCZWSW8eRpcdtLsUQGDqppW3_7vA@mail.gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com> <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
 <9e5546de-f5b6-7f60-96d0-612249e832ce@arm.com> <CAMdYzYrZhof2DtrNH4+Amu1ZN-6sWw57rC+2joqXSyWVn99wWw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMdYzYrZhof2DtrNH4+Amu1ZN-6sWw57rC+2joqXSyWVn99wWw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, kishon-l0cyMroinI0@public.gmane.org, katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

As a status update for this, I have spent quite a while working on this driver.
In the end, it appears the available documentation is insufficient.
The original driver calls a few registers that are not documented in the TRM.

What I have found is the following:
The 2.0 functionality works as documented in the original rockchip driver.
The 3.0 functionality does not.
A 3.0 device does not trigger the interrupt like a 2.0 device does.
A 3.0 device causes 0x34 bit 6 to toggle, which is usb3otg_pipe3_phystatus
I've enabled all usb3phy interrupts, and cannot get a 3.0 device to
trigger any of them.

Did the original driver ever work correctly?
