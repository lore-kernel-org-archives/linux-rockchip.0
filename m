Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 676B3CD4F54
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vr2OIn1CL8aftMf2EonDCYeic4cqO2A4JkwsAxgtvnA=; b=tS/Q1Gi5x3csXD
	G0XRgSx7b1C31/Ae9TOMdHGr3qPhUbMpC/YRagVQktEzu3RNIiD3t9p0m46FA1DlMYxXJsgfpkaO4
	abHfEE11CBhxzpSHC5g39CN6/HCLTg6DVLK3EGzQVcfYwCfClSsqeTDAL1qtGGnY1Btjmj4boJQKZ
	9bIr8ktEEaybpUS/npM9Yu+sg5BL9jtUVBYV2DznQFghMgCb3lR0HHzIJgnG1vSvORyFB9J0z9ASy
	5iW2n9a2rv/GgeYj5rb7IL9301L0GsucHzLeRZxE776/gHt9TMg0HejnUj0HLgpvxFUTpgEXBBmhj
	obD6PurBg87L5dsk7TDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3na-0000000GiTV-0pfK;
	Mon, 18 May 2026 19:38:46 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nW-0000000GiN2-2Ttk
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133119; bh=XEwDdtys9FjJECYlrc2Okrnfg0gf3ND0lggi7Dw2M8o=;
 b=iq0rBncQVfMmWdaupMD277dVly8+SD0LaE2/Ul7AzJgW1Mphyzz5O/LVs0Escjq1rzqKr4Ltv
 g5H6N7zfYVGP4jNIhflYoT/v7glcrCg/k43Os2hs49kDRpJ3nqDZ63Q5zsc0N8X/erT3ENkBQHG
 tmTKS66zeFSbRe7jd5sPnoDp+yBnbifUmU3C0QSNlhqd6LbKYfZNcr7N82+8WAxrkH2AjT/Zb2I
 rjV3VwsVCi/8k90hQ9IKrYTrkJbr4X68o9hGxM8WvopuZjhKZuoPSMoOyTKXErku1Fi97UBj8se
 f07c/GdY4eLzeabjilvaZVpOMqq4ot5JBMmStNyrb4QQ==
X-Forward-Email-ID: 6a0b6abb486b4b38b826fae7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 11/11] drm/rockchip: dw_hdmi: Use resume_early pm ops for system suspend
Date: Mon, 18 May 2026 19:37:45 +0000
Message-ID: <20260518193748.2482823-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123842_805630_89B53066 
X-CRM114-Status: GOOD (  12.59  )
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

rockchip_drm_sys_resume()/drm_mode_config_helper_resume() is called
before the resume pm ops of dw-hdmi. This result in an atomic_enable()
before dw_hdmi_rockchip_resume()/dw_hdmi_resume() is called.

Resume (without changes):
- rockchip_drm_sys_resume()
  - drm_mode_config_helper_resume()
    - atomic_enable()
- dw_hdmi_rockchip_resume()
  - dw_hdmi_resume()
    - dw_hdmi_init_hw()

Change to use resume_early pm ops for system suspend to ensure pm ops
for dw-hdmi is run before rockchip-drm pm ops. Also fix a possible NULL
pointer dereference timing issue while at it.

Resume (with changes):
- dw_hdmi_rockchip_resume_early()
  - dw_hdmi_resume()
    - dw_hdmi_init_hw()
- rockchip_drm_sys_resume()
  - drm_mode_config_helper_resume()
    - atomic_enable()

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch

This can be tested using CONFIG_PM_DEBUG with a simulated suspend:
  echo N > /sys/module/printk/parameters/console_suspend
  echo 1 > /sys/power/pm_debug_messages
  echo platform > /sys/power/pm_test
  echo mem > /sys/power/state
or using something like following for real suspend/resume:
  echo N > /sys/module/printk/parameters/console_suspend
  rtcwake -m mem -s 5

Note that RK356x has an issue related to EHCI/OHCI and a missing USBPHY
clock reference during suspend, and GPU during resume (mainline TF-A).
A separate patch to address the ECHI/OHCI issue will be sent.
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 0133a4b67b3b..ac6a48ce8642 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -692,17 +692,18 @@ static void dw_hdmi_rockchip_remove(struct platform_device *pdev)
 	component_del(&pdev->dev, &dw_hdmi_rockchip_ops);
 }
 
-static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
+static int __maybe_unused dw_hdmi_rockchip_resume_early(struct device *dev)
 {
 	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dw_hdmi_resume(hdmi->hdmi);
+	if (hdmi)
+		dw_hdmi_resume(hdmi->hdmi);
 
 	return 0;
 }
 
 static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
-	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume_early)
 };
 
 struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
