Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0465EC4320A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 19:04:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C73C561159
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 19:04:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C73C561159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wA7I++g8lnyJZJCPlZWJ9Snbmly1amEY2F4dyLfq2lg=; b=QObMKb64RvUiKW
	1qto0H1os5eG++/X4ypuAYKAVK4A9ErP+8rUz2HT0FERK63HKBit0jvgvJj9wXzjv2rjDsrNatzRd
	5Li4gtsNbz2zpr0KwfQmb424lD9GTTgszUAMNwOzwbBHPdQANShOCxB6ud5DbNJgM3ow4TEFJ5YIc
	z+rP1r3NGxXA13B1KYUf/8f1cArXKy6I9K238KMCbeonVThEn9COtMBWqGUSkAxk2IYAhpbBm+D5b
	QPKj7WiXjODry6bCIBWbg7hH/m/aI0wCBDOyO0mNnUsb4pWiyRV7/P47Gs+jy5FlL6jhOf8GxfKws
	Nsp1qsQ53Hl6M9rBZ2bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBifM-00Ac0y-IR; Thu, 05 Aug 2021 19:04:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBifJ-00AbxX-Fo
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 19:04:26 +0000
Received: by mail-wm1-x336.google.com with SMTP id k4so4011332wms.3
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 12:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oTE2yvgvW8glea98LSY/ffZ1b6poaqIV5ugiE4I/bJE=;
 b=lNNGt2hJtFLKaKfbRjcNF8QqPU6aHLbcEsKqIcUgkcBGaXt7+2Gc3JP83833YrWOIv
 7jlaYW6QhcblMUqhSdwb6y+Myp+VyNclNkEOqYgO2WYj/LLZvzv79PPIfufk5L6ZVNnS
 MSdFq1BZ3wz0ebR5WbqMUEcNA4+zP/6OV7D3dSQtXmcb6K5WlGGX0qpHJLHJX3N7sQOX
 gIJt3pV2aV/+tmX7rD0tIWBiz/gSxp/mANKC65ED/b/DurNYsao+j0pGMqqf1/n1sZY/
 Z4fa5X+QBDUhRVtgcpPrIjj2Aia7Q6ubvHXo36kvFKm+El3DLIOoGtnqcR3WsK3Mopk1
 2uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oTE2yvgvW8glea98LSY/ffZ1b6poaqIV5ugiE4I/bJE=;
 b=qxxAyl6ew1MVeNmQ3PHkoToCxPyyrlre22VolkiCKL2nFKcT+npO4w++8jbuzXKwTn
 5egqYhrBHYSxWJCXnwWXl/RpUBTpvua/UFpCr+FRLPaKnoAZAas7iXNTJuFdy2OiZfcu
 sywCOXkZYtMwMgkCXC32B5nSPcPVB4Dx8ZDFInkfIAy1MwaG624cN4La+/zc04rl2zgu
 QMb/BL3f2R2Kzobtn/b8XR98y16Xr2b1nw0I6NzFeRIt7QVaj3cJ+Uxz3g4HCex2b1sp
 whBaySktUrdVXW8UA0FwWbXg9VNhTUXAutClbh9ozql7CwYAfol2/vA1eqIMMAg6lxzC
 s54Q==
X-Gm-Message-State: AOAM530LX3a3tKmlJTW9apLa6zs5DOGt465JctM1F9D1DtAimXiKQHIl
 JrGEjjNYExVG3GR/lVQcgAs=
X-Google-Smtp-Source: ABdhPJwkC/YeGz/Dyo9+y84CiGmImn7JArYQpWwTejOvMX6UfS/2NsjkB1EpQntC8fZ8bP7wy08HGQ==
X-Received: by 2002:a1c:2b04:: with SMTP id r4mr6508448wmr.168.1628190263065; 
 Thu, 05 Aug 2021 12:04:23 -0700 (PDT)
Received: from kista.localdomain (cpe-86-58-46-198.static.triera.net.
 [86.58.46.198])
 by smtp.gmail.com with ESMTPSA id q7sm6329781wmq.33.2021.08.05.12.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 12:04:22 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@collabora.com,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 emil.velikov@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH] media: hantro: Fix check for single irq
Date: Thu,  5 Aug 2021 21:04:16 +0200
Message-Id: <20210805190416.332563-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_120425_611388_2FF9EC32 
X-CRM114-Status: GOOD (  12.67  )
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

Some cores use only one interrupt and in such case interrupt name in DT
is not needed. Driver supposedly accounted that, but due to the wrong
field check it never worked. Fix that.

Fixes: 18d6c8b7b4c9 ("media: hantro: add fallback handling for single irq/clk")
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 8a2edd67f2c6..20e508158871 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -919,7 +919,7 @@ static int hantro_probe(struct platform_device *pdev)
 		if (!vpu->variant->irqs[i].handler)
 			continue;
 
-		if (vpu->variant->num_clocks > 1) {
+		if (vpu->variant->num_irqs > 1) {
 			irq_name = vpu->variant->irqs[i].name;
 			irq = platform_get_irq_byname(vpu->pdev, irq_name);
 		} else {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
