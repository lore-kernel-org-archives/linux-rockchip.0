Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BEC9C5AD57
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 09:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPBK+FcoztIMLjEEg+qSepMgNb1TXAAgIPCjCwhSojY=; b=cWUB4vnebyLGl7
	BBGcAscKVO/KLnAqeirT1SRkBibJJ/iqSly88F/c+mwDzNH7zaEbFJor3B7woOFqRq/ZlTvYihPMW
	tXEZVDaTzKC+KlKEALQukk8Rfs6fw4VS8XLL6WJKQuPWk1APHAu++2eF3CVIKL7bmdq4QlF2/r4IP
	3QTKBnuSSzA0IoeCGTSzsQA/Wf9LNY1j7/huJ+qsanWkHPOEemyUV2dTUSyGDJcyVobTIDUN8SNMX
	s7HP7COKdvI93yURIaqkvA1CTggnEHiXCznPl/RJuLG9NcDhScWgs+tSTvega69Ox9FqZbEnZrbfG
	b47cyTHG66BtUAZmYvBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdoz-00000009F6u-3X1m;
	Sat, 08 Aug 2026 09:58:29 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdow-00000009F2B-3CEp
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 09:58:28 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47f611b3af9so39215f8f.3
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 02:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786183105; x=1786787905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=78pbQXQC7rS+xYT3KOYvmzHciozgKbUx+FycpcHfTyI=;
        b=EjY29jwdcJPsm8DQEUANsxwIT44Ncvi9tPeT4VX6uQTQxgLWMi4c+u8brEt/aLj0oa
         RwrfmIi1Ga5zc+8jnPm/AZSWmr5sRSA3ehZrh8fNND9VDhxXUHjZY49L0KD7+t3Lsz5B
         ShjcdxfefSz0geLzS/fJhqPghQgjjgy4VfyIAgRWJVYiFvsdWS0Np2oJa9zERnXKoE1t
         3EKKJFYHp1Mc33ANFjm/IMr7useNB8ZPYmez+WmbD91cdrR+tROYgjFVx34AUCs8NLHO
         ntK8P1C3e8FYUK8CAHai1SFmjsfwnJ/yoorgkLFVY+cjvwQnAAcB2fOXgIoRGt3TxFrt
         skuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786183105; x=1786787905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=78pbQXQC7rS+xYT3KOYvmzHciozgKbUx+FycpcHfTyI=;
        b=m1jAElumAwcsDIbTUa8ncukrjqxZDUHYxOyxbBo9nVi1GD9QapkJrB2V5TA/R1WoDS
         5/mJA3tzZDDwGVrRSDvzix4Thw2+fkCPp7nWQrAY4Cs1xYCG4jUGCK4YEZXJMEo1SUGj
         TVXY1Y8n67a3VrT6pCrqVwQqynqsv6PL1kIqG2+UJNmZcdk5Udeq47xrKPNQy3a1ToO8
         maxVwuAe2mxgTOC0rIhSIlI46RzyVFIMIsV09/QBuItS6UkGRok2dKkkmnGNqUIVZkQu
         LR0Rp562XYhgJWSAU6DxqYdvm734e0IxHt1ZiZvFAGhsPOsOsiyHWdZTMww5+xqYNclw
         YhXA==
X-Forwarded-Encrypted: i=1; AHgh+RrXF48D8VoOCPTfXvxq3pZc1y6a48eony6uJDqOdfP+uXM2IL8pDH5qAVZTrSjLOETHzQP8mthjyhdXRMi7Rg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQFuZsJn1ddImJg0NMuSvK13MxIJC/s1vLOkbdsogQJ6ROTZJl
	YLFKYiYHjdknk7vHf5VJB4cr9+poZcA8+DKTKQG/LsTehwdLlnyYCefw
