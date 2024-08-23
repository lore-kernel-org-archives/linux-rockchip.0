Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFB5EC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfNoJxZkOrpvV25ZvM/pZhiD5GuLXpPNlYaK9em82zk=; b=pm8qV1IMGUi9H4
	UJcHdh7l2RLV+y31ckJlLgBe9GOMJySHEcroaKvs7p3keJLJAUTjjlMw4G+9ZyUKBQZb2i6Ag6+Oq
	bYOj67yv/swnL6UKNf/isu7r3fuoAJ/h84EFau8qYSyZ29pHJ8vb2FKqcBZCPkrB4amuFRS8xx/CJ
	/rkIKgKxT2LqLTILRBdqo9t2YX18VtpMOkV1GzviE3q9DLOk+HwpLQ4E69SyVWTWRctvVQANzTP5P
	WGtJfFEDUMhJhu/CDbGdvMD5M0BjB0caJc1VDale1LpasKgrp2uGFxI1tnEcrh8ARsrmyHP6qi2mC
	OmV3sc05JktYts7Ky4WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTm7-0000000GlLn-1eF9;
	Fri, 23 Aug 2024 12:52:19 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlL-0000000Gl8C-12sE
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:32 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a868ec0d239so14625266b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417489; x=1725022289; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pqZoUlf9FXxVw5XTreRUZPBs7/v+HjBAPIDWEHMdLrg=;
        b=nK3zNWfkxnneaocGwfo59t52RRnBlZIibqyJ+sWlp2bT3QTYoEKraDBVUlTpaUfK6p
         ez1PfHZI56tQZ8lioUO0HPl30Y0GH9cJC0Pm2RkqWG8HTe36y1wlpIvuAR8NgbgRzopV
         oYlCE/soBdBrRDZC9ruovmvg2FoQ5JjsXNwNzcPxUVJ5+ZZlvSbjtfGo5VZx5BuLifwk
         S4I7MtFmOF1RRG+O77Vzvcorz/7CpV4+Kt5xxf/rvWb2EVPRbOfpjlDLvf8BzTtGElFP
         6FY6Wz887zyFlEWKoqyYeHmsTfNrQXgTTsleWHmlh840ApKNLo7+XwhXN5iESbv9ppQW
         m0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417489; x=1725022289;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pqZoUlf9FXxVw5XTreRUZPBs7/v+HjBAPIDWEHMdLrg=;
        b=a7DQUo3OO5k9BXP/jsa6K7ztaydCLR+AfsQeUnARV5tPqul5oi+EB3KKMB1zL4Ypus
         VBcdV43ti2HUSb9YnaIX+pqL/SXgQGLwNnoqM0I4L2pulY8yxJu89vGZzl+XnMuV0Bs0
         Pd1XsT9CTKkK3yJNdeCyfvDHWjd1GgTISByL1CXFFQVYeoAaDIdUzO4T9tkWzksHcc0V
         P9FqtBiTGuzMmL+hlH0Edh0YR+AgYqDLX7uOuchyQftPVfSWw/xkR891kLuZo1MQVzMA
         0qdfzmfNmSxfU3U0wUh45+YJIs4+zNtRZLUjWXQJCYaRZE9ULGvnX91kxDL2NemqTMfL
         jcuA==
X-Forwarded-Encrypted: i=1; AJvYcCVldRbLaL/s0R+b1vNl85U7AHkJ/KzaOxwMLZXcn+q4Mn+3PdfEsybVjvOmTWsDtgjw8wgHb1ztSOUn8loMkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdzNumvIEI9IwThKpclg9f1AQVwPuWnRrh25zbKXBWGUPTMHrL
	6rUdzX8071zO7PXFro956mhsAj6TWeirJznYe/Oveg8DhZXpzQu5hQ7OTPJn+zQ=
X-Google-Smtp-Source: AGHT+IHFhimXCeBq1Wbp/Qo8sanPB2U9J/NJviX3SdYBYaOdu/gpBKluIRkFnIoy6jGG2DDcfdAykQ==
X-Received: by 2002:a17:907:9724:b0:a7a:a33e:47cd with SMTP id a640c23a62f3a-a86a54b6508mr79978766b.8.1724417489316;
        Fri, 23 Aug 2024 05:51:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:05 +0200
