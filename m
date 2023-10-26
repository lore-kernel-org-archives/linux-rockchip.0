Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46889C25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 19:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=66k9nMg4o/Fip2I4oYsQKrhAI+32JzIcQwDeTrmcr2o=; b=pHBB+kRpWwDbyU
	Kg3wLauRh9w79+NN3lH/ifUrYmXsPFWXYkiIPQ+M4sk4X1QnpZFhcEmzOvhfpurDIXmVuKVjPmOAi
	ABSFXLiMt+XLY0aY90L+og17GIUn4QL7Px1bXDc2PxxoL40MliUkkJwi+pjaZG2aC52XrDFXixOCg
	CUDaPwRoSgH5ow0hsVSmjaObA3AOs5/ab4Pw5rDfWviT0OqC6hFwoMcbMMpxl7Q4nNV1mCffD3ven
	ysMVfVoeaegai+nNL4dpx8l1rL4XRrN4BydbAK1EKFnxg6a7wftpsnlrIVv85LuMyisYosvMmfeEB
	p2HcCyjm4K5q0V0yWKTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6S0-00F58V-1t;
	Thu, 26 Oct 2023 19:55:28 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw6Rx-00F56v-1L;
	Thu, 26 Oct 2023 19:55:26 +0000
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6cd09f51fe0so716408a34.1;
        Thu, 26 Oct 2023 12:55:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698350120; x=1698954920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9SEmh3Ti6BweKuBsiI0z3j9kO6wl5de7iuUaFpsagQ=;
        b=jJwuNrRAhJlNYUe66KvJ6pIJhU6YnTP0GlCJjitM/fP3z2dwvdwXnIjTQLVxv8kd5X
         8pzKGevXD1+vA+sVf6FiC6BIOtpJU6fkuBHyonuUKYDqWaJFKBKmDlbaoNsSeGb56gOg
         tGwpad1vl/OTChYbo6H2W0GtrTg+kPd9CCjwYq+u8s+bUqTst7FQ0ABuK8+TENUZ/4sw
         qjDjDSpWioUGO6Dk+TZ+eeb2yLYznvkDtxa4SaEEkYdMBx5YLOSbS0UwzGPLO+1LXsIK
         cGR9xazRq9RwPmR4MJ1lE3mu8ondQhhNPYGkwsl9OEeXSxGLntMe97wA0Yp1p1+Poi6/
         Msbg==
X-Gm-Message-State: AOJu0Yxzjh1XYuHq5u99qpoUPvU4fUHsf02jR1ntEHFExj5pC31gIKkE
	g6D0cYqpLcLHdKyWHSlLa6eDKSrHJg==
X-Google-Smtp-Source: AGHT+IGFKWUSjFLRB5b0vYmkzpMNPEPkC3HBf+pN5hkdBt1cX6fzmcK5kAGnnfuiZjJO1Sorv/ZI+Q==
X-Received: by 2002:a05:6830:314c:b0:6b8:9a3a:ea12 with SMTP id c12-20020a056830314c00b006b89a3aea12mr545041ots.12.1698350119860;
        Thu, 26 Oct 2023 12:55:19 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d64-20020a4a5243000000b005737ca61829sm5503oob.13.2023.10.26.12.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 12:55:19 -0700 (PDT)
Received: (nullmailer pid 69534 invoked by uid 1000);
	Thu, 26 Oct 2023 19:55:18 -0000
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2] pwm: Use device_get_match_data()
Date: Thu, 26 Oct 2023 14:54:17 -0500
Message-ID: <20231026195417.68090-2-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_125525_456456_AC1AD75E 
X-CRM114-Status: GOOD (  13.12  )
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

Use preferred device_get_match_data() instead of of_match_device() to
get the driver match data. With this, adjust the includes to explicitly
include the correct headers.

As these drivers only do DT based matching, of_match_device() will never
return NULL if we've gotten to probe(). Therefore, the NULL check and
error returns can be dropped.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Add to commit message about of_match_device() error checking

 drivers/pwm/pwm-img.c      | 8 ++------
 drivers/pwm/pwm-rockchip.c | 9 ++-------
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/pwm/pwm-img.c b/drivers/pwm/pwm-img.c
index 116fa060e302..0d218c0b690e 100644
--- a/drivers/pwm/pwm-img.c
+++ b/drivers/pwm/pwm-img.c
@@ -13,9 +13,9 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/property.h>
 #include <linux/pwm.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
@@ -260,7 +260,6 @@ static int img_pwm_probe(struct platform_device *pdev)
 	u64 val;
 	unsigned long clk_rate;
 	struct img_pwm_chip *imgchip;
-	const struct of_device_id *of_dev_id;
 
 	imgchip = devm_kzalloc(&pdev->dev, sizeof(*imgchip), GFP_KERNEL);
 	if (!imgchip)
@@ -272,10 +271,7 @@ static int img_pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(imgchip->base))
 		return PTR_ERR(imgchip->base);
 
-	of_dev_id = of_match_device(img_pwm_of_match, &pdev->dev);
-	if (!of_dev_id)
-		return -ENODEV;
-	imgchip->data = of_dev_id->data;
+	imgchip->data = device_get_match_data(&pdev->dev);
 
 	imgchip->periph_regs = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
 							       "img,cr-periph");
diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index cce4381e188a..a7c647e37837 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -10,8 +10,8 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/pwm.h>
 #include <linux/time.h>
 
@@ -296,16 +296,11 @@ MODULE_DEVICE_TABLE(of, rockchip_pwm_dt_ids);
 
 static int rockchip_pwm_probe(struct platform_device *pdev)
 {
-	const struct of_device_id *id;
 	struct rockchip_pwm_chip *pc;
 	u32 enable_conf, ctrl;
 	bool enabled;
 	int ret, count;
 
-	id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
-	if (!id)
-		return -EINVAL;
-
 	pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 	if (!pc)
 		return -ENOMEM;
@@ -344,7 +339,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, pc);
 
-	pc->data = id->data;
+	pc->data = device_get_match_data(&pdev->dev);
 	pc->chip.dev = &pdev->dev;
 	pc->chip.ops = &rockchip_pwm_ops;
 	pc->chip.npwm = 1;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
