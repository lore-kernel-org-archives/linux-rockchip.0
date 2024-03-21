Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DC3C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 15:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgtBmABJJZyRigQ540yYJp99HUeg44bfbJIIAqZyrvM=; b=BGNHPcCDN2kk45
	e76Yf2u8SFRhlxvYJHaUXI2gq7/C3ml6rVdo0Nt/ZIyHEgHQOAJ/JZHw6hDS6Rz2N6Itj+3tj0kLr
	6jwh1dcuam6NDLXs3p6NmDj8ulYYEckkVsEfj5PDQaMiM1OdNaXbu95yvboU/ndCIzw8cIHCT1yip
	JaWsmjMZp1pDapsj8vV1oKqLse69NzoDl+7+TidP+mNalFJzq+79pgbp32DjO015VuzWm657PH6h9
	HRU6Ejrs3ts0aG+w0TI5p2WOIngbU2Ah4aFHD/oRZ7fvcvbWTPIjpDGwTE/jLUp6iOFDqiAD9JGtb
	lAEaRwBjH86AkEdkn3yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnKMZ-00000003TyW-0HI7;
	Thu, 21 Mar 2024 15:29:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnKMK-00000003Tll-3cZA;
	Thu, 21 Mar 2024 15:29:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AD7BB61215;
	Thu, 21 Mar 2024 15:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D257C433C7;
	Thu, 21 Mar 2024 15:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711034975;
	bh=hFLZVzLwZ7Ba7ngonTaSWS96nfPoT7tQenASBO+3D2E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nI8Bwgb+rkS0FaGDWPlrQk9ECpq2TPoq6qWL9ZZ/pzJYsj1cfD5SADIVmq9l6dRDQ
	 9OvfRjUpOcmzRY43IjHvrboAeEdXJaJETA/ahsgQnUpZtqvYuJSNlJ8GLhbrIv8xJc
	 jmnkB+qFWQB/9vJFSn8c7WtC1pOGVFP/TTZGL727gu2J9vZPgs87V5gvish+IohwPp
	 G2kqwygP4wurlG1bZU51RViDWxbJCJbFIGckpyycN7o5bKIpFqVqH7JAVsARtIRvGR
	 VLkGC0zI37ZoDb/Jyz0Ut6I0E7lk9F0LvEPm6iqMO5XFMEBO+ypt8AYJj/orUnr5C3
	 NZX7K32jVHRIg==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 21 Mar 2024 16:28:59 +0100
Subject: [PATCH v10 03/27] drm/connector: hdmi: Create an HDMI sub-state
MIME-Version: 1.0
Message-Id: <20240321-kms-hdmi-connector-state-v10-3-e6c178361898@kernel.org>
References: <20240321-kms-hdmi-connector-state-v10-0-e6c178361898@kernel.org>
In-Reply-To: <20240321-kms-hdmi-connector-state-v10-0-e6c178361898@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4757; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hFLZVzLwZ7Ba7ngonTaSWS96nfPoT7tQenASBO+3D2E=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKl/gpy3LI40VLRX2PN9Qfy6swv+uazeVHKL1df0vrHSG
 4FF8kb3O0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjARvicM/zMOsNnviFg3w+TM
 jUnHtuzcvWGKqOPxJcm55asL/5/QszZnZNj4Ql/Ce73PtJVhj604FR0c+Yv+TxCo3yHH8sNhZfm
 7VDYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_082937_136131_66EEC4F3 
X-CRM114-Status: GOOD (  12.58  )
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

The next features we will need to share across drivers will need to
store some parameters for drivers to use, such as the selected output
format.

Let's create a new connector sub-state dedicated to HDMI controllers,
that will eventually store everything we need.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic_state_helper.c | 35 +++++++++++++++++++++++++++++++
 include/drm/drm_atomic_state_helper.h     |  4 ++++
 include/drm/drm_connector.h               |  7 +++++++
 3 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 519228eb1095..8f459aaa8ef4 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -569,10 +569,26 @@ void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector)
 
 	drm_atomic_helper_connector_tv_margins_reset(connector);
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_tv_reset);
 
+/**
+ * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
+ * @connector: DRM connector
+ * @new_conn_state: connector state to reset
+ *
+ * Initializes all HDMI resources from a @drm_connector_state without
+ * actually allocating it. This is useful for HDMI drivers, in
+ * combination with __drm_atomic_helper_connector_reset() or
+ * drm_atomic_helper_connector_reset().
+ */
+void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
+					      struct drm_connector_state *new_conn_state)
+{
+}
+EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
+
 /**
  * drm_atomic_helper_connector_tv_check - Validate an analog TV connector state
  * @connector: DRM Connector
  * @state: the DRM State object
  *
@@ -618,10 +634,29 @@ int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
 
 	return 0;
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_tv_check);
 
+/**
+ * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
+ * @connector: DRM Connector
+ * @state: the DRM State object
+ *
+ * Provides a default connector state check handler for HDMI connectors.
+ * Checks that a desired connector update is valid, and updates various
+ * fields of derived state.
+ *
+ * RETURNS:
+ * Zero on success, or an errno code otherwise.
+ */
+int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
+					   struct drm_atomic_state *state)
+{
+	return 0;
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
+
 /**
  * __drm_atomic_helper_connector_duplicate_state - copy atomic connector state
  * @connector: connector object
  * @state: atomic connector state
  *
diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
index b9740edb2658..b8bdd366104d 100644
--- a/include/drm/drm_atomic_state_helper.h
+++ b/include/drm/drm_atomic_state_helper.h
@@ -69,11 +69,15 @@ void drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
 void __drm_atomic_helper_connector_state_reset(struct drm_connector_state *conn_state,
 					       struct drm_connector *connector);
 void __drm_atomic_helper_connector_reset(struct drm_connector *connector,
 					 struct drm_connector_state *conn_state);
 void drm_atomic_helper_connector_reset(struct drm_connector *connector);
+void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
+					      struct drm_connector_state *new_conn_state);
 void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector);
+int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
+					   struct drm_atomic_state *state);
 int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
 					 struct drm_atomic_state *state);
 void drm_atomic_helper_connector_tv_margins_reset(struct drm_connector *connector);
 void
 __drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector,
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 4491c4c2fb6e..000a2a156619 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1029,10 +1029,17 @@ struct drm_connector_state {
 	/**
 	 * @hdr_output_metadata:
 	 * DRM blob property for HDR output metadata
 	 */
 	struct drm_property_blob *hdr_output_metadata;
+
+	/**
+	 * @hdmi: HDMI-related variable and properties. Filled by
+	 * @drm_atomic_helper_connector_hdmi_check().
+	 */
+	struct {
+	} hdmi;
 };
 
 /**
  * struct drm_connector_funcs - control connectors on a given device
  *

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
