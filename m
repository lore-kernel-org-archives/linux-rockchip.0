Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04DC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51AF66146D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:54:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51AF66146D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kepnc7bi2003qSy1/4+eRR/cSV8kRuN+M/SbGY5knt4=; b=l2ERqJYMNNzG4e7cNOP0geaOf
	tBxEDhhC5FBhCKn1shfsrhkyV7RY+oZqqCGve4OWO8wGMdx3OJm6L6dWHLO6ZlyBfSbGDzNBTQV0i
	EO8AHezfyy2fBxisvfQBY+vfYOtr3+lPMVbjB8ZIwnb+QuiWUt4sMLYtHilcqs8DCHwbqwyOlxKyD
	OP9qIAk2PEhLkVydNRlf5GYk2fYAdpWDtQZO9qefoGg8QEK/sVLAkbqDKPo9ngZI+8hzFil2pcaRu
	IibB/9nir/lr2C/ggzA5gVMyAPnlms7YH7/L3B8nVrtimp//qETRJWDRM/aPtnzKgUUzPWhS3AXBW
	fXdiIw27g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laCBa-003BkE-Gv; Sat, 24 Apr 2021 06:54:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2t-003B1A-1m; Sat, 24 Apr 2021 06:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QTB+SlgGD8bAOHDk9/V0cZk64a1afXfWKAnUOFzpif4=; b=bN1flAGiCEaLK2qJNjt9Gy8MDA
 JHMh5RQq/k6IMKylsCdRhbEYYe+r7ldtGmBUTushLqQzP09UO7RARucfcCuco6YsfLfufUtjO7LHv
 hXDRY45JeZrYmIFYDSxHQukOTgbw+uOgUeyqY12dIhEJa5VCGUisE7o9LjxNFX1+mRP9LJoHgro6T
 B7NG7Ba5LdMWKVc/PuHIN772LYAw6ccc4HD0XIdSa0i+MsbC8Su4HnAk6sC+5Jpe9FUSkM8bDB2H1
 MuxWtlq2GPTOWTi0tXO2UaSfqlnNEoK8TlhOY59EJdHUmPNBPvmaCN+6I9S6nwdWbRp7cVnYyKf0X
 jMrpcjAA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC2o-00EsJi-S1; Sat, 24 Apr 2021 06:45:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D7556157E;
 Sat, 24 Apr 2021 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=fa2a2FGqdZmNJgSzuDaYm63kRJBm/KAm+F+LdF2Flv8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hubJqfWD8OECliazbjEYhWPBZOSRrw05HyOZAlE6dGK9YwaAISlP3vdGFO+D9LYoH
 zHAzqZtCofN9Q/MAeCwUFi1cvXh6x4W2VBk7cB6XdrOO/VVUBduLOaz0aLVY5BVemL
 uW7jkF7ltd3OisRsbpZKSWvuvJACwSufWPnTE747HmUGbwiD65nk8E0oJZcR+Cb2Ko
 WrrN84duaUFNGa3KZ71CsI/PcFmRZAgWyxBOr+oX+mkvO8OzJDvozO0Wlr3lqM7CoI
 JhOQAuYCBbOt13KbWte44AI+/9cTrlRGD35RF6rzX9/oSW2YX6Hewk6ox13HMGrpYj
 Gj7fw4Slkr/dg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004Jdx-0b; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 05/78] media: mdk-mdp: fix pm_runtime_get_sync() usage count
Date: Sat, 24 Apr 2021 08:44:15 +0200
Message-Id: <6ff9d0c049f94f38fd0b172fe3a6dbb36ba2b87e.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_234535_013296_F6CC2F68 
X-CRM114-Status: GOOD (  11.08  )
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

The pm_runtime_get_sync() internally increments the
dev->power.usage_count without decrementing it, even on errors.
replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

While here, check if the PM runtime was caught during
chipset probing time.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

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
