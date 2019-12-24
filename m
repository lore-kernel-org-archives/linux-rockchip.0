From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 03/11] drm/rockchip: lvds: Fix indentation of a #define
Date: Tue, 24 Dec 2019 15:38:52 +0100
Message-ID: <20191224143900.23567-4-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Fix a #define indentation before adding more lines.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 029bad8e1a14..1387bcbc4bc0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -70,7 +70,7 @@
 #define RK3288_LVDS_CFG_REG21			0x84
 #define RK3288_LVDS_CFG_REG21_TX_ENABLE		0x92
 #define RK3288_LVDS_CFG_REG21_TX_DISABLE	0x00
-#define RK3288_LVDS_CH1_OFFSET                 0x100
+#define RK3288_LVDS_CH1_OFFSET			0x100
 
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
-- 
2.20.1
