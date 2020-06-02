From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?=
        <mylene.josserand@collabora.com>
Subject: [PATCH v4 2/2] dt-bindings: clocks: rk3288: add rk3288w compatible
Date: Tue,  2 Jun 2020 10:06:44 +0200
Message-ID: <20200602080644.11333-3-mylene.josserand@collabora.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200602080644.11333-1-mylene.josserand@collabora.com>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, robh+dt@kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, mylene.josserand@collabora.com, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Add the possible compatible "rockchip,rk3288w-cru" that handles
the difference between the rk3288 and the new revision rk3288w.

This compatible will be added by bootloaders.

Signed-off-by: Mylène Josserand <mylene.josserand@collabora.com>
---
 .../devicetree/bindings/clock/rockchip,rk3288-cru.txt     | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
index 8cb47c39ba53..bf3a9ec19241 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
@@ -4,9 +4,15 @@ The RK3288 clock controller generates and supplies clock to various
 controllers within the SoC and also implements a reset controller for SoC
 peripherals.
 
+A revision of this SoC is available: rk3288w. The clock tree is a bit
+different so another dt-compatible is available. Noticed that it is only
+setting the difference but there is no automatic revision detection. This
+should be performed by bootloaders.
+
 Required Properties:
 
-- compatible: should be "rockchip,rk3288-cru"
+- compatible: should be "rockchip,rk3288-cru" or "rockchip,rk3288w-cru" in
+  case of this revision of Rockchip rk3288.
 - reg: physical base address of the controller and length of memory mapped
   region.
 - #clock-cells: should be 1.
-- 
2.26.2
