Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C82C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8zGLpPK0GCdWERYxeFJh3nyggpCxD/2OG7ba7D8cME=; b=2UCp0SSsaI2nnp
	TtyxG+nHQbBAb68ow9+4eXkhDrDMhjZU7sXwtXMve5bi7wdGKad1yvfrkUuJl60qyC1RPPWrE7nxu
	f6YlrMEpLSWo9woWq+VL5PaaOc1FoteuMj20b5nPsbmL1PXWELeV7fAq2bzNk4aOMpa0KQdGY2oU9
	GyHsHJl9VAieA6LGVA5z3iuY/kmYECL7DLhWpoHTyxaKi9RW0/E7+GdEF4Qp92ofSCcNKKujqhxHd
	SHLjJBH5RgXJieFuzuEUG4L2o8V8V26f+Imb/fO/+iAIkEXgsWJyIAQuBrHjN9fpOfXbC7wQ32fQi
	r1RtGi2/AEwVPQLk1oGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDvz-00HI5E-8Y; Thu, 27 Jan 2022 23:12:07 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsf-00HGPc-PH
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:43 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 d15-20020a17090a110f00b001b4e7d27474so4755717pja.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P0joUK/pdUbQ+tkRTC3slVsYBufXst0qResCEw1GAIA=;
 b=BnDRXk0/6EBRLVuizHHpYzMVT205phm4z1vtVYFekaSNBBGlmSe7dnC89KkP+OZt1G
 siu7id/3fNo2OQJWUz2DUH2Qqu3hNfEMPvBy0PFOSDsE0iX3SBC8JOdtXPCvtW9Er8p0
 4nBNdSrt4WvJktSG23xNKi00oMJoBAbhFo92w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P0joUK/pdUbQ+tkRTC3slVsYBufXst0qResCEw1GAIA=;
 b=YSB01teH1cqAGr9bU4JlLq1ok0l4t7TZz49ipt3alRhwvOLHKVAJf+Z+Xfnr9fIWcS
 /sJuXk1zh5ad8ThKmvJUi9XlVc1wSFPd4g51hsjJ9d8EMNrkMo4IB6/rsXcE0q1fSril
 8mIi5tgHiTgWqkT0fCZ881kKvZr1kw57l+7QQ4iDssG9SZ3e+KNGIkGWqUuZ65s8XyiC
 RAjuAg8ojgNdBxcQY2Bpu8O2AVUXMuDMz6dGSUhkqlkUnyMZ8H3qQ65/t7OS7Xekx6dM
 0WqS5PcWYZCscFyNitXL3K2zBVmBJ9GsTrccrgogcoiO4LmNXO179kMbFsBpXfSrHE8e
 W3rA==
X-Gm-Message-State: AOAM530sHRePAUOI9Lbdp00seFlZGTy3nKYgafgArpp58TKPjU5VdQE0
 /CrZ5GMXNZAPohQQflUpW25NPg==
X-Google-Smtp-Source: ABdhPJygQAI1P2SOa4Oto5BDHOx+X35TmrwOGXC/s5RZcVPqZCFxYS6m1xx9ePbYZiM/Z5xhtIElww==
X-Received: by 2002:a17:90b:4b83:: with SMTP id
 lr3mr16431459pjb.42.1643324919686; 
 Thu, 27 Jan 2022 15:08:39 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id s6sm369704pjg.22.2022.01.27.15.08.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:39 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 08/15] PM / devfreq: rk3399_dmc: Use bitfield macro
 definitions for ODT_PD
Date: Thu, 27 Jan 2022 15:07:19 -0800
Message-Id: <20220127150615.v2.8.I0f36da588afd01d0dc9ce5866240efa34bd91e21@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150841_849274_39BB5241 
X-CRM114-Status: GOOD (  17.08  )
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

We're going to add new usages, and it's cleaner to work with macros
instead of comments and magic numbers.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v1)

 drivers/devfreq/rk3399_dmc.c | 43 ++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 8f447217303f..c4efbc15cbb1 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/devfreq.h>
@@ -23,6 +24,15 @@
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
+#define RK3399_SET_ODT_PD_0_SR_IDLE			GENMASK(7, 0)
+#define RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE		GENMASK(15, 8)
+#define RK3399_SET_ODT_PD_0_STANDBY_IDLE		GENMASK(31, 16)
+
+#define RK3399_SET_ODT_PD_1_PD_IDLE			GENMASK(11, 0)
+#define RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE		GENMASK(27, 16)
+
+#define RK3399_SET_ODT_PD_2_ODT_ENABLE			BIT(0)
+
 struct rk3399_dmcfreq {
 	struct device *dev;
 	struct devfreq *devfreq;
@@ -55,7 +65,6 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	unsigned long old_clk_rate = dmcfreq->rate;
 	unsigned long target_volt, target_rate;
 	struct arm_smccc_res res;
-	bool odt_enable = false;
 	int err;
 
 	opp = devfreq_recommended_opp(dev, freq, flags);
@@ -72,8 +81,10 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	mutex_lock(&dmcfreq->lock);
 
 	if (dmcfreq->regmap_pmu) {
+		unsigned int odt_pd_arg2 = 0;
+
 		if (target_rate >= dmcfreq->odt_dis_freq)
-			odt_enable = true;
+			odt_pd_arg2 |= RK3399_SET_ODT_PD_2_ODT_ENABLE;
 
 		/*
 		 * This makes a SMC call to the TF-A to set the DDR PD
@@ -83,7 +94,7 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 		arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, dmcfreq->odt_pd_arg0,
 			      dmcfreq->odt_pd_arg1,
 			      ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD,
-			      odt_enable, 0, 0, 0, &res);
+			      odt_pd_arg2, 0, 0, 0, &res);
 	}
 
 	/*
@@ -316,23 +327,17 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	/*
 	 * In TF-A there is a platform SIP call to set the PD (power-down)
 	 * timings and to enable or disable the ODT (on-die termination).
-	 * This call needs three arguments as follows:
-	 *
-	 * arg0:
-	 *     bit[0-7]   : sr_idle
-	 *     bit[8-15]  : sr_mc_gate_idle
-	 *     bit[16-31] : standby idle
-	 * arg1:
-	 *     bit[0-11]  : pd_idle
-	 *     bit[16-27] : srpd_lite_idle
-	 * arg2:
-	 *     bit[0]     : odt enable
 	 */
-	data->odt_pd_arg0 = (data->sr_idle & 0xff) |
-			    ((data->sr_mc_gate_idle & 0xff) << 8) |
-			    ((data->standby_idle & 0xffff) << 16);
-	data->odt_pd_arg1 = (data->pd_idle & 0xfff) |
-			    ((data->srpd_lite_idle & 0xfff) << 16);
+	data->odt_pd_arg0 =
+		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_IDLE, data->sr_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_0_SR_MC_GATE_IDLE,
+			   data->sr_mc_gate_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_0_STANDBY_IDLE,
+			   data->standby_idle);
+	data->odt_pd_arg1 =
+		FIELD_PREP(RK3399_SET_ODT_PD_1_PD_IDLE, data->pd_idle) |
+		FIELD_PREP(RK3399_SET_ODT_PD_1_SRPD_LITE_IDLE,
+			   data->srpd_lite_idle);
 
 	/*
 	 * We add a devfreq driver to our parent since it has a device tree node
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
