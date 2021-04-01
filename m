Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB23DC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E63361243
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E63361243
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rnwskfsXLOV1v3DJhJ0QMpj751n+y7hNGPGJ/GvwEk=; b=gOr5aLU6MNEzS6CgjZ39Qe/+P
	NnQG0jq30cced/Wtje7vLAeLGJT4bjS6uGvunc99dH1rIzEmXHnewTEHIdZyMGaP5VhApaYK/79Nt
	z6BtX+koYiMucuBsx/O4Exquu0Sjx5Rym2oMx7c4bL02zWpmCcUUAVHTqZhlWN1UW30fEMf2f6RvP
	b0BAR3VD3PiyFepJJGc7WjfFuROSoVw67c4WkCYHgBKmHq0uNfEEc+d/tPdIhAP9bKBWg1XbAbFQ6
	3WGKb9h/WAaqO3EMzBNGYZKGqKHKyfvRkNo2spAm6Zd+dz9NTei6mdS4VkBEXFICT5ejyyytzWQgv
	HJMrV1EFQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyYD-009sic-El; Thu, 01 Apr 2021 14:44:01 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyY4-009sam-7i
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:55 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a7so3277006ejs.3
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yig8wQrnDjVWOaduCo+gf0ULa0HF9/VzKj4q+s3NOg0=;
 b=iA+jBF2AtdizxHuy6c1WTy36heCgpdHTHOf9wlsxGeKwSk0QQNSASMsUO7mCWDk787
 8JpJFk+POrnc74pOlD/EjNy+B84xWf1phARmPuKUTqd4/nkgM096fBJXPHc+wU4OKmgd
 6eOQMdiThCGfRHwcso19u/zOpf/S83/cwVKvly6BldkWSvJqzbpfuPUuW3UAcamoemOP
 5TH1Q6BMRcE6Buf2ZPqrqiJLioBl4liOwcSa++y93XJG1it1yKDcYMKK9d4eVHHfRqpw
 RlZgg74OEdMoFuePFswqUDrdKJPG3chO38RIJPVkBmvNnDbPa0yFyMvGXzurr62fUfx2
 p2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yig8wQrnDjVWOaduCo+gf0ULa0HF9/VzKj4q+s3NOg0=;
 b=ARbZkhP8tRC/nHV4c7i5gBB/WCRzgSk3wJBrpj/AfZ2AbaGGnyDYKuCJy0s2s/7AYq
 101W5j3xTzc0TMpKgZJzBWlbxPeO8gm5u3uG+fG3m8Ddv+FE+hBP2E10AmDVQ6sa05zZ
 AOA44/eVHsbhzpRoBWOgHIUCX+CxOk2+rfrTUkwsrmxGJqlpOJP/kb4nWX0K16vJAhlF
 EmKvyYBxG9/1/MN1Wh5f2w9rm522RNlo21q0Fh+o6kH4HK1fTwi7JSV/ShNQbt5GCICN
 5sJTCtc6gHVgOC0QNLWbhR+H556yINY7UcFz2jPEJCkNGXafw7kOWVQgzHBfOKx+Ygyx
 yg8g==
X-Gm-Message-State: AOAM5335GsTq8JrmksJLLfQ9Btd2IqLsc0YHhLlqd7GMDGr5Ry+EmRsj
 FQ8DgRmZlsw0kUt7C4DFdFE=
X-Google-Smtp-Source: ABdhPJzFfoNll0q3Uy/syhJ58IU7DBgEtCbBIxOU1O6lmNSDG0VhWTV+qaqNKijHJgm81V4lUHRLOQ==
X-Received: by 2002:a17:906:130c:: with SMTP id
 w12mr9410734ejb.253.1617288231693; 
 Thu, 01 Apr 2021 07:43:51 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:51 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 6/9] media: hantro: add fallback handling for single irq/clk
Date: Thu,  1 Apr 2021 15:43:33 +0100
Message-Id: <20210401144336.2495479-7-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154352_374780_B6FE0964 
X-CRM114-Status: GOOD (  16.81  )
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

From: Emil Velikov <emil.velikov@collabora.com>

Currently the driver expects that each irq/clk will have a name
specified.

A valid point was raised by the DT maintainers - when there is a single
interrupt line or clock - the names are not needed.

Keep the names within the drivers themselves, but don't use them when
only a single entry exists. Instead use:
 - num_clk == 1 - devm_clk_get(..., NULL)
 - num_irq == 1 - platform_get_irq(..., 0)

Suggested-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v3
 - New patch

v4
 - Drop WARN_ON, guard on num_{irq,clk} instead (Eze)
 - Drop Nicolas ack (Eze)
---
 drivers/staging/media/hantro/hantro_drv.c | 37 ++++++++++++++++++-----
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index e5f200e64993..a51700a9e3b7 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -752,12 +752,23 @@ static int hantro_probe(struct platform_device *pdev)
 	if (!vpu->clocks)
 		return -ENOMEM;
 
-	for (i = 0; i < vpu->variant->num_clocks; i++)
-		vpu->clocks[i].id = vpu->variant->clk_names[i];
-	ret = devm_clk_bulk_get(&pdev->dev, vpu->variant->num_clocks,
-				vpu->clocks);
-	if (ret)
-		return ret;
+	if (vpu->variant->num_clocks > 1) {
+		for (i = 0; i < vpu->variant->num_clocks; i++)
+			vpu->clocks[i].id = vpu->variant->clk_names[i];
+
+		ret = devm_clk_bulk_get(&pdev->dev, vpu->variant->num_clocks,
+					vpu->clocks);
+		if (ret)
+			return ret;
+	} else {
+		/*
+		 * If the driver has a single clk, chances are there will be no
+		 * actual name in the DT bindings.
+		 */
+		vpu->clocks[0].clk = devm_clk_get(&pdev->dev, NULL);
+		if (IS_ERR(vpu->clocks))
+			return PTR_ERR(vpu->clocks);
+	}
 
 	num_bases = vpu->variant->num_regs ?: 1;
 	vpu->reg_bases = devm_kcalloc(&pdev->dev, num_bases,
@@ -785,13 +796,23 @@ static int hantro_probe(struct platform_device *pdev)
 	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
 
 	for (i = 0; i < vpu->variant->num_irqs; i++) {
-		const char *irq_name = vpu->variant->irqs[i].name;
+		const char *irq_name;
 		int irq;
 
 		if (!vpu->variant->irqs[i].handler)
 			continue;
 
-		irq = platform_get_irq_byname(vpu->pdev, irq_name);
+		if (vpu->variant->num_clocks > 1) {
+			irq_name = vpu->variant->irqs[i].name;
+			irq = platform_get_irq_byname(vpu->pdev, irq_name);
+		} else {
+			/*
+			 * If the driver has a single IRQ, chances are there
+			 * will be no actual name in the DT bindings.
+			 */
+			irq_name = "default";
+			irq = platform_get_irq(vpu->pdev, 0);
+		}
 		if (irq <= 0)
 			return -ENXIO;
 
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
