From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 16/38] drm/bridge: analogix_dp: Extend hpd check time to 100ms
Date: Mon,  5 Mar 2018 23:23:08 +0100
Message-ID: <20180305222324.5872-17-enric.balletbo@collabora.com>
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

From: Lin Huang <hl@rock-chips.com>

There was a 1ms delay to detect the hpd signal, which is too short to
detect a short pulse. This patch extends this delay to 100ms.

Cc: Stéphane Marchesin <marcheu@chromium.org>
Cc: 征增 王 <wzz@rock-chips.com>
Signed-off-by: Lin Huang <hl@rock-chips.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9b7d530ad24c..0ff151f741a3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -76,7 +76,7 @@ static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
 			return 0;
 
 		timeout_loop++;
-		usleep_range(10, 11);
+		usleep_range(1000, 1100);
 	}
 
 	/*
-- 
2.16.1
