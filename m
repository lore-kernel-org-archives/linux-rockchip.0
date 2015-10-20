From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] usb: dwc2: host: Fix ahbcfg for rk3066
Date: Tue, 20 Oct 2015 16:33:53 -0700
Message-ID: <1445384033-17050-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Wu Liang Feng <wulf@rock-chips.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The comment for ahbcfg for rk3066 parameters (also used for rk3288)
claimed that ahbcfg was INCR16, but it wasn't.  Since the bits weren't
shifted properly, the 0x7 ended up being masked and we ended up
programming 0x3 for the HBstLen.  Let's set it to INCR16 properly.

As per Wu Liang Feng at Rockchip this may increase transmission
efficiency.  I did blackbox tests with writing 0s to a USB-based SD
reader (forcefully capping CPU Freq to try to measure efficiency):
  cd /sys/devices/system/cpu/cpu0/cpufreq
  echo userspace > scaling_governor
  echo 126000 > scaling_setspeed
  for i in $(seq 10); do
    dd if=/dev/zero of=/dev/sdb bs=1M count=750
  done

With the above tests I found that speeds went from ~15MB/s to ~18MB/s.
Note that most other tests I did (including reading from the same USB
reader) didn't show any difference in performance.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/usb/dwc2/platform.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 5859b0f..e61d773 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -108,7 +108,8 @@ static const struct dwc2_core_params params_rk3066 = {
 	.host_ls_low_power_phy_clk	= -1,
 	.ts_dline			= -1,
 	.reload_ctl			= -1,
-	.ahbcfg				= 0x7, /* INCR16 */
+	.ahbcfg				= GAHBCFG_HBSTLEN_INCR16 <<
+					  GAHBCFG_HBSTLEN_SHIFT,
 	.uframe_sched			= -1,
 	.external_id_pin_ctl		= -1,
 	.hibernation			= -1,
-- 
2.6.0.rc2.230.g3dd15c0
