Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF43C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4hPFFVUkVKeImD6Jy49agHPdpt2lhhndltHiDnJZJU=; b=QZb/wTFjNde/iH
	dXL8+PkcAR2HJdW+NoAnXA+zRwmFu66g8JT2eZP7hHtHY0sy6YdBw7zNMTMpaJT5l+mjWHiUocLY6
	/BIKLSf8BrzdFu024c4Jlb6+ksrXLhjMxlGvhiALi3BouDzLZmA3T+r5hbraF5xRxjaQ+Mo4pUfb8
	cX6osYZs/FVhsIuQRj5LqkVo/OaM8yivwUQZpVsRad0QU0C8v7Snu6cjae2WG1V6xT8T7smN9Lgnz
	TR/DXK2ir2kQdrGOmlESqRZT2xC7864tCfGL6h1YZ+2xmlXEAHCs7Pi1COx12ts6gMjubXz37k3aI
	gJhfeDtMoUp9lMj1AOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQSe-0000000G4ue-2qQV;
	Fri, 23 Aug 2024 09:20:00 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQMJ-0000000G33N-47CO;
	Fri, 23 Aug 2024 09:13:30 +0000
Received: from mail.maildlp.com (unknown [172.19.88.214])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WqvSr5x12z1xvwT;
	Fri, 23 Aug 2024 17:11:24 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 36B161A016C;
	Fri, 23 Aug 2024 17:13:20 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 23 Aug
 2024 17:13:19 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 3/5] drm: of: Use for_each_child_of_node_scoped()
Date: Fri, 23 Aug 2024 17:20:51 +0800
Message-ID: <20240823092053.3170445-4-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823092053.3170445-1-ruanjinjie@huawei.com>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_021328_310774_C3D848EF 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
 drivers/gpu/drm/drm_of.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 177b600895d3..41d9288c97a7 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -304,10 +304,9 @@ static int drm_of_lvds_get_port_pixels_type(struct device_node *port_node)
 static int drm_of_lvds_get_remote_pixels_type(
 			const struct device_node *port_node)
 {
-	struct device_node *endpoint = NULL;
 	int pixels_type = -EPIPE;
 
-	for_each_child_of_node(port_node, endpoint) {
+	for_each_child_of_node_scoped(port_node, endpoint) {
 		struct device_node *remote_port;
 		int current_pt;
 
@@ -315,10 +314,8 @@ static int drm_of_lvds_get_remote_pixels_type(
 			continue;
 
 		remote_port = of_graph_get_remote_port(endpoint);
-		if (!remote_port) {
-			of_node_put(endpoint);
+		if (!remote_port)
 			return -EPIPE;
-		}
 
 		current_pt = drm_of_lvds_get_port_pixels_type(remote_port);
 		of_node_put(remote_port);
@@ -332,10 +329,8 @@ static int drm_of_lvds_get_remote_pixels_type(
 		 * configurations by passing the endpoints explicitly to
 		 * drm_of_lvds_get_dual_link_pixel_order().
 		 */
-		if (!current_pt || pixels_type != current_pt) {
-			of_node_put(endpoint);
+		if (!current_pt || pixels_type != current_pt)
 			return -EINVAL;
-		}
 	}
 
 	return pixels_type;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
