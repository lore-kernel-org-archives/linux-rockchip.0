Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 421C2C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59eVpTO72QB5EEPPmk4gGW/ErENpx2zIXhSPf6144yg=; b=QcIu5J1h6EoZH0
	pcEqTXs6c9F205fMkktmIwCVvQdcPh8eQ8eDfFRZ/FPaqR4EFKt4NYGqZknu7Ev0eCFqVcIqxUf99
	0Tqc70R2e1TzBtrZc+l6zUG3RF0gJ/YKpKFpVVw3pdPHGIM3rcmbu9OEuPkH80fPrp2LgBiQSXNPD
	9vGhqdyvj0ddbiWLxhGWH2bocbrMaHLRYR3yiIddW6mNprAjHctw1xEXw3mSQU/35dRb20YyxQGrJ
	PqfikbNjxvKCqCwsh5aWUQ78J9J+d7TjrZ4swKl0R6JXomBiz8Ayd4o4rE3K/Ier01NVjPbJwXSgs
	yISkZ3itNYolKBShwoBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTqV-0000000GmPI-21gc;
	Fri, 23 Aug 2024 12:56:51 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlU-0000000GlC3-1DQX
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:41 +0000
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53341decf9aso160279e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417498; x=1725022298; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6bKAkGedL7UMMYs8TWEGDN1lbQV1wuJfp8Y9Forb6E=;
        b=y3pA1GEWliKRrT2HmDugX2uhIwSPe+2xwbOLb6F1RcFjwvGLCTzWuSPKE8uIvRxLt7
         zw7RsIA0GEaAHxY7rgwj2p+vFGFfTHR96o9BMGKiM7COPSSvY9M45Hk6zFDOGa5P2E6/
         4kyR6yq+kBmHA5KrtkfwRC8ic74337BQ7KUBuToKCfcuwnffdyR17hU0fslpaYrGsqB5
         cq7MykCX9fKmbAqlyKi0mnTCJnF4+MHx/9Cm9FIrcYbpCsnSh4JoWa+H/7cBWpHw7BZi
         mfUYNHalLEqdHEoXq92+XlIHQB8Sg6sNzwA8urC2KrF7jnzpE7njzF0mzLH7NRmqP7Ur
         4jjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417498; x=1725022298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6bKAkGedL7UMMYs8TWEGDN1lbQV1wuJfp8Y9Forb6E=;
        b=Zj427WOvTgcJwGJwg31XxE7m7wSYQevlCWXWkU66PiApM0B4ARaVyGyWSoR7gCTJBv
         0AWrshUGAqH5s8RC4CSTgZ+OSKd23x230uU/tt6a/LmWFOvICPst0Lb8xpa1oQvvNjh5
         WuB7Wbex6iHjTaINGc9lwQFjzRtp9ta042FG9jaHpTDrUXD1xQRQsyCxiogZd/MyDAUp
         iEL9dJXk9t8k8tIEO/K88t9Ks2Ox2TCmdWE9YJGEQSmM1CF7AR/ptYZtCIZ0NjII5RLE
         7MM64E1LXxGmH36OGCtdLj8yrh6MnUhdQ+q6I6018bD6RMmoB+IBhVjWsPmZMzbkCZZV
         fZ3A==
X-Forwarded-Encrypted: i=1; AJvYcCUsOa/RZGrUUq6h6to9GF2yYhFMqQKEuopPLcDLH4EOQ7RJV1IXXxbk6tu2vqfcmxMJ8aRGHvXXC75wzDBidQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzgp4aNcUn3kfNz5SH3CMJGGyL1OkzYFU3YvoD+bht8KxA0cZtO
	2USPLs3XfRQJsIRhonSpV8vNDmTwDrCxt5gnl/EYrZdA2JXg7T3C4FETQ4D+/3Q=
