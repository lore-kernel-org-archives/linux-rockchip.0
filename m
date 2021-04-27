Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE2FDC43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:19:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97877613C3
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 10:19:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97877613C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uYhhwvdzAHsd1sxiMTRQPeg++8Pl9jgPFWj73GiLEqE=; b=RqXEOvAvCl4dcqxZ8lG24Xl/n
	bbix9wZa0zMXTuIdM2sQ9MLtn1q39gsl5Q38hEihcz9Iu6N5uWksY7ECuMQPSVngnvZjZaRDk7BqN
	DWEpX2b6cE5pPoPFUH1UZ27g1YewxmsDjwYJ+6yJ26Q+33OEJ/NeIjHJ7E30XvPRF+7ONTO75Ckaj
	Lwq7dYhK0xsWGcWGOuQZzQugr6OdwQ/MyUcJdWlH8hSjWya1Db9rMmynralXhJ2Bnw6SzealY/p4C
	nnfZW5MQNrkxRlWqijzGjkzc79qmaGyJQMq2Lq2bqiNL5QxPKhqCW1e5yVSaPd6uv3W9ej9FgQFXa
	MWaM43nPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbKon-001LBK-JE; Tue, 27 Apr 2021 10:19:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbKjF-001JBm-Ha; Tue, 27 Apr 2021 10:14:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A85186194C;
 Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518433;
 bh=rChg/pXG2Qjbehywcb/+z5hE6+LFH66GvNnoCtLFEBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XSkxcPymxCcHvHCHnPGNTKlIe7N/iWkE12x5+iF06VhEniD4QeFLHL9o7KnQB+6gf
 z4w6rnmCHtOLpZfpsniFLxW1j67cKbiF5B3xZQMPX5VM+R6ZNBmTJnvUqrk+yUC9KL
 25AEapb+FpzGnfeGIkYNUyaLx/9e0zpGHp6v2p2bMvObUY8EyraseE1M4pdSdy7Bxk
 drk2/1vsmSUype/gw8qJUaMh17jCJiAZmGkIge8RsuRJs+WJy4bkTwPUIlUOWMEMLf
 Nyxv9LZ/Zaq1kI+6vFlRV9c7q7XiWJWFVt3MBptI/LPv1d3x9yScwa3SsWg2HzjRab
 T5IhMmxNp2Uag==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKj1-000j7y-Sx; Tue, 27 Apr 2021 12:13:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 70/79] media: rkisp1: use pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:13:37 +0200
Message-Id: <ba62fb97e435003c2eb2949fffa450764772db8f.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_111407_804146_49E31D62 
X-CRM114-Status: GOOD (  10.41  )
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
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 5f6c9d1623e4..3730376897d9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1003,9 +1003,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	if (ret)
 		goto err_pipeline_stop;
 
-	ret = pm_runtime_get_sync(cap->rkisp1->dev);
+	ret = pm_runtime_resume_and_get(cap->rkisp1->dev);
 	if (ret < 0) {
-		pm_runtime_put_noidle(cap->rkisp1->dev);
 		dev_err(cap->rkisp1->dev, "power up failed %d\n", ret);
 		goto err_destroy_dummy;
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
