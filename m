From: Lin Huang <hl@rock-chips.com>
Subject: [PATCH v3 3/7] clk: rockchip: rk3399: add SCLK_DDRCLK ID for ddrc
Date: Fri, 22 Jul 2016 17:07:16 +0800
Message-ID: <1469178440-4668-4-git-send-email-hl@rock-chips.com>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: mark.yao@rock-chips.com, myungjoo.ham@samsung.com, cw00.choi@samsung.com, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org, tixy@linaro.org, xsf@rock-chips.com, typ@rock-chips.com, Lin Huang <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Lin Huang <hl@rock-chips.com>
---
Changes in v3:
-None

Changes in v2:
- None 
Changes in v1:
- None

 include/dt-bindings/clock/rk3399-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 50a44cf..8a0f0442 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -131,6 +131,7 @@
 #define SCLK_DPHY_RX0_CFG		165
 #define SCLK_RMII_SRC			166
 #define SCLK_PCIEPHY_REF100M		167
+#define SCLK_DDRCLK			168
 
 #define DCLK_VOP0			180
 #define DCLK_VOP1			181
-- 
2.6.6
