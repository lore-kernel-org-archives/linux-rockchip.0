From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/4] clk: rockchip: fix cpuclk mux bit of big cpu-cluster
Date: Wed, 20 Jan 2016 23:25:57 +0100
Message-ID: <2048998.GeQnePRN87@phil>
References: <1453326560-20475-1-git-send-email-heiko@sntech.de>
 <56A004E3.5000309@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56A004E3.5000309-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, xf-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 20. Januar 2016, 14:06:27 schrieb Stephen Boyd:
> On 01/20/2016 01:49 PM, Heiko Stuebner wrote:
> > Both clusters have their mux bit in bit 7 of their respective register.
> > For whatever reason the big cluster currently lists bit 15 which is
> > definitly wrong.
> > 
> > Fixes: 3536c97a52db ("clk: rockchip: add rk3368 clock controller")
> > Reported-by: Zhang Qing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > ---
> > I plan to include them into my clk-fixes branch, so posted for reference
> > and possible objections ;-)
> 
> None of these patches are fixes to regressions introduced in the merge
> window for v4.5, so we wouldn't be considering them for clk-fixes. We
> can certainly queue them up in clk-next for v4.6 and let stable process
> funnel them to the right stable trees though.

ok, I'll move them over to that part then :-)
