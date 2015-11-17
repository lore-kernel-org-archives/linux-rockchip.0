From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 0/8] dwc2: Fix uframe scheduler + speed up the interrupt
 handler quite a bit
Date: Mon, 16 Nov 2015 16:51:16 -0800
Message-ID: <1447721484-22548-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This series now effectively has two purposes:
1. Speed up dwc2 interrupt latency.
2. Start fixing up the microframe scheduler.

...the two things were separate series in the past but they ended up
running into each other, so now they're combined.

To summarize what we have here:

1. usb: dwc2: rockchip: Make the max_transfer_size automatic

   No brainer.  Can land any time.

2. usb: dwc2: host: Get aligned DMA in a more supported way

   Although this touches a lot of code, it's mostly just deleting
   stuff.  The way this is working is nearly the same as tegra.  Biggest
   objection I expect is that it has too much duplication with tegra and
   musb.  I'd personally prefer to land it now and remove duplication
   later, but up to others.  Speeding up interrupt handler helps with
   SOF scheduling, so this is not just a dumb optimization.

3. usb: dwc2: host: Add scheduler tracing

   Useful for patches below.

4. usb: dwc2: host: Rewrite the microframe scheduler

   Seems hard to believe this would make things worse since the old
   scheduler is easy to break.  Certainly microframe scheduler isn't
   amazing, but small steps, right?

5. usb: dwc2: host: Keep track of and use our scheduled microframe

   Needs review, but seems simple to me.  Maybe doesn't fix everything,
   but fixes some things...

6. usb: dwc2: host: Assume all devices are on one single_tt hub

   Questionable, but maybe worth landing it?

7. usb: dwc2: host: Add a delay before releasing periodic bandwidth

   Pretty much the same patch I sent before, just rebased.

8. usb: dwc2: host: Giveback URB in tasklet context

   Simple and a nice speedup assuming it doesn't break anything.  My
   belief is that our scheduler is already broken enough that things
   aren't made worse by this patch (and lots of things are made better
   by speeding up the interrupt handler and not mising SOFs), but
   welcome other testing and opinions.

===

Below is discussion of some of the speedup stuff.

===

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

Changes in v3:
- scheduler tracing new for v3.
- The uframe scheduler patch is folded into optimization series.
- Optimize uframe scheduler "single uframe" case a little.
- uframe scheduler now atop logging patches.
- uframe scheduler now before delayed bandwidth release patches.
- Add defines like EARLY_FRAME_USEC
- Reorder dwc2_deschedule_periodic() in prep for future patches.
- uframe scheduler now shows real usefulness w/ future patches!
- Keep track and use our uframe new for v3.
- Assuming single_tt is new for v3; not terribly well tested (yet).
- Moved periodic bandwidth release delay patch later in the series.

Changes in v2:
- Add a warn if setup_dma is not aligned (Julius Werner).
- Totally rewrote uframe scheduler again after writing test code.
- uframe scheduler atop delayed bandwidth release patches.
- Periodic bandwidth release delay new for V2
- Commit message now says that URB giveback change needs delay change.

Douglas Anderson (8):
  usb: dwc2: rockchip: Make the max_transfer_size automatic
  usb: dwc2: host: Get aligned DMA in a more supported way
  usb: dwc2: host: Add scheduler tracing
  usb: dwc2: host: Rewrite the microframe scheduler
  usb: dwc2: host: Keep track of and use our scheduled microframe
  usb: dwc2: host: Assume all devices are on one single_tt hub
  usb: dwc2: host: Add a delay before releasing periodic bandwidth
  usb: dwc2: host: Giveback URB in tasklet context

 drivers/usb/dwc2/core.c      |  21 +--
 drivers/usb/dwc2/core.h      |  20 ++-
 drivers/usb/dwc2/hcd.c       | 177 +++++++++----------
 drivers/usb/dwc2/hcd.h       |  30 ++--
 drivers/usb/dwc2/hcd_intr.c  |  73 +-------
 drivers/usb/dwc2/hcd_queue.c | 407 ++++++++++++++++++++++++++++++-------------
 drivers/usb/dwc2/platform.c  |   2 +-
 7 files changed, 416 insertions(+), 314 deletions(-)

-- 
2.6.0.rc2.230.g3dd15c0
