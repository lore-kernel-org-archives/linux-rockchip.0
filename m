From: Lin Huang <hl@rock-chips.com>
Subject: [RFC PATCH v1 2/6] clk: rockchip: rk3399: add SCLK_DDRCLK ID for ddrc
Date: Fri,  3 Jun 2016 17:55:15 +0800
Message-ID: <1464947719-6245-3-git-send-email-hl@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de, mark.yao@rock-chips.com, myungjoo.ham@samsung.com
Cc: huangtao@rock-chips.com, typ@rock-chips.com, Lin Huang <hl@rock-chips.com>, airlied@linux.ie, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Lin Huang <hl@rock-chips.com>
---
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
1.9.1
