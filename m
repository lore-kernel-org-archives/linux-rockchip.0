From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 0/4] dwc2: Speed up the interrupt handler quite a bit
Date: Fri,  6 Nov 2015 17:23:58 -0800
Message-ID: <1446859442-5413-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The dwc2 interrupt handler is quite slow.  On rk3288 with a few things
plugged into the ports and with cpufreq locked at 696MHz (to simulate
real world idle system), I can easily observe dwc2_handle_hcd_intr()
taking > 120 us, sometimes > 150 us.  Note that SOF interrupts come
every 125 us with high speed USB, so taking > 120 us in the interrupt
handler is a big deal.

The patches here will speed up the interrupt controller significantly.
After this series, I have a hard time seeing the interrupt controller
taking > 20 us and I don't ever see it taking > 30 us ever in my tests
unless I bring the cpufreq back down.  With the cpufreq at 126 MHz I can
still see the interrupt handler take > 50 us, so I'm sure we could
improve this further.  ...but hey, it's a start.

This series also shows big speed improvements when testing with a USB
Gigabit Ethernet adapter.  Previously the tested adapter would top out
at about 15MB/s.  After these changes it gets about 23MB/s.

In addition to the speedup, this series also has the advantage of
simplifying dwc2 and making it more like everyone else (introducing the
possibility of future simplifications).  Picking this series up will
help your diffstat and likely win you friends.  ;)

===

Steps for gathering data with ftrace:

cd /sys/devices/system/cpu/cpu0/cpufreq/
echo userspace > scaling_governor
echo 696000 > scaling_setspeed

cd /sys/kernel/debug/tracing
echo 0 > tracing_on
echo "" > trace
echo nop > current_tracer
echo function_graph > current_tracer
echo dwc2_handle_hcd_intr > set_graph_function
echo dwc2_handle_common_intr >> set_graph_function
echo dwc2_handle_hcd_intr > set_ftrace_filter
echo dwc2_handle_common_intr >> set_ftrace_filter
echo funcgraph-abstime > trace_options
echo 70 > tracing_thresh
echo 1 > /sys/kernel/debug/tracing/tracing_on

sleep 2
cat trace

===
NOTE: This series doesn't replace any other patches I've submitted
recently, it merely adds another set of changes that upstream could
benefit from.

Changes in v2:
- Add a warn if setup_dma is not aligned (Julius Werner).
- Periodic bandwidth release delay new for V2
- Commit message now says that URB giveback change needs delay change.

Douglas Anderson (4):
  usb: dwc2: rockchip: Make the max_transfer_size automatic
  usb: dwc2: host: Get aligned DMA in a more supported way
  usb: dwc2: host: Add a delay before releasing periodic bandwidth
  usb: dwc2: host: Giveback URB in tasklet context

 drivers/usb/dwc2/core.c      |  21 +---
 drivers/usb/dwc2/hcd.c       | 174 +++++++++++++++----------------
 drivers/usb/dwc2/hcd.h       |  16 ++-
 drivers/usb/dwc2/hcd_intr.c  |  65 ------------
 drivers/usb/dwc2/hcd_queue.c | 239 ++++++++++++++++++++++++++++++++-----------
 drivers/usb/dwc2/platform.c  |   2 +-
 6 files changed, 273 insertions(+), 244 deletions(-)

-- 
2.6.0.rc2.230.g3dd15c0
