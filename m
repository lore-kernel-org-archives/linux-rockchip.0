Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C36C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 09:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v2WseN4jxEXVCI94mwX5jt6dDWEh0MjjDrEUec3GhOc=; b=VNHjQcpIL24bxZ
	pXpumMO7laFE/9HW17SB2vxIoRTiwB8C8H+U3xE/oETIUN0SflsGlPM5CC8E0LYOROvtU3FYhXFdn
	SuuAu3/5hhxeMSMsAlmnpdBzdHB1ax6OG+Oc8xob4Et14DrqVviLjN/KhMJzF3aN9ne2WCjGDHhcq
	wMkdKifaVCfeXXdTuF/b/f3x1pjnvlwvOB903JIh2M5ppPjkNWdC7FU6ms26daehwDrvo8hO+t+2H
	qqDCoiMaJ7Zymi4Ml+j6WsMxOW/JI9zO3emB3YoBejCiRpLY894xxRR9WMTurA3ewKjSJEVqhDYMD
	MwY7qIWBAGcA/2yUeYlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o28XS-006mi3-E1; Fri, 17 Jun 2022 09:45:14 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o28XP-006mfX-CZ
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 09:45:13 +0000
Received: from dggpeml500022.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4LPYyF19rzzjXbg;
	Fri, 17 Jun 2022 17:43:33 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500022.china.huawei.com
 (7.185.36.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Fri, 17 Jun
 2022 17:45:06 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <ezequiel@vanguardiasur.com.ar>, <mchehab@kernel.org>,
	<gregkh@linuxfoundation.org>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] media:rkvdec:Remove redundant memset
Date: Fri, 17 Jun 2022 09:39:25 +0000
Message-ID: <20220617093925.44985-1-zhangzekun11@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500022.china.huawei.com (7.185.36.66)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_024511_638278_AE830343 
X-CRM114-Status: UNSURE (   6.14  )
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

As dma_alloc_coherent() will return a zeroed buffer, we
don't need to memset the returned buffer.
priv_tbl = dma_alloc_coherent() and count_tbl = dma_alloc_coherent()
should be enough.

-see commit 750afb08ca71 ("cross-tree: phase out dma_zalloc_coherent()")

Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
---
 drivers/staging/media/rkvdec/rkvdec-vp9.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
index 311a12656072..c2f42e76be10 100644
--- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -1015,7 +1015,6 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
 
 	vp9_ctx->priv_tbl.size = sizeof(*priv_tbl);
 	vp9_ctx->priv_tbl.cpu = priv_tbl;
-	memset(priv_tbl, 0, sizeof(*priv_tbl));
 
 	count_tbl = dma_alloc_coherent(rkvdec->dev, RKVDEC_VP9_COUNT_SIZE,
 				       &vp9_ctx->count_tbl.dma, GFP_KERNEL);
@@ -1026,7 +1025,6 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
 
 	vp9_ctx->count_tbl.size = RKVDEC_VP9_COUNT_SIZE;
 	vp9_ctx->count_tbl.cpu = count_tbl;
-	memset(count_tbl, 0, sizeof(*count_tbl));
 	rkvdec_init_v4l2_vp9_count_tbl(ctx);
 
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
