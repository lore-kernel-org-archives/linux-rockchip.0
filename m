Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D93C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ok6lHjezGcOOJhoA+BlZPEPUzzMqwK6Sl/m6tg1nx/w=; b=hVsLWz9MLtSVxy
	x8F0oVTFxDfKlLiCzXl5QxAeJ+K6p4/HJ0+KwB07US8AJqoSv4WK/4XSPGcMeHyAAlFUF00yFvySW
	3lott0IBFpXj7d6wjeLfP49yiwThJH9sPywAGj1PsS1ihxyiKWifxs/l+Nd23HY7yR1DLJJzsZ1ie
	Z03qlJ30FQaLvMCAfq/r8qolIv5+tvUEwrrKU54sYq2Jkl5nXFU2AQz6BHuYjseU+QVSgDEsxTtWO
	VSGRT7lu4bI0aTPdU/lO+lSQqK9Wluh76kcoxdujHspeOBWVLxn4BiIr6bNc+DsvOwV4RU1EoZ8P9
	eCDEkE3rT+3dieJ4dAQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDE1B-00HKWx-RK; Thu, 27 Jan 2022 23:17:29 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsv-00HGXV-LF
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:09:00 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d7so4179030plr.12
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TgvyNELvg3Sp7eq/kP6ZXmVUFjIF8jXZbUQbHyXbYEA=;
 b=ksWYFpunD8F/POefDSacV+EHnA/Ob+b1C5cIWM4AR/RdicdiwkskZr6IkLTPvIAGlx
 jzRkBKTSZajM3cDG91qrW1bTBuFeklxmwp2NSoSV28l53EIxjzc01BDxznvW5DWUvycM
 r+wZn7zVndV2p4K+H9hIjyzSRx3eZWLf/U1Xc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TgvyNELvg3Sp7eq/kP6ZXmVUFjIF8jXZbUQbHyXbYEA=;
 b=eIzV9061bOtGcJHskcZI96vSjC9mBkkcynjjoUkOVZAhYjC4p2g4uRyZkXXuTGyKb/
 UbrP97XaBp1u/AlAVQtWw6PBu/7+BxGUqo8vW5wxUMTAdaLBwXAso4ssr3GBjwc/Z0F+
 s8NcZ3EWUFk3Ouz8qiroTBZUESRx9VNWcqeMjpOIAv9DFc2XDxPJTuuGzCBNOcHp97AV
 kW6+56IiCXCwfXJsdVoZFeFfTvQ56XDyzTN4gKGFBAqUY9/ezvAshBxfqNmEfjvpi9VM
 THoX3N2O3pcK801O2zdAnI2lS69nzW5y3lNV+yzicJoEwqfSnhyojJj4Q8igcincvZfe
 0Ygw==
X-Gm-Message-State: AOAM530aTbo+lmPOmWWozbYffVnBVBAP99+k7uAu1PbMtmBuP4hxli6d
 z2FOVGh4YlTU6GdvK2lrgmLg2g==
X-Google-Smtp-Source: ABdhPJxGTgGsf17+kFpx/sl5BjhXHh6BcmwIuThMSQoz/ECA3RxkZOf4C40gfM6CZkmpTwdQkKj4Mw==
X-Received: by 2002:a17:902:c946:: with SMTP id
 i6mr5502608pla.74.1643324932282; 
 Thu, 27 Jan 2022 15:08:52 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id 5sm367869pjf.34.2022.01.27.15.08.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:51 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 14/15] PM / devfreq: rk3399_dmc: Use
 devm_pm_opp_of_add_table()
Date: Thu, 27 Jan 2022 15:07:25 -0800
Message-Id: <20220127150615.v2.14.I3df48ceacbf299549501a44433039d46e0a275ea@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150857_757974_E2D81E49 
X-CRM114-Status: GOOD (  15.76  )
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

This simplifies error-cleanup and remove().

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - New patch

 drivers/devfreq/rk3399_dmc.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index fca9fcbd4249..9615658d04ae 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -401,7 +401,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	 * We add a devfreq driver to our parent since it has a device tree node
 	 * with operating points.
 	 */
-	if (dev_pm_opp_of_add_table(dev)) {
+	if (devm_pm_opp_of_add_table(dev)) {
 		dev_err(dev, "Invalid operating-points in device tree.\n");
 		ret = -EINVAL;
 		goto err_edev;
@@ -415,7 +415,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	opp = devfreq_recommended_opp(dev, &data->rate, 0);
 	if (IS_ERR(opp)) {
 		ret = PTR_ERR(opp);
-		goto err_free_opp;
+		goto err_edev;
 	}
 
 	data->rate = dev_pm_opp_get_freq(opp);
@@ -430,7 +430,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 					   &data->ondemand_data);
 	if (IS_ERR(data->devfreq)) {
 		ret = PTR_ERR(data->devfreq);
-		goto err_free_opp;
+		goto err_edev;
 	}
 
 	devm_devfreq_register_opp_notifier(dev, data->devfreq);
@@ -440,8 +440,6 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 
 	return 0;
 
-err_free_opp:
-	dev_pm_opp_of_remove_table(&pdev->dev);
 err_edev:
 	devfreq_event_disable_edev(data->edev);
 
@@ -454,12 +452,6 @@ static int rk3399_dmcfreq_remove(struct platform_device *pdev)
 
 	devfreq_event_disable_edev(dmcfreq->edev);
 
-	/*
-	 * Before remove the opp table we need to unregister the opp notifier.
-	 */
-	devm_devfreq_unregister_opp_notifier(dmcfreq->dev, dmcfreq->devfreq);
-	dev_pm_opp_of_remove_table(dmcfreq->dev);
-
 	return 0;
 }
 
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
