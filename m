Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB5F606A324
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 07:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Yk46NrtB;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=airkyi.com header.i=@airkyi.com header.a=rsa-sha256 header.s=altu2504 header.b=tzk2/1RX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q8jfhJcSFwUTEugqqudmwFdUMShCMvV2jA8CJvHIWw=; b=Yk46NrtB28/wgN
	iurckl1Ctog9lhVOP2LWav7HrH7dq6B06gwcA3T4pGRNjFmHFICCWm6nkVcg9DNiY0sbPAsFrs5nT
	UGwn8NhvDlKn1nfubUswblde4b044nsJUo9ALyJ3hjBNah1xOQ9f+1GM24J2lQpoF7kfZhipD5UjF
	eBGKvX5c/SE57DnjGmqvR7xJNvHWCtK/D0GzytU1EohXOO1f+espsBMAvfhgOmdg6EMZ8tz5By0F/
	XMmz8/tL7Zi1W0v69RRKIEwDRWXTmAkF0f3eB5Nn5I31SVMKx8uBIq3yYo3QZcEOsWdCa/m+JnYIW
	BVrCWgbd3WjerYGOZAxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4ID-0000000926h-2RAA;
	Tue, 20 Oct 2026 07:29:53 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ4I9-0000000923M-35iP;
	Tue, 20 Oct 2026 07:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1792481342;
	bh=DJanm14+a4oEERJIEwsqr6UMMmk0UfftGh/0a/Q8LT4=;
	h=From:To:Subject:Date:Message-Id;
	b=tzk2/1RXw/VHXRLFAH+ArQkWpRnFzPepo/f+iGWP/Hk2Hz+c2rAvS7BH5c2q/ex3R
	 v9PQqx+e4tC/UoCPz4MnIG/PgoLi8DgL+E9+edhj3x4JrFg0WA7Jmtdey7OZiOoGup
	 ffUNcJxnoPa4g2ZqrnogivUWaOH4wYZQJwZWNngk=
X-QQ-mid: zesmtpsz4t1792481341t855129f9
X-QQ-Originating-IP: i939nXwO2ei7d/m1loVbZw6nbt7HmJycrjDREFVFMnQ=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 20 Oct 2026 15:28:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14835207740460632704
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v8 4/7] drm/bridge: aux: Add drm_aux_bridge_register_from_node()
Date: Tue, 20 Oct 2026 15:28:13 +0800
Message-Id: <20261020072816.180-5-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20261020072816.180-1-kernel@airkyi.com>
References: <20261020072816.180-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MR/iVh5QLeieGW1/EkYixm9kvWksSWJXK/FNwzbE0N9OSQhnipQwut70
	3El+TzK207NCjiWwqK8OkP3cPF7rbLFItnSzg1lfoU9yl7600oyRf6c/TShMe9UWo4m0B8W
	PDxPtq6Zo+Msmb2eZYaws7UU0IE7+u4ffMpYL5LrRfghZIlpb5dcQh4xBvRTKleenkFUj//
	2Z/M+uPM7A5IL7565udGov6U+HSsX3JJ6vtmOFQlm3KGPzNyYLQAyS3HRj6J1Fb3njhV+ST
	yOWblElqsOLSy14dYvyBwlv9XMde9z26oBfwOJg42CLef0sG69vdF+xy8QHlFz+zxDM+SEI
	yYjVlATmA5TixEAFcJ+bBHDdlV1x0cKT8T3RXy90DGk/wQjuwL9HdoBfdWfNNgwvXXVdNC1
	MbnteCi4QzI36MwHNhgU0D9s92hQoJJTyk6E5bA8pWR9LBKNJWWqtCzKujjJI6jnIjzHavL
	BnAiiq0PVPXi5deeSEHx50+EezszOaZa2imH/nI5+qmD39UEAMJFWHDHeuVxiTiS3jVJeek
	5snSIRXMLyaI8eutV0UbSH+ykLe7qcHAl7wrq0rnK3qW9HOoguIDO8E4EX7c/0cSz5zAoFw
	iblzo872ZC+AsgBQwQOdLe7Pgyv+4xVGhDHB53DcG4FAiZ4GPWdN9kjtQzvm7cGkAzrTEPE
	k1Z4K0Zf4OFAJtH+n4nGnPnW3JRpZEWJ98DJKpdTrjzynj1BWrFGeh938mW099lPcDADJ16
	C6/V6V9SMj7+fmB9J/F+nOLfWixl687ararXKvmp8j+PFWTcKeOULjJyvvwXRMgRFdkljb/
	mRd6sTmjJeQazYwFvrLZdoFRtxptyx2+L8GNvyOh+0xQShwz5L4SzWTGAxcqKXu5kqP+Z/A
	zZRf1gWTGe4VOhh5cv31dwEUNQyiz60UuR+xi5QHTo4edoMyQuw68Yltji3Vi8ufa9h4pT5
	9gRxoQFypoWr5vSqJepP89kqqD1TkdoeGRx8WNMGyhXvaYuO7Q/rh2waWJo9UBgpPrl6kyD
	jRqdhGwPQDhko/b6qV+I5h9veyrkm1jJtzvdUdTQ==
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_002950_280114_3B12F3E1 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
index 169939d23310..2b48612d6d1b 100644
--- a/drivers/gpu/drm/bridge/aux-bridge.c
+++ b/drivers/gpu/drm/bridge/aux-bridge.c
@@ -34,8 +34,9 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
 }
 
 /**
- * drm_aux_bridge_register - Create a simple bridge device to link the chain
+ * drm_aux_bridge_register_from_node - Create a simple bridge device to link the chain
  * @parent: device instance providing this bridge
+ * @np: device node pointer corresponding to this bridge instance
  *
  * Creates a simple DRM bridge that doesn't implement any drm_bridge
  * operations. Such bridges merely fill a place in the bridge chain linking
@@ -43,7 +44,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
  *
  * Return: zero on success, negative error code on failure
  */
-int drm_aux_bridge_register(struct device *parent)
+int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
 {
 	struct auxiliary_device *adev;
 	int ret;
@@ -63,7 +64,10 @@ int drm_aux_bridge_register(struct device *parent)
 	adev->dev.parent = parent;
 	adev->dev.release = drm_aux_bridge_release;
 
-	device_set_of_node_from_dev(&adev->dev, parent);
+	if (np)
+		device_set_node(&adev->dev, of_fwnode_handle(np));
+	else
+		device_set_of_node_from_dev(&adev->dev, parent);
 
 	ret = auxiliary_device_init(adev);
 	if (ret) {
@@ -81,6 +85,22 @@ int drm_aux_bridge_register(struct device *parent)
 
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
index cca07a8e2d45..67f74ed287d9 100644
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
