From: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 20:25:41 +0200
Message-ID: <20161011182541.GA32165@rhlx01.hs-esslingen.de>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <alpine.DEB.2.20.1610110908240.7794@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1610110908240.7794@nanos>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 11, 2016 at 09:14:38AM +0200, Thomas Gleixner wrote:
> On Mon, 10 Oct 2016, Douglas Anderson wrote:
> > Users of usleep_range() expect that it will _never_ return in less time
> > than the minimum passed parameter.  However, nothing in any of the code
> > ensures this.  Specifically:
> 
> There is no such guarantee for that interface and never has been, so how
> did you make sure that none of the existing users is relying on this?
> 
> You can't just can't just declare that all all of the users expect that and
> be done with it.

Hmm, somehow I don't manage to follow these thoughts.

https://www.kernel.org/doc/htmldocs/device-drivers/API-usleep-range.html
(as a hopefully sufficiently authoritative source of documentation)
clearly specifies min to be
"Minimum time in usecs to sleep"
, which is what one would expect a two-param interface here to be
(minimum-maximum),
i.e. what would be the *natural* protocol I'd think.

Also, [finally...] starting to enforce the minimum time
is an additional *constraint* on the protocol,
i.e. it's not at all like we are getting more *liberal* here
(since usually getting more liberal in certain protocols
is what will cause trouble, I'd think).

Not to mention that
desiring a delay in processing most certainly is
what caused users of this API to decide to invoke it in the first place
(else they would just have chosen to carry on with delay-less processing
and be done with it).
And those users then surely wouldn't want to experience a behaviour
where the delay may be ended at any time,
however short that may end up being.


A related topic probably is
premature wakeups (e.g. signal-induced) of select() etc. protocol.

Greetings,

Andreas Mohr
