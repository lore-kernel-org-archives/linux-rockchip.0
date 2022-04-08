Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39793C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 11:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6OL/iw1uYzUmEXOOISFV3nt/sXvYk0PN5lMqQ09GH4=; b=bqXw3nVBTPOI3R
	6DFflqtFWJJItrsVi/ol2GIPYjjhfIbFI9WIeQ1vP91wc5nGiqSdNaQr6aN+LD9Nmh5hpz7DCVe6F
	XG9K5pI32j5NQ9gvIa98d82YXaJ5ihdc38uw/wXyH6s+bM272G8tI2C04VQLD39ouECbIU4H6tBpc
	MuQqNma9qJp08wFLT0GEXegfz4ibnyRmD7VNHlThK/WeecAix86R/fttkmwpRlmRd8r63rLlJ5fWn
	PGWrqnYxDp0vj4+fg1E6e3NgZoiHB1s1MbFq8m2wjXFPdTWfxqGWam9jTNtO5Vkz0LsosyL425AaX
	MUZ9sKz6qAn79u6Y0rhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncmjH-00GZAE-RM; Fri, 08 Apr 2022 11:24:39 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmha-00GY7z-G7
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 11:22:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhX-0002I0-0g; Fri, 08 Apr 2022 13:22:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhS-001n4F-GO; Fri, 08 Apr 2022 13:22:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhO-005Z3j-7y; Fri, 08 Apr 2022 13:22:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v10 03/24] drm/rockchip: Add crtc_endpoint_id to
 rockchip_encoder
Date: Fri,  8 Apr 2022 13:22:17 +0200
Message-Id: <20220408112238.1274817-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408112238.1274817-1-s.hauer@pengutronix.de>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_042254_579221_E8AC4D23 
X-CRM114-Status: GOOD (  22.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

The VOP2 has an interface mux which decides to which encoder(s) a CRTC
is routed to. The encoders and CRTCs are connected via of_graphs in the
device tree. When given an encoder the VOP2 driver needs to know to
which internal register setting this encoder matches. For this the VOP2
binding offers different endpoints, one for each possible encoder. The
endpoint ids of these endpoints are used as a key from an encoders
device tree description to the internal register setting.

This patch adds the key aka endpoint id to struct rockchip_encoder plus
a function to read the endpoint id starting from the encoders device
node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v6:
    - new patch

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 33 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h |  4 ++-
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 7efd12312354b..0dc09d92d92d6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -244,6 +244,39 @@ static const struct dev_pm_ops rockchip_drm_pm_ops = {
 static struct platform_driver *rockchip_sub_drivers[MAX_ROCKCHIP_SUB_DRIVERS];
 static int num_rockchip_sub_drivers;
 
+/*
+ * Get the endpoint id of the remote endpoint of the given encoder. This
+ * information is used by the VOP2 driver to identify the encoder.
+ *
+ * @rkencoder: The encoder to get the remote endpoint id from
+ * @np: The encoder device node
+ * @port: The number of the port leading to the VOP2
+ * @reg: The endpoint number leading to the VOP2
+ */
+int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rkencoder,
+					      struct device_node *np, int port, int reg)
+{
+	struct of_endpoint ep;
+	struct device_node *en, *ren;
+	int ret;
+
+	en = of_graph_get_endpoint_by_regs(np, port, reg);
+	if (!en)
+		return -ENOENT;
+
+	ren = of_graph_get_remote_endpoint(en);
+	if (!ren)
+		return -ENOENT;
+
+	ret = of_graph_parse_endpoint(ren, &ep);
+	if (ret)
+		return ret;
+
+	rkencoder->crtc_endpoint_id = ep.id;
+
+	return 0;
+}
+
 /*
  * Check if a vop endpoint is leading to a rockchip subdriver or bridge.
  * Should be called from the component bind stage of the drivers
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 048ab277de653..a27ab928e1d2f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -50,6 +50,7 @@ struct rockchip_drm_private {
 };
 
 struct rockchip_encoder {
+	int crtc_endpoint_id;
 	struct drm_encoder encoder;
 };
 
@@ -60,7 +61,8 @@ void rockchip_drm_dma_detach_device(struct drm_device *drm_dev,
 void rockchip_drm_dma_init_device(struct drm_device *drm_dev,
 				  struct device *dev);
 int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout);
-
+int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rencoder,
+					      struct device_node *np, int port, int reg);
 int rockchip_drm_endpoint_is_subdriver(struct device_node *ep);
 extern struct platform_driver cdn_dp_driver;
 extern struct platform_driver dw_hdmi_rockchip_pltfm_driver;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
