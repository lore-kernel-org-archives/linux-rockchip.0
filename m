Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD859C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:36:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78C2520781
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:36:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="n960ZNuY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78C2520781
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+WPWBgv+V5qWTl8TsGao/aC0nvSVyIZ9XhaduDjogNw=; b=n960ZNuY/Z/F5B6NfWpKRRDyBq
	pLtHV01of+9zXylsj+cvY/5hlM4jDxrC26yHbDdNQ62+Odjl5BqpxPJsVFzYRXhfZyRMKV+f7dvjC
	DvOPGNqoANOrjduDXnH/68jgIdl5FRGuzPnJTt7/zMFl4e0mbIPUnOEI8DzVOO5PhUOd3Me4fWMl4
	CarbOhF2J6TLV4iKdgMCbIH7IvCKX28UKwPm/3Iqd4svEa7Q01tDe6JKyNxPrtE41tGJ5s6QAeFCN
	gc3t96Tc4lMNSfisKR7j6DDbaVCY2sgsQ8Jp6pB1J9y+3vKCjO780GBoYGrtonJjAuwNDYJ96DYI1
	bEqCuoPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5mF7-00042c-3U; Wed, 12 Aug 2020 08:36:17 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mEz-0003um-Ct; Wed, 12 Aug 2020 08:36:12 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0969BC5F56;
 Wed, 12 Aug 2020 16:35:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P31771T140662701778688S1597221345736639_; 
 Wed, 12 Aug 2020 16:35:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3650945d1eca47a8101cd35ca78c47f2>
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
Subject: [PATCH 4/6] drm/rockchip: dw_hdmi: Add vendor hdmi properties
Date: Wed, 12 Aug 2020 16:35:43 +0800
Message-Id: <20200812083543.4231-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812083120.743-1-algea.cao@rock-chips.com>
References: <20200812083120.743-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_043611_360232_78D571F2 
X-CRM114-Status: GOOD (  21.23  )
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

Introduce struct dw_hdmi_property_ops in plat_data to support
vendor hdmi property.

Implement hdmi vendor properties color_depth_property and
hdmi_output_property to config hdmi output color depth and
color format.

The property "hdmi_output_format", the possible value
could be:
         - RGB
         - YCBCR 444
         - YCBCR 422
         - YCBCR 420

Default value of the property is set to 0 = RGB, so no changes if you
don't set the property.

The property "hdmi_output_depth" possible value could be
         - Automatic
           This indicates prefer highest color depth, it is
           30bit on rockcip platform.
         - 24bit
         - 30bit
