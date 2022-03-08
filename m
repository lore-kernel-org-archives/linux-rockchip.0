Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7563FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdjBHFwenEoq2/kQm9GWm3kv+Y1PdXsReW6KBieFxxs=; b=exxPC2ZiQsaN5M
	rkPYeKXIcVaFUdcWESEteZhO/nARzqYT152Gd0+j6Y0kAsbVin8h0hrQbmTBTtWTu99unR9gqYWhf
	QCn7m/fMz339ofGEIm6WBYs0p+PJGl6O+Mg88HZeysprkm8TNgwuhgXsPfRsjO6uecNEdq82Hm03X
	l9TOzo7PCy/vjRe3C3RJhst6gVTQRN/D7MKknvgFuZf5f+c3zeWz3MzhTl0Nheirs474jmSGvqpyR
	+YpNsMhN0xPeh4urU3XG8icky9cydDotOb1ZlkH3hUbeF3hMHgqrRK+IwHHVJW3XxBl3WIiviGnoQ
	t78VPSUs5R91HqzhyEZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfMe-005xZX-BW; Tue, 08 Mar 2022 19:19:20 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfDR-005sWw-M9
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:51 +0000
Received: by mail-pj1-x1036.google.com with SMTP id m22so255108pja.0
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3vcQ7E3QlJ5EMbZ1LFMqprOJOYHlzqtxgL896kYiqOo=;
 b=cC8dBqHfPkF5HKHeDhMknhDRfgstZiTS1u1yK5S3G3C6N0fiGTUxyYIQ7C7knE7yul
 lXJoiicgFcctg65I1e/izXC41nZ72yeoiJOY6b/PtDjW/Fvcxh8n+AFIrecGK7QP0rfm
 62TUbwp+3VeVnkaYdDFcz8OKq0TwTfLdwT9PQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3vcQ7E3QlJ5EMbZ1LFMqprOJOYHlzqtxgL896kYiqOo=;
 b=BdGQOFkCTcd56RHCo/hLBC3TURQEoi1qgGfusHknV/XSK6e7TlEIvTPlRkhkE4x7EC
 h8BkvN7hwxINOotd4mHdYGlJQEh6k6egLQ+g/WBYHWjxrOCo88BB8vfCgv2tEE8Aiw2m
 +EtYw/8BJE692fgRJJF48SPIQVY1x4x6e7FEp7D6TjKe5EgY1o30eaN4e4rWiXKBiqmQ
 6oN8orrC1jXGYlCerd80rYCE27f4o4l9voB7Z2t7A9klKPwluIpxvsQvFTtdVZC45JId
 ZUkQk0MVQAUVwGkamcKDNHn+t4oCFeq6iFTUwMdHvgedxaQbu4/aGIORjLcx3Hx4E/a1
 SXdg==
X-Gm-Message-State: AOAM532/4psYWlHgow0GYRS8cHth7c4EpFv1wQIaE9xfbl8l7OCooogv
 Dz0qh0O2qMt+LEWiBfP7TFZazg==
X-Google-Smtp-Source: ABdhPJzuHLhnsJe7gqPUU3F8/rKTzM5Cz8MQmvX+D9Q23OR5/GSYX3B2XbcEjamJWu7JKVbRlxWzJQ==
X-Received: by 2002:a17:90b:3b92:b0:1bf:a61b:742b with SMTP id
 pc18-20020a17090b3b9200b001bfa61b742bmr662827pjb.157.1646766588724; 
 Tue, 08 Mar 2022 11:09:48 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 f18-20020a056a001ad200b004bf321765dfsm21125042pfv.95.2022.03.08.11.09.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:48 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 14/15] PM / devfreq: rk3399_dmc: Use
 devm_pm_opp_of_add_table()
Date: Tue,  8 Mar 2022 11:09:00 -0800
Message-Id: <20220308110825.v4.14.I3df48ceacbf299549501a44433039d46e0a275ea@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110949_772784_B4DBE7B1 
X-CRM114-Status: GOOD (  16.01  )
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
