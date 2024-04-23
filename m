Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 180ACC16B13
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydu1m3FXo1jhulgQr1qYGnOBCNMl8EZv3YRpolbc1VA=; b=VavZ8Raauv9i9y
	bk/oGTnDvUi5Jh+cAW3VVbZVBgSWjC2SSSrXdP+NTCAOLDaMqdTJcHqR9JQs49O9tmtJPIMpqgwB4
	wrkSsDaReXANv1phAikc18J2epblUjzvq6Tqpbys2eakKoMopnc0d2kpW9nGx192re1/IoqAm7Hu6
	BNFxa3hqpWSLezG0sr1HWzI5UKxed3PLSCtVvT4ZsChK4BjC2GpbypqeXGpNPAPNgvtHNqe9hbBlY
	aGJOgEV5+IXYJlRrO+zVaQ+pHtrDO1Zx6kRvNra3YXXXsTcXAuNNnjzCxnlzxeO+H+rOz+b2ZUMwe
	kXdinH9LQXbbqeGCvcLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzDfk-0000000GuMd-49qL;
	Tue, 23 Apr 2024 10:46:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzDew-0000000GtqN-3VXa;
	Tue, 23 Apr 2024 10:46:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC495612ED;
	Tue, 23 Apr 2024 10:45:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C430C32782;
	Tue, 23 Apr 2024 10:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713869157;
	bh=KVZV5sQLzLxOFZuXjo/qOcnmPqD8ETXCUdxJPDw9rlo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UuDiBbI0YkVLKbPvaaYYiV2Kv0ikEbnsGAFl5O0WDcfsLtdPcLBdyD/xP4DbyAOCh
	 Jm3HnLjIwlMs3Lho2yUdtw2CQriQbgkrWN76asGI1Xfz8hnLVmCpnQEArPqEGDIcDy
	 iMvQyXcJUJBWWkRWEKnaRYH19OB6zonbvgY71uCQ0IP20j6jm4KUFIg4Lw427q3LRm
	 /997w25w7AvppLJGQcmZPEJC43tHVei8mPebdTf9TcGZ61vOCzfrauMfV+ofp0M3an
	 RCerX1+RD3bTsdo59An61cSX2F8iWyiU2+tBH6tjXnxeCXDQ8zrAa+Kj9JjVyY+F+b
	 affjHNRJ1oJtg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 23 Apr 2024 12:45:33 +0200
Subject: [PATCH v12 04/28] drm/connector: hdmi: Create an HDMI sub-state
MIME-Version: 1.0
Message-Id: <20240423-kms-hdmi-connector-state-v12-4-3338e4c0b189@kernel.org>
References: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
In-Reply-To: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5220; i=mripard@kernel.org;
 h=from:subject:message-id; bh=KVZV5sQLzLxOFZuXjo/qOcnmPqD8ETXCUdxJPDw9rlo=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGnqE316drcf2Lo5R+/xhuiFas53Xwrf9zAKWNVX3a3F6
 dp/fcbUjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjCR2f8ZGz4zaSycX9pRW2Rd
 saLO49FvUVMxwavnHb9M3FTHfN/m1cUkxdQPoTlpr6TKVddM0zlezNjQ+mX+U50P7Uc7Y5hk9xo
 5f1dcI7ny2NvjnFPqmHu3ZpuuXCemdeVm4pd7QuLexVpNTDIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_034613_032348_9268BD06 
X-CRM114-Status: GOOD (  16.04  )
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
Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/display/Kconfig                 |  8 +++++
 drivers/gpu/drm/display/Makefile                |  2 ++
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 41 +++++++++++++++++++++++++
 include/drm/display/drm_hdmi_state_helper.h     | 16 ++++++++++
 include/drm/drm_connector.h                     |  7 +++++
 5 files changed, 74 insertions(+)

diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
index a38962a556c2..78839f088462 100644
--- a/drivers/gpu/drm/display/Kconfig
+++ b/drivers/gpu/drm/display/Kconfig
@@ -76,5 +76,13 @@ config DRM_DISPLAY_HDMI_HELPER
 	bool "DRM HDMI Helpers"
 	depends on DRM_DISPLAY_HELPER
 	default y
 	help
 	  DRM display helpers for HDMI.
+
+config DRM_DISPLAY_HDMI_STATE_HELPER
+	bool "DRM HDMI Atomic State Helpers"
+	depends on DRM_DISPLAY_HELPER
+	depends on DRM_DISPLAY_HDMI_HELPER
+	default y
+	help
+	  DRM KMS state helpers for HDMI.
diff --git a/drivers/gpu/drm/display/Makefile b/drivers/gpu/drm/display/Makefile
index 17d2cc73ff56..629df2f4d322 100644
--- a/drivers/gpu/drm/display/Makefile
+++ b/drivers/gpu/drm/display/Makefile
@@ -12,9 +12,11 @@ drm_display_helper-$(CONFIG_DRM_DISPLAY_DP_TUNNEL) += \
 	drm_dp_tunnel.o
 drm_display_helper-$(CONFIG_DRM_DISPLAY_HDCP_HELPER) += drm_hdcp_helper.o
 drm_display_helper-$(CONFIG_DRM_DISPLAY_HDMI_HELPER) += \
 	drm_hdmi_helper.o \
 	drm_scdc_helper.o
+drm_display_helper-$(CONFIG_DRM_DISPLAY_HDMI_STATE_HELPER) += \
+	drm_hdmi_state_helper.o
 drm_display_helper-$(CONFIG_DRM_DISPLAY_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
 drm_display_helper-$(CONFIG_DRM_DISPLAY_DP_AUX_CEC) += drm_dp_cec.o
 
 obj-$(CONFIG_DRM_DISPLAY_HELPER) += drm_display_helper.o
diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
new file mode 100644
index 000000000000..1e92c1108d23
--- /dev/null
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: MIT
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_connector.h>
+
+#include <drm/display/drm_hdmi_state_helper.h>
+
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
diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
new file mode 100644
index 000000000000..6021983e2602
--- /dev/null
+++ b/include/drm/display/drm_hdmi_state_helper.h
@@ -0,0 +1,16 @@
+#/* SPDX-License-Identifier: MIT */
+
+#ifndef DRM_HDMI_STATE_HELPER_H_
+#define DRM_HDMI_STATE_HELPER_H_
+
+struct drm_atomic_state;
+struct drm_connector;
+struct drm_connector_state;
+
+void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
+					      struct drm_connector_state *new_conn_state);
+
+int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
+					   struct drm_atomic_state *state);
+
+#endif // DRM_HDMI_STATE_HELPER_H_
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
