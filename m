From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator for control again
Date: Wed,  8 Jan 2020 00:06:26 +0100
Message-ID: <20200107230626.885451-4-martin.blumenstingl@googlemail.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie, robin.murphy@arm.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Id: linux-rockchip.vger.kernel.org

dev_pm_opp_set_rate() needs a reference to the regulator which should be
updated when updating the GPU frequency. The name of the regulator has
to be passed at initialization-time using dev_pm_opp_set_regulators().
Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
will update the GPU regulator when updating the frequency (just like
we did this manually before when we open-coded dev_pm_opp_set_rate()).

Fixes: 221bc77914cbcc ("drm/panfrost: Use generic code for devfreq")
Reported-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 22 ++++++++++++++++++++-
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
index 170f6c8c9651..4f7999c7b44c 100644
--- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
+++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
@@ -74,6 +74,7 @@ static struct devfreq_dev_profile panfrost_devfreq_profile = {
 int panfrost_devfreq_init(struct panfrost_device *pfdev)
 {
 	int ret;
+	struct opp_table *opp_table;
 	struct dev_pm_opp *opp;
 	unsigned long cur_freq;
 	struct device *dev = &pfdev->pdev->dev;
@@ -84,9 +85,24 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 		/* Optional, continue without devfreq */
 		return 0;
 
+	opp_table = dev_pm_opp_set_regulators(dev,
+					      (const char *[]){ "mali" },
+					      1);
+	if (IS_ERR(opp_table)) {
+		ret = PTR_ERR(opp_table);
+
+		/* Continue if the optional regulator is missing */
+		if (ret != -ENODEV)
+			return ret;
+	} else {
+		pfdev->devfreq.regulators_opp_table = opp_table;
+	}
+
 	ret = dev_pm_opp_of_add_table(dev);
-	if (ret)
+	if (ret) {
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return ret;
+	}
 
 	panfrost_devfreq_reset(pfdev);
 
@@ -95,6 +111,7 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
 	if (IS_ERR(opp)) {
 		dev_pm_opp_of_remove_table(dev);
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return PTR_ERR(opp);
 	}
 
@@ -106,6 +123,7 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
 	if (IS_ERR(devfreq)) {
 		DRM_DEV_ERROR(dev, "Couldn't initialize GPU devfreq\n");
 		dev_pm_opp_of_remove_table(dev);
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 		return PTR_ERR(devfreq);
 	}
 	pfdev->devfreq.devfreq = devfreq;
@@ -124,6 +142,8 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
 	if (pfdev->devfreq.cooling)
 		devfreq_cooling_unregister(pfdev->devfreq.cooling);
 	dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
+	if (pfdev->devfreq.regulators_opp_table)
+		dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
 }
 
 void panfrost_devfreq_resume(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 06713811b92c..4878b239e301 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -85,6 +85,7 @@ struct panfrost_device {
 
 	struct {
 		struct devfreq *devfreq;
+		struct opp_table *regulators_opp_table;
 		struct thermal_cooling_device *cooling;
 		ktime_t busy_time;
 		ktime_t idle_time;
-- 
2.24.1
