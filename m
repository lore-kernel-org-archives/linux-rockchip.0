From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 3/5] Documentation: arm-pl330: add description of arm,pl330-broken-no-flushp
Date: Fri, 28 Aug 2015 08:38:12 +0800
Message-ID: <1440722292-31721-1-git-send-email-shawn.lin@rock-chips.com>
References: <1440722176-31588-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1440722176-31588-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vinod.koul@intel.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Boojin Kim <boojin.kim@samsung.com>, Doug Anderson <dianders@chromium.org>, Olof Johansson <olof@lixom.net>, Sonny Rao <sonnyrao@chromium.org>, Addy Ke <addy.ke@rock-chips.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Doug Anderson <dianders@chromium.org>
---

Changes in v2:
- add Reviewed-by: Doug Anderson <dianders@chromium.org>
- reorder this patch before the usage of the quirk

Changes in v1:
- rename broken-no-flushp to "arm,pl330-broken-no-flushp" suggested
  by Krzysztof.

 Documentation/devicetree/bindings/dma/arm-pl330.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/arm-pl330.txt b/Documentation/devicetree/bindings/dma/arm-pl330.txt
index 2675658..db7e226 100644
--- a/Documentation/devicetree/bindings/dma/arm-pl330.txt
+++ b/Documentation/devicetree/bindings/dma/arm-pl330.txt
@@ -15,6 +15,7 @@ Optional properties:
     cells in the dmas property of client device.
   - dma-channels: contains the total number of DMA channels supported by the DMAC
   - dma-requests: contains the total number of DMA requests supported by the DMAC
+  - arm,pl330-broken-no-flushp: quirk for avoiding to execute DMAFLUSHP
 
 Example:
 
-- 
2.3.7
