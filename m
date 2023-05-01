Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E2BC77B60
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 02:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6pQ7sugi4EHXBMBjvPxZFC/ClLo+FmWOC/++UA9fvVA=; b=0KIqUv8kkRT0TR
	EtDOsEAeC1vZkCXz1cETvrJeXNlLcCG8lhMENTZnSdahlVF+8oOyA+Gp9RQoqsq2PQb855MtVFyql
	uqsU0lDvhUFBZs6Qk6QX2n/bKOu4YjT11IhYrgZ8/UsQJ+XDKikvlzD04giYiL+vOhHJHPR5545zY
	YgURm6J0j696SWUg/jKawioRtW9OqsWHEWbPHwjlA3gZazILE1g/bu5PRJe2f7+P/V1T9saBlVZ96
	b5j71/bVfWr2f+leMr7S1FkVyDkpIMuWev9++6QiPOsm95pxMl1dC9jK0TdivsSodrbW18ngvgi9s
	Pf/xIo6kfV72kKKyrRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptJbu-00F3SN-1d;
	Mon, 01 May 2023 02:49:54 +0000
Received: from [2601:1c2:980:9ec0::2764] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1ptJbr-00F3Rs-2W;
	Mon, 01 May 2023 02:49:51 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-arm-kernel@lists.infradead.org
Cc: patches@lists.linux.dev,
	Randy Dunlap <rdunlap@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] soc/rockchip: dtpm: use C99 array init syntax
Date: Sun, 30 Apr 2023 19:49:50 -0700
Message-Id: <20230501024950.31518-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

Eliminate sparse warnings in soc/rockchip/dtpm.c:

drivers/soc/rockchip/dtpm.c:15:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:17:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:20:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:23:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:26:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:29:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:32:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:35:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:38:12: sparse: warning: obsolete array initializer, use C99 syntax
drivers/soc/rockchip/dtpm.c:41:12: sparse: warning: obsolete array initializer, use C99 syntax

Fixes: b9d6c47a2be8 ("rockchip/soc/drivers: Add DTPM description for rk3399")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
---
 drivers/soc/rockchip/dtpm.c |   54 +++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff -- a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -12,33 +12,33 @@
 #include <linux/platform_device.h>
 
 static struct dtpm_node __initdata rk3399_hierarchy[] = {
-	[0]{ .name = "rk3399",
-	     .type = DTPM_NODE_VIRTUAL },
-	[1]{ .name = "package",
-	     .type = DTPM_NODE_VIRTUAL,
-	     .parent = &rk3399_hierarchy[0] },
-	[2]{ .name = "/cpus/cpu@0",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[3]{ .name = "/cpus/cpu@1",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[4]{ .name = "/cpus/cpu@2",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[5]{ .name = "/cpus/cpu@3",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[6]{ .name = "/cpus/cpu@100",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[7]{ .name = "/cpus/cpu@101",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[8]{ .name = "/gpu@ff9a0000",
-	     .type = DTPM_NODE_DT,
-	     .parent = &rk3399_hierarchy[1] },
-	[9]{ /* sentinel */ }
+	[0] = { .name = "rk3399",
+		.type = DTPM_NODE_VIRTUAL },
+	[1] = { .name = "package",
+		.type = DTPM_NODE_VIRTUAL,
+		.parent = &rk3399_hierarchy[0] },
+	[2] = { .name = "/cpus/cpu@0",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[3] = { .name = "/cpus/cpu@1",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[4] = { .name = "/cpus/cpu@2",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[5] = { .name = "/cpus/cpu@3",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[6] = { .name = "/cpus/cpu@100",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[7] = { .name = "/cpus/cpu@101",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[8] = { .name = "/gpu@ff9a0000",
+		.type = DTPM_NODE_DT,
+		.parent = &rk3399_hierarchy[1] },
+	[9] = { /* sentinel */ }
 };
 
 static struct of_device_id __initdata rockchip_dtpm_match_table[] = {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
