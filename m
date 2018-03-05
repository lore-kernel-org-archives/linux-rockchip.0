From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 13/38] drm/bridge: analogix_dp: Wait for HPD signal before configuring link
Date: Mon,  5 Mar 2018 23:23:05 +0100
Message-ID: <20180305222324.5872-14-enric.balletbo@collabora.com>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180305222324.5872-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: architt@codeaurora.org, inki.dae@samsung.com, thierry.reding@gmail.com, hjc@rock-chips.com, seanpaul@chromium.org, airlied@linux.ie, tfiga@chromium.org, heiko@sntech.de
Cc: hshi@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, orjan.eide@arm.com, m.szyprowski@samsung.com, =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: zain wang <wzz@rock-chips.com>

According to DP spec v1.3 chap 3.5.1.2 Link Training, Link Policy Maker
must first detect that the HPD signal is asserted high by the Downstream
Device before establishing a link with it.

Cc: Stéphane Marchesin <marcheu@chromium.org>
Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index c81733b8185e..92fb9a072cb6 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1169,6 +1169,17 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	if (ret)
 		goto out_dp_init;
 
+	/*
+	 * According to DP spec v1.3 chap 3.5.1.2 Link Training,
+	 * We should first make sure the HPD signal is asserted high by device
+	 * when we want to establish a link with it.
+	 */
+	ret = analogix_dp_detect_hpd(dp);
+	if (ret) {
+		DRM_ERROR("failed to get hpd single ret = %d\n", ret);
+		goto out_dp_init;
+	}
+
 	ret = analogix_dp_commit(dp);
 	if (ret)
 		goto out_dp_init;
-- 
2.16.1
