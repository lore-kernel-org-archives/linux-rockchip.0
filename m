Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C7DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfPGnqdodUKMUXW3mK4+sBak+yRbhBauaDrv9mWd018=; b=OgWBzGPYCoY3vI
	TNeJ+P1vwugroHo6o8MmTUgbwtiaH1C4L7Z02QqKX+/U4+Qwj9gSEhhyAXkUXzrqBNXeuvbtiBaR/
	fTpQ+rbkQxl4O6aHXqgLpiNL7CkJwuaH4gdM0c7TbjXhPlZ9+BfnVT66g5Uu9oJ4ZvBaLp+fZg3HM
	hUApHvgKOjpgeOtA9GiPKQGvdyo2cL6+blF4mulzNld8mlcQTa+JcE9Aeb8guJcw32tx+WIBgNAnn
	RxzthuRT4lqvg72hPkKs8VAfOO0+kdM5x5BWDBSFWYwlupTuzeScOhx+eJuIpLrjyOPFg7J0vuodU
	E4pnMonGr3OB/utqJACQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfFw-005uBd-PK; Tue, 08 Mar 2022 19:12:24 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfD5-005sIW-4Y
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:29 +0000
Received: by mail-pf1-x429.google.com with SMTP id z15so191961pfe.7
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MGvJc+Ve3oy0Yq0K3bpgSkrQ5JxGu0c98z8DVJNiX8g=;
 b=NOrGr4vMwXpdp5J0k2X41Gy+WSY8DEp7MQcwRe2e3Dx3IMs3z4xNrxyR+7wx2wGxNB
 d7VtVskm1B4sNzZoz2CBQ+GPTaIPpU2iG2EQ78RYY43K659GFbd3uwIbhK/LB7FH6Y2h
 e8CKd2TsZ6BW9wRAAqH+xrnTt+g5dK3qDls/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MGvJc+Ve3oy0Yq0K3bpgSkrQ5JxGu0c98z8DVJNiX8g=;
 b=MtE3fOilDuZjyjAMFiknmm24EcO0d7VNQyVMlqvQNfpOINq2olPKY6hR57njih6bXR
 WKIDWZ6qxArZIyWUb8jKCaryOeFCcH3Zjc2+UtkpLKnoYCjhb11fAd0YC83ne8p2Mnxx
 HYuBl70rJ2GBcHtfJVxl/rHmnP5xE6yIIfHfhU8w0twU+Fb1SgkiZohsOpLn/NMtgFek
 vFihqtIQSDzHl1Cr4NRGRvNp5dlHpqxA/8/nUTMN7iEwCqFvaucI2ftlPLMnbtKtAqpC
 /GHxUAwJL4VdpoJoOogjaCxAir9eUQzACxSgeSH02eqtwZEW8KcWrvwzr+Iu2l1dpIsz
 rbpw==
X-Gm-Message-State: AOAM531jXl8JLS4MPdzVih1rGPDlokLUE2Vy0xNm0pNloCDGgVw/RGGh
 RvrV/MJ13PWL6jKyDIgXrS4bIA==
X-Google-Smtp-Source: ABdhPJxxzJ/Hw8tQQls00LevA33RIKViziiy3kGxSNaj5N/yoBMPP2JAvI9Q6tzRCqvYRxHuZcX4hQ==
X-Received: by 2002:a63:f04f:0:b0:373:bd70:af2 with SMTP id
 s15-20020a63f04f000000b00373bd700af2mr15219130pgj.497.1646766566341; 
 Tue, 08 Mar 2022 11:09:26 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 k1-20020a056a00168100b004e0e45a39c6sm21486873pfc.181.2022.03.08.11.09.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:25 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 07/15] PM / devfreq: rk3399_dmc: Drop excess timing
 properties
Date: Tue,  8 Mar 2022 11:08:53 -0800
Message-Id: <20220308110825.v4.7.Ia0f7d6168a71ba4a4fd0519972a8dfd4c681fc25@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110927_215474_12691525 
X-CRM114-Status: GOOD (  21.49  )
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

All of these properties are initialized by ARM Trusted Firmware, and
have been since the early days of this chip. It's redundant (and
possibly wrong) to do this here now. What's more, there seems to be some
confusion about the units and some of the definitions of this timing
struct: the DT docs say MHz for many of these, but downstream users were
in Hz (and therefore, the ATF interface was Hz). Also, the in-driver
usage for some of these (e.g., for comparing to target frequency) were
in Hz too. So doubly wrong.

