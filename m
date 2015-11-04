From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 0/3] dwc2: Speed up the interrupt handler quite a bit
Date: Wed,  4 Nov 2015 14:53:02 -0800
Message-ID: <1446677585-28582-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
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


Douglas Anderson (3):
  usb: dwc2: rockchip: Make the max_transfer_size automatic
  usb: dwc2: host: Giveback URB in tasklet context
  usb: dwc2: host: Get aligned DMA in a more supported way

 drivers/usb/dwc2/core.c      |  21 +-----
 drivers/usb/dwc2/hcd.c       | 170 ++++++++++++++++++++-----------------------
 drivers/usb/dwc2/hcd.h       |  10 ---
 drivers/usb/dwc2/hcd_intr.c  |  65 -----------------
 drivers/usb/dwc2/hcd_queue.c |   7 +-
 drivers/usb/dwc2/platform.c  |   2 +-
 6 files changed, 85 insertions(+), 190 deletions(-)

-- 
2.6.0.rc2.230.g3dd15c0

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
