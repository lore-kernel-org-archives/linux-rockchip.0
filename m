Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A99CAC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J13nihktHLYFg61qQFHX1ha4U1n/9DNC5ONoxCW7BuA=; b=Z2eLE5bZquDInA
	gTLq7pMZ8spk3Ef4miY0RJthH7hzuT6yqmtnZzrpD4RLht1m6cMHpVFcDZWSQ8EPoMSo49DVLqcUv
	qO8m19JE3c/lirhdhC1uv8GVZyJQOIDW/j51Bvf+c8LrbuJ+ypQWc1q19ItsajcmHUQS6XB/LQat4
	j5kgRJS1TRp62hspIoHwqpPSj7dfLBON7WXyWG0PCtAvGhx2gxAgfpgE3rv74bPJbbegYut2rIpDw
	1mqKkEI6CspUEqcBMIVwCr/2C37apERSig183JGYu31cWHa9wd32aP/2U2Me4XitLCv45O9jJo9AP
	h5Bc0qOliMI41SQUvs/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp9yF-00000005YAQ-0QJZ;
	Tue, 26 Mar 2024 16:48:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8uy-00000005FW3-36UV;
	Tue, 26 Mar 2024 15:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=sBsaGJ/1n+/HJXiG8RiS8zfh0aBWv4YKD2Ilu2Uyl5Y=; b=NxOgwFRjl3oZb0zu7/WnjkVzGv
	Usg3uGghUuinnZmaFsY/1E/U7ndTw8r4s1d6wQ9xwDJdIJWcHkt9Fbx8CPI2NwosMDBpnuEQSZ7Ir
	gJwXW8MFoFHzYTIZrFRpYFBoHYUfxvy0O3myMZBYcoDFMGsah3YQFP2n2Q7+KKASCZUMddsEa8KUH
	v9CCQWMjUb9Hzr5/4z9iHhEXqdtUiMRkbYLxjG6Q1F7/Lwc/D94gCTCRPFl0nNoionSbxuiBMYckD
	qC7aYVkJsSrjKRa+kEKvi1nS99a+e0/UJ2TxnNKU91QzWsbufqiMRtBQ7yPE5v2zv+NCG9WeMH+72
	ZrMgFE2Q==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp8uv-0000000HGyV-0V4R;
	Tue, 26 Mar 2024 15:40:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1FC6ECE2272;
	Tue, 26 Mar 2024 15:40:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041C2C433C7;
	Tue, 26 Mar 2024 15:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711467642;
	bh=Rvu9gXBh6IqaFwjAwQlYEvL2g02v1kbFHwnCY/WUoW0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BSSXe5QPf7d6IMqwLBSmEBNQJQCN0k4bXMXmZMZMfub8RWee99DJH9U0m9Ph1j4Wz
	 eprL+M6Z+Ir/+x6B8kegXLql4Cm4DNghHJN7u+GXM59I7w1vPcdRh6xpay6BYzT1t6
	 sw5e+tF4E5NUObboBh717GNVq0uqjOTmc4TJtcXiyRiZV2nAhYt8ZFOd+P58SLTPjr
	 UnvqDDdQhTYAz1k1ChWhi0ImvCWUTDruMI/XBs1pS/PBL2Biclkmj77nEII8Su0KTe
	 EI/xAK9Fzz3kmcCQq0msSP8y+HY+FP/MmNg9OL+iRZtk00mFVjbPwE6HDEJ6htwsiw
	 +6H7JbhfQ7PPQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 26 Mar 2024 16:40:08 +0100
Subject: [PATCH v11 04/28] drm/connector: hdmi: Create an HDMI sub-state
MIME-Version: 1.0
Message-Id: <20240326-kms-hdmi-connector-state-v11-4-c5680ffcf261@kernel.org>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
In-Reply-To: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5220; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Rvu9gXBh6IqaFwjAwQlYEvL2g02v1kbFHwnCY/WUoW0=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlMb+JnSKflZv//qjt7nqVsnknn/14Xxh3JssyfWGuYu
 E83pEh2TGVhEOZkkBVTZHkiE3Z6efviKgf7lT9g5rAygQxh4OIUgInoZDDWmXczzpiomHeczbWm
 ONLmDsP6s0EzYl9vipc2mT5xqkzXirwwqSX7RePqLa0tJ07wu1bBWO/2acmFF5fmZ1kyPa+acdM
 tc/KCCXEvnjiq/l+UbLfLfIrYbMYdHxZNnaPRLsfdtCuv5jwA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_154049_832384_A1CC841A 
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
index 01f2a231aa5f..2e37e2a51c73 100644
--- a/drivers/gpu/drm/display/Kconfig
+++ b/drivers/gpu/drm/display/Kconfig
@@ -75,5 +75,13 @@ config DRM_DISPLAY_HDMI_HELPER
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
