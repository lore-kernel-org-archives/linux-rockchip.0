Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0B41CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 10:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZfnBMwi2ZSscT8IfND+wcuq1Ftnd6Lx3Sss9VI4Nexg=; b=tGwB1Q0c6v/6ru
	V0nL8+CTmSPGdVKMeA3rOhqBm5EC/ozzfaEydRahsKiQ8PSHO72/wHugEaXAiqfjOKeelJVoxjn75
	fWyGeoUbvmxUrSEiF/qEBsq1LYUZMzvs9fsWwxUQ9tQxD7Ircx3TRRskke78yaMNxRlsLGNDMMNdw
	jiXz4zAIr6yoa79Fj7b+ll1KL3oASvq1IQcv4nF/yNaBh7qamUGhgACPwkIeui8vGlf/BfgDf/hhu
	5oQiy4J0T+hlsvTdKxsRSVCAwGOD8XrvpS1X17JgfQE7mNbYuNGQEIarTNTwC/F6XeLlgtxEf3ncP
	dE1Bw3R80o7RdGqqrZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGaSt-0000000DRx5-2Lba;
	Wed, 05 Nov 2025 10:10:07 +0000
Received: from mx01.omp.ru ([90.154.21.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGaSq-0000000DRuG-48yE
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 10:10:06 +0000
Received: from spb1wst022.omp.ru (87.226.253.162) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Wed, 5 Nov
 2025 13:09:42 +0300
From: Karina Yankevich <k.yankevich@omp.ru>
To: Sandy Huang <hjc@rock-chips.com>
CC: Karina Yankevich <k.yankevich@omp.ru>, =?UTF-8?q?Heiko=20St=C3=BCbner?=
	<heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<lvc-project@linuxtesting.org>, Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH] drm/rockchip: gem: Fix memory leak when drm object init failed
Date: Wed, 5 Nov 2025 13:04:39 +0300
Message-ID: <20251105100439.2780370-1-k.yankevich@omp.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [87.226.253.162]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 11/05/2025 09:53:46
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 197782 [Nov 05 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: k.yankevich@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 74 0.3.74
 076026cf5b16801374fbd5d19166f5aeefca6115
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: omp.ru:7.1.1;87.226.253.162:7.1.2;spb1wst022.omp.ru:7.1.1;127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 87.226.253.162
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 11/05/2025 09:55:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 11/5/2025 9:03:00 AM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_021005_027484_A708F6BA 
X-CRM114-Status: UNSURE (   8.47  )
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

If drm_gem_object_init() call in rockchip_gem_alloc_object() fails
then rk_obj isn't freed. Fix this by checking drm_gem_object_init()'s
result.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 6fd0bfe2f7ea ("drm/rockchip: support prime import sg table")
Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 6330b883efc3..ad888f9379db 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -284,6 +284,7 @@ static struct rockchip_gem_object *
 {
 	struct rockchip_gem_object *rk_obj;
 	struct drm_gem_object *obj;
+	int ret;
 
 	size = round_up(size, PAGE_SIZE);
 
@@ -295,7 +296,12 @@ static struct rockchip_gem_object *
 
 	obj->funcs = &rockchip_gem_object_funcs;
 
-	drm_gem_object_init(drm, obj, size);
+	ret = drm_gem_object_init(drm, obj, size);
+	if (ret) {
+		DRM_ERROR("failed to initialize gem object: %d\n", ret);
+		kfree(rk_obj);
+		return ERR_PTR(ret);
+	}
 
 	return rk_obj;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
