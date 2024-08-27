Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE0F7C5321D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 02:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k03d7zRxQmrS40k8orsg3Qh84UlZHwHhOxRMdLjuUeI=; b=2KdVzwANuTMa4Y
	A0ZWpB9Wk9JkuNfpz3yL9dqHycjATImlSzhCAmUUOCVSLyBlncjQMxdTxm7eFokhucLwbj+mgXz16
	8zKg1wQ1RJcKkMnnbzh69oNu2Rpy2QvCxnCcZ78x3cb89NR1fY6tBRznD8M01pT3NU2rj/L4lEEuY
	e9I2ElpYkrd5G4ui5yXLmWiZYNcAR8QfKf7YnwQRJqtE8Q1XaWGdJchToiS9mdTWxB23OziRqJVHZ
	MI1HixXmsT9Mxnzpg3Ifef5s7rCWGsO0hjAlNOORXoMEFV5eAD021Jdv1wjY+2w/deirb9VAvdv1Z
	6DvqkdqistFbSNMswnKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simOM-00000009WM8-1hH9;
	Tue, 27 Aug 2024 02:57:10 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simNW-00000009W5I-1zrH;
	Tue, 27 Aug 2024 02:56:20 +0000
Received: from mail.maildlp.com (unknown [172.19.163.174])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WtBx23VytzyQT3;
	Tue, 27 Aug 2024 10:55:18 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 32148140257;
	Tue, 27 Aug 2024 10:56:05 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 27 Aug
 2024 10:56:04 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next v2 1/3] drm/rockchip: Use for_each_child_of_node_scoped()
Date: Tue, 27 Aug 2024 11:03:55 +0800
Message-ID: <20240827030357.1006220-2-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827030357.1006220-1-ruanjinjie@huawei.com>
References: <20240827030357.1006220-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_195618_778683_BEDEBD3B 
X-CRM114-Status: GOOD (  10.66  )
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

Avoids the need for manual cleanup of_node_put() in early exits
from the loop.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 9a01aa450741..f5b3f18794dd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -548,7 +548,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	struct drm_encoder *encoder;
 	struct drm_connector *connector;
 	struct device_node *remote = NULL;
-	struct device_node  *port, *endpoint;
+	struct device_node  *port;
 	int ret = 0, child_count = 0;
 	const char *name;
 	u32 endpoint_id = 0;
@@ -560,15 +560,13 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 			      "can't found port point, please init lvds panel port!\n");
 		return -EINVAL;
 	}
-	for_each_child_of_node(port, endpoint) {
+	for_each_child_of_node_scoped(port, endpoint) {
 		child_count++;
 		of_property_read_u32(endpoint, "reg", &endpoint_id);
 		ret = drm_of_find_panel_or_bridge(dev->of_node, 1, endpoint_id,
 						  &lvds->panel, &lvds->bridge);
-		if (!ret) {
-			of_node_put(endpoint);
+		if (!ret)
 			break;
-		}
 	}
 	if (!child_count) {
 		DRM_DEV_ERROR(dev, "lvds port does not have any children\n");
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
