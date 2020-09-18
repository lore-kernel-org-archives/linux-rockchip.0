Return-Path: <SRS0=OGSP=C3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47793C43465
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 08:35:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C148B2075B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 08:35:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Su9e5A6c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C148B2075B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YdsrzmZA7OT+YGs4MU1nQRvakWBbingfn4CCVKlyn0c=; b=Su9e5A6c+rgSNfnxmJa6JqUkoI
	2qz+imPcDYo7DZO0cK0C196bo7bTHBxXLw1MORmQb6EfTJUaSfawXUcO9DexeHo9AQjH3VN6BwOSO
	xwKtx3GUNAt/Mbplsulb88keS8NLu49+rh95a4xMKLFQjfsmE6IjI35AmTZKxEA2hGJWTP8YVvStW
	dg5h9HDcYb3Gtba8deQcKDas+YVDVuMM+opAar8eE3Sw6nkzcjsyftHHiFDZMYqtWNM9X3bT2/UYW
	Uzah9b8Gagv+DJBWx2t60UoSsbeA2xwlpA0S3Guh/6ffIfH75VGcqOOiHsZXS0Fe8D7S5vWSNVa4L
	fYBEoGzw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJBro-0001l3-Bj; Fri, 18 Sep 2020 08:35:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJBrI-0001UB-Bi; Fri, 18 Sep 2020 08:35:11 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BC9EAA1EEE72563EFB9D;
 Fri, 18 Sep 2020 16:34:56 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Fri, 18 Sep 2020
 16:34:48 +0800
From: Wang ShaoBo <bobo.shaobowang@huawei.com>
To: 
Subject: [PATCH -next] iommu/rockchip: Use devm_platform_ioremap_resource()
Date: Fri, 18 Sep 2020 16:34:15 +0800
Message-ID: <20200918083415.33024-1-bobo.shaobowang@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200918_043508_735343_A9FABE69 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: jroedel@suse.de, cj.chengjian@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huawei.libin@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Make use of devm_platform_ioremap_resource() provided by driver
core platform instead of duplicated analogue.

Signed-off-by: Wang ShaoBo <bobo.shaobowang@huawei.com>
---
 drivers/iommu/rockchip-iommu.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index e5d86b7177de..cc4b654be2cc 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1126,7 +1126,6 @@ static int rk_iommu_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rk_iommu *iommu;
-	struct resource *res;
 	int num_res = pdev->num_resources;
 	int err, i;
 
@@ -1144,10 +1143,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	for (i = 0; i < num_res; i++) {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		if (!res)
-			continue;
-		iommu->bases[i] = devm_ioremap_resource(&pdev->dev, res);
+		iommu->bases[i] = devm_platform_ioremap_resource(pdev, i);
 		if (IS_ERR(iommu->bases[i]))
 			continue;
 		iommu->num_mmu++;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
