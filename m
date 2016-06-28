From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 12:31:19 -0700
Message-ID: <CAD=FV=UNMhDYy3r+4a4FF8Ndwt+qNuV7_pOC=kzoaUxLfYYp4Q@mail.gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160628185244.GT17217@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160628185244.GT17217-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Liam Girdwood <lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Mark,

On Tue, Jun 28, 2016 at 11:52 AM, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> On Mon, Jun 27, 2016 at 09:53:11PM -0700, Douglas Anderson wrote:
>
>> Note also that the upper bound of usleep_range probably shouldn't be a
>> full 1 ms longer than the lower bound since I've seen plenty of hardware
>> with a ramp rate of ~5000 uS / uV and for small jumps the total delays
>> are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
>> and use 10%
>
> Surely the upper bound here is just an upper bound and we're essentially
> just saying that "anything over minimum is fine" here?  Though now I
> look at the implementation it seems it's doing something entirely
> unehelpful and actually trying to delay for the longest possible time
> which doesn't seem like what we want or what the usleep_range() API
> would suggest :(

Yeah, you're thinking like someone who wants your computer to perform
fast.  That's just simply the wrong mentality to have (how dare you?).
You need to think about power savings, and a sleeping computer is a
computer that doesn't draw much power.  Thus, you want to sleep as
long as you can.  :-P

In all seriousness, I think the design for usleep_range() is to try to
batch up wakeups to allow longer periods of sleeping and to optimize
power.  This you want to sleep as long as is allowable and then if you
happen to wakeup for some other reason anyway then you process all the
things whose minimum has passed.  IIRC it was trying to get back to
the good old days of only having jiffies where everyone was
synchronized on the tick and you could sleep till the next tick after
all the work was done.  When you think of it this way then sleeping to
the max makes sense.  ...but it also means that you need to be careful
and really not set the max too high.

Of course, in practice I've found that often usleep_range() 99% of the
time sleeps for the max.  That can lead to some very subtle bugs if
your min sleep is not long enough (!).


-Doug
