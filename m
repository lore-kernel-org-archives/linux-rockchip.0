Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC35C4451B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 07:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bazI3NhY6yBMjOy87R3JDOxdkRf+wXjQ8TanhK9tV8E=; b=WhumYeq0iCmU3m
	dbinbPIP6IGeB1mjUzXDT+JvfSiKnu612TFP7DqmpMnHygbsra5mSv8t6qPkdIMxmt8+5Mb1O+eQ0
	P4CLN+dLS76hWX+U51eOtD2xLhIGBBfqMPBOrdpnQ6ZC4CfVBR1p2i0YRzwwgVH1Mg0AtbA8K+IvT
	igKH3pVt3Pi6M11QSs/BiLr4Y+Io2JGxyZZJ6yd7/3rv0uFNY8L8GHGvDTQVk/rh8JSQrTkPablzb
	VsdJf91Da/9tBAKzUQXWsWji+dePibBUTCvrhV91gC1rpy4b2KpKd5NDQgMIjK3aM/l7gQKNirt9d
	7TkedA5yZQ1NYJWFCatQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcw9-00000001QPS-1oZS;
	Fri, 17 Jul 2026 07:24:45 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcw0-00000001QC7-17b3;
	Fri, 17 Jul 2026 07:24:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1784273022;
	bh=0RTzPafltaazrRSyLxjVEGPsM2NQMO3dAbcjHX9A5Js=;
	h=From:To:Subject:Date:Message-Id;
	b=kBL3vpnSRRbKynA0DahN30ZVoJlB7HUhbJAX+cWGS3e/BwUanmNW9/f9ou0VPK5nM
	 Ol7vbF5jgx4zTDnnrDO+ttdbxc3FDBXJcAIIlddxYUpSjeWmLyir5S1wyiMYhwzn9G
	 BYlYBCXx0RYSea2126s8OxRsQ9cETTxQvOSxp2ZU=