We can avoid thinking about who got the right units by dropping the
unnecessary code and properties. They are marked deprecated in the
binding schema.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v1)

 drivers/devfreq/rk3399_dmc.c | 144 +++++++----------------------------
 1 file changed, 29 insertions(+), 115 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index e982862f6ac2..8f447217303f 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -23,38 +23,6 @@
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
-struct dram_timing {
-	unsigned int ddr3_speed_bin;
-	unsigned int pd_idle;
-	unsigned int sr_idle;
-	unsigned int sr_mc_gate_idle;
-	unsigned int srpd_lite_idle;
-	unsigned int standby_idle;
-	unsigned int auto_pd_dis_freq;
-	unsigned int dram_dll_dis_freq;
-	unsigned int phy_dll_dis_freq;
-	unsigned int ddr3_odt_dis_freq;
-	unsigned int ddr3_drv;
-	unsigned int ddr3_odt;
-	unsigned int phy_ddr3_ca_drv;
-	unsigned int phy_ddr3_dq_drv;
-	unsigned int phy_ddr3_odt;
-	unsigned int lpddr3_odt_dis_freq;
-	unsigned int lpddr3_drv;
-	unsigned int lpddr3_odt;
-	unsigned int phy_lpddr3_ca_drv;
-	unsigned int phy_lpddr3_dq_drv;
-	unsigned int phy_lpddr3_odt;
-	unsigned int lpddr4_odt_dis_freq;
-	unsigned int lpddr4_drv;
-	unsigned int lpddr4_dq_odt;
-	unsigned int lpddr4_ca_odt;
-	unsigned int phy_lpddr4_ca_drv;
-	unsigned int phy_lpddr4_ck_cs_drv;
-	unsigned int phy_lpddr4_dq_drv;
-	unsigned int phy_lpddr4_odt;
-};
-
 struct rk3399_dmcfreq {
 	struct device *dev;
 	struct devfreq *devfreq;
@@ -62,13 +30,21 @@ struct rk3399_dmcfreq {
 	struct clk *dmc_clk;
 	struct devfreq_event_dev *edev;
 	struct mutex lock;
-	struct dram_timing timing;
 	struct regulator *vdd_center;
 	struct regmap *regmap_pmu;
 	unsigned long rate, target_rate;
 	unsigned long volt, target_volt;
 	unsigned int odt_dis_freq;
 	int odt_pd_arg0, odt_pd_arg1;
+
+	unsigned int pd_idle;
+	unsigned int sr_idle;
+	unsigned int sr_mc_gate_idle;
+	unsigned int srpd_lite_idle;
+	unsigned int standby_idle;
+	unsigned int ddr3_odt_dis_freq;
+	unsigned int lpddr3_odt_dis_freq;
+	unsigned int lpddr4_odt_dis_freq;
 };
 
 static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
@@ -238,69 +214,27 @@ static __maybe_unused int rk3399_dmcfreq_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rk3399_dmcfreq_pm, rk3399_dmcfreq_suspend,
 			 rk3399_dmcfreq_resume);
 
-static int of_get_ddr_timings(struct dram_timing *timing,
-			      struct device_node *np)
+static int rk3399_dmcfreq_of_props(struct rk3399_dmcfreq *data,
+				   struct device_node *np)
 {
 	int ret = 0;
 
-	ret = of_property_read_u32(np, "rockchip,ddr3_speed_bin",
-				   &timing->ddr3_speed_bin);
 	ret |= of_property_read_u32(np, "rockchip,pd_idle",
-				    &timing->pd_idle);
+				    &data->pd_idle);
 	ret |= of_property_read_u32(np, "rockchip,sr_idle",
-				    &timing->sr_idle);
+				    &data->sr_idle);
 	ret |= of_property_read_u32(np, "rockchip,sr_mc_gate_idle",
-				    &timing->sr_mc_gate_idle);
+				    &data->sr_mc_gate_idle);
 	ret |= of_property_read_u32(np, "rockchip,srpd_lite_idle",
-				    &timing->srpd_lite_idle);
+				    &data->srpd_lite_idle);
 	ret |= of_property_read_u32(np, "rockchip,standby_idle",
-				    &timing->standby_idle);
-	ret |= of_property_read_u32(np, "rockchip,auto_pd_dis_freq",
-				    &timing->auto_pd_dis_freq);
-	ret |= of_property_read_u32(np, "rockchip,dram_dll_dis_freq",
-				    &timing->dram_dll_dis_freq);
-	ret |= of_property_read_u32(np, "rockchip,phy_dll_dis_freq",
-				    &timing->phy_dll_dis_freq);
+				    &data->standby_idle);
 	ret |= of_property_read_u32(np, "rockchip,ddr3_odt_dis_freq",
-				    &timing->ddr3_odt_dis_freq);
-	ret |= of_property_read_u32(np, "rockchip,ddr3_drv",
-				    &timing->ddr3_drv);
-	ret |= of_property_read_u32(np, "rockchip,ddr3_odt",
-				    &timing->ddr3_odt);
-	ret |= of_property_read_u32(np, "rockchip,phy_ddr3_ca_drv",
-				    &timing->phy_ddr3_ca_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_ddr3_dq_drv",
-				    &timing->phy_ddr3_dq_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_ddr3_odt",
-				    &timing->phy_ddr3_odt);
+				    &data->ddr3_odt_dis_freq);
 	ret |= of_property_read_u32(np, "rockchip,lpddr3_odt_dis_freq",
-				    &timing->lpddr3_odt_dis_freq);
-	ret |= of_property_read_u32(np, "rockchip,lpddr3_drv",
-				    &timing->lpddr3_drv);
-	ret |= of_property_read_u32(np, "rockchip,lpddr3_odt",
-				    &timing->lpddr3_odt);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_ca_drv",
-				    &timing->phy_lpddr3_ca_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_dq_drv",
-				    &timing->phy_lpddr3_dq_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_odt",
-				    &timing->phy_lpddr3_odt);
+				    &data->lpddr3_odt_dis_freq);
 	ret |= of_property_read_u32(np, "rockchip,lpddr4_odt_dis_freq",
-				    &timing->lpddr4_odt_dis_freq);
-	ret |= of_property_read_u32(np, "rockchip,lpddr4_drv",
-				    &timing->lpddr4_drv);
-	ret |= of_property_read_u32(np, "rockchip,lpddr4_dq_odt",
-				    &timing->lpddr4_dq_odt);
-	ret |= of_property_read_u32(np, "rockchip,lpddr4_ca_odt",
-				    &timing->lpddr4_ca_odt);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_ca_drv",
-				    &timing->phy_lpddr4_ca_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_ck_cs_drv",
-				    &timing->phy_lpddr4_ck_cs_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_dq_drv",
-				    &timing->phy_lpddr4_dq_drv);
-	ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_odt",
-				    &timing->phy_lpddr4_odt);
+				    &data->lpddr4_odt_dis_freq);
 
 	return ret;
 }
