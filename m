Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6163CD4F54
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4kVWMb4TDZbstD3l/9dNiBRm0HD55ZKd1NueTZ0Y3c=; b=Rml7ZbYk5iBak9
	x73cPmh3bO1gVkH2Vc8N7RP468N9kFa/jQ7YoJQRrOBwa54MIWRvujpnBkUAARgQ+iEXQUaQ/V4Rh
	m3GA2BbuGXGtZYANxEs2wX4mUPMvyGdMUJ9yAx+QTFg+RKdqvcmejrb5SmTS9dgddujSbJ65oWxD/
	KzgswDdsoPn8uDcrYXxAvLDCDOPEOoXpU4cU7M7crzd/Tsj975q8IX0V1eELfdYUz/Xl/JpZ76zAQ
	No+ylDHtCDapzm7IlgbpPmPcqwmO5bXDc5b6WhbQ4K57+OQe1HQ3PpdPjFtmW6c4i3EKnGcX3mVgu
	AJe1QqFeD4gt+ugqLSyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3xi-0000000GmvN-2RzI;
	Mon, 18 May 2026 19:49:14 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3xe-0000000GmoI-1SZE
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133750; bh=7oMd33Pu3qFKqhyhcRlxwcdcgttbfUQtZ40oIOhs3ik=;
 b=IrXVFYT4MNE24CFZ18fTTzIWu/DlfJz5Po3jNYrPWcdCpHJPsxsEo/5+QwsJ55fuavsrVMeJR
 Am6MDRFu6BzXFbrmjsCZofBat63R4d+pmiUwGnslcskF+XB2XQLuHfuVew2Lh7+w2FqAI79H70O
 jiPnVZICTO8q0HZSQmpkmIOnqO5nDVWAaHst8Y4LNNYPTn5jTgk6bTRGdTvX682eRlz1enwy7LV
 /ua7lk2QOrYD/AlA8h5y0TcY1DihAMdo4LU5InKGxE4xe9yO2ZcK9zjEUAKmZKWRa1q01JVebzM
 AFS+Vo6DqD/E0oNpqSNRhyl4fp28ztlpKWQcZyB7n3Nw==
