From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v5 05/21] usb: dwc2: host: Avoid use of chan->qh after qh freed
Date: Fri, 22 Jan 2016 10:18:40 -0800
Message-ID: <1453486736-15358-6-git-send-email-dianders@chromium.org>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453486736-15358-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

When poking around with USB devices with slub_debug enabled, I found
another obvious use after free.  Turns out that in dwc2_hc_n_intr() I
was in a state when the contents of chan->qh was filled with 0x6b,
indicating that chan->qh was freed but chan still had a reference to
it.

Let's make sure that whenever we free qh we also make sure we remove a
reference from its channel.

The bug fixed here doesn't appear to be new--I believe I just got lucky
and happened to see it while stress testing.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v5: None
Changes in v4:
- Avoid use of chan->qh after qh freed new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd.c      |  8 ++++++++
 drivers/usb/dwc2/hcd_intr.c | 10 ++++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index bc4bdbc1534e..7783c8ba0173 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -164,6 +164,9 @@ static void dwc2_qh_list_free(struct dwc2_hsotg *hsotg,
 					 qtd_list_entry)
 			dwc2_hcd_qtd_unlink_and_free(hsotg, qtd, qh);
 
+		if (qh->channel && qh->channel->qh == qh)
+			qh->channel->qh = NULL;
+
 		spin_unlock_irqrestore(&hsotg->lock, flags);
 		dwc2_hcd_qh_free(hsotg, qh);
 		spin_lock_irqsave(&hsotg->lock, flags);
@@ -554,7 +557,12 @@ static int dwc2_hcd_endpoint_disable(struct dwc2_hsotg *hsotg,
 		dwc2_hcd_qtd_unlink_and_free(hsotg, qtd, qh);
 
 	ep->hcpriv = NULL;
+
+	if (qh->channel && qh->channel->qh == qh)
+		qh->channel->qh = NULL;
+
 	spin_unlock_irqrestore(&hsotg->lock, flags);
+
 	dwc2_hcd_qh_free(hsotg, qh);
 
 	return 0;
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 352c98364317..99efc2bd1617 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -1935,6 +1935,16 @@ static void dwc2_hc_n_intr(struct dwc2_hsotg *hsotg, int chnum)
 	}
 
 	dwc2_writel(hcint, hsotg->regs + HCINT(chnum));
+
+	/*
+	 * If we got an interrupt after someone called
+	 * dwc2_hcd_endpoint_disable() we don't want to crash below
+	 */
+	if (!chan->qh) {
+		dev_warn(hsotg->dev, "Interrupt on disabled channel\n");
+		return;
+	}
+
 	chan->hcint = hcint;
 	hcint &= hcintmsk;
 
-- 
2.7.0.rc3.207.g0ac5344
