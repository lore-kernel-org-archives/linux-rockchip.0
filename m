From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [BUG] clk: rockchip: rk3288: rockchip_mmc_get_phase: invalid clk
 rate
Date: Thu, 01 Nov 2018 11:44:33 +0100
Message-ID: <3121572.l3zVcpjBom@diego>
References: <d90cc0db-4fe0-0827-5165-3c9883632e2c@halemmerich.com>
 <28d02af2-0196-2548-8802-b06f025df664@halemmerich.com>
 <dd6afc5e-02b2-bfdf-e4c9-f2c5ff001cd6@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <dd6afc5e-02b2-bfdf-e4c9-f2c5ff001cd6-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Hal Emmerich <hal-lDsPURAG5SfNnvze2onX6Q@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn, Hal,

Am Donnerstag, 1. November 2018, 02:20:03 CET schrieb Shawn Lin:
> On 2018/11/1 0:07, Hal Emmerich wrote:
> > Hello everyone,
> > 
> > When booting a veyron-speedy device with the rk3288 and kernel 4.19 I
> > get the following errors regarding the mmc and invalid clk rates:
> > 
> > 
> > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> > [    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
> 
> Sorry for late!
> 
> The log should be be improved as the mmc_phase clock my be
> temporarily orphaned before re-parenting to its parents when
> all things settled down. But we are definitely in trouble when
> seeing these log if mmc driver starts doing tuning.
> 
> Did you card boot normally in HS200/UHS mode? If yes, no things
> wrong happened.

I can see these messages as well, but only during initial bootup, when the
clock-tree gets assembled, like the logs above indicate as well and
mmc devices work fine for me so far.

So it really looks like simply the phase-clocks still being orphans at this
point and we could just make the log a bit less talkative.


Heiko
