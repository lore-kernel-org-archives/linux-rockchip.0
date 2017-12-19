From: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
Subject: Re: [PATCH v4] usb: dwc2: host: Don't retry NAKed transactions
 right away
Date: Tue, 19 Dec 2017 17:56:40 +0100 (CET)
Message-ID: <581796864.256888.1513702600488@email.1und1.de>
References: <20171212183031.46772-1-dianders@chromium.org>
 <CAD=FV=WksZcVY1fu-KX9E-cPvBEA6LaOMrAoAgh=GDWDtjCWFw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=WksZcVY1fu-KX9E-cPvBEA6LaOMrAoAgh=GDWDtjCWFw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johan Hovold <johan-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alyssa Rosenzweig <alyssa-kyPdXwtBHbIqQpLF9uBUvQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

> Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> hat am 19. Dezember 2017 um 16:57 geschrieben:
> 
> 
> Felipe,
> 
> On Tue, Dec 12, 2017 at 10:30 AM, Douglas Anderson
> <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> ...
> 
> I don't mean to be a pest, but I'm hoping that we can land this
> somewhere (if nothing else in your /next tree) just so it doesn't miss
> another release cycle.  If you're not so keen on collecting dwc2 host
> patches these days, I can also see if Greg KH is willing to take this
> directly into his tree.  Please let me know.  Thanks for your time!
> :)
> 
> -Doug

it's applied to next:

https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git/commit/?h=next&id=38d2b5fb75c15923fb89c32134516a623515bce4
