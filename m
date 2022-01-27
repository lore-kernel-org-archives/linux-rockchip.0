Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E766C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSVj41tmDQa8llCONqbxlKTH6/UE1fTAiC4PoTNeS34=; b=MPSgcNa0+tWvrV
	KQpcHTvy8U0yT06eGip7JBEb9oMnuugr3MZ41mia/WfUFSTfoqK1gJL2cKJyFeQjtCJDtFokadp6Q
	AOZg+7ta2jLduyLCIcWjh+MDaT7eGbuSlgsUTIxaAXBqpT/vqvYWsD4dwAP7GeyJmQlHA6t3sXCnL
	NPKqIQszdkNyKEGMKs1Nx4UjmEApJHq4Xyd5NHDM0fZmP4c4RvR+TBAfr3V6aKJchjTfKlKNqgjOV
	8petdFwpM8IvJ4fZ+zOXmtamfbLEo8Tpq1oooB9duUWsu6BgJmYwvQ3fD+eRT00QXr/hoRjalXu4J
	Bz+5rnqGCp2IHGYhIb0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDE23-00HKtJ-2J; Thu, 27 Jan 2022 23:18:23 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsw-00HGYW-RA
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:09:01 +0000
Received: by mail-pl1-x631.google.com with SMTP id d18so4235054plg.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Go5UOmrJA+s7smi2h52lD2tDLTL92TO4mF/3kSWc9Mw=;
 b=BD2hpR7jg+O2kVPF1qJXnuIpWgp1ScyjuAwtsYLAXOQDA3zbUFoCnVJJqrfqpylj9I
 WkldlnM7rS/nrlYZPEzyeNmMen8h5zRRumXIFqTs1NeKmEQvzAbFd1RxgdxH6oG+WCK3
 A4qUAHhNqs6bC9yAGwD49KrJgLsgRsUQsKBig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Go5UOmrJA+s7smi2h52lD2tDLTL92TO4mF/3kSWc9Mw=;
 b=fQSKCMiNi1oBwzGdKl4N9YQtLP4lYXwGbW67MB5ZiYAsSbNMvfAY5DJx/4SCEGcfRI
 xrPDDtMvDXD2DfBf+65vau4Nv0z7nFjlVbtmow8OV+5wdRDP/PqyyfS5nsbpsg1CrDk3
 bZQlX4gQxpoy8PXGTRraOlJkTSn4LolnfB+XAt0ydvyU/V0BngyAQpTcThaILJS/Lmb7
 zi6P5LC8rop3ciqfnWKS3cq/Ih9MwvSntmxqxbcgZjPfBo6TNmIB3gNmJ/2XHAQPAWtU
 +a4BJk59y5EvYCzrFqQ2ImjmwpqRjTi2Q1oFy5RKfM1C19xWFUWGH9nNQ1Xtl8HCQAni
 PiJg==
X-Gm-Message-State: AOAM533Q6KX/evvxpp0TG8eyqwm5nfZZdHozNijY1MyQrrfpv7ayZFJQ
 drzFEtFeMVR6FJSfM4dR68XiKw==
X-Google-Smtp-Source: ABdhPJzC64/S0pZWwwbAFZsH3pw2HjjqvrdmyZAjA0v0ob2Yy/chyC08JNhUoQmIoBfblbLksdOALg==
X-Received: by 2002:a17:902:d4c5:: with SMTP id
 o5mr5877723plg.116.1643324934496; 
 Thu, 27 Jan 2022 15:08:54 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id 17sm7074374pfl.175.2022.01.27.15.08.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:53 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 15/15] PM / devfreq: rk3399_dmc: Avoid static (reused)
 profile
Date: Thu, 27 Jan 2022 15:07:26 -0800
Message-Id: <20220127150615.v2.15.I8d71e9555aca1fa7e532d22dd1ef27976f21799d@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150858_968468_E4C955C3 
X-CRM114-Status: GOOD (  13.71  )
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

This static struct can get reused if the device gets removed/reprobed,
and that causes use-after-free in its ->freq_table.

Let's just move the struct to our dynamic allocation.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - New patch

 drivers/devfreq/rk3399_dmc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 9615658d04ae..e494d1497d60 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -38,6 +38,7 @@
 struct rk3399_dmcfreq {
 	struct device *dev;
 	struct devfreq *devfreq;
+	struct devfreq_dev_profile profile;
 	struct devfreq_simple_ondemand_data ondemand_data;
 	struct clk *dmc_clk;
 	struct devfreq_event_dev *edev;
@@ -228,13 +229,6 @@ static int rk3399_dmcfreq_get_cur_freq(struct device *dev, unsigned long *freq)
 	return 0;
 }
 
-static struct devfreq_dev_profile rk3399_devfreq_dmc_profile = {
-	.polling_ms	= 200,
-	.target		= rk3399_dmcfreq_target,
-	.get_dev_status	= rk3399_dmcfreq_get_dev_status,
-	.get_cur_freq	= rk3399_dmcfreq_get_cur_freq,
-};
-
 static __maybe_unused int rk3399_dmcfreq_suspend(struct device *dev)
 {
 	struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(dev);
@@ -422,10 +416,16 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	data->volt = dev_pm_opp_get_voltage(opp);
 	dev_pm_opp_put(opp);
 
-	rk3399_devfreq_dmc_profile.initial_freq = data->rate;
+	data->profile = (struct devfreq_dev_profile) {
+		.polling_ms	= 200,
+		.target		= rk3399_dmcfreq_target,
+		.get_dev_status	= rk3399_dmcfreq_get_dev_status,
+		.get_cur_freq	= rk3399_dmcfreq_get_cur_freq,
+		.initial_freq	= data->rate,
+	};
 
 	data->devfreq = devm_devfreq_add_device(dev,
-					   &rk3399_devfreq_dmc_profile,
+					   &data->profile,
 					   DEVFREQ_GOV_SIMPLE_ONDEMAND,
 					   &data->ondemand_data);
 	if (IS_ERR(data->devfreq)) {
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
