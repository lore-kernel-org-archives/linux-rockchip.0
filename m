From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 0/22] usb: dwc2: host: Fix and speed up all the stuff, especially with splits
Date: Thu, 28 Jan 2016 18:19:51 -0800
Message-ID: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, stefan.wahren@i2se.com, linux-rockchip@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This is a bit of catchall series for all the bug fix and performance
patches I've been working on over the last few months.  Note that for
dwc2 we need to do LOTS in software and need super low interrupt
latency, so most performance improvements actually fix real bugs.

Patches are structured to start with no-brainer stuff that could be
applied ASAP, especially things I've already gotten Acks for.  Things
get slightly more RFC / RFT like as we get farther down the series.
Anything that can be landed sooner rather than later (especially those
Acked long ago) would help in re-posts (I'm not biased, of course).

It's been a few months since my last post of this series.  In the
meantime I've added a bunch of small bugfixes to the start of it and
also TOTALLY REWROTE the microframe scheduler.  I'll say up front: I
know nothing about USB.  I haven't read the whole spec.  I'm not
terribly familiar with the OHCI, EHCI, and XHCI drivers in the kernel.
...and I'm pretty clueless overall.  Nevertheless, I've attempted to
write up a fancy scheduler based on the portion of the spec talking
about microframe scheduling requirements.  This rewritten scheduler does
seem to help when I start jamming lots of USB things into a hub, so
presumably the code is a reasonably starting point.  Given my current
understanding of USB the old code was fairly insane, so presumably even
if my new patch isn't perfect it's better than what we had.

Anyway, on to the patches:

1. usb: dwc2: rockchip: Make the max_transfer_size automatic

   No brainer.  Can land any time.

2. usb: dwc2: host: Get aligned DMA in a more supported way

   Although this touches a lot of code, it's mostly just deleting
   stuff.  The way this is working is nearly the same as tegra.  Biggest
   objection I expect is that it has too much duplication with tegra and
   musb.  I'd personally prefer to land it now and remove duplication
   later, but up to others.  Speeding up interrupt handler helps with
   SOF scheduling, so this is not just a dumb optimization.

3. usb: dwc2: host: Set host_rx_fifo_size to 525 for rk3066

   Seems like a good idea and small impact, but if someone hates it or
   it breaks on some Rockchip SoC, just drop it.  I've only tested on
   rk3288 so it would be nice if someone with access to more Rockchip
   SoCs can give a tested by.

4. usb: dwc2: host: Avoid use of chan->qh after qh freed

   Simple bugfix.  Unrelated to the series but thrown in here.

5. usb: dwc2: host: Always add to the tail of queues

   Big functionality improvement.  Small patch.  Suggest applying ASAP.

6. usb: dwc2: host: fix split transfer schedule sequence

   Unless I'm misunderstanding, this should be a no-brainer to fix.
   Could be some bikeshedding on how to fix this.  Let me know if/how
   you want me to spin.  Otherwise I'd say land it and it will fix a
   bunch of stuff.

7. usb: dwc2: host: Add scheduler tracing

   Shouldn't hurt anything.  If you have bikesheds, let me know.  Many
   future patches require this one just because they add additional
   traces.

8. usb: dwc2: host: Add a delay before releasing periodic bandwidth
9. usb: dwc2: host: Giveback URB in tasklet context

   I think we should take these.  They improve things a bunch and I have
   found no regressions due to them.  Additional testing appreciated, of
   course.

10. usb: dwc2: host: Properly set the HFIR

   I sent this out on its own, but since I'm resending the series I
   figured I'm jam it in here.  Can really go anywhere in the series or
   applied totally on its own.

11. usb: dwc2: host: There's not really a TT for the root hub

   Seems right to me, but if someone knows better then please drop.
   Wasn't part of the previous series so doesn't have any Tested-by
   tags, though Stefan did indicated that he tried it and it didn't
   appear to break anything for him.

   Can be applied totally on its own.

12. usb: dwc2: host: Use periodic interrupt even with DMA

   Just came up with this one recently so it's had slightly less
   testing.  ...but it certainly fixed a bunch of stuff.  Could probably
   be moved around in the series to be pretty much anywhere.  I don't
   think this has a huge impact until we fix the scheduler (below) but
   at the same time I'm pretty sure it's something that's been wrong for
   a long time.

13. usb: dwc2: host: Rename some fields in struct dwc2_qh
14. usb: dwc2: host: Reorder things in hcd_queue.c
15. usb: dwc2: host: Split code out to make dwc2_do_reserve()

   Cleanups to make future patches easier to understand.  Bikeshed away.
   All no-op changes.

16. usb: dwc2: host: Add scheduler logging for missed SOFs

   I found this to be quite helpful.  If you hate it, drop it from the
   series.

17. usb: dwc2: host: Manage frame nums better in scheduler

   Doesn't totally make sense on its own, but a good halfway point to
   the microframe scheduler.  ...and shouldn't regress anything.  Allows
   us to do the "Properly set even/odd frame" patch below which
   definitely improves things.

18. usb: dwc2: host: Schedule periodic right away if it's time

   Yet another small change to make scheduling tighter.

19. usb: dwc2: host: Add dwc2_hcd_get_future_frame_number() call

   Prep for ("usb: dwc2: host: Properly set even/odd frame")

20. usb: dwc2: host: Properly set even/odd frame

   Helps quite a bit.  Helps even more after the redone microframe
   scheduler.  Feel free to tidy up if you see easy ways to do this.
   Maybe someone has a better way to estimate time on the wire?

21. usb: dwc2: host: Totally redo the microframe scheduler

   Eyeballs please!  I think I've stared at this too much and now my
   eyes are glazing over.  This definitely helps but also probably needs
   a few more spins?  Of course, if nobody wants to review it, IMHO
   checking it in as-is is WAAAAY better than what we had before.

22. usb: dwc2: host: If using uframe scheduler, end splits better

   Low confidence in this one.  Worry that it will end something too
   soon, but haven't seen it yet.

===

Below is discussion of some of the speedup stuff (mostly relevant to the
first few patches).

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

Steps for gathering data with ftrace (for some reason I have to run
twice):

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

Changes in v6:
- Add Kever's Reviewed-bys.
- Add Kever's Tested-bys.
- Add Heiko's Tested-bys.
- Add Stefan's Tested-bys.
- Back to 525 dwords, not 528.
- Add one more instance of check; kept Reviewed-by / Tested-by (OK?).
- Fix patch tags (hcd -> host)
- Incorporated Properly set the HFIR patch to big series in v6
- There's not really a TT for the root hub new for v6
- Fix bug where periodic things get scheduled too quick (Alan Stern)
- Removed incorrect limit on number of channels (Heiko Stuebner).
- Fixed order of operations bug in debug print.

Changes in v5:
- Move list maintenance to hcd.c to avoid gadget-only compile error
- Moved defines outside of ifdef to avoid gadget-only compile error.

Changes in v4:
- Add John's Acks from <https://patchwork.kernel.org/patch/7631551>
- Set host_rx_fifo_size to 528 for rk3066 new for v4.
- Avoid use of chan->qh after qh freed new for v4.
- Always add to the tail of queues new for v4.
- fix split transfer schedule sequence new for v4.
- Retooled scheduler tracing a bit, so left off John's Ack from v3.
- Moved periodic bandwidth release delay patch earlier again.
- A bit earlier in the list of patches than in v3.
- Use periodic interrupt even with DMA new for v4.
- Rename some fields in struct dwc2_qh new for v4.
- Reorder things in hcd_queue.c new for v4.
- Split code out to make dwc2_do_reserve() new for v4.
- Add scheduler logging for missed SOFs new for v4.
- Manage frame nums better in scheduler new for v4.
- Schedule periodic right away if it's time new for v4.
- Add dwc2_hcd_get_future_frame_number() call new for v4.
- Properly set even/odd frame new for v4.
- Figured out what the microframe scheduler was supposed to do.
- Microframe rewrite is totally different from v3, hopefully more right.
- Microframe rewrite is later in the series now.
- If using uframe scheduler, end splits better new for v4.

Changes in v3:
- Moved periodic bandwidth release delay patch later in the series.
- The uframe scheduler patch is folded into optimization series.
- Optimize uframe scheduler "single uframe" case a little.
- uframe scheduler now atop logging patches.
- uframe scheduler now before delayed bandwidth release patches.
- Add defines like EARLY_FRAME_USEC
- Reorder dwc2_deschedule_periodic() in prep for future patches.
- uframe scheduler now shows real usefulness w/ future patches!
- Assuming single_tt is new for v3; not terribly well tested (yet).
- Keep track and use our uframe new for v3.

Changes in v2:
- Add a warn if setup_dma is not aligned (Julius Werner).
- Periodic bandwidth release delay new for V2
- Commit message now says that URB giveback change needs delay change.
- Totally rewrote uframe scheduler again after writing test code.
- uframe scheduler atop delayed bandwidth release patches.

Douglas Anderson (22):
  usb: dwc2: rockchip: Make the max_transfer_size automatic
  usb: dwc2: host: Get aligned DMA in a more supported way
  usb: dwc2: host: Set host_rx_fifo_size to 525 for rk3066
  usb: dwc2: host: Avoid use of chan->qh after qh freed
  usb: dwc2: host: Always add to the tail of queues
  usb: dwc2: host: fix split transfer schedule sequence
  usb: dwc2: host: Add scheduler tracing
  usb: dwc2: host: Add a delay before releasing periodic bandwidth
  usb: dwc2: host: Giveback URB in tasklet context
  usb: dwc2: host: Properly set the HFIR
  usb: dwc2: host: There's not really a TT for the root hub
  usb: dwc2: host: Use periodic interrupt even with DMA
  usb: dwc2: host: Rename some fields in struct dwc2_qh
  usb: dwc2: host: Reorder things in hcd_queue.c
  usb: dwc2: host: Split code out to make dwc2_do_reserve()
  usb: dwc2: host: Add scheduler logging for missed SOFs
  usb: dwc2: host: Manage frame nums better in scheduler
  usb: dwc2: host: Schedule periodic right away if it's time
  usb: dwc2: host: Add dwc2_hcd_get_future_frame_number() call
  usb: dwc2: host: Properly set even/odd frame
  usb: dwc2: host: Totally redo the microframe scheduler
  usb: dwc2: host: If using uframe scheduler, end splits better

 drivers/usb/dwc2/core.c      |  119 ++-
 drivers/usb/dwc2/core.h      |  114 ++-
 drivers/usb/dwc2/hcd.c       |  392 ++++++---
 drivers/usb/dwc2/hcd.h       |  126 ++-
 drivers/usb/dwc2/hcd_ddma.c  |   41 +-
 drivers/usb/dwc2/hcd_intr.c  |  174 ++--
 drivers/usb/dwc2/hcd_queue.c | 1965 ++++++++++++++++++++++++++++++++++--------
 drivers/usb/dwc2/platform.c  |    4 +-
 8 files changed, 2276 insertions(+), 659 deletions(-)

-- 
2.7.0.rc3.207.g0ac5344
