Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC03CD5BAB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 03:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogFACeFUR8wA7Cl3L5UEbSwhZ8oZ6K8uC/MdLckXV4E=; b=y+FUpacz7rFeZw
	GTlNZXS6XLF4B6K1BFjhV+/HbDL/KZ6ykvDQCxqMsMHEJTSEcuePn3iH9kklbqYCGz4v7haKL2MBA
	gQRN3T1fDEENKoO85Nx7wYZPzbK27X5CQCHC1pcz0NZq+RDpcRnnaTIySOsR/51D9SKsyvBBJY0SF
	dpFyT/k1wiOXDRRnKLmJRGuBvdWkuE3D/0le+Qd7ri+M4rW2vjOCLW81DPwtrh1KRFGqiwyo617Vq
	+WFrBcOR/KFDYV+Cl/7zhUp01qztaN55+VCdCkQAP75FRQ3a9ReJPthUJFCe9c3PodlHQgegycb9n
	EKkaJxVTsSaZ8GDeG/eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPu6r-00000006Y5v-0OIz;
	Thu, 21 May 2026 03:30:09 +0000
Received: from bg5.exmail.qq.com ([43.154.155.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPu6n-00000006Y2C-18P5;
	Thu, 21 May 2026 03:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1779334174;
	bh=NA3zWcCN+LNcIiy4LfRk+qi3M7FDJHrSG6hmfEKlJsw=;
	h=From:To:Subject:Date:Message-Id;
	b=s7NaJMmVNkOOKuaFFBiaELK5QcGReUyg2KKLtinfkqzsOl57v+i5gd7s89Kc/Zy34
	 OBFL9Za7sLJSPuZqoJapzC1+nu12ZXpw5kgCV3KuhZBZLBJaBEARN5Rbh5BuSNtJjf
	 8WO7pnCAsmSeKw+2nU6rg2/wc7QmCHRTrrNz2B+c=
X-QQ-mid: zesmtpsz7t1779334164ta5a04dd0
X-QQ-Originating-IP: hBQ95K8MTql32AYs7HMJrJ6z3IXUmXk+VXXcCPVKIvY=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 May 2026 11:29:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3257350597745359929
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 2/5] drm/bridge: aux: Add drm_aux_bridge_register_from_node()
Date: Thu, 21 May 2026 11:28:51 +0800
Message-Id: <20260521032854.103-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260521032854.103-1-kernel@airkyi.com>
References: <20260521032854.103-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OMYc6F8vKQbcTOeiZoFxE/+nlnG0zxtY64yCtZgU6kb0COyRGoeqJ9ti
	NY7vMeikC7xNXadhL6vltW9nhvH5ueTQ4Ky42w1iFhUGYxGxpmr+lhth1gCqkcTmnJ8ye3R
	5Q7iox62EeZz6hPg4ZUJv49XJOZMWxsbBneLCXsF7wBMx1ihJdwCc5h2VTg+EiOM9MduEf4
	DxAU46HlHT/TA9uL+HOWXwb4w02nrl7IraLT4mJ1Q/NnBvjiu9N2TQwJQDVpipBQKGPW/lK
	LHNohXHyFC7xzwFEzb5C49gbRdVIO3g/jRvgXFGMCU3r2rDHofX2/qIdSy8uoIcFJ5wAGqx
	+/x4J9M11hbWnhrsuwJumZVwnbl3NJvQEggNFQR81T1X03Mu7QaW0PavDuJL6Uhf/q7SRMB
	i7Eg5V0Q4ANetBR55nE/gfBU4Aau5BS38X2nYstZh5XAZlb7iiof/Wha7xULx0coHIjxcvb
	7vKvg0Jx2rxab+TErnwnmRlrwhStQNmV+Snp7318aKqmw6WkUtiXEaQjV8zkTOxy3B3WmDZ
	ZUhgRQBVeByVF+uom/rzTAbxWJqUIE6+ubpz9euG94qiJVX8/P6U7kGb+rp+V/zvTDn8pCP
	s1RJIF932NtBoBZ2a6t5d05UETHSrUb5pCWgZ7jjhGQxDoLW7+ehMv9NVI7WRl996Ig8HPQ
	ngRjhsx3MbgHGLv94PxHh83Fpvf9Zv/UcFp3Lhop1hAZa85Pvf4JS4kEnOPmBDR5dZcBlpX
	Afm2U1BeWmAQgh0y+qcqQDaK5lw8s5wP+Hs6PHR0yJK5K+zdMegf1xnc1cXGv80bCpa6vUA
	iugLFFUOtN+M0Tgx9e6CgLDZ+M6CgYl6dhVx25tvwvLAexvL03ksmUduNogEtmPXRC/VzJj
	EVHfQwCSIPFz0JOpe3a7MzKPwitC8yqoAPR2MZUm6yV584PD9B9kDC3HEhdwb1riLtIXUUS
	b3WdDVMJQA63LzdsVSDnWaEbhnuCQ0y0NcP9AisHwC6zRdZupCtXtAUYxAAs4Uo+6j+maGp
	Zk0rdjfLRU5Zd0dyWx2QxgOWhXCEo=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_203005_662586_2C04F9CF 
X-CRM114-Status: GOOD (  13.33  )
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
---
 drivers/gpu/drm/bridge/aux-bridge.c | 24 ++++++++++++++++++++++--
 include/drm/bridge/aux-bridge.h     |  6 ++++++
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
index 1ed21a8713bf..f50283abed5f 100644
--- a/drivers/gpu/drm/bridge/aux-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-bridge.c
@@ -35,6 +35,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
 /**
  * drm_aux_bridge_register - Create a simple bridge device to link the chain
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
