Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A71C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDljKOkcOptv82fQOZXfSNXmJAcAQvGDfK5jgIF7BBw=; b=PDrTI7pbemFXOl
	toiD8Y1xiob8rMeARsi1TH6sHYdUsm9ei15c+QqDAhZ5NNolRIoZDgy4X2sp5ZmmZn7QbYbgzynyv
	DO+bKViR9MDOhs1fBVHFP8erlHFcD5XGwT/xdJTJYf2n9jxXu7a28/b0IWw6uQcpFkQE5Hh2FbtBa
	KGTQk2fr5u7Cn7bAwlOVXWTC1JLWLTDrAIA2OxHaFFsZYB2bKkTvu5ZBSlyopO1QPFzAYIfunf4R+
	BXpSz6Lvn/p3grRRTqdgXlZhKBLfuO6c7tKxMphScjw+XNJCYMmu5D+Y9avHCfiX8AcSAoAFpGEt9
	z6DWwokdEEg/Kt3JbfuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfMk-005xcU-Pa; Tue, 08 Mar 2022 19:19:26 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfDT-005sYX-Ow
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:53 +0000
Received: by mail-pl1-x636.google.com with SMTP id q13so1796131plk.12
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
 b=ib6FySm/SIILussMyTK7iihJLMt8Z1en8slTwlrFY5+R7JaTUXQp9kyMH9l8rQzknO
 em20DU9AF9v5Tq9pS2VCCi+eMzdQAtqCXv5+LQSGxEgZsykZLTjntKZ+bWUTwJj7eMqp
 yne0N1Zo66kQ5sLI0k1LFhdoc/452HkjAHras=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ExeMvBUYf18gUbw3oNoBhQIqfKznu+dtCvkD2ZUwMDI=;
 b=M01uO9E/4wK4lyUwvc16anxQ1xCYAp1kVBcmrNM9/ngetCnXHa3N0hSIDIxHYK0zQV
 a1W5IpWUZ4g9Lpo/k3j7x01K6RtzkOB304SDl3tefz1uRkLYnwL1INyvRMcPP/qQob9v
 HlImClst2Wmy/Ni0uuoGIqhK6D4d0su27fBEIui1ZeLE0G8nsz8Ue3q7izmu3mQ1p2V6
 E7eZYfkBgqbBi83KY8bTA5FwtW9lmwzDglYimxoOQNtT5B3TvDPuIazFFH0bGrDdAT36
 qT4zIbBasvGObxEnutt/ATU3KCO02qoW9eiOanZQM9LoZrGRdKV2S7vlqY0eFHS0m5tN
 qfug==
X-Gm-Message-State: AOAM533NIFS6PxbTNVg4n0WBTKPz2wsZIx6TQQRkkA7H8BPONNmnX9fF
 meD3esIjrAjR/hnQtMxCSbHjog==
X-Google-Smtp-Source: ABdhPJy2AstUgBchjh7EwV+wcmMkcQM+A0fg1kljv5PG4sghXwqZVBUofbggon0HsXXkeiKY53yCJw==
X-Received: by 2002:a17:902:b945:b0:14f:f05e:5479 with SMTP id
 h5-20020a170902b94500b0014ff05e5479mr19169202pls.94.1646766591062; 
 Tue, 08 Mar 2022 11:09:51 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 z13-20020a63e10d000000b003733d6c90e4sm15339293pgh.82.2022.03.08.11.09.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:50 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 15/15] PM / devfreq: rk3399_dmc: Avoid static (reused)
 profile
Date: Tue,  8 Mar 2022 11:09:01 -0800
Message-Id: <20220308110825.v4.15.I8d71e9555aca1fa7e532d22dd1ef27976f21799d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110951_864485_24211C5C 
X-CRM114-Status: GOOD (  14.04  )
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
