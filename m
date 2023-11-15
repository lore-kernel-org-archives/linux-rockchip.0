Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C311C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 21:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RtCEUSQNDiHOBLnru56r404dmVNbxUz0YNZL1cdOSP4=; b=pRAzBgeA24yvHR
	0hFFb4BUJ7NIBJSbFm1HkXZvQVMkSQ2DJThF7Pb7TvgfJ3GEIPH68yVaoSx4iZUxzNc792y47l15S
	K1TCt/5+nd5vzhryhb5Jl8zKF6Vb+ldicboqteIHODORYpRZk36rxudvsbIEnIsco/VgHltCbm3o+
	ot95ZBDVGpnqkmZ758slbIhtUwhNll29q1IufY439BG6f/9sTYFGrvc97h4m9lcfgp/Afuqci8mJc
	YuYuV1CcL3vo7EF0fO3TFff90UvvDbHaK8hLcGm5owkRhO+/m91ZreN54hbymDCSAWROtPoK23XXo
	y71aEhRBdxw2bMqiCeoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3N0t-001j3f-39;
	Wed, 15 Nov 2023 21:01:31 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3N0q-001j1D-3C;
	Wed, 15 Nov 2023 21:01:30 +0000
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5875e2b27c5so53101eaf.3;
        Wed, 15 Nov 2023 13:01:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700082086; x=1700686886;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K03zmxasEq9FnnjGJz4u1w2YR1+3fOaUQl9N4LzfX7o=;
        b=GKQqW9mT69y9c+T9ML0cZfkm9cj9uC9082tZ7DWw73AxJh3/B1NuscD8jUtZrA1ead
         TTXUbi6zq9mcbpNngr3xHzS1irzQSCvwWfIz3MprEcNqymrhjmu0s64+zyPu/vybk9GK
         sWUUWGFwdsyGAuBCYzrVINps8bNWB3GYZmu7AjAHzJKYIHG45AzCNJSPNhpPPH73EWyN
         camUh5+UEmKydq1falJyyPk+ZwE+De6FRmlruLiXcFsOdAWt3GExJ7dVvewMrtDXlIbR
         xMFYTAxsb00Ca7AAktLWaXca6Gjgx/0BAkfJvOpQw+9QAAok0EAT/cc2tFbp2HLwjA5P
         hqag==
X-Gm-Message-State: AOJu0Yxak3xDMlXoLZV4NJ2LY41k5M9jlvZvTQXbee2yTWr5LqV4BJOg
	4j3Hk/CCrB5/m1930yBT0rYoWc726Q==
X-Google-Smtp-Source: AGHT+IHMGTv0+6qVwF7GC4xCcEfHpb+VL7SmBzNPo8jG4WM3SE4T2Y5RwR9z/bwlw/l/h6yWQYLSGA==
X-Received: by 2002:a4a:7648:0:b0:581:dd3e:dbce with SMTP id w8-20020a4a7648000000b00581dd3edbcemr12906231ooe.0.1700082086640;
        Wed, 15 Nov 2023 13:01:26 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00587947707aasm819964ooj.4.2023.11.15.13.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:01:26 -0800 (PST)
Received: (nullmailer pid 3739323 invoked by uid 1000);
	Wed, 15 Nov 2023 21:01:25 -0000
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [RESEND PATCH] pwm: Use device_get_match_data()
Date: Wed, 15 Nov 2023 15:01:20 -0600
Message-ID: <20231115210121.3738487-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_130129_083375_81E1A5D1 
X-CRM114-Status: GOOD (  12.44  )
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