X-QQ-mid: esmtpsz21t1784273020t7817df7e
X-QQ-Originating-IP: leVM35CjBJyorupngfOKPVO9zy8OXxTLO9HgUYQgbrQ=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 17 Jul 2026 15:23:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7948544626275222202
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 2/5] drm/bridge: aux: Add drm_aux_bridge_register_from_node()
Date: Fri, 17 Jul 2026 15:23:20 +0800
Message-Id: <20260717072323.96-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260717072323.96-1-kernel@airkyi.com>
References: <20260717072323.96-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NPQ6h5IKr4GpDPYSgRuo+O6HS1zx7mm7cSbQUgenL4oXgeq9mf2jA0k3
	d+9lnMzk2a/L/mwZxCIQ4oGNJuog5koOSc/D+dpm9GHTziYhK3jvQC3LOneLFAVGWoNRaPV
	zet/8GTaQOVABtFLEgrpSvc+0fhQeL/T0Y76Zfch3ETn4nCQmkGklgzm4IRPOx1fTgCqSf+
	zLUsTi2CfRRnkTcDbnHUZS4ncHT/eDNN31SeC6Bv7c3vb+0ohzIa3YQHPdgGGNtympDoKHl
	ECoKr0mQOXvoVmftnt8aWQeQw5QYVLUeRCB/1t5fQsVs8qNOaiGn3rOhmFxE8WUuMq4YjvQ
	4PBwem56TMPE22QG8iX7gFym71zuuNrSi44c6s1Yp+imrJJDa4mUDBzaJw5RbAlEq3UfrTR
	FMwGWOg+ME4xOZrxh0vQPeRVRi6ssX9v/YDt17jGJZgJd+u3sha71guZC4ERHCyE/ZsZCOM
	LK61GOSRGZ+bbhf1Gn6yJcCdV52r7krRCoI33a/DUYEeXODYZmXUCAXCKD22/HP1/o9B/MS
	VjaIVT197RHX8NJ1DaR+JK4hh37VSon7O8JQRYP/dXmk8LOvZbtlyONOUxtUqX7wZBocmoq
	TBFHCtChX6r6iqBhlb/4joTzK8ZqlP7PN3otshlo+pxdYmyuYtdMZIB5UtWVYFaYTHhSJvP
	POtqQKkfVRY0QVdVgICvq9zWMPk+QqwAljIhsf2OeKTCpZ5a8bn/AQokjKCUVY/DyahV1do
	mch1OfrRzmSBqsGn8zy19ZHyNetFx0RCtoNCSHcSsw+OljBrQ4DkfXd73MH2H61QMajsAt4
	vNcamxfpUkzBUGAK4idcgqI+x7fMLFTzCmzrXYREAXrZC6jSuWtoa4yT6BBvGUOcjvl4U5k
	hgd6DuFIl8vbSqFMzMZW5U7Qick/wb/r7wk3Rn1ARRz8Pf9v6ixzLb/QyBPAsGB0kf+Ph/B
	ppOBCKyDw52P7wkzl4APkFmGOSjclDN+MQs2qKquzXTGToi6wa+veKMbjPmD7UshLRgiUBK
	Jhic0qYaGSgSEqVvPK
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_002436_937891_980DB6D5 
X-CRM114-Status: GOOD (  12.44  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The drm_aux_bridge_register() uses the device->of_node as the
bridge->of_node.

This patch adds drm_aux_bridge_register_from_node() to allow
specifying the of_node corresponding to the bridge.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

(no changes since v3)

Changes in v2:
- Fix incorrect function names in the documentation comments.

---
 drivers/gpu/drm/bridge/aux-bridge.c | 26 +++++++++++++++++++++++---
 include/drm/bridge/aux-bridge.h     |  6 ++++++
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
index 1ed21a8713bf..06a1466f49bd 100644
--- a/drivers/gpu/drm/bridge/aux-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-bridge.c
@@ -33,8 +33,9 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
 }
 
 /**
- * drm_aux_bridge_register - Create a simple bridge device to link the chain
+ * drm_aux_bridge_register_from_node - Create a simple bridge device to link the chain
  * @parent: device instance providing this bridge
+ * @np: device node pointer corresponding to this bridge instance
  *
  * Creates a simple DRM bridge that doesn't implement any drm_bridge
  * operations. Such bridges merely fill a place in the bridge chain linking
@@ -42,7 +43,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
  *
  * Return: zero on success, negative error code on failure
  */
-int drm_aux_bridge_register(struct device *parent)
+int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
 {
 	struct auxiliary_device *adev;
 	int ret;
@@ -62,7 +63,10 @@ int drm_aux_bridge_register(struct device *parent)
 	adev->dev.parent = parent;
 	adev->dev.release = drm_aux_bridge_release;
 
-	device_set_of_node_from_dev(&adev->dev, parent);
+	if (np)
+		device_set_node(&adev->dev, of_fwnode_handle(np));
+	else
+		device_set_of_node_from_dev(&adev->dev, parent);
 
 	ret = auxiliary_device_init(adev);
 	if (ret) {
@@ -80,6 +84,22 @@ int drm_aux_bridge_register(struct device *parent)
 
 	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
 }
+EXPORT_SYMBOL_GPL(drm_aux_bridge_register_from_node);
+
+/**
+ * drm_aux_bridge_register - Create a simple bridge device to link the chain
+ * @parent: device instance providing this bridge
+ *
+ * Creates a simple DRM bridge that doesn't implement any drm_bridge
+ * operations. Such bridges merely fill a place in the bridge chain linking
+ * surrounding DRM bridges.
+ *
+ * Return: zero on success, negative error code on failure
+ */
+int drm_aux_bridge_register(struct device *parent)
+{
+	return drm_aux_bridge_register_from_node(parent, NULL);
+}
 EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
 
 struct drm_aux_bridge_data {
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index c2f5a855512f..7dd1f17a1354 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -13,11 +13,17 @@ struct auxiliary_device;
 
 #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
 int drm_aux_bridge_register(struct device *parent);
+int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np);
 #else
 static inline int drm_aux_bridge_register(struct device *parent)
 {
 	return 0;
 }
+
+static inline int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
+{
+	return 0;
+}
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