X-Forward-Email-ID: 6a0b6d21b74b0ebd362eef85
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 13/13] drm/meson: dw-hdmi: Use suspend_late/resume_early/resume_noirq pm ops
Date: Mon, 18 May 2026 19:47:41 +0000
Message-ID: <20260518194744.2483580-14-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124910_403721_A57011FE 
X-CRM114-Status: GOOD (  15.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

meson_drv_pm_suspend()/drm_mode_config_helper_suspend() and
meson_drv_pm_resume()/drm_mode_config_helper_resume() is called
after/before the suspend/resume pm ops of dw-hdmi.

This result in atomic_disable() being called after
meson_dw_hdmi_pm_suspend() and atomic_enable() before
meson_dw_hdmi_pm_resume()/dw_hdmi_resume() is called.

Suspend (without changes):
- meson_dw_hdmi_pm_suspend()
- meson_drv_pm_suspend()
  - drm_mode_config_helper_suspend()
    - atomic_disable()

Resume (without changes):
- resume_irq()            <<-- system freeze at hdmi-tx irq on G12B
- meson_drv_pm_resume()
  - drm_mode_config_helper_resume()
    - atomic_enable()
- meson_dw_hdmi_pm_resume()
  - meson_dw_hdmi_init()
  - dw_hdmi_resume()
    - dw_hdmi_init_hw()

Change to use suspend_late/resume_early pm ops for system suspend to
ensure pm ops for dw-hdmi is run after/before meson_drv pm ops.

The G12B can trigger an IRQ (stat=0x40) very early during resume_irq
that causes a system freeze. Move the meson_dw_hdmi_init() call to
resume_noirq pm ops to resolve the system freeze.

Also move meson_dw_hdmi_init() to run before interrupt allocation to
ensure HW has been initialized when first IRQ is triggered.

Suspend (with changes):
- meson_drv_pm_suspend()
  - drm_mode_config_helper_suspend()
    - atomic_disable()
- meson_dw_hdmi_pm_suspend_late()

Resume (with changes):
- meson_dw_hdmi_pm_resume_noirq()
  - meson_dw_hdmi_init()
- resume_irq()
- meson_dw_hdmi_pm_resume_early()
  - dw_hdmi_resume()
    - dw_hdmi_init_hw()
- meson_drv_pm_resume()
  - drm_mode_config_helper_resume()
    - atomic_enable()

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
This can be tested using CONFIG_PM_DEBUG with a simulated suspend:
  echo N > /sys/module/printk/parameters/console_suspend
  echo 1 > /sys/power/pm_debug_messages
  echo platform > /sys/power/pm_test
  echo mem > /sys/power/state
or using something like following for real suspend/resume:
  echo N > /sys/module/printk/parameters/console_suspend
  rtcwake -m mem -s 5 -d /dev/rtc1

On S905X a simulated platform pm_test could only be tested. On G12A both
simulated and real suspend works. And on G12B the board seems to freeze
at a later stage when taking out of real suspend, however platform
pm_test works.
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 7b465e216759..16f15466a6f4 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -696,6 +696,8 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 	if (IS_ERR(dw_plat_data->regm))
 		return PTR_ERR(dw_plat_data->regm);
 
+	meson_dw_hdmi_init(meson_dw_hdmi);
+
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
 		return irq;
@@ -706,8 +708,6 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 		return dev_err_probe(dev, ret,
 				     "Failed to request hdmi top irq\n");
 
-	meson_dw_hdmi_init(meson_dw_hdmi);
-
 	/* Bridge / Connector */
 
 	dw_plat_data->priv_data = meson_dw_hdmi;
@@ -763,7 +763,7 @@ static const struct component_ops meson_dw_hdmi_ops = {
 	.unbind	= meson_dw_hdmi_unbind,
 };
 
-static int __maybe_unused meson_dw_hdmi_pm_suspend(struct device *dev)
+static int __maybe_unused meson_dw_hdmi_pm_suspend_late(struct device *dev)
 {
 	struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);
 
@@ -777,7 +777,19 @@ static int __maybe_unused meson_dw_hdmi_pm_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused meson_dw_hdmi_pm_resume(struct device *dev)
+static int __maybe_unused meson_dw_hdmi_pm_resume_early(struct device *dev)
+{
+	struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);
+
+	if (!meson_dw_hdmi)
+		return 0;
+
+	dw_hdmi_resume(meson_dw_hdmi->hdmi);
+
+	return 0;
+}
+
+static int __maybe_unused meson_dw_hdmi_pm_resume_noirq(struct device *dev)
 {
 	struct meson_dw_hdmi *meson_dw_hdmi = dev_get_drvdata(dev);
 
@@ -786,8 +798,6 @@ static int __maybe_unused meson_dw_hdmi_pm_resume(struct device *dev)
 
 	meson_dw_hdmi_init(meson_dw_hdmi);
 
-	dw_hdmi_resume(meson_dw_hdmi->hdmi);
-
 	return 0;
 }
 
@@ -802,8 +812,9 @@ static void meson_dw_hdmi_remove(struct platform_device *pdev)
 }
 
 static const struct dev_pm_ops meson_dw_hdmi_pm_ops = {
-	SET_SYSTEM_SLEEP_PM_OPS(meson_dw_hdmi_pm_suspend,
-				meson_dw_hdmi_pm_resume)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(meson_dw_hdmi_pm_suspend_late,
+				     meson_dw_hdmi_pm_resume_early)
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(NULL, meson_dw_hdmi_pm_resume_noirq)
 };
 
 static const struct of_device_id meson_dw_hdmi_of_table[] = {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
