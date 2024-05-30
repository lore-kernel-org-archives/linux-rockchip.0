Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0EE0C27C43
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBC1lbjBi3V2hR+b3DJjRAW2hhV4XbcZ/NeeSIJSUNs=; b=fmqc6//f71MYYZ
	ULUoIrAmoKaeJgUaoSGU8STarWHP0QWmmvDnuYU1UbkR5q5n/jRxKMWdnpofvFFWX7WjGSaVp41eC
	1ELwCBteqZs4W+0a0mDaFGE3SMnEJamZV+/GJsm0La0i69ELtD9cruT7PasHaS6wfQ6y5MZTNMnX3
	lJiN2Yqjo9J7cLZx/7hSV3awqdGwIKOYwrFP64qu3SgH7b65BlR5pfYB4ZjPB0QdekvLCSZOdoqOZ
	k3XEn5NwxjJqB8osUTStPPnOQGrz3XuJUIx+khA5GUhYjXF9/f5QEhBnEW0gdU+Cbc5GYLuRNmjYY
	CvJBjMQD6a0TJZOJYV/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxD-00000008fBe-0me3;
	Thu, 30 May 2024 23:13:03 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxA-00000008f9J-0teX
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:13:01 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52b82d57963so764084e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717110778; x=1717715578; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9MDjCsFEZ1HcOeGBvBo6CqtfbFIZh3loCrt4ShZMr9A=;
        b=EZmt1BS5JCJ/lyocgSxZeym0EEMCK89+i20wahut8WUc7cBYL0rSN+aA+MQr376nbZ
         Rm/iXECPg1V8gYtsilLrkHscQk7u8RZpxSzmMlB2/lgVMw5xjZMrw9Dx6ETNCeD811+v
         7496aPTBdb+xc6zpI+J7ZXn+eYfkm1n7/lxnMZq3cvVnEOvAhLq4bQwmTOwZmhQE6TKJ
         f+tGYatmo+VgbcCOIm4ni5+FXuT6mMB3tIrT0JevUGAjz6PWl8vpEmWGPfx8xdXw58dm
         Mv/fpkscNX3IkqnN3oZCMKdjy3s6+moQRF+J2P6s1uLAw97JdsOI0HjxpsgCJDe6VQ5y
         W4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717110778; x=1717715578;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9MDjCsFEZ1HcOeGBvBo6CqtfbFIZh3loCrt4ShZMr9A=;
        b=BH43sXHcTAd/cqkKHOL9yCZYD3PWLYlEJGRok96sbj+WTEXfngVZZTPj++abR5q8v9
         O2TSLuA0c6juw1/cUu5n61Ljj9PP19Ojf70oHIcPmksjOKsEbzybpsJ9bCh2tvQKN+0X
         P8/TWuEUPqnc+u87T8qTitPN3/gbPCPfoqSmng5aNoC8cwYLu/ekirS0+bzKqIl84wWS
         KEQJebFuzX1XHcUJ1RI1mencz6I2eaRvIrs+LgdgNgGs0f77q1vIrvqgAN4R/NqGMyW9
         Wshg3gVg1rgQMbF7t1JVFrVh0sRTnOuXQTTCA9v87FNVCAT83Nul3BRYaD7+oWIHs61a
         sZbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdZbJnB515MNIn3JV/lTKuASeYp6V4M4YSkKdsGPcYCAZh/PmzB5asb7Q7GLM9TLdww/Fos835E7YN38wcdxIbCQVw6GW1CE8dOChvBoej+XtT
X-Gm-Message-State: AOJu0Yxj3KUla+WkeNe03Eiw2/fMoDbXssElbsgHSYlMf4xnYmYQQgbC
	eB/KH//D2KA1mWByMIQ3ZDaN66kkijWkVwiqGVEdB3OverhXg5EzWKu7X0MyMSM=
X-Google-Smtp-Source: AGHT+IHCDHK4srNC/bDT9MhZqbsXJoODdHwGipAby7uMsyyVOOryiOsA8heWPcUKRMYQXg7XBalJbg==
X-Received: by 2002:a05:6512:39c5:b0:516:cc2d:f6a1 with SMTP id 2adb3069b0e04-52b896dc4f6mr55540e87.51.1717110777989;
        Thu, 30 May 2024 16:12:57 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75d96sm119005e87.120.2024.05.30.16.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:12:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 31 May 2024 02:12:55 +0300
Subject: [PATCH v3 1/3] drm/panel-edp: add fat warning against adding new
 panel compatibles
MIME-Version: 1.0
Message-Id: <20240531-edp-panel-drop-v3-1-4c98b2b95e3a@linaro.org>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
In-Reply-To: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1789;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4lQZmh/WvHEEtNKJULb6yxMuO5RvAavVpXvzoItg+EA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmWQf4M0YInguykUXTyMqVJtog/s/TjQywd/DDP
 akfvNNiTlSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlkH+AAKCRCLPIo+Aiko
 1XozCACoI/M4YGZsyLd+SYKu+kRIbTJFiN7yHHoXU5cPCqg2X/+3kZgtkcWXK818KF48F17uK7/
 Z60m/kj7JmLjRJQz4g38OKf6BBSasiPJLvQ89Fywc5eN0eXlnvkMsMJWOHSZvmzRZb9iJS/wM44
 Os2BWDA88429zTZaZTNroO7icIk7Mt60YK6cg5vuiQaw0IJdRiAy7h7RT5wL3jbm7mSqHmhtXB1
 G/el0ZqZ4DJmLPH9+5uNXUi0vMSYIopCpwu3VXievEE1ynyAh9agsecAjuzgFwQTtKwT5dDqzBN
 qB84Xt/VVYqp9cQ6NLyDUwMH6bUW8bsnRv9DeNKy4V6qExLx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_161300_530366_C4F0E8DF 
X-CRM114-Status: GOOD (  15.00  )
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

Add a fat warning against adding new panel compatibles to the panel-edp
driver. All new users of the eDP panels are supposed to use the generic
"edp-panel" compatible device on the AUX bus. The remaining compatibles
are either used by the existing DT or were used previously and are
retained for backwards compatibility.

Suggested-by: Doug Anderson <dianders@chromium.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/panel/panel-edp.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 6db277efcbb7..ce2ea204a41e 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1776,7 +1776,24 @@ static const struct of_device_id platform_of_match[] = {
 	{
 		/* Must be first */
 		.compatible = "edp-panel",
-	}, {
+	},
+	/*
+	 * Do not add panels to the list below unless they cannot be handled by
+	 * the generic edp-panel compatible.
+	 *
+	 * The only two valid reasons are:
+	 * - Because of the panel issues (e.g. broken EDID or broken
+	 *   identification).
+	 * - Because the eDP drivers didn't wire up the AUX bus properly.
+	 *   NOTE that, though this is a marginally valid reason,
+	 *   some justification needs to be made for why the platform can't
+	 *   wire up the AUX bus properly.
+	 *
+	 * In all other cases the platform should use the aux-bus and declare
+	 * the panel using the 'edp-panel' compatible as a device on the AUX
+	 * bus.
+	 */
+	{
 		.compatible = "auo,b101ean01",
 		.data = &auo_b101ean01,
 	}, {

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
