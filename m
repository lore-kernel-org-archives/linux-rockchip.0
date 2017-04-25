From: Wei Yongjun <weiyj.lk@gmail.com>
Subject: [PATCH -next] drm/rockchip: cdn-dp: fix return value check in cdn_dp_probe()
Date: Tue, 25 Apr 2017 03:16:16 +0000
Message-ID: <20170425031616.12664-1-weiyj.lk@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>
Cc: Wei Yongjun <weiyongjun1@huawei.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Wei Yongjun <weiyongjun1@huawei.com>

Fix the retrn value check which testing the wrong variable
in cdn_dp_probe().

Fixes: 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 9ab67a6..6a4a113 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1198,7 +1198,7 @@ static int cdn_dp_probe(struct platform_device *pdev)
 			continue;
 
 		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
-		if (!dp)
+		if (!port)
 			return -ENOMEM;
 
 		port->extcon = extcon;
