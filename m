From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: host: Fix remote wakeup when not in DWC2_L2
Date: Thu, 29 Oct 2015 23:49:48 +0100
Message-ID: <3334755.enVybYgnYb@phil>
References: <1445544303-24202-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1445544303-24202-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, r.baldyga-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, balbi-l0cyMroinI0@public.gmane.org, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 22. Oktober 2015, 13:05:03 schrieb Douglas Anderson:
> In commit 734643dfbdde ("usb: dwc2: host: add flag to reflect bus
> state") we changed dwc2_port_suspend() not to set the lx_state
> anymore (instead it sets the new bus_suspended variable).  This
> introduced a bug where we would fail to detect device insertions if:
> 
> 1. Plug empty hub into dwc2
> 2. Plug USB flash drive into the empty hub.
> 3. Wait a few seconds
> 4. Unplug USB flash drive
> 5. Less than 2 seconds after step 4, plug the USB flash drive in again.
> 
> The dwc2_hcd_rem_wakeup() function should have been changed to look at
> the new bus_suspended variable.
> 
> Let's fix it.  Since commit b46146d59fda ("usb: dwc2: host: resume root
> hub on remote wakeup") talks about needing the root hub resumed if the
> bus was suspended, we'll include it in our test.
> 
> It appears that the "port_l1_change" should only be set to 1 if we were
> in DWC2_L1 (the driver currently never sets this), so we'll update the
> former "else" case based on this test.
> 
> Fixes: 734643dfbdde ("usb: dwc2: host: add flag to reflect bus state")
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

I've talked with Doug a lot about that problem today and from reading
this change and the referenced causing change, it looks correct
and good to me, so

Reviewed-by: Heiko Stuebner <heiko@sntech..de>
