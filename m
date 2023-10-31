Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63FC8C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/424BKdvwOABK5o4LDtQIH7NmwlJSEPFLiY5SaM058A=; b=VRUjG9Dn3pGj/z
	O/umwwhiIom6XX/L4j2uZik9a5+waSLr+sdpbuKwVgZR5tE6Z+3IxbLpxt0S3UqJNSXeQjlDlLSFn
	HkdN4lvyFFpak039pjYRdIsEMK6cundLGQQqxexpAGK73ZIhcS5+FjjWLaZlJu8ZO+YowPYTL5j9w
	L53YNyAllzu51HA2LNHO8HFDUsFHe+/lE/EbSwcxb68UrEWMAiqjTFMlvwQa4yk2ktdaPyyKnIoIk
	m92uvqlN+2Lz9MyGsBct+uj3sXrCF//I3pF+Egdf9Zy3z9zJbmmOBFWjHzt11w/wkYbkXVe1orIrp
	gGnjIvXeZT7zo36/jsxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvA-005jI3-1q;
	Tue, 31 Oct 2023 16:48:52 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxruy-005j6b-1V;
	Tue, 31 Oct 2023 16:48:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 89269CE0ABE;
	Tue, 31 Oct 2023 16:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70DE0C433C7;
	Tue, 31 Oct 2023 16:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770917;
	bh=VPZB/POV7iVmeWtbXi3+KcObCDwbStqo6BKswkAb6p8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cvHZr8l07BS+Y0v93fwcnWqL9hNjBiHp1pgopGN2hm9Q4U7GeKRRyineA8Svs7P4T
	 LcWwt5VnlgYKGOQCCFocZseBOD12t9U+ULCfibP0ey5t8r5/mVtyfQR/7/+MGg7Qgu
	 UZO26MNEtkDeliJFerKTXpF0wAAAvumK+dqC+B3eQ8cAveteRJfEgiCeI8Sw6KzFM4
	 8x5y1Hzny4rE/yc2lCyAdNg8yOMcnTtdma/ODfbrrLMGsQqd7/Du09jWIfy02rP8pH
	 30ZxpaK9JQRro7MTiiEGPDmD5XfIEdM8wyURWZu5t7mqjDgQYdQQDZAep7564jSh+g
	 tBxip7ab5NAag==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:14 +0100
Subject: [PATCH RFC v3 01/37] drm/connector: Introduce an HDMI connector
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-1-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3285; i=mripard@kernel.org;
 h=from:subject:message-id; bh=VPZB/POV7iVmeWtbXi3+KcObCDwbStqo6BKswkAb6p8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+ndLbqf1LJsbrPBv38onJ79PmFBYLl/7V9/DUU1FQ
 C0r/65NRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACYyX5OR4eKqC70GV203W2aX
 v48vP7Vg5aXdR2TS1/MGPGd46FXbJczwP55/f9HWlJNaUcve6l1+Mp/NYpPj9JQ6X5XDfSeZ1qy
 v4AQA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094840_844745_58AA353F 
X-CRM114-Status: GOOD (  13.19  )
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

A lot of the various HDMI drivers duplicate some logic that depends on
the HDMI spec itself and not really a particular hardware
implementation.

Output BPC or format selection, infoframe generation are good examples
of such areas.

This creates a lot of boilerplate, with a lot of variations, which makes
it hard for userspace to rely on, and makes it difficult to get it right
for drivers.

Let's create a new connector variant specifically dedicated to HDMI
controllers that will allow to abstract away the duplicated logic.

Hopefully, this will make drivers simpler to handle, and their behaviour
more consistent.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 39 +++++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  5 +++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index c44d5bcf1284..997f8ab21d04 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -452,6 +452,45 @@ int drmm_connector_init(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drmm_connector_init);
 
+/**
+ * drmm_connector_hdmi_init - Init a preallocated HDMI connector
+ * @dev: DRM device
+ * @connector: A pointer to the HDMI connector to init
+ * @funcs: callbacks for this connector
+ * @connector_type: user visible type of the connector
+ * @ddc: optional pointer to the associated ddc adapter
+ *
+ * Initialises a preallocated HDMI connector. Connectors can be
+ * subclassed as part of driver connector objects.
+ *
+ * Cleanup is automatically handled with a call to
+ * drm_connector_cleanup() in a DRM-managed action.
+ *
+ * The connector structure should be allocated with drmm_kzalloc().
+ *
+ * Returns:
+ * Zero on success, error code on failure.
+ */
+int drmm_connector_hdmi_init(struct drm_device *dev,
+			     struct drm_connector *connector,
+			     const struct drm_connector_funcs *funcs,
+			     int connector_type,
+			     struct i2c_adapter *ddc)
+{
+	int ret;
+
+	if (!(connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	      connector_type == DRM_MODE_CONNECTOR_HDMIB))
+		return -EINVAL;
+
+	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL(drmm_connector_hdmi_init);
+
 /**
  * drm_connector_attach_edid_property - attach edid property.
  * @connector: the connector
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index d300fde6c1a4..c86cd363d652 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1894,6 +1894,11 @@ int drmm_connector_init(struct drm_device *dev,
 			const struct drm_connector_funcs *funcs,
 			int connector_type,
 			struct i2c_adapter *ddc);
+int drmm_connector_hdmi_init(struct drm_device *dev,
+			     struct drm_connector *connector,
+			     const struct drm_connector_funcs *funcs,
+			     int connector_type,
+			     struct i2c_adapter *ddc);
 void drm_connector_attach_edid_property(struct drm_connector *connector);
 int drm_connector_register(struct drm_connector *connector);
 void drm_connector_unregister(struct drm_connector *connector);

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
