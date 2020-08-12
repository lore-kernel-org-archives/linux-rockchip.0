Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC412C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:34:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE5AA20781
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:34:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WeL1QJb9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE5AA20781
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ws+JD81LHeBuXklMfEVlKtW7rliM35hjRLNjDQK9jl8=; b=WeL1QJb9SA5LHOXG58NcFiv+3F
	jBd/sWvSaz9y+ZZAUmCgPfwlw25VPPpm0BLaQxnegDh5s2ztL6qasB/R/y47rv+gMJ/AwMGPo+1D2
	VTdKU8Yl6NDc0a8DIm5aMYAdnEbBdKGusn789I/u36rGcttFrIcI/OmSB0RYSMm5QjTzL6qtND3A1
	bDDiNv4i8dgt2AO3EZwIDNeR6Wa2NM4i2reAs/gnjGZoYjX9zIuA0L2QJQ/wuEqNgEzJlfz5nMtkI
	73hZKGqdC0n/dyjpRd0AODL9z2LQuoBlO9mX4GVfZSPOGreKTL5FV7EFw7XuqC5it2mf/rscI8ndR
	ddbG/wkQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5mDm-0003dz-QC; Wed, 12 Aug 2020 08:34:54 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mDi-0003bw-7u; Wed, 12 Aug 2020 08:34:51 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id F163AC5ED8;
 Wed, 12 Aug 2020 16:34:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P18983T140547726436096S1597221280087704_; 
 Wed, 12 Aug 2020 16:34:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aabb62171f4c56eb93f47e37d26bd229>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: a.hajda@samsung.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Algea Cao <algea.cao@rock-chips.com>
To: a.hajda@samsung.com, kuankuan.y@gmail.com, hjc@rock-chips.com,
 tzimmermann@suse.de, dri-devel@lists.freedesktop.org, sam@ravnborg.org,
 airlied@linux.ie, heiko@sntech.de, jernej.skrabec@siol.net,
 algea.cao@rock-chips.com, Laurent.pinchart@ideasonboard.com,
 laurent.pinchart+renesas@ideasonboard.com, jonas@kwiboo.se,
 mripard@kernel.org, darekm@google.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org,
 linux-kernel@vger.kernel.org, narmstrong@baylibre.com,
 jbrunet@baylibre.com, maarten.lankhorst@linux.intel.com, daniel@ffwll.ch
Subject: [PATCH 2/6] drm: bridge: dw-hdmi: Implement connector
 atomic_begin/atomic_flush
