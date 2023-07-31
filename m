Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C96C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 12:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v1ZjsCjm/rKmtko3tWNFWe9NNk+ZDJ/V7XIY8EP69bc=; b=BmaL5E+DD+n0Nd
	Xve8Owf0Fkh4tzSjNJKlVLRTsXkBd8AQN16FAMqtdv/ODFsJ5Mty1pOvuG8zLhtGWilRhsG5LwyCU
	qp7YHV5DivNbbrYQ/Okq3YkEmb6R8VATJNQbbY9OQStxTxKl53yo4Q4Ho6zldLB7Bm782ci3ZHxxw
	d4tU5Qc0hg9S/pfNvfYZrmFHf41J6AwVOIXH/MLpieEwIcCWQu4pPsCxxl09tSe5GWlYzUTFlgIqL
	wX/Omv6qIG1D3OoJcpJ53ocs/E0rj4VTUi6pqMfwr7jhY05WItVyuDLfL3coWLZSHeptJH7fLdwEf
	GFKqL3+2NoLlIaKLfjcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQSPF-00Fcek-14;
	Mon, 31 Jul 2023 12:53:49 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQSPC-00FcdO-19;
	Mon, 31 Jul 2023 12:53:48 +0000
Received: from dggpeml500025.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RDymn1XSMzVjtZ;
	Mon, 31 Jul 2023 20:51:53 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.202) by
 dggpeml500025.china.huawei.com (7.185.36.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 20:53:34 +0800
From: Zhu Wang <wangzhu9@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<u.kleine-koenig@pengutronix.de>, <arnd@arndb.de>
CC: <wangzhu9@huawei.com>
Subject: [PATCH -next] drm/rockchip: remove redundant of_match_ptr
Date: Mon, 31 Jul 2023 20:53:04 +0800
Message-ID: <20230731125304.87059-1-wangzhu9@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.202]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500025.china.huawei.com (7.185.36.35)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_055346_583988_62011F1A 
X-CRM114-Status: GOOD (  13.50  )
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

The driver depends on CONFIG_OF, so it is not necessary to use
of_match_ptr here.

Even for drivers that do not depend on CONFIG_OF, it's almost always
better to leave out the of_match_ptr(), since the only thing it can
possibly do is to save a few bytes of .text if a driver can be used both
with and without it. Hence we remove of_match_ptr.

Signed-off-by: Zhu Wang <wangzhu9@huawei.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c       | 2 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c     | 2 +-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a29fbafce393..278f1997aec3 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1250,7 +1250,7 @@ struct platform_driver cdn_dp_driver = {
 	.driver = {
 		   .name = "cdn-dp",
 		   .owner = THIS_MODULE,
-		   .of_match_table = of_match_ptr(cdn_dp_dt_ids),
+		   .of_match_table = cdn_dp_dt_ids,
 		   .pm = &cdn_dp_pm_ops,
 	},
 };
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 582859387792..f0f47e9abf5a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -752,6 +752,6 @@ struct platform_driver rockchip_lvds_driver = {
 	.remove_new = rockchip_lvds_remove,
 	.driver = {
 		   .name = "rockchip-lvds",
-		   .of_match_table = of_match_ptr(rockchip_lvds_dt_ids),
+		   .of_match_table = rockchip_lvds_dt_ids,
 	},
 };
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 62b573f282a7..fcd4cf3072cd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -274,6 +274,6 @@ struct platform_driver vop2_platform_driver = {
 	.remove_new = vop2_remove,
 	.driver = {
 		.name = "rockchip-vop2",
-		.of_match_table = of_match_ptr(vop2_dt_match),
+		.of_match_table = vop2_dt_match,
 	},
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
