From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH RFT v2 2/3] drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
Date: Sun, 12 Jan 2020 01:16:22 +0100
Message-ID: <20200112001623.2121227-3-martin.blumenstingl@googlemail.com>
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie, robin.murphy@arm.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, sudeep.holla@arm.com, Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Id: linux-rockchip.vger.kernel.org

If devfreq_recommended_opp() fails we need to undo
dev_pm_opp_of_add_table() by calling dev_pm_opp_of_remove_table() (just
like we do it in the other error-path below).

Fixes: f3ba91228e8e91 ("drm/panfrost: Add initial panfrost driver")
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 1471588763ce..170f6c8c9651 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -93,8 +93,10 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	cur_freq = clk_get_rate(pfdev->clock);
 
 	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
-	if (IS_ERR(opp))
+	if (IS_ERR(opp)) {
+		dev_pm_opp_of_remove_table(dev);
 		return PTR_ERR(opp);
+	}
 
 	panfrost_devfreq_profile.initial_freq = cur_freq;
 	dev_pm_opp_put(opp);
-- 
2.24.1
