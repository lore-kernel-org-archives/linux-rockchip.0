Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8EE2C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq+k9J1SoclbMKo2tWf8xfUurmTTRKxiuiqEpZkwd7s=; b=iBe2Z5DttVUFbb
	v7/xqELXnPiUrx8aohdmKTvKFTQMyG75wOkOiGg7U9JpENKEuEbni1kwHKdzxhgmM2icl4vWk1I4b
	quElDNMUcaPE5WH2MXkH/jJFfvARgVj6Fk9aVO9n7peTtQK8fqPB4JI5Da3N332HjouGmUay+zODR
	XHtWFeAsUmuVjg+VtvMuOGV2Ujd8wu13lX8jl4acXvPntohmZYTXAVjfVSt1LbzGKSePdEoFTm1bN
	0MQLiTYMojBjirm4UwaEf86PDy6+euhNh5EzBNGRFcMs2Xyyk7FrUuygrR7N86zlucXyZ0ufbJsm2
	48WEGJ4SWXhXKJuQIbBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfIc-005vhO-Nm; Tue, 08 Mar 2022 19:15:10 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfDC-005sMv-ED
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:36 +0000
Received: by mail-pf1-x435.google.com with SMTP id z15so192232pfe.7
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XdkuXzvsU8Qmmgk1oFXQM7A/zqUKyIIaZpyPEVdNOeA=;
 b=JwRh6BtiqbuT4qCPUSLvGr9eHRAxIPrezqeJENfy+kjTR4kU0Rlm0pGwZFmWl/Uj9A
 uyaUeaO7hoZaj/lAbwawuRyCY0iYJyGPpRY2KeE+/OSfDXsAWuPf2OWVh9NxtRqdCzF2
 rIdrqmDQqhqHwHcdn1cmAtDZb7SYig3gAhZJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XdkuXzvsU8Qmmgk1oFXQM7A/zqUKyIIaZpyPEVdNOeA=;
 b=6nTuK+5GH9StOAO2fqR9liGsPnxQHunl4dHa7mQI/zKF3ktezTy1ETdOVrFxa5z4Mn
 zXX+031kopTVtpS/zaNssJqP2kGGp96Zq8Y4lcXiPzUQfqYIXnVmAW5KtcP0gjHRSRoM
 BM4KVq9z56uPgzjB3HMDQNgSUnRe2jVFjSS7gJ6yRfFwKjRZsjGcr/C48J5qTesVqViM
 jWCDpqW2a4k9QfxRznh5blvRu0Ue6ZYwToXVEEa1Go2htxYUZac7RlNtXpk8HFb6505n
 J346Mx3jYs94QnTHnULr9s3u9h+D1oIPgX2wRU4nFK4R0JZg4BEAqVx5N3OtC/H/8Qap
 p5Xg==
X-Gm-Message-State: AOAM5309qHLWQvDr8u/4u+pj/mbpLAqZF1hSptotm24Rl+aREzfMYWU8
 NHmMTvGEhDEsgcg06x3Taqm51w==
X-Google-Smtp-Source: ABdhPJxRtrM2/49Je72bpHM2q09u+9Kclg+1x8oKck8ftlFcUfomI5ADI2wTOiWXIUoJ/CAsnmmgsA==
X-Received: by 2002:a63:7e43:0:b0:374:75ce:4d80 with SMTP id
 o3-20020a637e43000000b0037475ce4d80mr15356157pgn.589.1646766573686; 
 Tue, 08 Mar 2022 11:09:33 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 q11-20020a63f94b000000b00373c5319642sm15865829pgk.93.2022.03.08.11.09.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:32 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 10/15] PM / devfreq: rk3399_dmc: Support new *-ns properties
Date: Tue,  8 Mar 2022 11:08:56 -0800
Message-Id: <20220308110825.v4.10.I4e01e243ea11e9f95295b40b44a9eaa3a883a0dd@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110934_513757_6F97DCDE 
X-CRM114-Status: GOOD (  19.25  )
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

We want to keep the idle time fixed, so compute based on the current DDR
frequency.

The old properties were deprecated and never used, so we can safely drop
them from the driver.

This is a rewritten version of work by Lin Huang <hl@rock-chips.com>.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v2)

Changes in v2:
 - New patch

 drivers/devfreq/rk3399_dmc.c | 85 +++++++++++++++++++++---------------
 1 file changed, 50 insertions(+), 35 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index fc740c1f6747..f778564cab49 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -24,6 +24,8 @@
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
+#define NS_TO_CYCLE(NS, MHz)				(((NS) * (MHz)) / NSEC_PER_USEC)
+
 #define RK3399_SET_ODT_PD_0_SR_IDLE			GENMASK(7, 0)
 #define RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE		GENMASK(15, 8)
 #define RK3399_SET_ODT_PD_0_STANDBY_IDLE		GENMASK(31, 16)
