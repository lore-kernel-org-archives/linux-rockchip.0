Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 390E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 May 2022 13:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwS6JrmecGg3fsNh+HK2EQulNgcTkLyC6CyrzrJkPyc=; b=1bADMQAKEh7H/D
	VGzDnPV9yMVSIWU1k21tfbdwpjbnE7OFYw84wwe2dJga7T46iVJ1p9Yq7nuU3xmh3LSAsYcPQ+oKW
	/HH0tguy+QmYkTVAzbgI2xBubhKnOTz2AWX6sLgNbJjEzKKNOSu5+mXZAJP1lgc4ffnC81R5OmWcB
	Qd+mKzD5BusPjoSn1U3aU7JbWRvU6i+tsXjeAr9mVSUg8dHPBUTNp+Chz8OGKs08oLdC4E7eoKMpy
	Ux7/qRokH3LwU3+dG8th97oTK+RIY1Dko+5ZIlbb741UXWqkW5nAQSXL7z2htnFkqZFEiuQI08fFK
	2EHqJDMZNeZErQ1Vsu6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfmb-006u2H-LH; Mon, 30 May 2022 13:50:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfZC-006lsV-M7; Mon, 30 May 2022 13:36:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0992CB80D89;
	Mon, 30 May 2022 13:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F92CC3411A;
	Mon, 30 May 2022 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653917775;
	bh=phB7LXbMznbVSVQXBgVCBso+VRteL7PNg//ZRtMP2a8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LIS0IJSvBp8KGJdRd3t8HjBM4aTAc4X8QXHwGxHblK2WWpUC1RYM/vT7hkGRCKXdR
	 baUhz9bHkbBU+F8gru/YGoEkNeMnRavEnZvsI4kfkzhDH4MeYfDIimTycEHjg7yeq8
	 7KP6/w4sK670gPDIsjWKgO84YJgvV2LjxeHDVMGONswdM8S11WKiYQ99R6mv5e4L4w
	 I+2R6Hn4hTkhfHjfMh1mU7/hamdn7q4OiYzAZHA7l1moWnZrbtCpeokbkGr0o7ahG+
	 R621luR/CxygBmnjuGk3O7NcEY0AtBwpTDH8PR0nIYGDW/JJfgR3NAcDVgXeKvCm82
	 G2+n5c19sqPiA==
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
Subject: [PATCH AUTOSEL 5.17 093/135] media: rga: fix possible memory leak in rga_probe
Date: Mon, 30 May 2022 09:30:51 -0400
Message-Id: <20220530133133.1931716-93-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133133.1931716-1-sashal@kernel.org>
References: <20220530133133.1931716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_063618_940718_9E034597 
X-CRM114-Status: GOOD (  13.26  )
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
index 3d3d1062e212..2f8df74ad0fd 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -865,7 +865,7 @@ static int rga_probe(struct platform_device *pdev)
 
 	ret = pm_runtime_resume_and_get(rga->dev);
 	if (ret < 0)
-		goto rel_vdev;
+		goto rel_m2m;
 
 	rga->version.major = (rga_read(rga, RGA_VERSION_INFO) >> 24) & 0xFF;
 	rga->version.minor = (rga_read(rga, RGA_VERSION_INFO) >> 20) & 0x0F;
@@ -881,7 +881,7 @@ static int rga_probe(struct platform_device *pdev)
 					   DMA_ATTR_WRITE_COMBINE);
 	if (!rga->cmdbuf_virt) {
 		ret = -ENOMEM;
-		goto rel_vdev;
+		goto rel_m2m;
 	}
 
 	rga->src_mmu_pages =
@@ -918,6 +918,8 @@ static int rga_probe(struct platform_device *pdev)
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
