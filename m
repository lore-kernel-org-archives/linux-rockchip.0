From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: [PATCH 8/9] dt-bindings: add rockchip,clocksource property to rk-timer
Date: Wed, 23 Nov 2016 20:29:36 +0300
Message-ID: <1479922177-20136-8-git-send-email-al.kochet@gmail.com>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.lezcano@linaro.org, tglx@linutronix.de, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Alexander Kochetkov <al.kochet@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

---
 .../bindings/timer/rockchip,rk-timer.txt           |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
index a41b184..ed5392a 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
@@ -9,6 +9,7 @@ Required properties:
 - clocks : must contain an entry for each entry in clock-names
 - clock-names : must include the following entries:
   "timer", "pclk"
+- rockchip,clocksource: setup the timer as clocksource
 
 Example:
 	timer: timer@ff810000 {
-- 
1.7.9.5
