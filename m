From: Wei Yongjun <weiyj.lk@gmail.com>
Subject: [PATCH -next] phy: rockchip-typec: fix non static symbol warnings
Date: Wed, 21 Sep 2016 15:05:25 +0000
Message-ID: <1474470325-32139-1-git-send-email-weiyj.lk@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Wei Yongjun <weiyongjun1@huawei.com>

Fixes the following sparse warnings:

drivers/phy/phy-rockchip-typec.c:295:16: warning:
 symbol 'usb3_pll_cfg' was not declared. Should it be static?
drivers/phy/phy-rockchip-typec.c:312:16: warning:
 symbol 'dp_pll_cfg' was not declared. Should it be static?

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/phy/phy-rockchip-typec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-rockchip-typec.c b/drivers/phy/phy-rockchip-typec.c
index 7cfb0f8..555604c 100644
--- a/drivers/phy/phy-rockchip-typec.c
+++ b/drivers/phy/phy-rockchip-typec.c
@@ -292,7 +292,7 @@ struct phy_reg {
 	u32 addr;
 };
 
-struct phy_reg usb3_pll_cfg[] = {
+static struct phy_reg usb3_pll_cfg[] = {
 	{ 0xf0,		CMN_PLL0_VCOCAL_INIT },
 	{ 0x18,		CMN_PLL0_VCOCAL_ITER },
 	{ 0xd0,		CMN_PLL0_INTDIV },
@@ -309,7 +309,7 @@ struct phy_reg usb3_pll_cfg[] = {
 	{ 0x8,		CMN_DIAG_PLL0_LF_PROG },
 };
 
-struct phy_reg dp_pll_cfg[] = {
+static struct phy_reg dp_pll_cfg[] = {
 	{ 0xf0,		CMN_PLL1_VCOCAL_INIT },
 	{ 0x18,		CMN_PLL1_VCOCAL_ITER },
 	{ 0x30b9,	CMN_PLL1_VCOCAL_START },
