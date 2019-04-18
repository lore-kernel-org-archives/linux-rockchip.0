From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v2 2/5] USB: Export usb_wakeup_enabled_descendants()
Date: Wed, 17 Apr 2019 17:13:53 -0700
Message-ID: <20190418001356.124334-3-dianders@chromium.org>
References: <20190418001356.124334-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190418001356.124334-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Minas Harutyunyan <hminas-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: Amelie Delaunay <amelie.delaunay-qxv4g6HH51o@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kai-Heng Feng <kai.heng.feng-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, Nicolas Boichat <drinkcat-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Jon Flatley <jflat-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Artur Petrosyan <Arthur.Petrosyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, Mathias Nyman <mathias.nyman-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, Nicolas Saenz Julienne <nsaenzjulienne-l3A5Bk7waGM@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In (e583d9d USB: global suspend and remote wakeup don't mix) we
introduced wakeup_enabled_descendants() as a static function.  We'd
like to use this function in USB controller drivers to know if we
should keep the controller on during suspend time, since doing so has
a power impact.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
For relevant prior discussion of this idea, see:

https://lkml.kernel.org/r/1436207224-21849-4-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org

If I'm reading all the responses correctly folks were of the opinion
that this patch is still the right way to go.

Changes in v2: None

 drivers/usb/core/hub.c  | 7 ++++---
 include/linux/usb/hcd.h | 5 +++++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 8d4631c81b9f..5e8f3fa7ae5a 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -3174,13 +3174,14 @@ static int usb_disable_remote_wakeup(struct usb_device *udev)
 }
 
 /* Count of wakeup-enabled devices at or below udev */
-static unsigned wakeup_enabled_descendants(struct usb_device *udev)
+unsigned usb_wakeup_enabled_descendants(struct usb_device *udev)
 {
 	struct usb_hub *hub = usb_hub_to_struct_hub(udev);
 
 	return udev->do_remote_wakeup +
 			(hub ? hub->wakeup_enabled_descendants : 0);
 }
+EXPORT_SYMBOL_GPL(usb_wakeup_enabled_descendants);
 
 /*
  * usb_port_suspend - suspend a usb device's upstream port
@@ -3282,7 +3283,7 @@ int usb_port_suspend(struct usb_device *udev, pm_message_t msg)
 	 * Therefore we will turn on the suspend feature if udev or any of its
 	 * descendants is enabled for remote wakeup.
 	 */
-	else if (PMSG_IS_AUTO(msg) || wakeup_enabled_descendants(udev) > 0)
+	else if (PMSG_IS_AUTO(msg) || usb_wakeup_enabled_descendants(udev) > 0)
 		status = set_port_feature(hub->hdev, port1,
 				USB_PORT_FEAT_SUSPEND);
 	else {
@@ -3687,7 +3688,7 @@ static int hub_suspend(struct usb_interface *intf, pm_message_t msg)
 		}
 		if (udev)
 			hub->wakeup_enabled_descendants +=
-					wakeup_enabled_descendants(udev);
+					usb_wakeup_enabled_descendants(udev);
 	}
 
 	if (hdev->do_remote_wakeup && hub->quirk_check_port_auto_suspend) {
diff --git a/include/linux/usb/hcd.h b/include/linux/usb/hcd.h
index 695931b03684..ed4fbbd1b35f 100644
--- a/include/linux/usb/hcd.h
+++ b/include/linux/usb/hcd.h
@@ -652,11 +652,16 @@ extern wait_queue_head_t usb_kill_urb_queue;
 #define usb_endpoint_out(ep_dir)	(!((ep_dir) & USB_DIR_IN))
 
 #ifdef CONFIG_PM
+extern unsigned usb_wakeup_enabled_descendants(struct usb_device *udev);
 extern void usb_root_hub_lost_power(struct usb_device *rhdev);
 extern int hcd_bus_suspend(struct usb_device *rhdev, pm_message_t msg);
 extern int hcd_bus_resume(struct usb_device *rhdev, pm_message_t msg);
 extern void usb_hcd_resume_root_hub(struct usb_hcd *hcd);
 #else
+static inline unsigned usb_wakeup_enabled_descendants(struct usb_device *udev)
+{
+	return 0;
+}
 static inline void usb_hcd_resume_root_hub(struct usb_hcd *hcd)
 {
 	return;
-- 
2.21.0.593.g511ec345e18-goog
