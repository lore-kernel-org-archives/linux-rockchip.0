Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6A1FC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuH1hT/T1WtujXaDsirLXEWjciY3YH8c/QVu8qYWb4s=; b=B3GsENZ44+7QMz
	4yVHVeUAR6IUHjggAyaWPELXCKvSxjlhGqb5iYaVUvXL+q2xEjR3uzjB2bt3Gfqkoaw3uMQYXoNp8
	npa0QAHLdWL4cWODbQEnBwF0K8rAKftVSdbuO7ulAS7RqFpknLrobiP/PLW3Mx2xG86A58N2C5AV5
	ikuCVA4lA3vKFs7p46RMOFpugSMA6gD0fciQPe0FiBhh4Xnc0xy/3wBe4WVjzhRIHJLP36fWhUeQR
	frucEVIbwkPUzoJlbKpU+7eFvVm20eZrR6vGRhHpTf27hhRgIu/Z/XFQQe8wHbhvsl4qvrhw9mMDV
	afDyCh1/iXK/K7k8fo3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTpm-0000000GmH9-22pi;
	Fri, 23 Aug 2024 12:56:06 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlR-0000000GlB9-1vbA
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:39 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a86753ac89bso11417766b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417496; x=1725022296; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sa/KHRgT6a9iG3/ETlQHPI59tAN0SqbzEBXVbMy78Ls=;
        b=mkE6bvSMRJ0ubAQzg8rWS39MpNG5xhj81wtBdseamqDlGrjfVrupKZAA8fQqT4ZBam
         OzsZJGocZ4lLTswO+2wJ5jUW89isUrOB9uWpkPbPervSR4bLCK5wkisZdYp/CYIqkxwk
         JAD0RgVaolk1BB/hUgGcbK5xK6Y4IjDQ4Dwah6BiVD/HaylFIJnJagV/zl4N3oQDajct
         8CxiucgVSjwLMEPulva2yaJbWNox1DLPo6KKwHnSAaN6n6sX15nFu+hpVWjmpbvd4hBs
         f+NeINwy4x/KE2C1htuAZF0wxSxFTx+B2HuFjLIqgDc9Azzw6NXzKbbhpFv+kguDuAEV
         OP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417496; x=1725022296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sa/KHRgT6a9iG3/ETlQHPI59tAN0SqbzEBXVbMy78Ls=;
        b=fl2nwI8yQmX9Ba7NWVaDN5TX2eJrJvwaHQ/f+nepm62gYmQVn2texkF17rJHcVYIps
         jGfZ46H44ASJem5UQeOod/aUKRnqQTCG6MSi7ygLYwmwA9JMyFxuwidCDuOztW+E1fAF
         tSELD6MAtvfgxLaHXSL53b+qokep17Wu86Nn6cNy+vngSGUNEBp6dPdETh1qKgYH+vD4
         QSLU4CHZPy5gASpg5dBMIFwCQZSqv/9EqSsoeS5/oXHY2pUN6QKhAk4rc2G2fFGWLjhm
         bnl154T7Y/SlYqaIOXUzHsCGB3w80p8Zga5DLgfDUICMKJMoxRJ/WeWgFMvTvZ382fCW
         cyrA==
X-Forwarded-Encrypted: i=1; AJvYcCXQn5b7Ux2BuXlzo8CujyblcidXey5UnwyBh5ZusuplrFyKWD8jKK/lzBEuWCVk1LoQw3TcaTxyWfP7XvrJZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxuywPi5f6IFfUk/5nPJviUObC/4eVby5DNBD78gUI9REWElaMH
	DSukxex98xOkq/dbo0H60J+SuhRSrTdoXdWmQJyydKZp2EDBC921a/Wq7GaCyog=
X-Google-Smtp-Source: AGHT+IEdA/oEZ97C2qOqfjgHLdf7GZtFRbhRivaHzioPPap69e5acBh4T0xkHuu904RyEID7S6Zhew==
X-Received: by 2002:a17:907:968c:b0:a7a:a2e3:3736 with SMTP id a640c23a62f3a-a86a5489a72mr92536566b.5.1724417495945;
        Fri, 23 Aug 2024 05:51:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:09 +0200
Subject: [PATCH 05/10] pmdomain: qcom: cpr: Simplify with dev_err_probe()
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-5-8320722eaf39@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=863;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=SsKn+XKGNdg5Lu4TYJpa1Z5yeroNI9GQomQEQv1kKlo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXIAE/UDGNyaNfdauaVBO6LIu+O/X2S8PcEz
 tOZoQCDU0SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFyAAKCRDBN2bmhouD
 1z9AD/0SCxM4givKRDsROWCOR5j/+4VWWxQLgTTNLssfQNDBH81XPQ0y6u5DXPpwX6GDZuFE0KG
 AGCPQbxe50w0leYIkSfhdQcmHV5GegOp93DcIhTKAThLFFJJfNFoNYm6NLqFo+2/JngjpIWosI/
 jumqWnbvSxujOR/S5APTM6m2LisQte5FJFkVfp0fy7rTJNPjWBea8nhcre0gRoU+ECZ6hnDuogv
 Rc/ncG5TXQntXUbni/M98iXqDOMb79XVVsYwRMW0h2ZI5ATxcP+xF/BMpXSO4tSwAtuvaScNZrA
 +lOW8wz53KFD3F7iaOVpgEQ4vgqzNaWaBeh6g/8kgAwcWZZroJsPA/HGbulpkzCgvujAc8yIe4Y
 L3N7+1BRdGP1/+0DkFhr6q7hC6IoetUMtK8/S/OlnoZU6tIZCzL3dsFEGvIjlAGSJFV/eHSY5Ui
 X3BsRg5nI5eL5F5bwKuXxXzGX5IEu8uwLYdvRQfITeluiSylB/x5sDeQffM/PHtDoDQIddbd/D1
 eTzAs/GUBiAJiWE5lLNx1Wa65YWa3olzZhJCbZtGbt3XKLVv+gxrwcCCtFCJt8KpW5X5kcMIFNq
 RbIza/sGz8mkdHAj5bG4X5zTXQ8cabGsaE2qdP9UWVpiyzj4Jv+c8oDlCZ5WWwUlU5Z9cnpnkrW
 xm+1Jwl7sUAchbA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055137_545323_BDC2DA5E 
X-CRM114-Status: GOOD (  11.28  )
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

Use dev_err_probe() to make defer code handling simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/qcom/cpr.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pmdomain/qcom/cpr.c b/drivers/pmdomain/qcom/cpr.c
index c64e84a27cc7..1bef89712188 100644
--- a/drivers/pmdomain/qcom/cpr.c
+++ b/drivers/pmdomain/qcom/cpr.c
@@ -1470,9 +1470,8 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
 	 */
 	drv->cpu_clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(drv->cpu_clk)) {
-		ret = PTR_ERR(drv->cpu_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(drv->dev, "could not get cpu clk: %d\n", ret);
+		ret = dev_err_probe(drv->dev, PTR_ERR(drv->cpu_clk),
+				    "could not get cpu clk\n");
 		goto unlock;
 	}
 	drv->attached_cpu_dev = dev;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
