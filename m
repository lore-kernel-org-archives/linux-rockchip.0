From: John Keeping <john@metanate.com>
Subject: [PATCH 08/26] drm/rockchip: dw-mipi-dsi: include bad value in error message
Date: Mon, 19 Sep 2016 18:17:18 +0100
Message-ID: <20160919171747.28512-9-john@metanate.com>
References: <20160919171747.28512-1-john@metanate.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160919171747.28512-1-john@metanate.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, John Keeping <john@metanate.com>
List-Id: linux-rockchip.vger.kernel.org

As an aid to debugging.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 38186df8476e..a25db02e1c19 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -645,7 +645,8 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
 		ret = dw_mipi_dsi_dcs_long_write(dsi, msg);
 		break;
 	default:
-		dev_err(dsi->dev, "unsupported message type\n");
+		dev_err(dsi->dev, "unsupported message type 0x%02x\n",
+			msg->type);
 		ret = -EINVAL;
 	}
 
-- 
2.10.0.278.g4f427b1.dirty
