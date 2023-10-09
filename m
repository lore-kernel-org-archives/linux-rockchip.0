Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F985CD6114
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 17:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMt9Mi5TNpv/F4ZglICGH+B9ZPbJDltvVjO7xRVFvuo=; b=zBzbaKOf8sJlAV
	2zPU/DAWYcAPCjZskJCi8vI84osjkUavsL/zzFgGAnG9U56jduHmRXE82AsiHedeHCWTnJmWt73tf
	I6yVqSJg2b07W9h5KyyY7g6YaR4fu6BokSKIiJcpYN6aiH/rCb2xlIG/FWx4N2o43gGjSGSvdPu5x
	G1oAeMJA/cuG7tQIbxdDM/WxnaC0DEBKJvXHOfLJIJ2oBzmuqoSnBLQhgqyfaNdHgcZfhT0kZEU0h
	Av+n5C1s5Git8BS9dkLT/VUjorLEO2JscBp2v90ctR6GxujtYtVd88aG+qQrxepCmA++hbGKAVIOx
	fBFDgfjtuP4Ko9nut0qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7q-00BJ3G-2Y;
	Mon, 09 Oct 2023 17:33:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7l-00BIyH-0d;
	Mon, 09 Oct 2023 17:33:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AACD261253;
	Mon,  9 Oct 2023 17:32:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8964C433C7;
	Mon,  9 Oct 2023 17:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696872776;
	bh=bD811IgL0XahLtC2Pif9I+JwkjBeOZFPqh5qFzCRf2c=;
	h=From:To:Cc:Subject:Date:From;
	b=qVg2iUt6vREdwmAre4ElvI0A0VeTwh07kCIrc+4DaZQONQosglU55G6RQrMNPBggN
	 GPdlmJu+aO00tJ3ZkQ3XTlvpf+WubIkbBVjzYRa/ZvN4/JdM5sFu6jl5syjrpPLAVG
	 2NhfCMWFBij149icxxGt8QCoYiahbif3R1M0c7hhBygnGEFneb1sJe/SbZ7CcX53qZ
	 U7V7ExfjKeqMAOQN5zs7h1Pr9JnpRapgLbxgzsPVMAG+2vVzd58eOgM9mZ5yhbk9Pz
	 lhlmqiqU7Ot1ANmlZvyFElRSFiaFgy7XRSR1WfjxM+WqrtbBSkDQt8BjfnnF8hMlhH
	 2PT5nAr+i/GQA==
Received: (nullmailer pid 2534592 invoked by uid 1000);
	Mon, 09 Oct 2023 17:32:54 -0000
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] pwm: Use device_get_match_data()
Date: Mon,  9 Oct 2023 12:29:16 -0500
Message-ID: <20231009172923.2457844-21-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_103257_337209_FBD0169F 
X-CRM114-Status: GOOD (  11.90  )
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

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pwm/pwm-img.c      | 8 ++------
 drivers/pwm/pwm-rockchip.c | 9 ++-------
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/pwm/pwm-img.c b/drivers/pwm/pwm-img.c
index 326af85888e7..e32b5e8c203d 100644
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
@@ -261,7 +261,6 @@ static int img_pwm_probe(struct platform_device *pdev)
 	u64 val;
 	unsigned long clk_rate;
 	struct img_pwm_chip *imgchip;
-	const struct of_device_id *of_dev_id;
 
 	imgchip = devm_kzalloc(&pdev->dev, sizeof(*imgchip), GFP_KERNEL);
 	if (!imgchip)
@@ -273,10 +272,7 @@ static int img_pwm_probe(struct platform_device *pdev)
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
index 03ee18fb82d5..339165ef1f07 100644
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
 
@@ -297,16 +297,11 @@ MODULE_DEVICE_TABLE(of, rockchip_pwm_dt_ids);
 
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
@@ -345,7 +340,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
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
