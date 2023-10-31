Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D56C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hiKA0lnuCctuZRBoGBFmJOvK/JqVu73qydVF7kDDmE=; b=AOqPcF014z7bi6
	zgfI90eaMh+a0z1a25bEmcKaLhC0N9Rj1XxeLBuifs6e1r3Me3msigqtXqxqGq0OipLzTnSfiSMq8
	4dRSLi022xhwYFOoXkemgcFUfPrlpGt0wUCkCkv28wPOLT2XwoeySo+sNK0Ymd2Iw4j/6a+v5kGLM
	7kPmPmx1JgooHY/WqEwtkK6sDN9Q8D3FJbD8qUFfkcpf90InGjF3XdAv0VMuBa3Gfe2Hn3Z7urn7K
	gu4fxcacbFGe+AHsC4xVtlyPUMGy+0m5oIgBqnqmWweblmsVehZjiBEimfgIE0R2ucMhKf4iFp8af
	jF7cK5Yy3OW29532xs/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrwN-005kU9-0i;
	Tue, 31 Oct 2023 16:50:07 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvI-005jNh-11;
	Tue, 31 Oct 2023 16:49:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 97DCCB811C0;
	Tue, 31 Oct 2023 16:48:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72528C433CB;
	Tue, 31 Oct 2023 16:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770938;
	bh=Oz6sbsXC5PFaNT5VeNjo3RvYrdw5BS9LuF7RH4ebvC0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hEoqUly2ptXqMe3RLwqUU+67mSQJzM8bafFpIXI7ovo9oaDKU/qDoWe6PSNhgW3Cn
	 dlyXxde+s45gngwiw4iLWf0BReN5TfumNjhMFD2rF3f6wC9pTfiGG1H5aEDL3/2/81
	 9cVuOuZxsXMtm46LwYPlpWWeyqrzlklcbByapBrMBZAZqoBU3zMMPaIte8vWQtK994
	 7rieXHIn53PkRxLV4X+JupwvKHpZZmzprcAyCMQMfJweK6q1++oj40vXROBZbo5iyt
	 iCACm9SyYomFpXTZCg0Dl/XvMos84r7n5CwtBojQqK866L58AXKUhTFmsPxzmu1CRl
	 fXjuGiDEIVEIA==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:21 +0100
Subject: [PATCH RFC v3 08/37] drm/connector: hdmi: Calculate TMDS character
 rate
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-8-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4003; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Oz6sbsXC5PFaNT5VeNjo3RvYrdw5BS9LuF7RH4ebvC0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+veO9isbPQ4sl/slcbGqbmtMVtuXTcrh9/5cMmYu9
 uE5bfCwo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABP5/43hn7rQXB/xmVxd1WWa
 Br6RHzmlPc43WJ5dHvTfmitAZY7DVEaGVX4p8fz7vJ78TN1y672R1ISgLL/77mu8L82I6FN2N/b
 lAgA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094900_703004_965AA528 
X-CRM114-Status: GOOD (  14.67  )
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

Most HDMI drivers have some code to calculate the TMDS character rate,
usually to adjust an internal clock to match what the mode requires.

Since the TMDS character rates mostly depends on the resolution, whether
we need to repeat pixels or not, the bpc count and the format, we can
now derive it from the HDMI connector state that stores all those infos
and remove the duplication from drivers.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_atomic.c              |  1 +
 drivers/gpu/drm/drm_atomic_state_helper.c | 44 +++++++++++++++++++++++++++++++
 include/drm/drm_connector.h               |  5 ++++
 3 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 0ebe1142dcfe..fed9d437a4a6 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1150,6 +1150,7 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
 		drm_printf(p, "\toutput_format=%s\n",
 			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
+		drm_printf(p, "\ttmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 37262dd002c8..480fa3445f40 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -670,6 +670,41 @@ static bool hdmi_is_full_range(const struct drm_connector *connector,
 	return drm_default_rgb_quant_range(mode);
 }
 
+static enum drm_mode_status
+hdmi_clock_valid(const struct drm_connector *connector,
+		 const struct drm_display_mode *mode,
+		 unsigned long long clock)
+{
+	const struct drm_display_info *info = &connector->display_info;
+
+	if (info->max_tmds_clock && clock > info->max_tmds_clock * 1000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static int
+hdmi_compute_clock(const struct drm_connector *connector,
+		   struct drm_connector_state *state,
+		   const struct drm_display_mode *mode,
+		   unsigned int bpc, enum hdmi_colorspace fmt)
+{
+	enum drm_mode_status status;
+	unsigned long long clock;
+
+	clock = drm_connector_hdmi_compute_mode_clock(mode, bpc, fmt);
+	if (!clock)
+		return -EINVAL;
+
+	status = hdmi_clock_valid(connector, mode, clock);
+	if (status != MODE_OK)
+		return -EINVAL;
+
+	state->hdmi.tmds_char_rate = clock;
+
+	return 0;
+}
+
 /**
  * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
  * @connector: DRM Connector
@@ -689,9 +724,18 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
 		drm_atomic_get_old_connector_state(state, connector);
 	struct drm_connector_state *new_state =
 		drm_atomic_get_new_connector_state(state, connector);
+	const struct drm_display_mode *mode =
+		connector_state_get_mode(new_state);
+	int ret;
 
 	new_state->hdmi.is_full_range = hdmi_is_full_range(connector, new_state);
 
+	ret = hdmi_compute_clock(connector, new_state, mode,
+				 new_state->hdmi.output_bpc,
+				 new_state->hdmi.output_format);
+	if (!ret)
+		return ret;
+
 	if (old_state->hdmi.broadcast_rgb != new_state->hdmi.broadcast_rgb ||
 	    old_state->hdmi.output_bpc != new_state->hdmi.output_bpc ||
 	    old_state->hdmi.output_format != new_state->hdmi.output_format) {
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 781a5726a26a..93613c57c6de 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1072,6 +1072,11 @@ struct drm_connector_state {
 		 * @output_format: Pixel format to output in.
 		 */
 		enum hdmi_colorspace output_format;
+
+		/**
+		 * @tmds_char_rate: TMDS Character Rate, in Hz.
+		 */
+		unsigned long long tmds_char_rate;
 	} hdmi;
 };
 

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
