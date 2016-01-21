From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 10/21] usb: dwc2: host: Giveback URB in tasklet context
Date: Wed, 20 Jan 2016 21:04:21 -0800
Message-ID: <1453352672-27890-11-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In commit 94dfd7edfd5c ("USB: HCD: support giveback of URB in tasklet
context") support was added to give back the URB in tasklet context.
Let's take advantage of this in dwc2.

This speeds up the dwc2 interrupt handler considerably.

Note that this requires the change ("usb: dwc2: host: Add a delay before
releasing periodic bandwidth") to come first.

Note that, as per Alan Stern in
<https://patchwork.kernel.org/patch/7555771/>, we also need to make sure
that the extra delay before the device drivers submit more data doesn't
break the scheduler.  At the moment the scheduler is pretty broken (see
future patches) so it's hard to be 100% certain, but I have yet to see
any new breakage introduced by this delay.  ...and speeding up interrupt
processing for dwc2 is a huge deal because it means we've got a better
chance of not missing SOF interrupts.  That means we've got an overall
win here.

Note that when playing USB audio and using a USB webcam and having
several USB keyboards plugged in, the crackling on the USB audio device
is noticably reduced with this patch.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
Changes in v4:
- A bit earlier in the list of patches than in v3.

Changes in v3: None
Changes in v2:
- Commit message now says that URB giveback change needs delay change.

 drivers/usb/dwc2/hcd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index d2356d52ac7b..fa684c68b8f6 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -2336,9 +2336,7 @@ void dwc2_host_complete(struct dwc2_hsotg *hsotg, struct dwc2_qtd *qtd,
 	kfree(qtd->urb);
 	qtd->urb = NULL;
 
-	spin_unlock(&hsotg->lock);
 	usb_hcd_giveback_urb(dwc2_hsotg_to_hcd(hsotg), urb, status);
-	spin_lock(&hsotg->lock);
 }
 
 /*
@@ -2957,7 +2955,7 @@ static struct hc_driver dwc2_hc_driver = {
 	.hcd_priv_size = sizeof(struct wrapper_priv_data),
 
 	.irq = _dwc2_hcd_irq,
-	.flags = HCD_MEMORY | HCD_USB2,
+	.flags = HCD_MEMORY | HCD_USB2 | HCD_BH,
 
 	.start = _dwc2_hcd_start,
 	.stop = _dwc2_hcd_stop,
-- 
2.7.0.rc3.207.g0ac5344
