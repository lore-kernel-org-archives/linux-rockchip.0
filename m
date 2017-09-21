From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 0/4] phy: rockchip-typec: Set "flip" properly; some
 cleanups; fix swing
Date: Thu, 21 Sep 2017 16:06:49 +0530
Message-ID: <9d892f99-d48d-b034-8f50-2719ef07d0b1@ti.com>
References: <20170919195630.18747-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170919195630.18747-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: shawnn-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dnschneid-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Douglas,

On Wednesday 20 September 2017 01:26 AM, Douglas Anderson wrote:
> When connecting to certain DP monitors it was observed that only one
> of the two orientations of the type C to DP cable would work.
> Debugging showed that the problem was that we needed to set the type C
> "flip" state earlier.  Once we did this, problems went away.
> 
> While trying to dig into this problem and some others, I found that
> the proper documentation for the Type C PHY was available to me.  This
> allowed me to cleanup the magic numbers in the funtion that I was
> touching and also fix a few minor issues that (luckily) haven't caused
> any problems yet.
> 
> I also found that aux channel communications were flaky on some
> adapters until I adjusted the voltage swing.

From the commit log, looks like only the 1st and 4th patch are fixes. Only
those can go in -rc cycle. But I can't apply the 4th patch without the 2nd and
3rd patch.

Can you resend the series such that 2nd and 3rd patch apply on top of 1st and
4th patch?

Thanks
Kishon
