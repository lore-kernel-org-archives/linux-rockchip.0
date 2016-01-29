From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 10/22] usb: dwc2: host: Properly set the HFIR
Date: Thu, 28 Jan 2016 18:20:01 -0800
Message-ID: <1454034013-24657-11-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, balbi@ti.com, kever.yang@rock-chips.com
Cc: william.wu@rock-chips.com, huangtao@rock-chips.com, heiko@sntech.de, stefan.wahren@i2se.com, linux-rockchip@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, gregory.herrero@intel.com, yousaf.kaukab@intel.com, dinguyen@opensource.altera.com, stern@rowland.harvard.edu, ming.lei@canonical.com, Douglas Anderson <dianders@chromium.org>, johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

According to the most up to date version of the dwc2 databook, the FRINT
field of the HFIR register should be programmed to:
* 125 us * (PHY clock freq for HS) - 1
* 1000 us * (PHY clock freq for FS/LS) - 1

This is opposed to older versions of the doc that claimed it should be:
* 125 us * (PHY clock freq for HS)
* 1000 us * (PHY clock freq for FS/LS)

In case you didn't spot it, the difference is the "- 1".

Let's add the "- 1" to match the newest user manual.  It's presumed that
the "- 1" should have always been there and that this was always a
documentation error.  If some hardware needs the "- 1" and other
hardware doesn't, we'll have to add a configuration parameter for it in
the future.

I checked things before and after this patch on rk3288 using a Total
Phase Beagle 5000 analyzer.

Before this patch, a low speed mouse shows constant Frame Timing Jitter
errors.  After this patch errors have gone away.

Before this patch SOF packets move forward about 1 us per 4 ms.  After
this patch the SOF packets move backward about 1 us per 255 ms.  Some
specific SOF timestamps from the analyzer are below.

Before:
  6.603.790
  6.603.916
  6.604.041
  6.604.166
  ...
  6.607.541
  6.607.667
  6.607.792
  6.607.917
  ...
  6.611.417
  6.611.543
  6.611.668
  6.611.793

After:
  6.215.159
  6.215.284
  6.215.408
  6.215.533
  6.215.658
  ...
  6.470.658
  6.470.783
  6.470.907
  ...
  6.726.032
  6.726.157
  6.725.281
  6.725.406

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
---
Changes in v6:
- Incorporated Properly set the HFIR patch to big series in v6
- Add Heiko's Tested-by.

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index ed73b26818c0..a5db20f12ee4 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -2245,10 +2245,10 @@ u32 dwc2_calc_frame_interval(struct dwc2_hsotg *hsotg)
 
 	if ((hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT == HPRT0_SPD_HIGH_SPEED)
 		/* High speed case */
-		return 125 * clock;
+		return 125 * clock - 1;
 	else
 		/* FS/LS case */
-		return 1000 * clock;
+		return 1000 * clock - 1;
 }
 
 /**
-- 
2.7.0.rc3.207.g0ac5344
