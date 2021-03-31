Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA3BC43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF6816100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF6816100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YKADwqyrhkuHKgULwL/4GeyHDB8zia2ExvsbT5di3O0=; b=oeutOgrQQrGHhNUrZnsAlV0FS
	UgnlRcYCsRBefwTSu+rXWbvsneGomrJlpI4Y1A4gvx8OsRwHfRmDftePv1tEbfZdYG5Hg6J/oO010
	KudynOd5YG2YTrjGcr9FaMFinlWOq77V9DHJuYD2877UQnYACRvjBO9XAaC8ThUc8kThWjo8UEBHe
	luItFZdJavzgpILSbaYhcXE0JLVCXB3muY0p1iBcQFR4DmUsO0ruEv0WFLJ/JUJKT7mGfi4gH9neO
	kg16i2CzVrzwbIRN/mVGB/8xmDKpVJjOTfR+Jo8nCFFSPI5U1oVAOJSpbpx+zl7DglX69Rpc1VtxT
	rZrWd5pkA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lReks-007Cau-FL; Wed, 31 Mar 2021 17:35:46 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekg-007CWE-O1
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so1543004wml.2
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J9QCFckIBAkkMW1HuLQ0Z2D0zukJHxh0rMMA4ARv74o=;
 b=f7R36IW85JWA3JM042Skzgg63r58U6OiRJmQQL27JFIs4cRGODXhJfXNzD4sR8i1uI
 I7YT2w1oS7c5gYWglNWdHY43r2LiMDwS4xe7bJottqtAmbwNSlassjVBYxHwjwstxi+j
 C560wdT4Ksq7xUP6FIKD6W5ktb9QWn4kiJC4PS6Jn0gVunUphGGI2iyZVniPbVBlI8ki
 cpJTDRN+HwRAocWtNeCCEP+vBbgn0t+RcaAvfdx2r5m+DO/7lV9+OMc9UWdC+gepF+7t
 wZeTtLFi6CZ2b1ungtOpxJQSfHppxZoefa8rIV7uw1QKJPb+LqalLvYx0w0LVHHDbUAh
 QTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J9QCFckIBAkkMW1HuLQ0Z2D0zukJHxh0rMMA4ARv74o=;
 b=jnSAW7wEdkLv3hSvw/giAK3gr/FVwK8rEu2ylgIKnUtIB49Cw7MDKd0usDBQ43Pm7S
 XPVi0s3FvIOxKl5IyhMSdl8RLnRgGvWNWGLr9ZCM63f3Un2n0DVui0uPzi8DGar9ypF8
 LeCLHSvHLbVSRyjLHY0CIyuAOduDInS8Y8MxmA1thdSyHDEEIq8Z3ap5oALgkhX4ffBv
 WGYFqhyV5eOZTqh6eNw+tbp9abTQh+zWJTn3aj/aZbWmeiNBry9+AaZlcKWn+oaBSXyf
 qgSERDm7SfzTD1Q+tMuX7wREDmI6ar6agco6IFkh0E6iSgxuJTU5oDVzHtm2F+NrDMxB
 hbng==
X-Gm-Message-State: AOAM530r/8hdQYVHraTEOY/9LxWJ1UyQuMVI7JYOGI5CucuGq+w8tc+3
 zD4oxIMvNYZnWnI6qFtMedA=
X-Google-Smtp-Source: ABdhPJwLSOnWotXARo97qgnF3BxfFU0WQJclwokJkmXaXHWELQ/+b91woIYyzgHcow8388aMYut9kg==
X-Received: by 2002:a05:600c:3515:: with SMTP id
 h21mr4194328wmq.9.1617212134195; 
 Wed, 31 Mar 2021 10:35:34 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:33 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 6/9] media: hantro: add fallback handling for single irq/clk
Date: Wed, 31 Mar 2021 18:35:17 +0100
Message-Id: <20210331173520.184191-7-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183536_259820_C299D638 
X-CRM114-Status: GOOD (  17.95  )
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

This is handled:
 - clk - implicitly - ultimately we'll call of_clk_get_hw(..., 0, NULL
   which will get the first clock from the pmc
 - irq - explicitly - platform_get_irq(..., 0)

To gracefully handle potential bugs, add respective WARN_ON() if we're
having more than one irq/clk, yet lacking the respective names.

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Suggested-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v3
 - New patch
---
 drivers/staging/media/hantro/hantro_drv.c | 24 +++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index e5f200e64993..d1294eb9cd07 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -752,8 +752,16 @@ static int hantro_probe(struct platform_device *pdev)
 	if (!vpu->clocks)
 		return -ENOMEM;
 
-	for (i = 0; i < vpu->variant->num_clocks; i++)
+	for (i = 0; i < vpu->variant->num_clocks; i++) {
 		vpu->clocks[i].id = vpu->variant->clk_names[i];
+
+		/*
+		 * Warn and refuse to load if the driver has multiple clocks,
+		 * yet they are lacking the respective names.
+		 */
+		if (WARN_ON(!vpu->variant->clk_names[i] && i))
+			return -ENXIO;
+	}
 	ret = devm_clk_bulk_get(&pdev->dev, vpu->variant->num_clocks,
 				vpu->clocks);
 	if (ret)
@@ -791,7 +799,19 @@ static int hantro_probe(struct platform_device *pdev)
 		if (!vpu->variant->irqs[i].handler)
 			continue;
 
-		irq = platform_get_irq_byname(vpu->pdev, irq_name);
+		/*
+		 * If the driver has a single IRQ, chances are there will be no
+		 * actual name in the DT bindings.
+		 */
+		if (!irq_name) {
+			if (WARN_ON(i))
+				return -ENXIO;
+
+			irq_name = "default";
+			irq = platform_get_irq(vpu->pdev, 0);
+		} else {
+			irq = platform_get_irq_byname(vpu->pdev, irq_name);
+		}
 		if (irq <= 0)
 			return -ENXIO;
 
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
