Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC902C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 08:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KALRDnjOlrVIsR4Q5L52QSTVJWC7b0ShiU0JPF04dhM=; b=rAsIXwizz4DbkY
	W5IP66yyYeHo/5hOVMa9A7mEQ0ZSmK5uIKILTfI2FpCnU7zL71r0aA16C1OV3YcGNMuoUY58srp5M
	GanrKX9XI/4T9WC1KXN0RLdJSOeSbLEvFB7UZxTIP/BPq7qIZkkJyiDR2kl1JfjjTbDMuG5Lvuofl
	QiCVtgkylBOuyyZTrOENBG1+6lutuwks0NmgRSeVfsVfzNu/D8mnynvYCAtOaTY4RwvsSJA/ADjq6
	6KVVJpzFKJfdFkevdKwntproP+JQJBRb/7ab4gEsp6MyFcE7kTYhFqH440rlVcYgZU2PlgWofQA/+
	TVMtMgjHwCdlMsaa3a7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVaS-003oVS-Cu; Fri, 25 Feb 2022 08:04:24 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVOk-003i8U-Nz
 for linux-rockchip@bombadil.infradead.org; Fri, 25 Feb 2022 07:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5o74o2qkkyU2K3Z7EHHmmitllhGnYACoVGeCKD0jOqM=; b=jTQUj8jWTn5X7bjzyPiEPrk69r
 +ja7v0eIVZkmawbeMyK2kl6H7kmWy1a+LltywIt6RzbmHV0h44i9lEnHO27mugrgxkJ+FujRWMTP+
 NRf01tI+jQV69YpArM6HD1o5dHd8g7H3ZSX0DPNbc0gA1bAimEi5Go5iSp6Zjm/LEYLEWKcpU6hsp
 /gKU7RRo6xk4TSFHDj+cTTHehT6tIpm2sq6OJinVmdzSNUs9PK1yOuDy1nims7caC67KFXRUTxRv7
 bZxQE+YYzZHsqgGFLrjARMVpLrEllKS+qEq3d5yxTX/5hdN5EEy5PEvjN8f+CjIXfQyiqmg89RmzZ
 si32rIUA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVOa-00Ctg7-Ay
 for linux-rockchip@lists.infradead.org; Fri, 25 Feb 2022 07:52:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVON-0000Pj-A8; Fri, 25 Feb 2022 08:51:55 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nNVOK-00BSXQ-UR; Fri, 25 Feb 2022 08:51:52 +0100
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
Subject: [PATCH v7 02/24] drm/rockchip: Add crtc_endpoint_id to
 rockchip_encoder
Date: Fri, 25 Feb 2022 08:51:28 +0100
Message-Id: <20220225075150.2729401-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225075150.2729401-1-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_075208_554126_AF40069E 
X-CRM114-Status: GOOD (  22.48  )
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
index bec207de45440..7920a4f44f693 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -236,6 +236,39 @@ static const struct dev_pm_ops rockchip_drm_pm_ops = {
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
index 686f687a76a37..1f66a447acada 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -49,6 +49,7 @@ struct rockchip_drm_private {
 };
 
 struct rockchip_encoder {
+	int crtc_endpoint_id;
 	struct drm_encoder encoder;
 };
 
@@ -57,7 +58,8 @@ int rockchip_drm_dma_attach_device(struct drm_device *drm_dev,
 void rockchip_drm_dma_detach_device(struct drm_device *drm_dev,
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