X-Google-Smtp-Source: AGHT+IGQmqwRaOXufNemZtZqwlmIa7+KcLUj1o3M308GEk2HOgVnw4mfufLO7YIOaCdPCj+V+eeimA==
X-Received: by 2002:a05:6512:33c9:b0:530:bc24:bfc4 with SMTP id 2adb3069b0e04-53438755889mr818571e87.2.1724417497587;
        Fri, 23 Aug 2024 05:51:37 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:10 +0200
Subject: [PATCH 06/10] pmdomain: qcom: cpr: Simplify locking with guard()
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-6-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4641;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Pp7V41UldIPg+yPXiDv46w4z040CH5vPeQYOKc3e1as=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXJ5m1RFokfXeXEQENi1lr7W2roZVhJaKfQX
 1F8cz1XW5+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFyQAKCRDBN2bmhouD
 169zEACSSjVVSneT4X8U1tvTYXw701X4Mt1YURXDVQNyPbd6io40jz4l1/14mYHZ2j1fswl2hTq
 RtjN9KVwmsWanbQXXlvy0ZiSGuJ26JWy9Vj4glcvOVop1hwQprfbyOcaOtPNsWd57giUKJEO1is
 Wmlun0Avn/UlvboOwSL6B+9AAOSzpLaVZ6eZ3ZeTbCO2N6ka0fAENGjTxagtjRU3ATJ8upBZp2R
 eoCztmFI9Tgee94KIgq0AXmtq+WMux/ucOSOZC3DonweLKRHS+AvNvUY/zM501AzMOWkugxcUHV
 FrmvRpIPNKwOozUrOQoHLQOLweqjqwkGISUtz/1fd+atji+ILsFSC1Ln2Aeju3scrI38H5HJIpA
 q7pbHMOaTo/GU9WpCpN/i2zCIayzqZR3YSpsP7YgAEjdy1c5PLq9Z8RcAdN1Ek2CxOtQ0Rky+AD
 424BEbR7Bs5R7F8CBu0immxmykmrDysRH52t+k2rNbBBZsQH6gM/jClacAWW9SvjO6K0VykeT7y
 FbLdktwp6Ywm04/cR03o7MdE/gQc0ka7bMCSvBr3evAY+USmIJK26gfzIYZlVMO4+mzMNtd4eEO
 aLo6TNXXmB+qJkx3c6XvG07O2kFWyLoCF0iF7C2eyVf/eRqmLj02qGBVqlxgkpCqlMiibkgS3HB
 E2+Bz1fLpBPV4gg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055140_341236_2CEE785B 
X-CRM114-Status: GOOD (  16.98  )
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

Simplify error handling (less gotos) over locks with guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/qcom/cpr.c | 57 ++++++++++++++++++---------------------------
 1 file changed, 23 insertions(+), 34 deletions(-)

diff --git a/drivers/pmdomain/qcom/cpr.c b/drivers/pmdomain/qcom/cpr.c
index 1bef89712188..a616a3ec3d46 100644
--- a/drivers/pmdomain/qcom/cpr.c
+++ b/drivers/pmdomain/qcom/cpr.c
@@ -4,6 +4,7 @@
  * Copyright (c) 2019, Linaro Limited
  */
 
+#include <linux/cleanup.h>
 #include <linux/module.h>
 #include <linux/err.h>
 #include <linux/debugfs.h>
