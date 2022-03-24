Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71CB3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Mar 2022 08:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eehkpwt+oxbPzL+QY0QWVhr03kIJRPG3ignx2czvFOY=; b=vNG14tpAoNOfR4
	mtdgZGKDqbHcu641UZqUWefvKJwHmoWxKrDkZL2odf/DPRZgp195q9UsDI/lkQwZNyFzpvJdN2p0e
	4gxmpZ1GRN6qHhhj4YYM7NfBT20P7K1E7gv7lJnXrBtGEpk2yDJUF878HR9bGegWyQNNV5hPznVZB
	SRsLEWYQma2iRBL75NW6vbHIw3y199hBoHm8nCGlNgy1FXpPOx7mmj1UjaeS4LUbohcjqF+6k1VzT
	XzuKfQDK1a2YkTs/+VqBGlvuk2KzF7HajbXWONObdyGw2jkjBhi/ibL6lGiTA7Z5Rs/XocUEPkOZL
	icRODSFnYlwFScGSjAkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXIyU-00G3aJ-2e; Thu, 24 Mar 2022 08:37:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXIyR-00G3ZU-Jr; Thu, 24 Mar 2022 08:37:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so4041515plo.0;
 Thu, 24 Mar 2022 01:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXhYQHS4VNqf/GV/cJxxnwtzAOHEaduwd81EzKtbsnI=;
 b=plSM3VwYch6XnDt4M+ew5Jpe3OJZ6zJCswrbKrS9FmEM0Zb8/LmCvz9x2sEqfvhWWO
 JPTMiRVUDSeL164vpn19/N2W56HYNrEbV5rWuaL25HxDHQS2bkmZzMNbp1CD+UujJ8an
 4VtioyKhu5fi8LbZKbuWXuPviEJcCxQnyghYmIHIMfjaa4Kuav6hQgo4hlJRCEPVQHGh
 RZhQ1YA/BEzGiLGsiD2k38v0CBHl7gGTccZi321t9mF4ZEfsE6RBzWmI9E1/2paH7HML
 zWUWNX6glxtg3UHpm7lUz46qdgrkOEYzqn6f9uQjkFYLeYWl5ZLjICQ8UK/nHfQxvIN1
 s8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IXhYQHS4VNqf/GV/cJxxnwtzAOHEaduwd81EzKtbsnI=;
 b=c56bz6iDVbGAaxShSg0pPsqS3XnjAXc/OVJBWnsy+B+M4HhMgNgc2ElcTClKdxFeSh
 UEcxOsIcvi2wOOTnD0GIYUNFIlpkVTHiX31u9S6gX1EnY455JvVpmldhbknrgEN5fulJ
 VwK5Opccg5o9pjIVBq1pHmzzjl1grWVKRo5+f7hNnajNY3WUGvoZBBgA3vUKPrEqjOEJ
 k30ML/UKb/ffNAt3iD+j/w1v1P+yYzEIgqGXLwxcOFHuhEATZAEmQNexeGc+pfGBzqeQ
 lF3ZkC191JUwaem2oHuwfHzKOf36RvvFuglJbhItVhA9q8jo/mUArFpZCTDZ38EwPx3a
 S05Q==
X-Gm-Message-State: AOAM533WPeaCKqTwajzOIqYmvQzq9uFsY24TjS/ZWv3GukC8+a5u67kM
 3jcAKij7cGK8DGW85UOWod4=
X-Google-Smtp-Source: ABdhPJyzShKJ4vQLUuiEeWac72aMhLVYjSSrsrD7Vm+92vH+ZI7xaWjZIOtvrtINE3EiKAW5oDFf3g==
X-Received: by 2002:a17:902:f646:b0:151:d5b1:cbb4 with SMTP id
 m6-20020a170902f64600b00151d5b1cbb4mr4605810plg.150.1648111057790; 
 Thu, 24 Mar 2022 01:37:37 -0700 (PDT)
Received: from slim.das-security.cn ([103.84.139.53])
 by smtp.gmail.com with ESMTPSA id
 z9-20020a63b909000000b003823389e47csm1881046pge.9.2022.03.24.01.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 01:37:37 -0700 (PDT)
From: Hangyu Hua <hbh25y@gmail.com>
To: jacob-chen@iotwrt.com, ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
 heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hangyu Hua <hbh25y@gmail.com>
Subject: [PATCH] media: rga: fix possible memory leak in rga_probe
Date: Thu, 24 Mar 2022 16:37:24 +0800
Message-Id: <20220324083724.42654-1-hbh25y@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_013739_675890_E6AC39B3 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

rga->m2m_dev needs to be freed when rga_probe fails.

Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
---
 drivers/media/platform/rockchip/rga/rga.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 4de5e8d2b261..c2ce4fdcdb7f 100644
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
