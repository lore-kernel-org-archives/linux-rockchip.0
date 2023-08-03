Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BAE9C04A6A
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 02:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QllH+bjNDgn4/SmvWiOedB336bII6/oKn1urierU34=; b=WQsG0x9mJCFbfX
	Exh0bvDRWjJYxQMJapwTJOauBFQ/9cq0gtSYWz+ohUU2P7AedGtN1yA8s/ClnynJoe5n8XmGAxjnJ
	k6t6ZbbA45gRt/F/iumaC9Er+4emeoAyijBI5JPuslZMZlHIwLOk06TA+jAeYLccBTPBijjmfobU/
	kogtK2r+ySOXfnzc8OwPecORgvAD9YZNHmYeoxzBFAez4KEnjMw+cEZVPBAALT8pgjkp3zqBqKpri
	wnijjjXyjDyghNHf11Ox5RfhJUfWFLWY6ZUgDpzgnmubrsqOD7ha/aSy+7aMLFGzsvGcgx9Mp5j0P
	CtnI6TyxSWFo4hcHtMow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRONE-006UWR-3B;
	Thu, 03 Aug 2023 02:47:36 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRONB-006UUm-34
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Aug 2023 02:47:35 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RGYBp1kcqzrS6m;
	Thu,  3 Aug 2023 10:46:26 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 3 Aug
 2023 10:47:29 +0800
From: Ruan Jinjie <ruanjinjie@huawei.com>
To: <sylvester.nawrocki@gmail.com>, <mchehab@kernel.org>,
	<ezequiel@vanguardiasur.com.ar>, <p.zabel@pengutronix.de>,
	<linux-media@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 1/2] media: camif-core: Do not check for 0 return after calling platform_get_irq()
Date: Thu, 3 Aug 2023 10:46:44 +0800
Message-ID: <20230803024645.2716057-2-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230803024645.2716057-1-ruanjinjie@huawei.com>
References: <20230803024645.2716057-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_194734_162278_C94A61DD 
X-CRM114-Status: GOOD (  11.04  )
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

It is not possible for platform_get_irq() to return 0. Use the
return value from platform_get_irq().

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/media/platform/samsung/s3c-camif/camif-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/samsung/s3c-camif/camif-core.c b/drivers/media/platform/samsung/s3c-camif/camif-core.c
index afe1fcc37354..e4529f666e20 100644
--- a/drivers/media/platform/samsung/s3c-camif/camif-core.c
+++ b/drivers/media/platform/samsung/s3c-camif/camif-core.c
@@ -381,8 +381,8 @@ static int camif_request_irqs(struct platform_device *pdev,
 		init_waitqueue_head(&vp->irq_queue);
 
 		irq = platform_get_irq(pdev, i);
-		if (irq <= 0)
-			return -ENXIO;
+		if (irq < 0)
+			return irq;
 
 		ret = devm_request_irq(&pdev->dev, irq, s3c_camif_irq_handler,
 				       0, dev_name(&pdev->dev), vp);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