@@ -747,9 +748,9 @@ static int cpr_set_performance_state(struct generic_pm_domain *domain,
 	struct cpr_drv *drv = container_of(domain, struct cpr_drv, pd);
 	struct corner *corner, *end;
 	enum voltage_change_dir dir;
-	int ret = 0, new_uV;
+	int ret, new_uV;
 
-	mutex_lock(&drv->lock);
+	guard(mutex)(&drv->lock);
 
 	dev_dbg(drv->dev, "%s: setting perf state: %u (prev state: %u)\n",
 		__func__, state, cpr_get_cur_perf_state(drv));
@@ -760,10 +761,8 @@ static int cpr_set_performance_state(struct generic_pm_domain *domain,
 	 */
 	corner = drv->corners + state - 1;
 	end = &drv->corners[drv->num_corners - 1];
-	if (corner > end || corner < drv->corners) {
-		ret = -EINVAL;
-		goto unlock;
-	}
+	if (corner > end || corner < drv->corners)
+		return -EINVAL;
 
 	/* Determine direction */
 	if (drv->corner > corner)
@@ -783,7 +782,7 @@ static int cpr_set_performance_state(struct generic_pm_domain *domain,
 
 	ret = cpr_scale_voltage(drv, corner, new_uV, dir);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	if (cpr_is_allowed(drv)) {
 		cpr_irq_clr(drv);
@@ -794,10 +793,7 @@ static int cpr_set_performance_state(struct generic_pm_domain *domain,
 
 	drv->corner = corner;
 
-unlock:
-	mutex_unlock(&drv->lock);
-
-	return ret;
+	return 0;
 }
 
 static int
@@ -1443,9 +1439,9 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 {
 	struct cpr_drv *drv = container_of(domain, struct cpr_drv, pd);
 	const struct acc_desc *acc_desc = drv->acc_desc;
-	int ret = 0;
+	int ret;
 
-	mutex_lock(&drv->lock);
+	guard(mutex)(&drv->lock);
 
 	dev_dbg(drv->dev, "attach callback for: %s\n", dev_name(dev));
 
@@ -1457,7 +1453,7 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 	 * additional initialization when further CPUs get attached.
 	 */
 	if (drv->attached_cpu_dev)
-		goto unlock;
+		return 0;
 
 	/*
 	 * cpr_scale_voltage() requires the direction (if we are changing
@@ -1469,11 +1465,10 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 	 * the first time cpr_set_performance_state() is called.
 	 */
 	drv->cpu_clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(drv->cpu_clk)) {
-		ret = dev_err_probe(drv->dev, PTR_ERR(drv->cpu_clk),
-				    "could not get cpu clk\n");
-		goto unlock;
-	}
+	if (IS_ERR(drv->cpu_clk))
+		return dev_err_probe(drv->dev, PTR_ERR(drv->cpu_clk),
+				     "could not get cpu clk\n");
+
 	drv->attached_cpu_dev = dev;
 
 	dev_dbg(drv->dev, "using cpu clk from: %s\n",
@@ -1490,42 +1485,39 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 	ret = dev_pm_opp_get_opp_count(&drv->pd.dev);
 	if (ret < 0) {
 		dev_err(drv->dev, "could not get OPP count\n");
-		goto unlock;
+		return ret;
 	}
 	drv->num_corners = ret;
 
 	if (drv->num_corners < 2) {
 		dev_err(drv->dev, "need at least 2 OPPs to use CPR\n");
-		ret = -EINVAL;
-		goto unlock;
+		return -EINVAL;
 	}
 
 	drv->corners = devm_kcalloc(drv->dev, drv->num_corners,
 				    sizeof(*drv->corners),
 				    GFP_KERNEL);
-	if (!drv->corners) {
-		ret = -ENOMEM;
-		goto unlock;
-	}
+	if (!drv->corners)
+		return -ENOMEM;
 
 	ret = cpr_corner_init(drv);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	cpr_set_loop_allowed(drv);
 
 	ret = cpr_init_parameters(drv);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	/* Configure CPR HW but keep it disabled */
 	ret = cpr_config(drv);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	ret = cpr_find_initial_corner(drv);
 	if (ret)
-		goto unlock;
+		return ret;
 
 	if (acc_desc->config)
 		regmap_multi_reg_write(drv->tcsr, acc_desc->config,
@@ -1540,10 +1532,7 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 	dev_info(drv->dev, "driver initialized with %u OPPs\n",
 		 drv->num_corners);
 
-unlock:
-	mutex_unlock(&drv->lock);
-
-	return ret;
+	return 0;
 }
 
 static int cpr_debug_info_show(struct seq_file *s, void *unused)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
