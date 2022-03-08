Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CDEEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFDw8gPVlYLAJc4NwaqnlvidpeXHxm6pLfsiDVuzr24=; b=hQdM5fQc8LG+Rr
	J+CypYIjmdwXd/KfleDM7lwdT5HvJW5ilmCWrZsOui52weL21+BuBv6vEo31tSX6hCHebBe4Fckud
	thqeJsQuDaHigAS/Q9dMef7jfhF7QOGaWWdSf1iWmn60CxNShuyno5DPLQlqGuiQo1uTSFYTAbepJ
	k00u8cR0bL74Ay/0NU6juPpISISaUfMEknOpXAmIUds0aG8si6FO6eQeHZCGxyrVi1KHozIM52YDC
	qT0Tg5cHbqmaCXoSHmprf1k4CGM5JQiHizBrsU/kEB6tkg/wK7XzuLapfdn61YTGR510l9syRxkqv
	G8dkuKfX0cMOe32fEtOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNTO-0023yO-AU; Tue, 08 Mar 2022 00:13:06 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQl-0022Ll-2R
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:24 +0000
Received: by mail-pf1-x434.google.com with SMTP id p8so15846863pfh.8
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qamn1KXLKkoAp4pJxR8atvIxLoRPmk7xdgGcjv6i0+c=;
 b=HtNToSVKei4r/dkWdQX0wFF5BeiprqAGBJsdBdObgeljF01tpvu6X37kYjGzVbNni+
 WZOVPuhC++u65RvNvI13z38qMqXgqw+SxmFn9G+J1eGwYp92cOQk/pAGGrjwwKQWDFKf
 /8iwPbKU2kjsHaj0KliCyO3Wyw7yBT0HGo8lI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qamn1KXLKkoAp4pJxR8atvIxLoRPmk7xdgGcjv6i0+c=;
 b=u1pSr+upLuTD8KNi/iXBE6/816KGmyoGYVJwfcuGb1Z4uDumMDG6/b2X8hE0lqtH/A
 2HjNGhajDHwaiIjd/FDnMiGFbdTuGgIT1wcnRRPP3CzJmM5W6tBOd3H9nL4XiHVkP161
 n3H3iYAGmc+q7xcKEhkKGMMTnCl2HZbbjGD7BT7tQLYOor+nM51FPAk01u3qQpLuCFxV
 rx6xb/0Ew0YhN4p9+kPctiWc32okzkzJoq22KgVFSKzS3nl7LUWn45gayy0BRrhswiWO
 g/b+QL7A03nIoRhfVtXP2vxfYFSvDWZJuT1U+jXhU/7c/J2WgNOj9We0BLJQGvrF8+8E
 cIAw==
X-Gm-Message-State: AOAM531lxchAPHcsZDUjY518L5P2R0G4gUU5k9aDnh4zoYCfGvrNyWk8
 GyNLQnhQwqRsAl/mSgn9aPUl0w==
X-Google-Smtp-Source: ABdhPJzGV5UoWWEbvE82QJSgvp/hXpji18fWii897O93/NS3Ey5zWslK5hn5QEXo88Kr410ZN/GnIg==
X-Received: by 2002:aa7:8432:0:b0:4f6:6dcd:4f19 with SMTP id
 q18-20020aa78432000000b004f66dcd4f19mr15511216pfn.53.1646698222537; 
 Mon, 07 Mar 2022 16:10:22 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 b62-20020a633441000000b0037c794cb68fsm11455025pga.9.2022.03.07.16.10.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:22 -0800 (PST)
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
Subject: [PATCH v3 08/15] PM / devfreq: rk3399_dmc: Use bitfield macro
 definitions for ODT_PD
Date: Mon,  7 Mar 2022 16:09:38 -0800
Message-Id: <20220307160918.v3.8.I0f36da588afd01d0dc9ce5866240efa34bd91e21@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161023_209605_BE95A9D0 
X-CRM114-Status: GOOD (  17.72  )
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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
