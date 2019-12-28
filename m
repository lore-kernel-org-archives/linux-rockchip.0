From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in disable-wp text
Date: Sat, 28 Dec 2019 10:30:58 +0100
Message-ID: <20191228093059.2817-1-jbx6244@gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191219145843.3823-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

There are two identical phrases in the disable-wp text,
so remove one of them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index b130450c3..d668d0fbe 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -96,8 +96,7 @@ properties:
     description:
       When set, no physical write-protect line is present. This
       property should only be specified when the controller has a
-      dedicated write-protect detection logic. If a GPIO is always
-      used for the write-protect detection. If a GPIO is always used
+      dedicated write-protect detection logic. If a GPIO is always used
       for the write-protect detection logic, it is sufficient to not
       specify the wp-gpios property in the absence of a write-protect
       line.
-- 
2.11.0
