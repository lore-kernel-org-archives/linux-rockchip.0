From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 22:34:55 +0200
Message-ID: <147626835.p3yipu2Yfe@phil>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <alpine.DEB.2.20.1610110908240.7794@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 11. Oktober 2016, 09:14:38 CEST schrieb Thomas Gleixner:
> On Mon, 10 Oct 2016, Douglas Anderson wrote:
> > Users of usleep_range() expect that it will _never_ return in less time
> > than the minimum passed parameter.  However, nothing in any of the code
> 
> > ensures this.  Specifically:
> There is no such guarantee for that interface and never has been, so how
> did you make sure that none of the existing users is relying on this?
>
> You can't just can't just declare that all all of the users expect that and
> be done with it.

It may be my personal ignorance for not finding this explained, but the 
function documentation [0] states "min ... Minimum time in usecs to sleep"
which sounds pretty guaranteed to me.

One should of course make sure to not break anything intentionally, but having 
things expect to work outside these parameters sounds somewhat broken

If the specified values are flexible beyond their stated range, I guess the 
documentation should be updated to reflect that.


[0] https://www.kernel.org/doc/htmldocs/device-drivers/API-usleep-range.html
