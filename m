From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 1/3] USB: Export usb_wakeup_enabled_descendants()
Date: Mon, 22 Jun 2015 16:52:22 -0700
Message-ID: <1435017144-2971-2-git-send-email-dianders@chromium.org>
References: <1435017144-2971-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1435017144-2971-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: Robert Schlabbach <Robert.Schlabbach-hi6Y0CQ0nG0@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Pratyush Anand <pratyush.anand-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Matthew Garrett <mjg59-JW9irJGTvgXQT0dZR+AlfA@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Petr Mladek <pmladek-AlSwsSmVLrQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Peter Chen <peter.chen-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Zhuang Jin Can <jin.can.zhuang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

In (e583d9d USB: global suspend and remote wakeup don't mix) we
introduced wakeup_enabled_descendants() as a static function.  We'd
like to use this function in USB controller drivers to know if we
should keep the controller on during suspend time, since doing so has
a power impact.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/usb/core/hub.c  | 7 ++++---
 include/linux/usb/hcd.h | 5 +++++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 43cb2f2..fdc59db 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -3034,13 +3034,14 @@ static int usb_disable_remote_wakeup(struct usb_device *udev)
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
@@ -3149,7 +3150,7 @@ int usb_port_suspend(struct usb_device *udev, pm_message_t msg)
 	 * Therefore we will turn on the suspend feature if udev or any of its
 	 * descendants is enabled for remote wakeup.
 	 */
-	else if (PMSG_IS_AUTO(msg) || wakeup_enabled_descendants(udev) > 0)
+	else if (PMSG_IS_AUTO(msg) || usb_wakeup_enabled_descendants(udev) > 0)
 		status = set_port_feature(hub->hdev, port1,
 				USB_PORT_FEAT_SUSPEND);
 	else {
@@ -3548,7 +3549,7 @@ static int hub_suspend(struct usb_interface *intf, pm_message_t msg)
 		}
 		if (udev)
 			hub->wakeup_enabled_descendants +=
-					wakeup_enabled_descendants(udev);
+					usb_wakeup_enabled_descendants(udev);
 	}
 
 	if (hdev->do_remote_wakeup && hub->quirk_check_port_auto_suspend) {
diff --git a/include/linux/usb/hcd.h b/include/linux/usb/hcd.h
index c9aa779..30d74c9 100644
--- a/include/linux/usb/hcd.h
+++ b/include/linux/usb/hcd.h
@@ -626,11 +626,16 @@ extern wait_queue_head_t usb_kill_urb_queue;
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
2.4.3.573.g4eafbef
