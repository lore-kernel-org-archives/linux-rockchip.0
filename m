From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v4 4/9] media: staging: dt-bindings: rkisp1: fix "no reg" error in parent node
Date: Thu,  2 Jul 2020 16:13:17 -0300
Message-ID: <20200702191322.2639681-5-helen.koike@collabora.com>
References: <20200702191322.2639681-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200702191322.2639681-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, tfiga@chromium.org, eddie.cai.linux@gmail.com, zhengsq@rock-chips.com, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

Fix the following error found with make ARCH=arm64 dt_binding_check:

Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:24.27-101.11:
Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit name, but no reg or ranges property

Reported-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

V3:
- this is a new patch in the series
---
 .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index e5b9c0574e352..4d111ef2e89c7 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -126,6 +126,7 @@ examples:
     #include <dt-bindings/power/rk3399-power.h>
 
     parent0: parent@0 {
+        reg = <0 0>;
         #address-cells = <2>;
         #size-cells = <2>;
 
-- 
2.26.0
