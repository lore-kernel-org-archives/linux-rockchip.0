From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: mmc: clarify disable-wp text
Date: Sat, 28 Dec 2019 10:30:59 +0100
Message-ID: <20191228093059.2817-2-jbx6244@gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191228093059.2817-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

"disable-wp" has been removed from all Rockchip eMMC and SDIO dts nodes,
but people still continue to submit new patches with "disable-wp" added
to other nodes then for the SD card slot,
what it was designed for in the first place.
So clarify the "disable-wp" text by adding that this option should
not be used in combination with eMMC or SDIO.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index d668d0fbe..3c0df4016 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -99,7 +99,7 @@ properties:
       dedicated write-protect detection logic. If a GPIO is always used
       for the write-protect detection logic, it is sufficient to not
       specify the wp-gpios property in the absence of a write-protect
-      line.
+      line. Not used in combination with eMMC or SDIO.
 
   wp-gpios:
     description:
-- 
2.11.0
