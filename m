Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF573C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM4rKrOUqQas7HLOvETLbKTqZW5AsITyKMHwNu8Ttl0=; b=b7TJY54YEcEIfn
	MvX71uLQQ3pW3cuXqDY1m5tItCjsZMqBJPRZ7kQdWi9Vi3Ols7DbZROnAbb2rrhmU3UvqpVZysDrJ
	8/Vq24ojlwPR0e/3foKzZ60u5QsdeeNzlewGwlsLw06dBS4jhneDTj9p/NRxHw9r8/7NAaKveX2X2
	bEDU1BAODpd83uplB4/1BGwMf+Iw04dxgyujKfWCbnE7dykSjJ2K6nwS69Zz8kEAdj14rDivbF2yd
	84LesgJ5TCsVx7vYm8xL4SfV0y3V8v/tCUasVskTzLbfCHtn9O8nuulb+E6C4a9mi8JtSokLkmUNO
	FNn82Hd7CwddPxn+Ly2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDe9-00000005yWF-2n9M;
	Thu, 22 Feb 2024 18:18:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDb9-00000005xHZ-10RM;
	Thu, 22 Feb 2024 18:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=fLKeVAr2dk6pbz0au6ltyMpszNJ95+isirPVuX+EgRo=; b=hGW5i3A7iiPRuLiuc0MR8hHT/O
	TMFpKajP+uKHtVvHOon0yZ6iSujT/Kpo2rv6PADPqU50/7XHSiQMKihgQaVUQL89tJsYZahBF1cdG
	BkzRfHLwrDTtgwVWpFKAF7uPoOY1r6BXcGHOF8ijcGNxEqQa7TeJRSX3a12ERAbgVK226y17nbRAi
	OwU7J7SNjrBuA8clVpnhavqsmY6IsOI1ARXUqo+tEqirTBmp6HKOJD8lOPU0NxA+/EeljoSKeqlnf
	/Av++Vs7ik7nVB/cPRemNgWK7KPonPVIrOOIQyznyxsVnhZEN2U74F3aZ6ft8/EbRWp9BfvAESIzu
	wNIPKC8Q==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDb5-00000004IYg-3PQl;
	Thu, 22 Feb 2024 18:15:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C031FCE28E5;
	Thu, 22 Feb 2024 18:14:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB444C43399;
	Thu, 22 Feb 2024 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625694;
	bh=pSNXmp0c3bxRBDh2tzEv2eshg+rV1t1u/wJNsU+JbLE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KbCrI6L1xZOKL9hHVVKrlVdFJTXH5iTlEvwUTJAtgDU+crqujjOdDgdB++PBFSny1
	 CkHjIOeAh5NyPaegeAvZw/XvJRUIrBnVk81k3BOTP4L4w3ye7fWfJuTFKPybuglv5z
	 vd5/sas316sT8eYCEC/KFN6ocZB+d5hblXsQvi7rlbCqo5G5R7tFkCM+X6feCLp+++
	 D7h0Nw6Q3QBoFU9KsYBIUEKaYv86i28yzXdVE8Gng9xIqRD76oVN27SQpWCuRoQS6D
	 +kD9DEd6wcmFKjTzVdPpHsJzVNA04xYyhckOD1wANNZMrVTHEryIYI166B1HFWRLYn
	 pI3zTZC3FKghQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:55 +0100
Subject: [PATCH v7 09/36] drm/connector: hdmi: Add output BPC to the
 connector state
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-9-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7393; i=mripard@kernel.org;
 h=from:subject:message-id; bh=pSNXmp0c3bxRBDh2tzEv2eshg+rV1t1u/wJNsU+JbLE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+97Z3Zk2rUT6zdWeoBmT95Re/tTqdmmSHOf9gnld8
 xe8NVzq2VHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJVNUwMnTa+sV6dn9S1Ptq
 KV947HjbRt/w64dMpDvYO9c0nPp3RYSRYfL5k5xKofIb1Zdbpml5cYT840rUF2yMDiqMi3v8tO4
 4AwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181504_414648_EE5DB355 
X-CRM114-Status: GOOD (  16.09  )
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

We'll add automatic selection of the output BPC in a following patch,
but let's add it to the HDMI connector state already.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic.c               |  5 +++++
 drivers/gpu/drm/drm_atomic_state_helper.c  | 20 ++++++++++++++++++++
 drivers/gpu/drm/drm_connector.c            | 20 +++++++++++++++++++-
 drivers/gpu/drm/tests/drm_connector_test.c | 12 ++++++++----
 include/drm/drm_connector.h                | 12 +++++++++++-
 5 files changed, 63 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index a91737adf8e7..4e11cfb4518b 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1143,6 +1143,11 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	drm_printf(p, "\tmax_requested_bpc=%d\n", state->max_requested_bpc);
 	drm_printf(p, "\tcolorspace=%s\n", drm_get_colorspace_name(state->colorspace));
 
