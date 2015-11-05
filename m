From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/3] dwc2: Speed up the interrupt handler quite a bit
Date: Thu, 05 Nov 2015 20:18:56 +0100
Message-ID: <4257088.ij6Pk572Sd@phil>
References: <1446677585-28582-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446677585-28582-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, balbi-l0cyMroinI0@public.gmane.org, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. November 2015, 14:53:02 schrieb Douglas Anderson:
> The dwc2 interrupt handler is quite slow.  On rk3288 with a few things
> plugged into the ports and with cpufreq locked at 696MHz (to simulate
> real world idle system), I can easily observe dwc2_handle_hcd_intr()
> taking > 120 us, sometimes > 150 us.  Note that SOF interrupts come
> every 125 us with high speed USB, so taking > 120 us in the interrupt
> handler is a big deal.
> 
> The patches here will speed up the interrupt controller significantly.
> After this series, I have a hard time seeing the interrupt controller
> taking > 20 us and I don't ever see it taking > 30 us ever in my tests
> unless I bring the cpufreq back down.  With the cpufreq at 126 MHz I can
> still see the interrupt handler take > 50 us, so I'm sure we could
> improve this further.  ...but hey, it's a start.
> 
> In addition to the speedup, this series also has the advantage of
> simplifying dwc2 and making it more like everyone else (introducing the
> possibility of future simplifications).  Picking this series up will
> help your diffstat and likely win you friends.  ;)

I gave this a simple spin on my veyron-pinky with both a device attached 
directly to the port as well as with an usb-hub in between. Everything was 
still working smoothly, so

Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