The default value of property is 24bit.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 174 ++++++++++++++++++++
 include/drm/bridge/dw_hdmi.h                |  22 +++
 2 files changed, 196 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 23de359a1dec..8f22d9a566db 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -52,6 +52,27 @@
 
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
+/* HDMI output pixel format */
+enum drm_hdmi_output_type {
+	DRM_HDMI_OUTPUT_DEFAULT_RGB, /* default RGB */
+	DRM_HDMI_OUTPUT_YCBCR444, /* YCBCR 444 */
+	DRM_HDMI_OUTPUT_YCBCR422, /* YCBCR 422 */
+	DRM_HDMI_OUTPUT_YCBCR420, /* YCBCR 420 */
+	DRM_HDMI_OUTPUT_YCBCR_HQ, /* Highest subsampled YUV */
+	DRM_HDMI_OUTPUT_YCBCR_LQ, /* Lowest subsampled YUV */
+	DRM_HDMI_OUTPUT_INVALID, /* Guess what ? */
+};
+
+enum dw_hdmi_rockchip_color_depth {
+	ROCKCHIP_HDMI_DEPTH_8,
+	ROCKCHIP_HDMI_DEPTH_10,
+	ROCKCHIP_HDMI_DEPTH_12,
+	ROCKCHIP_HDMI_DEPTH_16,
+	ROCKCHIP_HDMI_DEPTH_420_10,
+	ROCKCHIP_HDMI_DEPTH_420_12,
+	ROCKCHIP_HDMI_DEPTH_420_16
+};
+
 /**
  * struct rockchip_hdmi_chip_data - splite the grf setting of kind of chips
  * @lcdsel_grf_reg: grf register offset of lcdc select
@@ -73,6 +94,12 @@ struct rockchip_hdmi {
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
 	struct phy *phy;
+
+	struct drm_property *color_depth_property;
+	struct drm_property *hdmi_output_property;
+
+	unsigned int colordepth;
+	enum drm_hdmi_output_type hdmi_output;
 };
 
 #define to_rockchip_hdmi(x)	container_of(x, struct rockchip_hdmi, x)
@@ -327,6 +354,150 @@ static void dw_hdmi_rockchip_genphy_disable(struct dw_hdmi *dw_hdmi, void *data)
 	phy_power_off(hdmi->phy);
 }
 
+static const struct drm_prop_enum_list color_depth_enum_list[] = {
+	{ 0, "Automatic" }, /* Prefer highest color depth */
+	{ 8, "24bit" },
+	{ 10, "30bit" },
+};
+
+static const struct drm_prop_enum_list drm_hdmi_output_enum_list[] = {
+	{ DRM_HDMI_OUTPUT_DEFAULT_RGB, "output_rgb" },
+	{ DRM_HDMI_OUTPUT_YCBCR444, "output_ycbcr444" },
+	{ DRM_HDMI_OUTPUT_YCBCR422, "output_ycbcr422" },
+	{ DRM_HDMI_OUTPUT_YCBCR420, "output_ycbcr420" },
+	{ DRM_HDMI_OUTPUT_YCBCR_HQ, "output_ycbcr_high_subsampling" },
+	{ DRM_HDMI_OUTPUT_YCBCR_LQ, "output_ycbcr_low_subsampling" },
+	{ DRM_HDMI_OUTPUT_INVALID, "invalid_output" },
+};
+
+static void
+dw_hdmi_rockchip_attach_properties(struct drm_connector *connector,
+				   unsigned int color, int version,
+				   void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+	struct drm_property *prop;
+
+	switch (color) {
+	case MEDIA_BUS_FMT_RGB101010_1X30:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_DEFAULT_RGB;
+		hdmi->colordepth = 10;
+		break;
+	case MEDIA_BUS_FMT_YUV8_1X24:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR444;
+		hdmi->colordepth = 8;
+		break;
+	case MEDIA_BUS_FMT_YUV10_1X30:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR444;
+		hdmi->colordepth = 10;
+		break;
+	case MEDIA_BUS_FMT_UYVY10_1X20:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR422;
+		hdmi->colordepth = 10;
+		break;
+	case MEDIA_BUS_FMT_UYVY8_1X16:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR422;
+		hdmi->colordepth = 8;
+		break;
+	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR420;
+		hdmi->colordepth = 8;
+		break;
+	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_YCBCR420;
+		hdmi->colordepth = 10;
+		break;
+	default:
+		hdmi->hdmi_output = DRM_HDMI_OUTPUT_DEFAULT_RGB;
+		hdmi->colordepth = 8;
+	}
+
+	prop = drm_property_create_enum(connector->dev, 0,
+					"hdmi_output_depth",
+					color_depth_enum_list,
+					ARRAY_SIZE(color_depth_enum_list));
+	if (prop) {
+		hdmi->color_depth_property = prop;
+		drm_object_attach_property(&connector->base, prop, 0);
+	}
+
+	prop = drm_property_create_enum(connector->dev, 0, "hdmi_output_format",
+					drm_hdmi_output_enum_list,
+					ARRAY_SIZE(drm_hdmi_output_enum_list));
+	if (prop) {
+		hdmi->hdmi_output_property = prop;
+		drm_object_attach_property(&connector->base, prop, 0);
+	}
+}
+
+static void
+dw_hdmi_rockchip_destroy_properties(struct drm_connector *connector,
+				    void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	if (hdmi->color_depth_property) {
+		drm_property_destroy(connector->dev,
+				     hdmi->color_depth_property);
+		hdmi->color_depth_property = NULL;
+	}
+
+	if (hdmi->hdmi_output_property) {
+		drm_property_destroy(connector->dev,
+				     hdmi->hdmi_output_property);
+		hdmi->hdmi_output_property = NULL;
+	}
+}
+
+static int
+dw_hdmi_rockchip_set_property(struct drm_connector *connector,
+			      struct drm_connector_state *state,
+			      struct drm_property *property,
+			      u64 val,
+			      void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	if (property == hdmi->color_depth_property) {
+		hdmi->colordepth = val;
+		return 0;
+	} else if (property == hdmi->hdmi_output_property) {
+		hdmi->hdmi_output = val;
+		return 0;
+	}
+
+	DRM_ERROR("failed to set rockchip hdmi connector property\n");
+	return -EINVAL;
+}
+
+static int
+dw_hdmi_rockchip_get_property(struct drm_connector *connector,
+			      const struct drm_connector_state *state,
+			      struct drm_property *property,
+			      u64 *val,
+			      void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	if (property == hdmi->color_depth_property) {
+		*val = hdmi->colordepth;
+		return 0;
+	} else if (property == hdmi->hdmi_output_property) {
+		*val = hdmi->hdmi_output;
+		return 0;
+	}
+
+	DRM_ERROR("failed to get rockchip hdmi connector property\n");
+	return -EINVAL;
+}
+
+static const struct dw_hdmi_property_ops dw_hdmi_rockchip_property_ops = {
+	.attach_properties	= dw_hdmi_rockchip_attach_properties,
+	.destroy_properties	= dw_hdmi_rockchip_destroy_properties,
+	.set_property		= dw_hdmi_rockchip_set_property,
+	.get_property		= dw_hdmi_rockchip_get_property,
+};
+
 static void dw_hdmi_rk3228_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
 {
 	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
@@ -511,6 +682,9 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	hdmi->dev = &pdev->dev;
 	hdmi->chip_data = plat_data->phy_data;
 	plat_data->phy_data = hdmi;
+
+	plat_data->property_ops = &dw_hdmi_rockchip_property_ops;
+
 	encoder = &hdmi->encoder;
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index ea34ca146b82..dc561ebe7a9b 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -6,6 +6,7 @@
 #ifndef __DW_HDMI__
 #define __DW_HDMI__
 
+#include <drm/drm_property.h>
 #include <sound/hdmi-codec.h>
 
 struct drm_display_info;
@@ -123,6 +124,24 @@ struct dw_hdmi_phy_ops {
 	void (*setup_hpd)(struct dw_hdmi *hdmi, void *data);
 };
 
+struct dw_hdmi_property_ops {
+	void (*attach_properties)(struct drm_connector *connector,
+				  unsigned int color, int version,
+				  void *data);
+	void (*destroy_properties)(struct drm_connector *connector,
+				   void *data);
+	int (*set_property)(struct drm_connector *connector,
+			    struct drm_connector_state *state,
+			    struct drm_property *property,
+			    u64 val,
+			    void *data);
+	int (*get_property)(struct drm_connector *connector,
+			    const struct drm_connector_state *state,
+			    struct drm_property *property,
+			    u64 *val,
+			    void *data);
+};
+
 struct dw_hdmi_plat_data {
 	struct regmap *regm;
 
@@ -141,6 +160,9 @@ struct dw_hdmi_plat_data {
 					   const struct drm_display_info *info,
 					   const struct drm_display_mode *mode);
 
+	/* Vendor Property support */
+	const struct dw_hdmi_property_ops *property_ops;
+
 	/* Vendor PHY support */
 	const struct dw_hdmi_phy_ops *phy_ops;
 	const char *phy_name;
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
