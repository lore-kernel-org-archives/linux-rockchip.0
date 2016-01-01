From: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Subject: Re: [PATCH] [BUG] clk: rockchip: don't mark clock names as initconst
Date: Fri, 01 Jan 2016 22:50:43 +0100
Message-ID: <6692523.e5K11FUKe0@wuerfel>
References: <2791943.MBZ53mI7Gp@wuerfel> <1799610.nrn5HMCSxL@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1799610.nrn5HMCSxL@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Friday 01 January 2016 18:06:30 Heiko St=FCbner wrote:
> =

> "[PATCH] clk: rockchip: fix section mismatches with new child-clocks" [0]
> =

> should be in Mike's + Stephen's inbox since last week as well, which move=
s the =

> offending new elements into separate entities, which can have __initdata =

> attributes again.
> =

> =

> Heiko
> =

> [0] http://www.spinics.net/lists/arm-kernel/msg471295.html

The patch looks good, but for some reason, the next-20151223 kernel had no
problem and next-20151231 was broken, the top commits in drivers/clk/rockch=
ips
are:

commit a915e30dd26ea5f3cc2e2c044aba38ee5973d3fa
Merge: ce6dd266d535 b0158bb27c7b
Author: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Date:   Wed Dec 23 13:08:56 2015 -0800

    Merge branch 'clk-rockchip' into clk-next

commit b0158bb27c7b6e9843f541c17b24dbd964b76db6
Author: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Date:   Tue Dec 22 22:28:01 2015 +0100

    clk: rockchip: rk3036: include downstream muxes into fractional dividers
    =

    Use the newly introduced possibility to combine the fractional dividers


	Arnd