+	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
+	}
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
 		if (state->writeback_job && state->writeback_job->fb)
 			drm_printf(p, "\tfb=%d\n", state->writeback_job->fb->base.id);
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 7ad1dffe66d9..460454904fe3 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -584,6 +584,10 @@ EXPORT_SYMBOL(drm_atomic_helper_connector_tv_reset);
 void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
 					      struct drm_connector_state *new_state)
 {
+	unsigned int max_bpc = connector->max_bpc;
+
+	new_state->max_bpc = max_bpc;
+	new_state->max_requested_bpc = max_bpc;
 }
 EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
 
@@ -651,6 +655,22 @@ EXPORT_SYMBOL(drm_atomic_helper_connector_tv_check);
 int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 					   struct drm_atomic_state *state)
 {
+	struct drm_connector_state *old_state =
+		drm_atomic_get_old_connector_state(state, connector);
+	struct drm_connector_state *new_state =
+		drm_atomic_get_new_connector_state(state, connector);
+
+	if (old_state->hdmi.output_bpc != new_state->hdmi.output_bpc) {
+		struct drm_crtc *crtc = new_state->crtc;
+		struct drm_crtc_state *crtc_state;
+
+		crtc_state = drm_atomic_get_crtc_state(state, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+
+		crtc_state->mode_changed = true;
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index d9961cce8245..da51a2bcb978 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -459,6 +459,7 @@ EXPORT_SYMBOL(drmm_connector_init);
  * @funcs: callbacks for this connector
  * @connector_type: user visible type of the connector
  * @ddc: optional pointer to the associated ddc adapter
+ * @max_bpc: Maximum bits per char the HDMI connector supports
  *
  * Initialises a preallocated HDMI connector. Connectors can be
  * subclassed as part of driver connector objects.
@@ -475,7 +476,8 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 			     struct drm_connector *connector,
 			     const struct drm_connector_funcs *funcs,
 			     int connector_type,
-			     struct i2c_adapter *ddc)
+			     struct i2c_adapter *ddc,
+			     unsigned int max_bpc)
 {
 	int ret;
 
@@ -483,10 +485,26 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 	      connector_type == DRM_MODE_CONNECTOR_HDMIB))
 		return -EINVAL;
 
+	if (!(max_bpc == 8 || max_bpc == 10 || max_bpc == 12))
+		return -EINVAL;
+
 	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
 	if (ret)
 		return ret;
 
+	/*
+	 * drm_connector_attach_max_bpc_property() requires the
+	 * connector to have a state.
+	 */
+	if (connector->funcs->reset)
+		connector->funcs->reset(connector);
+
+	drm_connector_attach_max_bpc_property(connector, 8, max_bpc);
+	connector->max_bpc = max_bpc;
+
+	if (max_bpc > 8)
+		drm_connector_attach_hdr_output_metadata_property(connector);
+
 	return 0;
 }
 EXPORT_SYMBOL(drmm_connector_hdmi_init);
diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
index 8f070cacab3b..d8d30aea9fdc 100644
--- a/drivers/gpu/drm/tests/drm_connector_test.c
+++ b/drivers/gpu/drm/tests/drm_connector_test.c
@@ -184,7 +184,8 @@ static void drm_test_connector_hdmi_init_valid(struct kunit *test)
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       DRM_MODE_CONNECTOR_HDMIA,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
@@ -200,7 +201,8 @@ static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       DRM_MODE_CONNECTOR_HDMIA,
-				       NULL);
+				       NULL,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
@@ -217,7 +219,8 @@ static void drm_test_connector_hdmi_init_type_valid(struct kunit *test)
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       connector_type,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_EQ(test, ret, 0);
 }
 
@@ -248,7 +251,8 @@ static void drm_test_connector_hdmi_init_type_invalid(struct kunit *test)
 	ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
 				       &dummy_funcs,
 				       connector_type,
-				       &priv->ddc);
+				       &priv->ddc,
+				       8);
 	KUNIT_EXPECT_LT(test, ret, 0);
 }
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 000a2a156619..d4d2ae15bc1e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1037,6 +1037,10 @@ struct drm_connector_state {
 	 * @drm_atomic_helper_connector_hdmi_check().
 	 */
 	struct {
+		/**
+		 * @output_bpc: Bits per color channel to output.
+		 */
+		unsigned int output_bpc;
 	} hdmi;
 };
 
@@ -1682,6 +1686,11 @@ struct drm_connector {
 	 */
 	struct drm_property_blob *path_blob_ptr;
 
+	/**
+	 * @max_bpc: Maximum bits per color channel the connector supports.
+	 */
+	unsigned int max_bpc;
+
 	/**
 	 * @max_bpc_property: Default connector property for the max bpc to be
 	 * driven out of the connector.
@@ -1915,7 +1924,8 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
 			     struct drm_connector *connector,
 			     const struct drm_connector_funcs *funcs,
 			     int connector_type,
-			     struct i2c_adapter *ddc);
+			     struct i2c_adapter *ddc,
+			     unsigned int max_bpc);
 void drm_connector_attach_edid_property(struct drm_connector *connector);
 int drm_connector_register(struct drm_connector *connector);
 void drm_connector_unregister(struct drm_connector *connector);

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
