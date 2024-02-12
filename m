Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD6C4C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5B5KYKj6MoGOnHzaCzJI2cp29EmYT+2L+bF0n2DoUZg=; b=FWSE5yD9FiqUmN
	GeC1y9DrihwLspdpwyozMxL5lSFtR9NNyvhlyKRY+WJ3W31jf8mLbnfUVnlP4Lbb6uV1xd/9p7mJX
	vTS9o+MARJRZD9Gq/bpA1KmyJNnKoUGsrVim+jlGPBELt4jv4/XwrZwm+Ejx2Hga1DjZYVr0457VG
	RehXm8vB8QTQFwcEiQVdPJNE3FnR9O9aW2RAM3BLixqxjx66pY2rwUFe2tyjxurAg0dLcXbo2xVma
	cHTOxbq5Y+QTxA5dJX4O61Pw09CE20wzitVU6UzGnIdC+MIqv5ILvBqhVrdJ19CO0ROx7ocl3qNfq
	d5BNGIVjXDdjUXeUiRsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW8c-00000005P7F-1gDV;
	Mon, 12 Feb 2024 13:14:22 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW84-00000005OaV-1CyD;
	Mon, 12 Feb 2024 13:13:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 60269CE10CC;
	Mon, 12 Feb 2024 13:13:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B496C433C7;
	Mon, 12 Feb 2024 13:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743625;
	bh=0u5x3Bm9z3fvcYrHOnOZJKukvzBne3+qdXlM1owrzgk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XXNn7xfi/rOc+qn5d558ZyxFMN16YJJrQnPTntYcvrUovPTz2i6i/9dWSVYI5UDMX
	 SWkjSo0Usim/8z38ftwzwn6fx49RLacaR/bkqFaMQOA3n3BWb0ayvN9NhS+aO7hOt1
	 lUuLxIeqv2Ejd0l7a+tHzqbFzNd2D8aN5ru/ey/OICpEEiJ4Vp3wSPuU4BDzHM1xtz
	 qliGfGkvYpVQMJVt/giIKX2VUjssExhntwl1eGJPuLcWrbXQfrBnDc8Dj9zU9jxqX0
	 nw7krWE9Mjv/cPMqnAvOKtW4sGfPA4O2pvTkRsB0M/10W3WYoSQE3Jsw3HIDl5MVzt
	 0Y0vtVDjKP3PQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:12:49 +0100
Subject: [PATCH v6 06/36] drm/connector: Introduce an HDMI connector
 initialization function
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-6-f4bcdc979e6f@kernel.org>
References: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
In-Reply-To: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3492; i=mripard@kernel.org;
 h=from:subject:message-id; bh=0u5x3Bm9z3fvcYrHOnOZJKukvzBne3+qdXlM1owrzgk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJJO690yIi+juXXGwerVyC9fa7CqWuQ+nfXjmX3y2N
 oVHmndlRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACaS85uR4cCd9A8GD9Xz3i6R
 TWk+btu+vYQ5hsXnYILPgX/XRNbFFzIyLDy+9no629NY9axp0pvrds+u4bvY8i9G7su9EweebGb
 4zQcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_051349_205913_3F6BBAC7 
X-CRM114-Status: GOOD (  14.94  )
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

In the next patches, we'll add a lot of infrastructure around the
drm_connector and drm_connector_state structures, which will allow to
abstract away the duplicated logic. This infrastructure comes with a few
requirements though, and thus we need a new initialization function.

Hopefully, this will make drivers simpler to handle, and their behaviour
more consistent.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 39 +++++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  5 +++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b0516505f7ae..d9961cce8245 100644
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
index fe88d7fc6b8f..4491c4c2fb6e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1904,6 +1904,11 @@ int drmm_connector_init(struct drm_device *dev,
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
