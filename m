From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 07/21] usb: dwc2: hcd: fix split transfer schedule sequence
Date: Wed, 20 Jan 2016 21:04:18 -0800
Message-ID: <1453352672-27890-8-git-send-email-dianders@chromium.org>
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
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

We're supposed to keep outstanding splits in order.  Keep track of a
list of the order of splits and process channel interrupts in that
order.

Without this change and the following setup:
* Rockchip rk3288 Chromebook, using port ff540000
  -> Pluggable 7-port Hub with Charging (powered)
     -> Microsoft Wireless Keyboard 2000 in port 1.
     -> Das Keyboard in port 2.

...I find that I get dropped keys on the Microsoft keyboard (I'm sure
there are other combinations that fail, but this documents my test).
Specifically I've been typing "hahahahahahaha" on the keyboard and often
see keys dropped or repeated.

After this change the above setup works properly.  This patch is based
on a previous patch proposed by Yunzhi Li ("usb: dwc2: hcd: fix periodic
transfer schedule sequence")

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes in v4:
- fix split transfer schedule sequence new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/core.c     |  6 ++++++
 drivers/usb/dwc2/core.h     |  2 ++
 drivers/usb/dwc2/hcd.c      |  3 +++
 drivers/usb/dwc2/hcd.h      |  2 ++
 drivers/usb/dwc2/hcd_intr.c | 17 +++++++++++++++++
 5 files changed, 30 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 73f2771b7740..29f4bfe5970f 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1676,6 +1676,8 @@ void dwc2_hc_cleanup(struct dwc2_hsotg *hsotg, struct dwc2_host_chan *chan)
 
 	chan->xfer_started = 0;
 
+	list_del_init(&chan->split_order_list_entry);
+
 	/*
 	 * Clear channel interrupt enables and any unhandled channel interrupt
 	 * conditions
@@ -1868,6 +1870,10 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
 			ec_mc = 3;
 		else
 			ec_mc = 1;
+
+		/* Put ourselves on the list to keep order straight */
+		list_move_tail(&chan->split_order_list_entry,
+			       &hsotg->split_order);
 	} else {
 		if (dbg_hc(chan))
 			dev_vdbg(hsotg->dev, "no split\n");
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 7fb6434f4639..538cf38af0e4 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -657,6 +657,7 @@ struct dwc2_hregs_backup {
  *                      periodic_sched_ready because it must be rescheduled for
  *                      the next frame. Otherwise, the item moves to
  *                      periodic_sched_inactive.
+ * @split_order:        List keeping track of channels doing splits, in order.
  * @periodic_usecs:     Total bandwidth claimed so far for periodic transfers.
  *                      This value is in microseconds per (micro)frame. The
  *                      assumption is that all periodic transfers may occur in
@@ -780,6 +781,7 @@ struct dwc2_hsotg {
 	struct list_head periodic_sched_ready;
 	struct list_head periodic_sched_assigned;
 	struct list_head periodic_sched_queued;
+	struct list_head split_order;
 	u16 periodic_usecs;
 	u16 frame_usecs[8];
 	u16 frame_number;
diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
index d2daaea88d91..d2356d52ac7b 100644
--- a/drivers/usb/dwc2/hcd.c
+++ b/drivers/usb/dwc2/hcd.c
@@ -3151,6 +3151,8 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 	INIT_LIST_HEAD(&hsotg->periodic_sched_assigned);
 	INIT_LIST_HEAD(&hsotg->periodic_sched_queued);
 
+	INIT_LIST_HEAD(&hsotg->split_order);
+
 	/*
 	 * Create a host channel descriptor for each host channel implemented
 	 * in the controller. Initialize the channel descriptor array.
@@ -3164,6 +3166,7 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg, int irq)
 		if (channel == NULL)
 			goto error3;
 		channel->hc_num = i;
+		INIT_LIST_HEAD(&channel->split_order_list_entry);
 		hsotg->hc_ptr_array[i] = channel;
 	}
 
diff --git a/drivers/usb/dwc2/hcd.h b/drivers/usb/dwc2/hcd.h
index 42f2e4e233da..1b46e2e617cc 100644
--- a/drivers/usb/dwc2/hcd.h
+++ b/drivers/usb/dwc2/hcd.h
@@ -106,6 +106,7 @@ struct dwc2_qh;
  * @hc_list_entry:      For linking to list of host channels
  * @desc_list_addr:     Current QH's descriptor list DMA address
  * @desc_list_sz:       Current QH's descriptor list size
+ * @split_order_list_entry: List entry for keeping track of the order of splits
  *
  * This structure represents the state of a single host channel when acting in
  * host mode. It contains the data items needed to transfer packets to an
@@ -158,6 +159,7 @@ struct dwc2_host_chan {
 	struct list_head hc_list_entry;
 	dma_addr_t desc_list_addr;
 	u32 desc_list_sz;
+	struct list_head split_order_list_entry;
 };
 
 struct dwc2_hcd_pipe_info {
diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 2c521c00e5e0..577c91096a51 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -2067,6 +2067,7 @@ static void dwc2_hc_intr(struct dwc2_hsotg *hsotg)
 {
 	u32 haint;
 	int i;
+	struct dwc2_host_chan *chan, *chan_tmp;
 
 	haint = dwc2_readl(hsotg->regs + HAINT);
 	if (dbg_perio()) {
@@ -2075,6 +2076,22 @@ static void dwc2_hc_intr(struct dwc2_hsotg *hsotg)
 		dev_vdbg(hsotg->dev, "HAINT=%08x\n", haint);
 	}
 
+	/*
+	 * According to USB 2.0 spec section 11.18.8, a host must
+	 * issue complete-split transactions in a microframe for a
+	 * set of full-/low-speed endpoints in the same relative
+	 * order as the start-splits were issued in a microframe for.
+	 */
+	list_for_each_entry_safe(chan, chan_tmp, &hsotg->split_order,
+				 split_order_list_entry) {
+		int hc_num = chan->hc_num;
+
+		if (haint & (1 << hc_num)) {
+			dwc2_hc_n_intr(hsotg, hc_num);
+			haint &= ~(1 << hc_num);
+		}
+	}
+
 	for (i = 0; i < hsotg->core_params->host_channels; i++) {
 		if (haint & (1 << i))
 			dwc2_hc_n_intr(hsotg, i);
-- 
2.7.0.rc3.207.g0ac5344
