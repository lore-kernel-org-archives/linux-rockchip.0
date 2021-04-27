Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81FC4C43460
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:17:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0049D611ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:17:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0049D611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8v+o3h2RWKxMIDfKdAPXeKf7hZAi6GW7fDbdXcRg9Ng=; b=q/gJ/1MjPRpAx/Pf0d8gFzFI5
	BqyLwSJ5QENaYYa/RvsU70NdUxTU3IbupLyMBoRSrNHeQzrza99DCL59T9pHvmILtmw8Docd9Zll/
	cdKyBs0V3+njT88ZfIP3FatT6BLhU5JezXibV8lfJoE4+JCisZ0ZVUoiAdtElzaCVJ+J6tcBY9JBF
	UWh7/NvD8NSJuGtYudXJY9pLgIvoi4NjLUcybA1xCiCFkMgZLQyakpobh+c4Gw5Vc7VHJp8uRQ4Pc
	GZvrCI+BFd8PLj33Il67pz0u3jMbhER2HLFENqAaD8WJFQmImaQKtfCDOPc2sqWbI1D95NHtcts+Y
	J9w+B60NA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKm6-001K5I-To; Tue, 27 Apr 2021 10:17:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKjC-001JCs-2T; Tue, 27 Apr 2021 10:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=k/JT4xNc8q+xgw65KVZhdHtvOyVt1/eDaJCw7AtYUJ4=; b=WJdMX8BJv7l7gsa+WNDRce+HY6
 DEQ4NMrX7iQvAKy0pFvOFUvQWdiUlezZ2HM+5Gvpybc02e72gP876jdniyJLlPd4lXTMN7ZgSx0ww
 KtDdaWokOCoot8EisPrZDSnou5DXERTaE08RYGx9Syk4OaOVMJPDl1cubo2A2xil7JsH8T5Mj/lOM
 aeYaGgxaBcqlfTLxE4VkaaGkuKpTsqeKqIo5AhayBNfT5uCfd15gYnLBBii9B8NRdrwna+H6fzxtE
 W02lWylPsTMNXpXsVziWYqncWyeQBK+IyxEKeo1XqVjcFySVwkgk4U0CVo7EVvyFlC+1aKExmOBAn
 xW+AJEiQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKj7-00Gbs2-73; Tue, 27 Apr 2021 10:14:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 88BAA61002;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=uJQR0czm+DeAW2PWQeBvZ4Rvzd+S5i8+90myFebensI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NiQvYMF7OEWPJzkJcicJ7WcKvB0H3GERIgYfA5qd0WtSjnaR0/nAV3hMCadwmEBnt
 4Q0sn828e2ClzSrXWAtUuIDkwINCzefQc5ICV1bguILEAdRR66cv/1jXdl9aEvRcRD
 Bhx8pj/CKQr/EPlPqWchTGcwCLeQnx+qsO71Obg5pOpy0+39ert3POkP7ii32N1zeU
 XveXVnKAn9x/663ekqaHhQLsC16Ik7jDuulgkWxnbnMOCpwuwSCaBDoZ6iUKIiOLGH
 xkHRvRXlm6NGdmEAOPXnHv5P+44UCyanuBFz0MRONQIWQyeh8mwCBCsqWRTqxDSKDW
 SKrNb8oYv9xlQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiy-000j57-LA; Tue, 27 Apr 2021 12:13:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 11/79] media: rga-buf: use pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:12:38 +0200
Message-Id: <a0c6f5de9bbc9c28d2c39878a99a147cff95b3e9.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_031357_320403_AB0072E1 
X-CRM114-Status: GOOD (  12.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 3 +--
 drivers/media/platform/rockchip/rga/rga.c     | 4 +++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index bf9a75b75083..81508ed5abf3 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -79,9 +79,8 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 	struct rockchip_rga *rga = ctx->rga;
 	int ret;
 
-	ret = pm_runtime_get_sync(rga->dev);
+	ret = pm_runtime_resume_and_get(rga->dev);
 	if (ret < 0) {
-		pm_runtime_put_noidle(rga->dev);
 		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
 		return ret;
 	}
diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 9d122429706e..bf3fd71ec3af 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -866,7 +866,9 @@ static int rga_probe(struct platform_device *pdev)
 		goto unreg_video_dev;
 	}
 
-	pm_runtime_get_sync(rga->dev);
+	ret = pm_runtime_resume_and_get(rga->dev);
+	if (ret < 0)
+		goto unreg_video_dev;
 
 	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
 	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
