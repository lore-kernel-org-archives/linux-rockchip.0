Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9722C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:56:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B32C6113D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 14:56:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B32C6113D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8v+o3h2RWKxMIDfKdAPXeKf7hZAi6GW7fDbdXcRg9Ng=; b=ZU0a37R7KNZmuB8IJLLczrkLe
	Q8zPLVnO22cLmQVa1RAGO3b/pF1efkyYwowUfwZSJhc+cDJlA+wARC+mTWARwmr/lWETdBw816ROG
	nnwPVw51Di7myVjFc2gf+/iygwU9BA+0XLaKVwvjaAgibQ63IMRr+STsjEIYJ+W3v/IBZdsVbhI3i
	DeHlGI4IcgjND7LzVwWZ298OXekB6Tf25qD6xScxyt16ka04np7SPfehHEFIOs6C6wnvuhxwRZgZ+
	6X/alyngwsFXE2ZKkKb90Q4VVwX2WpBi3txNklzA70pbTi/s5uNLMp7/VZCKuo8YMdNfEiGYMsLZp
	36LBM3hGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lblc9-003gXO-Ic; Wed, 28 Apr 2021 14:56:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYh-003fSs-G6; Wed, 28 Apr 2021 14:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=k/JT4xNc8q+xgw65KVZhdHtvOyVt1/eDaJCw7AtYUJ4=; b=aErzh0D8/a8uNZ9+btmuvKtElt
 M1Pu2FmrMJoozUBHsTazYwIRAauDLsOgkODRbTPuUjYI9mZGui7csIYMy4b4aNvGugr3qlMITIHQ0
 O6DfWfM+B1u5/ueE0GfTSOeuIsZx4i4LvTpqmdB2vXYQJNFUZsGFpa+jlZPGTIk0W3Bvdq/KpA6tg
 BYG51ele303Dp6MflY9bNiiZJMfD4ZW0yczVMd7Fl2aKJtIffmik0wUoEDcsCRdi/zqyuWnd+mf9R
 +nRhuF2gomWGZ1g9GKI6WZX1IbFk3NMQWAduoysaW4un576mbLB2zOjJ0wckzaWSI3CgWWsapFJqg
 vTsSZ5Pw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lblYZ-00HVSj-WB; Wed, 28 Apr 2021 14:52:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B45F961943;
 Wed, 28 Apr 2021 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619621565;
 bh=uJQR0czm+DeAW2PWQeBvZ4Rvzd+S5i8+90myFebensI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gd0RWjwESYvChE/vXJCMbgMdur/zgpmsndv+U7m1KPFsydIARd9u/rGZfIxnlVWAK
 dEC37mB/No0AtlFC4lrWsscAwp8/zNCRUShMCT9rLYXvM5lw01qGK7jOhujoyJC/Vr
 /k66J5MVQ/fBrmTq2ao4mLnRs/Z/AJPnOvR3Z7rJnNTPIFRXy74874ksxc1UiQxncJ
 Ky6bALQZhCk2CSmQZYAazp9dOf8L+iqw9CvSwhw40Ft4DLVJ8oIV6stXFrGcoYqxw5
 ilknZ4+VUlkH7MlSRyNF6zFpOWMQQZT2E1BxZ4PXQA9m/3aw5ghLONpdS8tV9EFPn1
 Q5rn/6+Bh6vBQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lblYR-001DsL-7K; Wed, 28 Apr 2021 16:52:43 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 57/79] media: rockchip/rga: use pm_runtime_resume_and_get()
Date: Wed, 28 Apr 2021 16:52:18 +0200
Message-Id: <cf0f0cb266c8b552f03583590a3b02a56f751c79.1619621413.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_075252_094563_D3B8EE59 
X-CRM114-Status: GOOD (  12.68  )
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
