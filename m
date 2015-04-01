From: Yakir Yang <ykk@rock-chips.com>
Subject: [PATCH v4 3/3] drm: rockchip/dw_hdmi-rockchip: improve for HDMI electrical test
Date: Tue, 31 Mar 2015 23:57:10 -0400
Message-ID: <1427860630-13606-1-git-send-email-ykk@rock-chips.com>
References: <1427860227-12042-1-git-send-email-ykk@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1427860227-12042-1-git-send-email-ykk@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Russell King <rmk+kernel@arm.linux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fabio Estevam <fabio.estevam@freescale.com>, Yakir Yang <ykk@rock-chips.com>, djkurtz@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

When pixel clock less than 148.5MHz, make sloopboost=2 tklvl=20
cklvl=13 increase rasing/falling time and increase data & clock
voltage driver.

When pixel clock less than 74.25MHz, make sloopboost=0 tklvl=19
cklvl=18, increase data and clock voltage driver.

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
---
Changes in v4:
- combine the modification of electrical parameter for eye-diagram
  & single-ended test to an separate patch.

Changes in v3:
- for pixel clock less than 148.5MHz, set txlvl to 20.

Changes in v2:
- set slopeboost back to 10%-20%, then rasing/falling time would pass.
- for pixel clock less then 74.25MHz, set txlvl to 19 and cklvl to 18.

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 65b0f7b..80d6fc8 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -135,9 +135,9 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 
 static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	/*pixelclk   symbol   term   vlev*/
-	{ 74250000,  0x8009, 0x0004, 0x01ad},
-	{ 148500000, 0x8029, 0x0004, 0x01ad},
-	{ 297000000, 0x8039, 0x0005, 0x01ad},
+	{ 74250000,  0x8009, 0x0004, 0x0272},
+	{ 148500000, 0x802b, 0x0004, 0x028d},
+	{ 297000000, 0x8039, 0x0005, 0x028d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.1.2
