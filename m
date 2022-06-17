Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB54C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 07:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7dWaA5FHXxLk9YJrYIK9LWfz1VdcJ3ZWJDeZRrcAoUo=; b=lXhTzcXJJgNV4p
	2UnKZe83QgEWyygfuPxgAyp+PoRvrRyLYFCrIwp2Must6aGItOipbpgEyB7tiv6G8Qr0Lcefab8nU
	THEGNsPjlKkLUr+r+/hen4dqwVWhfBBb6afgkdD8kr9v8XIlStAFrSXejaPOXqobYW9hzkbv+2Od/
	K1MvFGXccnZ/23k+SJ0tuQnPhf55U3OzSJj7vcTQFz8eLa5nhPjGa/AO8oNuCza6x9WA3sN8/QaSZ
	Zapn66gLK7PlliIcSLDZ+U+AYjbNFLXJsBJXCkTGuijUHiyt14S2uxlLz6UcINtkf7L2yK9Vy1GZ8
	K7orc5w8h98MsOAKfsEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26jk-0066ZZ-Vf; Fri, 17 Jun 2022 07:49:49 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26XE-0060Mz-U4
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 07:36:55 +0000
Received: from dggpeml500022.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4LPW7L1R8YzDrCs;
	Fri, 17 Jun 2022 15:36:14 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500022.china.huawei.com
 (7.185.36.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Fri, 17 Jun
 2022 15:36:41 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <ezequiel@vanguardiasur.com.ar>, <mchehab@kernel.org>,
	<gregkh@linuxfoundation.org>, <andrzej.p@collabora.com>,
	<hverkuil-cisco@xs4all.nl>
CC: <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] media: rkvdec: Fix memset size error
Date: Fri, 17 Jun 2022 07:31:01 +0000
Message-ID: <20220617073101.101234-1-zhangzekun11@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500022.china.huawei.com (7.185.36.66)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_003653_194059_38A06DC0 
X-CRM114-Status: UNSURE (   7.96  )
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

'dma_alloc_coherent()' alloc a 'RKVDEC_VP9_COUNT_SIZE' size area to
'unsigned char *count_tbl', however, the memset() bellow only set
'sizeof(*count_tbl)', which equals to 1, bytes to zero. This can
 cause unexpected error.

Fixes: f25709c4ff15 ("media: rkvdec: Add the VP9 backend")
Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
---
 drivers/staging/media/rkvdec/rkvdec-vp9.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
index 311a12656072..3ad303a3de48 100644
--- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
+++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
@@ -1026,7 +1026,7 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
 
 	vp9_ctx->count_tbl.size = RKVDEC_VP9_COUNT_SIZE;
 	vp9_ctx->count_tbl.cpu = count_tbl;
-	memset(count_tbl, 0, sizeof(*count_tbl));
+	memset(count_tbl, 0, RKVDEC_VP9_COUNT_SIZE);
 	rkvdec_init_v4l2_vp9_count_tbl(ctx);
 
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
