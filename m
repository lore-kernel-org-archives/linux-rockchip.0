From: Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v1 03/13] dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
Date: Mon,  8 Jun 2020 15:49:17 +0800
Message-ID: <1591602567-43788-4-git-send-email-sugar.zhang@rock-chips.com>
References: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1591602567-43788-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Sugar Zhang <sugar.zhang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patch Adds the quirk 'arm,pl330-periph-burst' for pl330.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 Documentation/devicetree/bindings/dma/arm-pl330.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/arm-pl330.txt b/Documentation/devicetree/bindings/dma/arm-pl330.txt
index 2c7fd19..315e901 100644
--- a/Documentation/devicetree/bindings/dma/arm-pl330.txt
+++ b/Documentation/devicetree/bindings/dma/arm-pl330.txt
@@ -16,6 +16,7 @@ Optional properties:
   - dma-channels: contains the total number of DMA channels supported by the DMAC
   - dma-requests: contains the total number of DMA requests supported by the DMAC
   - arm,pl330-broken-no-flushp: quirk for avoiding to execute DMAFLUSHP
+  - arm,pl330-periph-burst: quirk for performing burst transfer only
   - resets: contains an entry for each entry in reset-names.
 	    See ../reset/reset.txt for details.
   - reset-names: must contain at least "dma", and optional is "dma-ocp".
-- 
2.7.4
