Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F43CC25B7E
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N6Lae885jAdlznhDYUt0PZQeDr0jD2QIk8ZWd1BPc4=; b=PYnTZYTPQZVHg5
	/HdmlfgTJSAmI27UCqDOLgz4AKf+E5oKogJnw1yQSIimKcv4kXubHJlrndKOqTR4jT+ralNjVIAU0
	WnqcCHFUfV+ctBsFNDSKXjmOZc4OTFOMj+KowTxIlddMXA9BM9taTqei3xMVBLyqnE6zZ8ZhlMadh
	r6MVBKQRO0TMZ/zBaNpUF+xZqZ6OoXlIE1dA9/dOP01hldCWL+8k3/dLpZlFqdy764Mn2bNS6xSrt
	QloACiVr4bvfhZfTL3EYAZ4HBAEAEY9LomRBLehfazbjkf34G0UkNeyyqxXcEd+PxJGIpD0SkKaKU
	TtsW6rrfpsrHSrLQ8oJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOY6-0000000CeUQ-1Gbs;
	Sat, 01 Jun 2024 13:13:30 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXj-0000000Ce9F-3rXc;
	Sat, 01 Jun 2024 13:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247585;
	bh=b/8Z0IbvDFW+qeJDNTjrqHUhEf0nvgproXHjL4e1WRI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QIGTIiy3XZLCetWY1vfuTkHYAicPqxVBwLZGMg4+CVqjnLOC9tVhCw8R+as9Q8mpt
	 izg3Y3PL//M+kLZBoLm5q2NiuEGOhdrcUH5G1m8Yb3IZD+OXdGcbRoiXPNTD5iVrCF
	 f4TMtFd+cnIcFs0qm+q2RlEMQtO6Zj2geWLnd6qiQdXz639OJRyA3w5c0opQY49IJ9
	 GZrCgrExzVOjmvpVQ/pNxy/W5u8qWn0lKYaBMJtGt/AHUu0WKr1dfxKMGR7JpygMMZ
	 vjtR8jKpjdKgTN3Ps8fpm5PsQNlpjaLn2fMcr1ksajJEE7AbbXY7O4eNdDkH6bUyIw
	 yCzEhq/KCgvyg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A257E37821ED;
	Sat,  1 Jun 2024 13:13:05 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:28 +0300
Subject: [PATCH 06/14] drm/bridge: dw-hdmi: Factor out hdmi_data_info setup
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-6-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061308_580738_52F6978A 
X-CRM114-Status: GOOD (  11.27  )
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

In preparation to add support for the HDMI 2.1 Quad-Pixel TX Controller
and minimize code duplication, factor out the hdmi_data_info setup from
dw_hdmi_setup() into a common dw_hdmi_prep_data() helper.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h |  2 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c        | 21 ++++++++++++++-------
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
index e73b8eb7528b..5fb65db4aaea 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
@@ -156,6 +156,8 @@ void dw_hdmi_prep_avi_infoframe(struct hdmi_avi_infoframe *frame,
 				const struct drm_display_mode *mode);
 struct hdmi_vmode *dw_hdmi_prep_vmode(struct dw_hdmi *hdmi,
 				      const struct drm_display_mode *mode);
+void dw_hdmi_prep_data(struct dw_hdmi *hdmi,
+		       const struct drm_display_mode *mode);
 
 enum drm_connector_status
 dw_hdmi_connector_detect(struct drm_connector *connector, bool force);
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 5cf929f68ae9..d124c781da20 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2133,14 +2133,9 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
 		    HDMI_IH_MUTE_FC_STAT2);
 }
 
-static int dw_hdmi_setup(struct dw_hdmi *hdmi,
-			 const struct drm_connector *connector,
-			 const struct drm_display_mode *mode)
+void dw_hdmi_prep_data(struct dw_hdmi *hdmi,
+		       const struct drm_display_mode *mode)
 {
-	int ret;
-
-	hdmi_disable_overflow_interrupts(hdmi);
-
 	hdmi->vic = drm_match_cea_mode(mode);
 
 	if (!hdmi->vic) {
@@ -2180,6 +2175,18 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
 	hdmi->hdmi_data.pix_repet_factor = 0;
 	hdmi->hdmi_data.hdcp_enable = 0;
 	hdmi->hdmi_data.video_mode.mdataenablepolarity = true;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_prep_data);
+
+static int dw_hdmi_setup(struct dw_hdmi *hdmi,
+			 const struct drm_connector *connector,
+			 const struct drm_display_mode *mode)
+{
+	int ret;
+
+	hdmi_disable_overflow_interrupts(hdmi);
+
+	dw_hdmi_prep_data(hdmi, mode);
 
 	/* HDMI Initialization Step B.1 */
 	hdmi_av_composer(hdmi, &connector->display_info, mode);

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