Subject: [PATCH 01/10] pmdomain: rockchip: Simplify with scoped for each OF
 child loop
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-1-8320722eaf39@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3370;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=iAvSFaGsUDYZxq4WQx5Z23ymXzI0A4MTtwCWNichnqc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXEfKtBsZmUp5ta2YLZwS3sUTURaeY/K91+s
 GdqnZCFccqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFxAAKCRDBN2bmhouD
 1/miD/9sqb/VfS0E5eSdkqMTP9BUn0QyIpD/1zkhakVYkcdbfbRO1J4fbIQy6ivtt22yqA0cF/E
 dapzg65Y/ms6uu6SOMeDn8A3Ux/v0H11tSSsjxwPIUvshnIBtSpUICJ43/aT7HrB1AZ8KXj7303
 fjKLWh0M/kXCNLEmgmnaZla7eT5SyWxL86w7s/LmQVmf/v9x6481XcJMxvKFTiyulEWiMLl7O39
 SM/1GdybwLP4Mrwl2CO4D02fr4QaUP6pwp5yfKLSVVJcqT7ojS6mnDtvAsmUzfy5v9vGvEdjZf4
 XcGVejBE/gQHe+SDiyCUztR+2Alc2i59HHAMvPTl+E3TRLY0IeY1J71Qr0RIASGsYrwJa2lv6+w
 eou5bPoQBuM2UY3PWz8wRJdOlZlN0ppHYZrz89L57/U87bW/iREdkNPk9C9EkajVT3ZTsopV7Ch
 QuIh63mZ00thXJ68Yekopv1G+3Jyldicvc1pnAAmcmNk9/wIDdjN+pkGTWXgjX2TapOChOus7zI
 YlfIvKyDakxpFuy0n/iCLdXHrHEhSzRhci7v65ixuLvU3R6kHc0ltTlQh5QsKtYMF7m7aIVWfAy
 x6UXjngSQQY2qVflmHpNw+XsYM/7XNaeScdPr+P+xsJbEPVcmANtg2SAroolfyRltcIAgh3rngg
 yBjt0SYdMpyHcZA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055131_328441_42096076 
X-CRM114-Status: GOOD (  14.56  )
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

Use scoped for_each_available_child_of_node_scoped() and
for_each_child_of_node_scoped() when iterating over
device nodes to make code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/rockchip/pm-domains.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 64b4d7120d83..5679ad336a11 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -804,11 +804,10 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 				     struct device_node *parent)
 {
-	struct device_node *np;
 	struct generic_pm_domain *child_domain, *parent_domain;
 	int error;
 
-	for_each_child_of_node(parent, np) {
+	for_each_child_of_node_scoped(parent, np) {
 		u32 idx;
 
 		error = of_property_read_u32(parent, "reg", &idx);
@@ -816,7 +815,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 			dev_err(pmu->dev,
 				"%pOFn: failed to retrieve domain id (reg): %d\n",
 				parent, error);
-			goto err_out;
+			return error;
 		}
 		parent_domain = pmu->genpd_data.domains[idx];
 
@@ -824,7 +823,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 		if (error) {
 			dev_err(pmu->dev, "failed to handle node %pOFn: %d\n",
 				np, error);
-			goto err_out;
+			return error;
 		}
 
 		error = of_property_read_u32(np, "reg", &idx);
@@ -832,7 +831,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 			dev_err(pmu->dev,
 				"%pOFn: failed to retrieve domain id (reg): %d\n",
 				np, error);
-			goto err_out;
+			return error;
 		}
 		child_domain = pmu->genpd_data.domains[idx];
 
@@ -840,7 +839,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 		if (error) {
 			dev_err(pmu->dev, "%s failed to add subdomain %s: %d\n",
 				parent_domain->name, child_domain->name, error);
-			goto err_out;
+			return error;
 		} else {
 			dev_dbg(pmu->dev, "%s add subdomain: %s\n",
 				parent_domain->name, child_domain->name);
@@ -850,17 +849,12 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 	}
 
 	return 0;
-
-err_out:
-	of_node_put(np);
-	return error;
 }
 
 static int rockchip_pm_domain_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *node;
 	struct device *parent;
 	struct rockchip_pmu *pmu;
 	const struct rockchip_pmu_info *pmu_info;
@@ -918,12 +912,11 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 	 */
 	mutex_lock(&dmc_pmu_mutex);
 
-	for_each_available_child_of_node(np, node) {
+	for_each_available_child_of_node_scoped(np, node) {
 		error = rockchip_pm_add_one_domain(pmu, node);
 		if (error) {
 			dev_err(dev, "failed to handle node %pOFn: %d\n",
 				node, error);
-			of_node_put(node);
 			goto err_out;
 		}
 
@@ -931,7 +924,6 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 		if (error < 0) {
 			dev_err(dev, "failed to handle subdomain node %pOFn: %d\n",
 				node, error);
-			of_node_put(node);
 			goto err_out;
 		}
 	}

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