Date: Wed, 12 Aug 2020 16:34:33 +0800
Message-Id: <20200812083433.934-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812083120.743-1-algea.cao@rock-chips.com>
References: <20200812083120.743-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_043450_753582_7CBE0B0D 
X-CRM114-Status: GOOD (  16.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Introduce dw_hdmi_connector_atomic_begin() and
dw_hdmi_connector_atomic_flush() to implement connector
atomic_begin/atomic_flush. When enc_out_bus_format or
enc_in_bus_format changed, dw_hdmi_setup is called.

To avoid screen flash when updating bus format, it's need
to send AVMUTE flag to make screen black, and clear flag
after bus format updated.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 65 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h |  4 ++
 2 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 6148a022569a..a1a81fc768c2 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -108,6 +108,8 @@ struct hdmi_vmode {
 };
 
 struct hdmi_data_info {
+	unsigned int prev_enc_in_bus_format;
+	unsigned int prev_enc_out_bus_format;
 	unsigned int enc_in_bus_format;
 	unsigned int enc_out_bus_format;
 	unsigned int enc_in_encoding;
@@ -116,6 +118,7 @@ struct hdmi_data_info {
 	unsigned int hdcp_enable;
 	struct hdmi_vmode video_mode;
 	bool rgb_limited_range;
+	bool update;
 };
 
 struct dw_hdmi_i2c {
@@ -2401,6 +2404,60 @@ static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
+static void
+dw_hdmi_connector_atomic_begin(struct drm_connector *connector,
+			       struct drm_connector_state *conn_state)
+{
+	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
+					    connector);
+	unsigned int enc_in_bus_fmt = hdmi->hdmi_data.enc_in_bus_format;
+	unsigned int enc_out_bus_fmt = hdmi->hdmi_data.enc_out_bus_format;
+	unsigned int prev_enc_in_bus_fmt =
+		hdmi->hdmi_data.prev_enc_in_bus_format;
+	unsigned int prev_enc_out_bus_fmt =
+		hdmi->hdmi_data.prev_enc_out_bus_format;
+
+	if (!conn_state->crtc)
+		return;
+
+	if (!hdmi->hdmi_data.video_mode.mpixelclock)
+		return;
+
+	if (enc_in_bus_fmt != prev_enc_in_bus_fmt ||
+	    enc_out_bus_fmt != prev_enc_out_bus_fmt) {
+		hdmi->hdmi_data.update = true;
+		hdmi_writeb(hdmi, HDMI_FC_GCP_SET_AVMUTE, HDMI_FC_GCP);
+		/* Add delay to make av mute work on sink*/
+		msleep(50);
+	} else {
+		hdmi->hdmi_data.update = false;
+	}
+}
+
+static void
+dw_hdmi_connector_atomic_flush(struct drm_connector *connector,
+			       struct drm_connector_state *conn_state)
+{
+	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
+					     connector);
+
+	if (!conn_state->crtc)
+		return;
+
+	DRM_DEBUG("%s\n", __func__);
+
+	if (hdmi->hdmi_data.update) {
+		dw_hdmi_setup(hdmi, hdmi->curr_conn, &hdmi->previous_mode);
+		/*
+		 * Before clear AVMUTE, delay is needed to
+		 * prevent display flash.
+		 */
+		msleep(50);
+		hdmi_writeb(hdmi, HDMI_FC_GCP_CLEAR_AVMUTE, HDMI_FC_GCP);
+		hdmi->hdmi_data.update = false;
+	}
+}
+
 static bool hdr_metadata_equal(const struct drm_connector_state *old_state,
 			       const struct drm_connector_state *new_state)
 {
@@ -2465,6 +2522,8 @@ static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
 static const struct drm_connector_helper_funcs dw_hdmi_connector_helper_funcs = {
 	.get_modes = dw_hdmi_connector_get_modes,
 	.atomic_check = dw_hdmi_connector_atomic_check,
+	.atomic_begin = dw_hdmi_connector_atomic_begin,
+	.atomic_flush = dw_hdmi_connector_atomic_flush,
 };
 
 static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
@@ -2778,6 +2837,12 @@ static int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
+	hdmi->hdmi_data.prev_enc_out_bus_format =
+			hdmi->hdmi_data.enc_out_bus_format;
+
+	hdmi->hdmi_data.prev_enc_in_bus_format =
+			hdmi->hdmi_data.enc_in_bus_format;
+
 	hdmi->hdmi_data.enc_out_bus_format =
 			bridge_state->output_bus_cfg.format;
 
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
index 1999db05bc3b..05182418efbb 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
@@ -842,6 +842,10 @@ enum {
 	HDMI_FC_AVICONF3_QUANT_RANGE_LIMITED = 0x00,
 	HDMI_FC_AVICONF3_QUANT_RANGE_FULL = 0x04,
 
+/* HDMI_FC_GCP */
+	HDMI_FC_GCP_SET_AVMUTE = 0x2,
+	HDMI_FC_GCP_CLEAR_AVMUTE = 0x1,
+
 /* FC_DBGFORCE field values */
 	HDMI_FC_DBGFORCE_FORCEAUDIO = 0x10,
 	HDMI_FC_DBGFORCE_FORCEVIDEO = 0x1,
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
