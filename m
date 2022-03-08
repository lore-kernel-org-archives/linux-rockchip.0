Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D584C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdjBHFwenEoq2/kQm9GWm3kv+Y1PdXsReW6KBieFxxs=; b=QbAcGb5TmAcVfz
	Azm22Vzh6g5sQunmufHdu/PKccrPB408quK5wgMd1blZKY3BqKwLDRT1zSeQc2C0jeIlgRqIdNRWg
	G6g4heyvwTT7wY/sKQf8HtuWJUjH2saKsNNvkgVgUtLErFvkVfow6grvSn7Bd+u/w/SDTE9I28Pyc
	ye6CRsNf1kX4anSMgruMHDemyWy1CsWPKZMgL9UfPh2JoNXCghSI/UX852i6Xt0X+RU38CfMUghxN
	gZ0E7f/TxIEZNpdDavnBsdheljtAz4uJwHyMZENCksQWuU579wVLut4CtwiWfhOq6W/tfdTo/SwZj
	1li+VShSMXN0ePtYj2GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNYT-0026O9-Qx; Tue, 08 Mar 2022 00:18:21 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQz-0022V8-Sv
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:40 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 ge19-20020a17090b0e1300b001bcca16e2e7so674151pjb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3vcQ7E3QlJ5EMbZ1LFMqprOJOYHlzqtxgL896kYiqOo=;
 b=iYeKTGT4dlyZ/4cNXE6cfNS9XrK9+jF+QC2NeyIzykXCNsGl3wNW47bpL5UUCEoJ7P
 xpuZm4eeGE0nwrgiheytLeqFqVXXoveIvwCNOAyEyRoygFWlx8Y6M5txM4ctoJlTuc+d
 eWGi3Sq2FexM2KHNohtPvHfVCCTq0KYB6fX8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3vcQ7E3QlJ5EMbZ1LFMqprOJOYHlzqtxgL896kYiqOo=;
 b=IsI5O1Z2YUNracXxs0kARvp9izTeufFdfLEmbQh8vNTuEh3BOlSV4O9jceg2DMLWDG
 1V4Plg49BRgkxGUS2iReJt+q1JGr4gMJRidTnz7KmkZDcHj4bwAMVnxpNSrdyjYADDPH
 pmWYVv+cW/zr/JOnMQ1kNr+0ll87DxjjegunYPrvxnXnq29vOmj6m01d9Kge6EdB7DfX
 6i2FaNA+wUon6uJm6X9qKKtjM21e87HyOaOY0mE12k0f6tVoxRl0YHUeYBL6/mSxhgnt
 37APyrWmdaWJ8EZS3KfZ1nAGYxG+565+X1VVvtj4GNuDFdv3HlFbCnIwuti255mx4s7I
 a/Qg==
X-Gm-Message-State: AOAM531uw+2LqKPnC724/h8zSkP763yiJnuqOwaq7OuHBLMtu46FnGWB
 DeshLJc8j28BJyaa3hUkaiun/A==
X-Google-Smtp-Source: ABdhPJz1pr5t9xbmu7C/GASb4Drasky8f6mYutfdkoI2dep7+myru1QSijt9H+r6gLIYzInYwl9ZEw==
X-Received: by 2002:a17:90b:4f92:b0:1bf:25e2:f6af with SMTP id
 qe18-20020a17090b4f9200b001bf25e2f6afmr1687730pjb.98.1646698237105; 
 Mon, 07 Mar 2022 16:10:37 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 c30-20020a63725e000000b0037c8bf5b630sm10695427pgn.12.2022.03.07.16.10.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:36 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 14/15] PM / devfreq: rk3399_dmc: Use
 devm_pm_opp_of_add_table()
Date: Mon,  7 Mar 2022 16:09:44 -0800
Message-Id: <20220307160918.v3.14.I3df48ceacbf299549501a44433039d46e0a275ea@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161037_967167_A5B51C06 
X-CRM114-Status: GOOD (  16.33  )
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

(no changes since v2)

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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
