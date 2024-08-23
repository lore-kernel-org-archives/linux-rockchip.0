Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32731C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXtaG0J7AV58UagQUOfS3SCKwfiajHpEHCV2uYfIbTc=; b=0jAZm7AqJp7ixh
	3BNjt+yuuNmyYX+Mt6s3SitGkR82loZtYx2rNyvG+L4/R9dHBFhlkOqQjKrxvvGKkSUoUb3QINlns
	dtmuz4lZ/Ru0PKs19EFx1xPwpXwqXaSjssPV1zvLqvqkKMligY8vw+SZSNCR8Uv3n/jbnE3I4Sxz/
	e0ys88zRcvNWRsbA3G65djXRFgTrReI9voYtEZKaovtM+oaOwnoP/oGB2Q1yAvrLxa76LkapTvw1Y
	bVDICjCI3Zq2X+qqKTvC6tCOifuD9J5bvk78G0RrekG6fR7Rg71JF+swzc77uyftiwB2eJ9guMCn6
	3L+iCwKjSuxNWoiv/R7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQRt-0000000G4f0-3yT3;
	Fri, 23 Aug 2024 09:19:13 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQMJ-0000000G33P-38lI;
	Fri, 23 Aug 2024 09:13:30 +0000
Received: from mail.maildlp.com (unknown [172.19.162.112])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WqvSs3FRlz1xvwW;
	Fri, 23 Aug 2024 17:11:25 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id CDDF914013B;
	Fri, 23 Aug 2024 17:13:20 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 23 Aug
 2024 17:13:20 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 4/5] drm/nouveau: Use for_each_child_of_node_scoped()
Date: Fri, 23 Aug 2024 17:20:52 +0800
Message-ID: <20240823092053.3170445-5-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823092053.3170445-1-ruanjinjie@huawei.com>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_021328_114524_29B6B05C 
X-CRM114-Status: UNSURE (   9.34  )
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
 drivers/gpu/drm/nouveau/nouveau_connector.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.c b/drivers/gpu/drm/nouveau/nouveau_connector.c
index b06aa473102b..8d5c9c74cbb9 100644
--- a/drivers/gpu/drm/nouveau/nouveau_connector.c
+++ b/drivers/gpu/drm/nouveau/nouveau_connector.c
@@ -477,14 +477,14 @@ nouveau_connector_of_detect(struct drm_connector *connector)
 	struct nouveau_connector *nv_connector = nouveau_connector(connector);
 	struct nouveau_encoder *nv_encoder;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
-	struct device_node *cn, *dn = pci_device_to_OF_node(pdev);
+	struct device_node *dn = pci_device_to_OF_node(pdev);
 
 	if (!dn ||
 	    !((nv_encoder = find_encoder(connector, DCB_OUTPUT_TMDS)) ||
 	      (nv_encoder = find_encoder(connector, DCB_OUTPUT_ANALOG))))
 		return NULL;
 
-	for_each_child_of_node(dn, cn) {
+	for_each_child_of_node_scoped(dn, cn) {
 		const char *name = of_get_property(cn, "name", NULL);
 		const void *edid = of_get_property(cn, "EDID", NULL);
 		int idx = name ? name[strlen(name) - 1] - 'A' : 0;
@@ -492,7 +492,6 @@ nouveau_connector_of_detect(struct drm_connector *connector)
 		if (nv_encoder->dcb->i2c_index == idx && edid) {
 			nv_connector->edid =
 				kmemdup(edid, EDID_LENGTH, GFP_KERNEL);
-			of_node_put(cn);
 			return nv_encoder;
 		}
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
