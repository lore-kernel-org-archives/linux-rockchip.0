Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E478C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 May 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sn7i2j2vZF/BEr/J3bQEpIW60r24G4RRqbG/aNy5YW8=; b=UFdjb/YIlmSi0i
	7LLEcMV+58Bgo9G5zPvVImi3cuA9M7rkEvSEuLV92JBIiX9o/nspbvD1g4ySFNytjkkBpdgIUiz8v
	aNXYtmvYG1emLymwLx6HENSF/hVPlJMVguXSyNSSrePqwuPZ0puPsI6/Tc1ahWQnTMzeALqVtMIql
	aCWzW4HxD8MoFa/lkovK2RZGJDYDM+V22TAxGUTJCFLgu+rfhLREq2EGRAxXp0y0H6sMu/beena6F
	Jbnt+EmfQpfiMBLYpzoymQh2TNa/h+LPcxg7yYpCKmvxXATYM55t9lOQuO8BTDObmAt+s8YN3ILij
	ni/ekv/kAy7qftjDU/cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvg70-0075HO-L4; Mon, 30 May 2022 14:11:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfig-006rVO-Jr; Mon, 30 May 2022 13:46:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3043860FCE;
	Mon, 30 May 2022 13:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C81C3411F;
	Mon, 30 May 2022 13:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918365;
	bh=ZRBlCTHt0pyFWYQr3Ew2t9lLWa2U4S35aOox2RxugS8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l+LglB8FlitDGTYZYnf0Mj4AmwVFoWvtfRPe2SlUpJAzRNvzSE5B/N5KnRu7iVM4O
	 nTf4+4O3fD0DbO3q0KzeuK8HIEAsM9lA4rWR/OS66+cG/XsMiN+yGnw83joLkXx8nj
	 lKGLd4hOcA7uPq33jdaCEsTZ+C7MP7BgkO5cAXbw9x2NiI2lMCHfh3SHADnPiTksqb
	 VSL6KiQLvT99UT5NzEZlx7QTfRZAIdzisVMVX80cBjniGB/0wMtu/RBB34i+jnXCau
	 zRM8N3FcShQKTW/1rSuWZ1/mxP3O8zCe0ugzrmVBC8NlN5g/HFQggzDRLVJpd14Vwo
	 WD1aAGK+TQ0UQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Hangyu Hua <hbh25y@gmail.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 55/76] media: rga: fix possible memory leak in rga_probe
Date: Mon, 30 May 2022 09:43:45 -0400
Message-Id: <20220530134406.1934928-55-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530134406.1934928-1-sashal@kernel.org>
References: <20220530134406.1934928-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064606_737007_01F7CF6C 
X-CRM114-Status: GOOD (  13.00  )
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

From: Hangyu Hua <hbh25y@gmail.com>

[ Upstream commit a71eb6025305192e646040cd76ccacb5bd48a1b5 ]

rga->m2m_dev needs to be freed when rga_probe fails.

Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index d99ea8973b67..e3246344fb72 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -868,7 +868,7 @@ static int rga_probe(struct platform_device *pdev)
 
 	ret = pm_runtime_resume_and_get(rga->dev);
 	if (ret < 0)
-		goto rel_vdev;
+		goto rel_m2m;
 
 	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
 	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
@@ -884,7 +884,7 @@ static int rga_probe(struct platform_device *pdev)
 					   DMA_ATTR_WRITE_COMBINE);
 	if (!rga->cmdbuf_virt) {
 		ret = -ENOMEM;
-		goto rel_vdev;
+		goto rel_m2m;
 	}
 
 	rga->src_mmu_pages =
@@ -921,6 +921,8 @@ static int rga_probe(struct platform_device *pdev)
 free_dma:
 	dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
 		       rga->cmdbuf_phy, DMA_ATTR_WRITE_COMBINE);
+rel_m2m:
+	v4l2_m2m_release(rga->m2m_dev);
 rel_vdev:
 	video_device_release(vfd);
 unreg_v4l2_dev:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
