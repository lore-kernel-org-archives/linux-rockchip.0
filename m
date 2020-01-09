From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 1/1] drm/rockchip: fix integer type used for storing dp data rate
Date: Thu,  9 Jan 2020 08:31:29 +0100
Message-ID: <20200109073129.378507-2-t.schramm@manjaro.org>
References: <20200109073129.378507-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200109073129.378507-1-t.schramm@manjaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
List-Id: linux-rockchip.vger.kernel.org

commmit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
the type of variables used to store the display port data rate and
number of lanes to u8. However u8 is not sufficient to store the link
data rate of the display port.
This commit reverts the type of data rate to unsigned int.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.h b/drivers/gpu/drm/rockchip/cdn-dp-core.h
index 83c4586665b4..81ac9b658a70 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.h
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.h
@@ -95,7 +95,7 @@ struct cdn_dp_device {
 	struct cdn_dp_port *port[MAX_PHY];
 	u8 ports;
 	u8 max_lanes;
-	u8 max_rate;
+	unsigned int max_rate;
 	u8 lanes;
 	int active_port;
 
-- 
2.24.1
