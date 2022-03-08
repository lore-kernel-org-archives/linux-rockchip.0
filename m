Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3EA6C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDljKOkcOptv82fQOZXfSNXmJAcAQvGDfK5jgIF7BBw=; b=WfKEKOlQcCHEst
	Sxsjy7eXCWa63Hd3nludcZkUovbOJ6YwTIcSlQ6RxHqdo65jEnklXCSUH1cJ1MLSo3THyYwEdOxp8
	U78SsGddq2+4aUV4SPGBEGRwlwJI1MwQpse5NOn7HwMO4BtBn3Ks8nROPzMRyGbQz4xfAKGg8Stl7
	9+Bc9aQ4mwGLY3WLkS/MsEGHlm0hett75MfI2NISFe+n7Dck5K1VF+LR1IPhLENNtGiT0xND6q+0L
	WfmkbHP12t2P6bPPjr7rST3kqJPrZXRzbNdfU4A+YpeH9tgGY6g57IYxTaOIq9t1jea9wcHU41/2W
	Iplh4MAs6l4CtZ+bV1ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNZR-0026n5-F6; Tue, 08 Mar 2022 00:19:21 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNR1-0022Wg-Mx
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:41 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 15-20020a17090a098f00b001bef0376d5cso760464pjo.5
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
 b=dUSKXKD2oLryc1nruR3FNcnsYYhThzA308IDtnm37tWHi+DdqgeCtz4xqfUo6Nt7UW
 fI4qPKxksSC65tT0l7YkCINT05BtyR+OAL8TSWjGo/RlhyavUD+bacUAkumZNAfYZZ52
 goJj0JVvFwvvujDp0z90ZPeHro8+w88DMROGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
 b=vLI4Vt6mr8zFBYhg1inwt01jFCyBrc8vl9uhxb4xartkHMcGuXAlIWMMCr3+JsIZ++
 Uwe2GAWE2YqlO+2ebyI+mgcasYJ8FMeBj1m7sM/2mnjpCiSbY/YxMmqYAwt4oBKH3g5D
 46HMSG3k0sEocdhDAfghKKFAlN+faTkiZbkIZWSeJrtxeyKdduq5Y39+TBdTHh2FCDsQ
 +oF6p9CfnhFmLRDZilWrWv01Ma8L5RoIaT14+gw52KPEVskX+ahcZXI86E+AXtAJRfAk
 zd8iOMxkl/tmMCjEkz0F3T1TE+aXY+l3x47lbQZdw6twCT5EYMtAZ++Opz2zPJLXsw1g
 BxIw==
X-Gm-Message-State: AOAM531PvnyBbyETYhL/X2C7SsrwyxBENVeR+0xd/TCtwI/ZCo+2H+zv
 I7DlA8TtPjp9jLyIfqoiHBHX9A==
X-Google-Smtp-Source: ABdhPJyrcw+XhrxMuU5ct7+AqtGPHqcx+ajYHdkXRnnV0rz1xXVGUvlzhLNfmp1oAPTEeWB/2Df2Ag==
X-Received: by 2002:a17:902:ed82:b0:151:d081:3832 with SMTP id
 e2-20020a170902ed8200b00151d0813832mr14035788plj.165.1646698239237; 
 Mon, 07 Mar 2022 16:10:39 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 p25-20020a637419000000b0037fa57520adsm8884252pgc.27.2022.03.07.16.10.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:38 -0800 (PST)
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
Subject: [PATCH v3 15/15] PM / devfreq: rk3399_dmc: Avoid static (reused)
 profile
Date: Mon,  7 Mar 2022 16:09:45 -0800
Message-Id: <20220307160918.v3.15.I8d71e9555aca1fa7e532d22dd1ef27976f21799d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161039_827017_C16A13D3 
X-CRM114-Status: GOOD (  14.26  )
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

(no changes since v2)

Changes in v2:
 * New patch

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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
