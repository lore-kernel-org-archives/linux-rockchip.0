Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423DC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:28:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF997611C1
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:28:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF997611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8v+o3h2RWKxMIDfKdAPXeKf7hZAi6GW7fDbdXcRg9Ng=; b=ClAQxxPSrxYizxyffjuX5DAAZ
	OKLYT9VJxNW6UNrbaoeTvxkjjfxrm/9FjNXrak+e1/5X+Tcs+QWvD9fYS3kD4gF0JSDRiqbtZNSq2
	lOf65jr8TX1VwCxkKS9l5dfr00sEkExZjaBce7dyZCAxED6cMe59IDU8S3XLXHQj5Nf2TFwYEh3AG
	ewPBDy7Z0afaOfV8jeolBAoIPK/oMfLCZ1Vz3STPKvAdctM27HY/jXrVuRmQLORGoGOZwwtSWGq59
	Paxuwqu1zSiP3ne1supbhGiUzhE/x7zeng5gbq9tqU7UFomugn6Tg4v2f4CJ0XG1R62NV8wsAHHaq
	RzdTwwU7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKxB-001NFu-A5; Tue, 27 Apr 2021 10:28:29 +0000
Received: from bombadil.infradead.org ([198.137.202.133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKw7-001MyX-MP; Tue, 27 Apr 2021 10:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=k/JT4xNc8q+xgw65KVZhdHtvOyVt1/eDaJCw7AtYUJ4=; b=ec9FGY1raNPljVKO5M65twyI3k
 cEgLjBXnfRkpBzcZi50DE1IE/TDjh7yDC5T3EMcbxcD9pyZwAKfp54bMDWYzEphyqJsHIcPbQZMJf
 QheOLTtlaAq6MEioxWi+5s8mFvvsG4mo2jojrJWVDpKWyBhRJB2ihRmxqwuoR2D4Mez2EX7TcBoTE
 ivSnzcjAcM2wVKhg/6tUp1MK5kqS8iPixFq7xEovLPgT7Id08vX0cBlNWBC24xsO+SMmSpXZ90OUh
 yp0mo2WI1Ych+ftQy+97M/zrLf5vnMyYcMMeXTP4zHB/kOBew75qCR6G1kuz5PMlu2pAQVxCbeXMr
 oKPjy4qQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKw2-00Gd7p-Hq; Tue, 27 Apr 2021 10:27:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 487C1613EF;
 Tue, 27 Apr 2021 10:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619519236;
 bh=uJQR0czm+DeAW2PWQeBvZ4Rvzd+S5i8+90myFebensI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jVnwnb5PZqgl+8wS3a81LGuG33LLQQG5gU+krefP1JpsPHclKD/qXIjYqGWDhXj55
 33ZRf6pF3l25eqc23Gs5pQdb0PDVHjURu+5v6pv2wTDR2k3uuNt6odSP9+6BpqCcYd
 d/3Degiy2aE7zY3jDL0nmMN6wAYcVoY24xda0SeYx6pUfEfpJCXrXpLKzBsi3uUBHL
 pVypllmFBWs0zwfTFOHdkx9Da4ikdpe+ma+x5heSsVnA874VjASk5gH6YgAulNQ3WA
 BufVzIeVNbWeGsNO45wpB2uYN9PNZRI/HwQ2DqN3hKdQKXTVe0cPNGxufc13iTQ33+
 pdjzD89XjIGGw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKvv-000nzk-DU; Tue, 27 Apr 2021 12:27:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 11/79] media: rga-buf: use pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:26:01 +0200
Message-Id: <a9099f1ffc537e5f997cb260a175715892387c5a.1619519080.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619519080.git.mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_032718_742861_2966571C 
X-CRM114-Status: GOOD (  12.46  )
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
