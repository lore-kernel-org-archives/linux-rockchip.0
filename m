From: Yue Haibing <yuehaibing@huawei.com>
Subject: [PATCH -next] phy: rockchip-typec: Make usb3_pll_cfg and dp_pll_cfg static
Date: Tue, 19 Mar 2019 23:30:28 +0800
Message-ID: <20190319153028.22452-1-yuehaibing@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com, heiko@sntech.de
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, YueHaibing <yuehaibing@huawei.com>
List-Id: linux-rockchip.vger.kernel.org

From: YueHaibing <yuehaibing@huawei.com>

Fix sparse warning:

drivers/phy/rockchip/phy-rockchip-typec.c:403:16: warning: symbol 'usb3_pll_cfg' was not declared. Should it be static?
drivers/phy/rockchip/phy-rockchip-typec.c:420:16: warning: symbol 'dp_pll_cfg' was not declared. Should it be static?

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index e32edee..8ad366e 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -400,7 +400,7 @@ struct phy_reg {
 	u32 addr;
 };
 
-struct phy_reg usb3_pll_cfg[] = {
+static struct phy_reg usb3_pll_cfg[] = {
 	{ 0xf0,		CMN_PLL0_VCOCAL_INIT },
 	{ 0x18,		CMN_PLL0_VCOCAL_ITER },
 	{ 0xd0,		CMN_PLL0_INTDIV },
@@ -417,7 +417,7 @@ struct phy_reg usb3_pll_cfg[] = {
 	{ 0x8,		CMN_DIAG_PLL0_LF_PROG },
 };
 
-struct phy_reg dp_pll_cfg[] = {
+static struct phy_reg dp_pll_cfg[] = {
 	{ 0xf0,		CMN_PLL1_VCOCAL_INIT },
 	{ 0x18,		CMN_PLL1_VCOCAL_ITER },
 	{ 0x30b9,	CMN_PLL1_VCOCAL_START },
-- 
2.7.4