@@ -45,13 +47,12 @@ struct rk3399_dmcfreq {
 	unsigned long rate, target_rate;
 	unsigned long volt, target_volt;
 	unsigned int odt_dis_freq;
-	int odt_pd_arg0, odt_pd_arg1;
 
-	unsigned int pd_idle;
-	unsigned int sr_idle;
-	unsigned int sr_mc_gate_idle;
-	unsigned int srpd_lite_idle;
-	unsigned int standby_idle;
+	unsigned int pd_idle_ns;
+	unsigned int sr_idle_ns;
+	unsigned int sr_mc_gate_idle_ns;
+	unsigned int srpd_lite_idle_ns;
+	unsigned int standby_idle_ns;
 	unsigned int ddr3_odt_dis_freq;
 	unsigned int lpddr3_odt_dis_freq;
 	unsigned int lpddr4_odt_dis_freq;
@@ -70,9 +71,14 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	struct dev_pm_opp *opp;
 	unsigned long old_clk_rate = dmcfreq->rate;
 	unsigned long target_volt, target_rate;
+	unsigned int ddrcon_mhz;
 	struct arm_smccc_res res;
 	int err;
 
+	u32 odt_pd_arg0 = 0;
+	u32 odt_pd_arg1 = 0;
+	u32 odt_pd_arg2 = 0;
+
 	opp = devfreq_recommended_opp(dev, freq, flags);
 	if (IS_ERR(opp))
 		return PTR_ERR(opp);
@@ -86,11 +92,35 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 
 	mutex_lock(&dmcfreq->lock);
 
-	if (dmcfreq->regmap_pmu) {
-		unsigned int odt_pd_arg0 = dmcfreq->odt_pd_arg0;
-		unsigned int odt_pd_arg1 = dmcfreq->odt_pd_arg1;
-		unsigned int odt_pd_arg2 = 0;
+	/*
+	 * Some idle parameters may be based on the DDR controller clock, which
+	 * is half of the DDR frequency.
+	 * pd_idle and standby_idle are based on the controller clock cycle.
+	 * sr_idle_cycle, sr_mc_gate_idle_cycle, and srpd_lite_idle_cycle
+	 * are based on the 1024 controller clock cycle
+	 */
+	ddrcon_mhz = target_rate / USEC_PER_SEC / 2;
+
+	u32p_replace_bits(&odt_pd_arg1,
+			  NS_TO_CYCLE(dmcfreq->pd_idle_ns, ddrcon_mhz),
+			  RK3399_SET_ODT_PD_1_PD_IDLE);
+	u32p_replace_bits(&odt_pd_arg0,
+			  NS_TO_CYCLE(dmcfreq->standby_idle_ns, ddrcon_mhz),
+			  RK3399_SET_ODT_PD_0_STANDBY_IDLE);
+	u32p_replace_bits(&odt_pd_arg0,
+			  DIV_ROUND_UP(NS_TO_CYCLE(dmcfreq->sr_idle_ns,
+						   ddrcon_mhz), 1024),
+			  RK3399_SET_ODT_PD_0_SR_IDLE);
+	u32p_replace_bits(&odt_pd_arg0,
+			  DIV_ROUND_UP(NS_TO_CYCLE(dmcfreq->sr_mc_gate_idle_ns,
+						   ddrcon_mhz), 1024),
+			  RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE);
+	u32p_replace_bits(&odt_pd_arg1,
+			  DIV_ROUND_UP(NS_TO_CYCLE(dmcfreq->srpd_lite_idle_ns,
+						   ddrcon_mhz), 1024),
+			  RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE);
 
+	if (dmcfreq->regmap_pmu) {
 		if (target_rate >= dmcfreq->sr_idle_dis_freq)
 			odt_pd_arg0 &= ~RK3399_SET_ODT_PD_0_SR_IDLE;
 
@@ -262,16 +292,16 @@ static int rk3399_dmcfreq_of_props(struct rk3399_dmcfreq *data,
 		data->srpd_lite_idle_dis_freq =
 		data->standby_idle_dis_freq = UINT_MAX;
 
-	ret |= of_property_read_u32(np, "rockchip,pd_idle",
-				    &data->pd_idle);
-	ret |= of_property_read_u32(np, "rockchip,sr_idle",
-				    &data->sr_idle);
-	ret |= of_property_read_u32(np, "rockchip,sr_mc_gate_idle",
-				    &data->sr_mc_gate_idle);
-	ret |= of_property_read_u32(np, "rockchip,srpd_lite_idle",
-				    &data->srpd_lite_idle);
-	ret |= of_property_read_u32(np, "rockchip,standby_idle",
-				    &data->standby_idle);
+	ret |= of_property_read_u32(np, "rockchip,pd-idle-ns",
+				    &data->pd_idle_ns);
+	ret |= of_property_read_u32(np, "rockchip,sr-idle-ns",
+				    &data->sr_idle_ns);
+	ret |= of_property_read_u32(np, "rockchip,sr-mc-gate-idle-ns",
+				    &data->sr_mc_gate_idle_ns);
+	ret |= of_property_read_u32(np, "rockchip,srpd-lite-idle-ns",
+				    &data->srpd_lite_idle_ns);
+	ret |= of_property_read_u32(np, "rockchip,standby-idle-ns",
+				    &data->standby_idle_ns);
 	ret |= of_property_read_u32(np, "rockchip,ddr3_odt_dis_freq",
 				    &data->ddr3_odt_dis_freq);
 	ret |= of_property_read_u32(np, "rockchip,lpddr3_odt_dis_freq",
@@ -367,21 +397,6 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		      ROCKCHIP_SIP_CONFIG_DRAM_INIT,
 		      0, 0, 0, 0, &res);
 
-	/*
-	 * In TF-A there is a platform SIP call to set the PD (power-down)
-	 * timings and to enable or disable the ODT (on-die termination).
-	 */
-	data->odt_pd_arg0 =
-		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_IDLE, data->sr_idle) |
-		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE,
-			   data->sr_mc_gate_idle) |
-		FIELD_PREP(RK3399_SET_ODT_PD_0_STANDBY_IDLE,
-			   data->standby_idle);
-	data->odt_pd_arg1 =
-		FIELD_PREP(RK3399_SET_ODT_PD_1_PD_IDLE, data->pd_idle) |
-		FIELD_PREP(RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE,
-			   data->srpd_lite_idle);
-
 	/*
 	 * We add a devfreq driver to our parent since it has a device tree node
 	 * with operating points.
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