X-Gm-Gg: AR+sD13RomEO5rrDGcU7/HhIg74K60IlsODwEG5l3pp1QBArj3Wzd7Gp7R9dIUSYTG5
	UmQw+orvB8VKcDrz1BefHRsddwLvI9REw7xz2vuWbpdvSEkJDL6i+MJvZtpZl9cE4WBKAgktrQQ
	VyUoRZS0dBL9JBFbQ6Q9LviQ3sAwIKteelaojlvJufIDdamPSN4tXRLYNaguwI01tEuIKgeWCtV
	F8uBmn1815K3LqmGmAeeiYeinPS/OdQCR6hhvv/ESyscBZZyiYtOo9srNPDiLBUVkOtVwMXayTU
	pzTec+pVXNtRVjfEq3qOaBJZfCqdoc2HqpojGyecB2ut8enx1fFJU+4gWaswe6hEu1tODXxg/F6
	WujhTJFO7Pav05DpDbV5O7a/R9gr9fB+1m5DULpPW8LyCJfTgsj6dDpZrjhfmfDZhk2oXugSZlM
	J043tTgH4HXd87LoXCOqhlk6XIzh0q3ON/pMHDUSOSg3+84n996xfhFtzu3+HJVvLzXAwhJksWC
	AewYDBHoh90Kykjul6jocdycIUo5f+ORGnXRQnxuNlu2HvTojTqMMn+aP82/eUcDunBNssot7dJ
	K9jz
X-Received: by 2002:a05:6000:4211:b0:47f:96bc:e370 with SMTP id ffacd0b85a97d-47fec63bb0bmr22186473f8f.4.1786183105168;
        Sat, 08 Aug 2026 02:58:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-480020be8f3sm13255725f8f.0.2026.08.08.02.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:58:24 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 4/5] drm/bridge: synopsys: dw-dp: Add HDR static metadata support
Date: Sat,  8 Aug 2026 11:57:23 +0200
Message-ID: <20260808095749.9428-5-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260808095749.9428-1-royalnet026@gmail.com>
References: <20260808095749.9428-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_025826_840803_19B04625 
X-CRM114-Status: GOOD (  21.11  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Send an HDR Metadata InfoFrame SDP (DP 1.4a, Table 2-100 and
Table 2-101) when the connector state carries HDR output metadata, and
attach the HDR_OUTPUT_METADATA property in the Rockchip glue so
userspace can set it.

The infoframe is built with drm_hdmi_infoframe_set_hdr_metadata() and
packed with drm_dp_hdr_metadata_infoframe_sdp_pack(), then written
into a free slot of the SDP register bank with vertical interval
transmission, so the controller resends it once per frame during the
vertical blanking period. The SDP is sent at the end of
dw_dp_video_enable(), next to the existing VSC SDP; the connector
state is passed down from atomic_enable(), which already looks it up.

The allocated slot is tracked in hdr_sdp_nr and released in
atomic_disable(), following the VSC SDP pattern exactly:
atomic_disable() only clears tracked slots, so an untracked slot would
leak on every enable/disable cycle until dw_dp_send_sdp() runs out of
free slots and fails with -EBUSY for every SDP, including VSC and
audio.

A metadata change on a live stream (HDR on/off toggle, different
mastering display data) forces a full modeset: atomic_check() compares
the old and new connector state with
drm_connector_atomic_hdr_metadata_equal() and sets
crtc_state->mode_changed, the same approach as dw-hdmi. The resulting
disable/enable cycle then drops or (re)sends the SDP.

Commits without HDR metadata are unaffected: with a NULL metadata blob
in both old and new connector state,
drm_connector_atomic_hdr_metadata_equal() treats them as equal, no
modeset is forced, and dw_dp_video_enable() skips the SDP. This keeps
plain SDR commits a no-op even for compositors that write a NULL blob
on every atomic modeset once the property exists (KWin does).

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c   | 44 +++++++++++++++++++++--
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c |  2 ++
 2 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index df149c52fce0..ca997ea53e66 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -24,6 +24,7 @@
 #include <drm/drm_bridge_connector.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_hdmi_audio_helper.h>
+#include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
@@ -369,6 +370,7 @@ struct dw_dp {
 	struct drm_bridge *next_bridge;
 
 	int vsc_sdp_nr;
+	int hdr_sdp_nr;
 	DECLARE_BITMAP(sdp_reg_bank, SDP_REG_BANK_SIZE);
 };
 
@@ -1171,6 +1173,28 @@ static int dw_dp_send_vsc_sdp(struct dw_dp *dp)
 	return dw_dp_send_sdp(dp, &sdp);
 }
 
