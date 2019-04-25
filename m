From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] usb: dwc2: Fix phy_reset_work compile error for peripheral-only config
Date: Thu, 25 Apr 2019 08:40:20 -0700
Message-ID: <20190425154021.4465-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, amstan@chromium.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, Randy Li <ayaka@soulik.info>, mka@chromium.org, ryandcase@chromium.org, jwerner@chromium.org, Elaine Zhang <zhangqing@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, kbuild test robot <lkp@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In commit a0a493835f9a ("usb: dwc2: optionally assert phy reset when
waking up") I added to code that is compiled in both the host and
peripheral configs but it referenced a structure member that I added
to a section that was only there for host or dual-mode configs.  That
led to the compile error:

>> drivers/usb/dwc2/core_intr.c:448:25: error: 'struct dwc2_hsotg' has no member named 'phy_reset_work'

We'll add a little helper function to schedule the work and then we
can have a dummy version of that helper in peripheral-only mode.

Fixes: a0a493835f9a ("usb: dwc2: optionally assert phy reset when waking up")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/usb/dwc2/core.h      | 3 +++
 drivers/usb/dwc2/core_intr.c | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 6698c7097499..152ac41dfb2d 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -1438,6 +1438,8 @@ int dwc2_restore_host_registers(struct dwc2_hsotg *hsotg);
 int dwc2_host_enter_hibernation(struct dwc2_hsotg *hsotg);
 int dwc2_host_exit_hibernation(struct dwc2_hsotg *hsotg,
 			       int rem_wakeup, int reset);
+static inline void dwc2_host_schedule_phy_reset(struct dwc2_hsotg *hsotg)
+{ schedule_work(&hsotg->phy_reset_work); }
 #else
 static inline int dwc2_hcd_get_frame_number(struct dwc2_hsotg *hsotg)
 { return 0; }
@@ -1461,6 +1463,7 @@ static inline int dwc2_host_enter_hibernation(struct dwc2_hsotg *hsotg)
 static inline int dwc2_host_exit_hibernation(struct dwc2_hsotg *hsotg,
 					     int rem_wakeup, int reset)
 { return 0; }
+static inline void dwc2_host_schedule_phy_reset(struct dwc2_hsotg *hsotg) {}
 
 #endif
 
diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
index 16ff33574116..6af6add3d4c0 100644
--- a/drivers/usb/dwc2/core_intr.c
+++ b/drivers/usb/dwc2/core_intr.c
@@ -445,7 +445,7 @@ static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
 			 * schedule it for later.
 			 */
 			if (hsotg->reset_phy_on_wake)
-				schedule_work(&hsotg->phy_reset_work);
+				dwc2_host_schedule_phy_reset(hsotg);
 
 			mod_timer(&hsotg->wkp_timer,
 				  jiffies + msecs_to_jiffies(71));
-- 
2.21.0.593.g511ec345e18-goog
