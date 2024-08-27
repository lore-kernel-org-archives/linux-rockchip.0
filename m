Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E93F4C5321D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 02:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8c7EKswiiNSvD70dTuRPNBb5PapIj9LpwCZcJHGiW8=; b=ak/hMqNwEl0Cve
	MTKkZldL6CDbBnEMIprlD8DamDLgVJTTaOGJfmBelk7MuqJtYPBGPd0j09WuZGFoH/xU8GLLnfb4C
	bGnuRQ9ML0BWZhzOvIJUNCYRFd+b88VUa0EEiyxtrmuGtElUwCgKxqmmzNEdeKsRK0V5l6gJ4MmQi
	oZiC6ZfExMibD2V/BcZeS/Lw7venh3NfpnMU85QQWFqh7Pn8bCTRbxIiqbSHFC08OhHaz3cEJRcKF
	zywQ3SUS9yYPx2IhGEAD3p7CbRvEmsSh2XOsXdaDGWCY38qr0DJPyqPEU3FGl/opaUIcVPAQ/IXr1
	GV+LB9p1tKvJy8DZmZPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simP7-00000009WWf-2y9m;
	Tue, 27 Aug 2024 02:57:57 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simNW-00000009W5L-1xYu;
	Tue, 27 Aug 2024 02:56:20 +0000
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4WtBx32WTPz16PFX;
	Tue, 27 Aug 2024 10:55:19 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id BC2C718007C;
	Tue, 27 Aug 2024 10:56:05 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 27 Aug
 2024 10:56:05 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next v2 2/3] drm/rockchip: Simplified with dev_err() and __free()
Date: Tue, 27 Aug 2024 11:03:56 +0800
Message-ID: <20240827030357.1006220-3-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827030357.1006220-1-ruanjinjie@huawei.com>
References: <20240827030357.1006220-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_195619_062730_7AAA8569 
X-CRM114-Status: GOOD (  11.53  )
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

Avoid need to manually handle of_node_put() by using __free(), and use
dev_err() to replace deprecated() DRM_DEV_ERROR(), which can simplfy
code.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 38 ++++++++----------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f5b3f18794dd..700ac730887d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -548,16 +548,14 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
 	struct device_node *remote = NULL;
-	struct device_node  *port;
 	int ret = 0, child_count = 0;
 	const char *name;
 	u32 endpoint_id = 0;
 
 	lvds->drm_dev = drm_dev;
-	port = of_graph_get_port_by_id(dev->of_node, 1);
+	struct device_node *port __free(device_node) = of_graph_get_port_by_id(dev->of_node, 1);
 	if (!port) {
-		DRM_DEV_ERROR(dev,
-			      "can't found port point, please init lvds panel port!\n");
+		dev_err(dev, "can't found port point, please init lvds panel port!\n");
 		return -EINVAL;
 	}
 	for_each_child_of_node_scoped(port, endpoint) {
@@ -569,13 +567,10 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 			break;
 	}
 	if (!child_count) {
-		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
-		ret = -EINVAL;
-		goto err_put_port;
-	} else if (ret) {
-		dev_err_probe(dev, ret, "failed to find panel and bridge node\n");
-		goto err_put_port;
-	}
+		dev_err(dev, "lvds port does not have any children\n");
+		return -EINVAL;
+	} else if (ret)
+		return dev_err_probe(dev, ret, "failed to find panel and bridge node\n");
 	if (lvds->panel)
 		remote = lvds->panel->dev->of_node;
 	else
@@ -587,7 +582,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		lvds->output = rockchip_lvds_name_to_output(name);
 
 	if (lvds->output < 0) {
-		DRM_DEV_ERROR(dev, "invalid output type [%s]\n", name);
+		dev_err(dev, "invalid output type [%s]\n", name);
 		ret = lvds->output;
 		goto err_put_remote;
 	}
@@ -599,7 +594,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		lvds->format = rockchip_lvds_name_to_format(name);
 
 	if (lvds->format < 0) {
-		DRM_DEV_ERROR(dev, "invalid data-mapping format [%s]\n", name);
+		dev_err(dev, "invalid data-mapping format [%s]\n", name);
 		ret = lvds->format;
 		goto err_put_remote;
 	}
@@ -610,8 +605,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 
 	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_LVDS);
 	if (ret < 0) {
-		DRM_DEV_ERROR(drm_dev->dev,
-			      "failed to initialize encoder: %d\n", ret);
+		dev_err(drm_dev->dev, "failed to initialize encoder: %d\n", ret);
 		goto err_put_remote;
 	}
 
@@ -624,8 +618,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 					 &rockchip_lvds_connector_funcs,
 					 DRM_MODE_CONNECTOR_LVDS);
 		if (ret < 0) {
-			DRM_DEV_ERROR(drm_dev->dev,
-				      "failed to initialize connector: %d\n", ret);
+			dev_err(drm_dev->dev, "failed to initialize connector: %d\n", ret);
 			goto err_free_encoder;
 		}
 
@@ -639,9 +632,8 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 
 		connector = drm_bridge_connector_init(lvds->drm_dev, encoder);
 		if (IS_ERR(connector)) {
-			DRM_DEV_ERROR(drm_dev->dev,
-				      "failed to initialize bridge connector: %pe\n",
-				      connector);
+			dev_err(drm_dev->dev, "failed to initialize bridge connector: %pe\n",
+				connector);
 			ret = PTR_ERR(connector);
 			goto err_free_encoder;
 		}
@@ -649,14 +641,12 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 
 	ret = drm_connector_attach_encoder(connector, encoder);
 	if (ret < 0) {
-		DRM_DEV_ERROR(drm_dev->dev,
-			      "failed to attach encoder: %d\n", ret);
+		dev_err(drm_dev->dev, "failed to attach encoder: %d\n", ret);
 		goto err_free_connector;
 	}
 
 	pm_runtime_enable(dev);
 	of_node_put(remote);
-	of_node_put(port);
 
 	return 0;
 
@@ -666,8 +656,6 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	drm_encoder_cleanup(encoder);
 err_put_remote:
 	of_node_put(remote);
-err_put_port:
-	of_node_put(port);
 
 	return ret;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