+static int dw_dp_send_hdr_metadata_sdp(struct dw_dp *dp,
+				       const struct drm_connector_state *conn_state)
+{
+	struct hdmi_drm_infoframe frame;
+	struct dw_dp_sdp sdp = {};
+	ssize_t len;
+	int ret;
+
+	ret = drm_hdmi_infoframe_set_hdr_metadata(&frame, conn_state);
+	if (ret)
+		return ret;
+
+	len = drm_dp_hdr_metadata_infoframe_sdp_pack(dp->bridge.dev, &frame,
+						     &sdp.base, sizeof(sdp.base));
+	if (len < 0)
+		return len;
+
+	sdp.flags = DW_DP_SDP_VERTICAL_INTERVAL;
+
+	return dw_dp_send_sdp(dp, &sdp);
+}
+
 static int dw_dp_video_set_pixel_mode(struct dw_dp *dp)
 {
 	switch (dp->pixel_mode) {
@@ -1265,7 +1289,8 @@ static void dw_dp_video_disable(struct dw_dp *dp)
 			   FIELD_PREP(VIDEO_STREAM_ENABLE, 0));
 }
 
-static int dw_dp_video_enable(struct dw_dp *dp)
+static int dw_dp_video_enable(struct dw_dp *dp,
+			      const struct drm_connector_state *conn_state)
 {
 	struct dw_dp_link *link = &dp->link;
 	struct dw_dp_bridge_state *state;
@@ -1440,6 +1465,9 @@ static int dw_dp_video_enable(struct dw_dp *dp)
 	if (dw_dp_video_need_vsc_sdp(dp))
 		dp->vsc_sdp_nr = dw_dp_send_vsc_sdp(dp);
 
+	if (conn_state->hdr_output_metadata)
+		dp->hdr_sdp_nr = dw_dp_send_hdr_metadata_sdp(dp, conn_state);
+
 	return 0;
 }
 
@@ -1597,6 +1625,7 @@ static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	struct dw_dp *dp = bridge_to_dp(bridge);
 	struct dw_dp_bridge_state *state;
 	const struct dw_dp_output_format *fmt;
+	struct drm_connector_state *old_conn_state;
 	struct drm_display_mode *mode;
 	int min_hbp = 16;
 	int min_hsync = 9;
@@ -1616,6 +1645,11 @@ static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	state->bpc = fmt->bpc;
 	state->bpp = fmt->bpp;
 
+	old_conn_state = drm_atomic_get_old_connector_state(conn_state->state,
+							    conn_state->connector);
+	if (!drm_connector_atomic_hdr_metadata_equal(old_conn_state, conn_state))
+		crtc_state->mode_changed = true;
+
 	if ((adjusted_mode->hsync_start - adjusted_mode->hdisplay) & 0x1) {
 		adjusted_mode->hsync_start += 1;
 		dev_warn(dp->dev, "hfp is not 2 pixeel aligned, fixup to aligned hfp\n");
@@ -2016,7 +2050,7 @@ static void dw_dp_bridge_atomic_enable(struct drm_bridge *bridge,
 		return;
 	}
 
-	ret = dw_dp_video_enable(dp);
+	ret = dw_dp_video_enable(dp, conn_state);
 	if (ret < 0) {
 		dev_err(dp->dev, "failed to enable video: %d\n", ret);
 		return;
@@ -2066,6 +2100,11 @@ static void dw_dp_bridge_atomic_disable(struct drm_bridge *bridge,
 		dp->vsc_sdp_nr = -1;
 	}
 
+	if (dp->hdr_sdp_nr >= 0) {
+		dw_dp_clear_sdp(dp, dp->hdr_sdp_nr);
+		dp->hdr_sdp_nr = -1;
+	}
+
 	dw_dp_reset(dp);
 	pm_runtime_put_autosuspend(dp->dev);
 }
@@ -2668,6 +2707,7 @@ int dw_dp_probe(struct dw_dp *dp)
 		return ret;
 
 	dp->vsc_sdp_nr = -1;
+	dp->hdr_sdp_nr = -1;
 	dp->audio_interface = DW_DP_AUDIO_UNUSED;
 	dp->audio_sdp_nr = -1;
 
diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 4dc29963b5d8..c5bc178c0a50 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -198,6 +198,8 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 		return ret;
 	}
 
+	drm_connector_attach_hdr_output_metadata_property(connector);
+
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