@@ -311,8 +245,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = pdev->dev.of_node, *node;
 	struct rk3399_dmcfreq *data;
-	int ret, index, size;
-	uint32_t *timing;
+	int ret;
 	struct dev_pm_opp *opp;
 	u32 ddr_type;
 	u32 val;
@@ -343,26 +276,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	/*
-	 * Get dram timing and pass it to arm trust firmware,
-	 * the dram driver in arm trust firmware will get these
-	 * timing and to do dram initial.
-	 */
-	if (!of_get_ddr_timings(&data->timing, np)) {
-		timing = &data->timing.ddr3_speed_bin;
-		size = sizeof(struct dram_timing) / 4;
-		for (index = 0; index < size; index++) {
-			arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, *timing++, index,
-				      ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM,
-				      0, 0, 0, 0, &res);
-			if (res.a0) {
-				dev_err(dev, "Failed to set dram param: %ld\n",
-					res.a0);
-				ret = -EINVAL;
-				goto err_edev;
-			}
-		}
-	}
+	rk3399_dmcfreq_of_props(data, np);
 
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (!node)
@@ -381,13 +295,13 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 
 	switch (ddr_type) {
 	case RK3399_PMUGRF_DDRTYPE_DDR3:
-		data->odt_dis_freq = data->timing.ddr3_odt_dis_freq;
+		data->odt_dis_freq = data->ddr3_odt_dis_freq;
 		break;
 	case RK3399_PMUGRF_DDRTYPE_LPDDR3:
-		data->odt_dis_freq = data->timing.lpddr3_odt_dis_freq;
+		data->odt_dis_freq = data->lpddr3_odt_dis_freq;
 		break;
 	case RK3399_PMUGRF_DDRTYPE_LPDDR4:
-		data->odt_dis_freq = data->timing.lpddr4_odt_dis_freq;
+		data->odt_dis_freq = data->lpddr4_odt_dis_freq;
 		break;
 	default:
 		ret = -EINVAL;
@@ -414,11 +328,11 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	 * arg2:
 	 *     bit[0]     : odt enable
 	 */
-	data->odt_pd_arg0 = (data->timing.sr_idle & 0xff) |
-			    ((data->timing.sr_mc_gate_idle & 0xff) << 8) |
-			    ((data->timing.standby_idle & 0xffff) << 16);
-	data->odt_pd_arg1 = (data->timing.pd_idle & 0xfff) |
-			    ((data->timing.srpd_lite_idle & 0xfff) << 16);
+	data->odt_pd_arg0 = (data->sr_idle & 0xff) |
+			    ((data->sr_mc_gate_idle & 0xff) << 8) |
+			    ((data->standby_idle & 0xffff) << 16);
+	data->odt_pd_arg1 = (data->pd_idle & 0xfff) |
+			    ((data->srpd_lite_idle & 0xfff) << 16);
 
 	/*
 	 * We add a devfreq driver to our parent since it has a device tree node
-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
