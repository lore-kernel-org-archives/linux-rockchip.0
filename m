Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976A6C54E60
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Mar 2024 14:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIMvPdxVk5AQEIcif5+EKF6MNPy2lF5Ib7ip4c4xOGc=; b=qyYwNWBTJ1bKzp
	KZnlJ+i5Pr+fCb4WpLHUBoS9y6yhPhrf+zaepK8Jg0xmfhL2i58kyYFZPEIW4rKSbRHOYc47gzjH9
	QFOh+D+5Tx8vYzcJDoCpJ72/zz24s7mMrx2LB8/QewIhVvKQWQKwfvh90hfLGj4XJJQQLGqUMcA7r
	zUyHjdvyxr1NHCV3HCekWBSE+ldzeLBoZzKDxlUoF/xmo6sRsI4d+nJyrirX9iq0uwM3c+ItjBEoQ
	TNQ4AF2XvutWQzJPexH1ldTvYfDQLDshokql8VxwNqfKHAkpQzsONAL/pftr3GT/dTJW4NtCc2fFo
	GUuWomvpDdhtgWVEukmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgzO-00000001seT-1K7F;
	Mon, 11 Mar 2024 14:50:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgym-00000001sGx-3rms;
	Mon, 11 Mar 2024 14:50:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qaXcejQ2/anVmdcQQ3gMwQWYnCCG3NczRiyeGj5cyeQ=; b=D4FU1uJTwzdUH/0skJl2P3nQO4
	vxs0ENWEf/oJjWdSZ07WXnH7oSbOBfEQ9Ay+3qXwqAhONT6TvpMGLteo0bgtz+SLcv1hSnpjuTXiz
	lS+pjYdj1/21xloJp0gEPVBBNqo2NlwYq8705ykVcivCeuN42an+kYJx3NteWEPThmAV8VzLPStFT
	CHEbZZMWPK+wB86lepFNoUcpJWknaXgefE0AJNVkJvwiVed+5aKjtw9X6Dtv5XaPy71HcUz6a9yow
	RYx8L4vYnce61eeJJKgDjTxGXXZUb1oE7S5OKCZyHhjTQ3iCJTameg4pjnrAajZWyJnCya4HWmDdT
	8rOWa2Ew==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgyj-000000090Yh-333e;
	Mon, 11 Mar 2024 14:50:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13FE160DD7;
	Mon, 11 Mar 2024 14:50:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8218FC433F1;
	Mon, 11 Mar 2024 14:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710168609;
	bh=eZw9702RagXmh2VG3XD3rGSR1PJvIZ11Csaq049mV+s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hm7D8VZAEom/JUmAnSjS5TDa2YkBoSnexgnrR8TQjG9JHM8hivo5YeUD+zp9pmSG3
	 mYMgyjbdcjkPA6yfjQwgTu5oS524+Tj3QiEmWKswHks1Xc8j04SbZpia7Gf/ki+61G
	 2YYcSbRM2PUSMXKPpnyzCsnlnWzWWS/Sv87UOwrRU3LjB188uxokpleWTuKBzcPydf
	 RME+E2tNoBvsUSkDuG/6Nb7bWauqLoYl2/rsXOF2LIlH8erRfZMrwwzsBBY8PoZnol
	 lm0GiAud8lDcZTgl3gtzNvgoW9U2yDf//2TYnU0kdQ22gKctyNPRRrEGx+k9SXwd7K
	 nylDaybiWoFHg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 11 Mar 2024 15:49:31 +0100
Subject: [PATCH v9 03/27] drm/connector: hdmi: Create an HDMI sub-state
MIME-Version: 1.0
Message-Id: <20240311-kms-hdmi-connector-state-v9-3-d45890323344@kernel.org>
References: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
In-Reply-To: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4742; i=mripard@kernel.org;
 h=from:subject:message-id; bh=eZw9702RagXmh2VG3XD3rGSR1PJvIZ11Csaq049mV+s=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnvpdjiPswM849pTKtzUjbf+TfB/3do5DHeK5Ed/+tNS
 93envPvKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwEQidzIyXD9fUVU1u+7MO5af
 m6O33py37Y7CmdX2V27edPietibuviYjw4KfPWrvE+UmKsy6ufZcrijTFeOCrsrrtnPkbz/4vin
 YmAkA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_145014_072181_9311C7AB 
X-CRM114-Status: GOOD (  12.53  )
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
index 519228eb1095..7ad1dffe66d9 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -569,10 +569,26 @@ void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector)
 
 	drm_atomic_helper_connector_tv_margins_reset(connector);
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_tv_reset);
 
+/**
+ * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
+ * @connector: DRM connector
+ * @new_state: connector state to reset
+ *
+ * Initializes all HDMI resources from a @drm_connector_state without
+ * actually allocating it. This is useful for HDMI drivers, in
+ * combination with __drm_atomic_helper_connector_reset() or
+ * drm_atomic_helper_connector_reset().
+ */
+void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
+					      struct drm_connector_state *new_state)
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
index b9740edb2658..d59d2b3aef9a 100644
--- a/include/drm/drm_atomic_state_helper.h
+++ b/include/drm/drm_atomic_state_helper.h
@@ -69,11 +69,15 @@ void drm_atomic_helper_plane_destroy_state(struct drm_plane *plane,
 void __drm_atomic_helper_connector_state_reset(struct drm_connector_state *conn_state,
 					       struct drm_connector *connector);
 void __drm_atomic_helper_connector_reset(struct drm_connector *connector,
 					 struct drm_connector_state *conn_state);
 void drm_atomic_helper_connector_reset(struct drm_connector *connector);
+void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
+					      struct drm_connector_state *new_state);
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
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
