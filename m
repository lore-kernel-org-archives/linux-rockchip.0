From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2] drm/of: Consider the state in which the ep is disabled
Date: Tue,  7 Jul 2020 19:25:26 +0800
Message-ID: <20200707112526.18438-1-hjc@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: huangtao@rock-chips.com, andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, kever.yang@rock-chips.com, Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

don't mask possible_crtcs if remote-point is disabled.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/drm_of.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index fdb05fbf72a0..565f05f5f11b 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -66,6 +66,9 @@ uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 	uint32_t possible_crtcs = 0;
 
 	for_each_endpoint_of_node(port, ep) {
+		if (!of_device_is_available(ep))
+			continue;
+
 		remote_port = of_graph_get_remote_port(ep);
 		if (!remote_port) {
 			of_node_put(ep);
-- 
2.17.1
