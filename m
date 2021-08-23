Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39A8DC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:53:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF65B6135F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:53:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EF65B6135F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hh3/EZxCFoKuqtT8jev2ZHzBzDn/ViifBlKFU7B4Wc8=; b=AtCdNDKMmUc7GC
	A7oOwpmhkrpihEYGU+ubu3a7HwSJ3Uo5X1RKzfTkRI/4DbEB3fwMN2DPhkXF9w1DPAyvWD6lbytKM
	9dDngy+DcbtMSWIfqr/ui7pdh10yiYpKMGcqchDIoW1edGGium/w86agg6QJo+sVkts2pjZt/xZyV
	ldvq01ybVpEj104SklJ3qVWsDkn8eKBXleUFtbyKx4QQEvO5vZV0I/ly/KaNESC0a4S1pNSGVLGjA
	N9lDQ+oSKUNeyRyICQD1r97RezW6oY/r+jUDPEj/hVQsHXLHWXKnvn8TspfBCm3ZVHnRQt2ecAtKk
	lmXeCQjJ0qLQNvX4AT9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI7Zv-00GRHl-KQ; Mon, 23 Aug 2021 10:53:19 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI7Zs-00GRFV-Nc
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 10:53:18 +0000
Received: from localhost (unknown [192.168.167.224])
 by lucky1.263xmail.com (Postfix) with ESMTP id 24369FB68B;
 Mon, 23 Aug 2021 18:53:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22031T140205908551424S1629715992162978_; 
 Mon, 23 Aug 2021 18:53:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f762fd583e140c8cf6a14b2a2835c3f6>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH 06/15] ASoC: rockchip: i2s: Reset the controller if soft reset
 failed
Date: Mon, 23 Aug 2021 18:53:01 +0800
Message-Id: <1629715990-21372-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_035317_078953_FC043A8D 
X-CRM114-Status: GOOD (  16.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch brings i2s back to normal by resetting i2s m/h
when the soft reset failed.

Change-Id: I2fd47039b522ac89499b4a2912d5ffb7a469e75e
Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index b8e35a9..a91f874d 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -15,6 +15,7 @@
 #include <linux/clk.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 #include <linux/spinlock.h>
 #include <sound/pcm_params.h>
 #include <sound/dmaengine_pcm.h>
@@ -40,6 +41,8 @@ struct rk_i2s_dev {
 
 	struct regmap *regmap;
 	struct regmap *grf;
+	struct reset_control *reset_m;
+	struct reset_control *reset_h;
 
 /*
  * Used to indicate the tx/rx status.
@@ -92,6 +95,20 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
 	return snd_soc_dai_get_drvdata(dai);
 }
 
+static void rockchip_i2s_reset(struct rk_i2s_dev *i2s)
+{
+	dev_warn(i2s->dev, "Reset controller.\n");
+
+	reset_control_assert(i2s->reset_m);
+	reset_control_assert(i2s->reset_h);
+	udelay(1);
+	reset_control_deassert(i2s->reset_m);
+	reset_control_deassert(i2s->reset_h);
+
+	regcache_mark_dirty(i2s->regmap);
+	regcache_sync(i2s->regmap);
+}
+
 static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
@@ -132,7 +149,7 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 				regmap_read(i2s->regmap, I2S_CLR, &val);
 				retry--;
 				if (!retry) {
-					dev_warn(i2s->dev, "fail to clear\n");
+					rockchip_i2s_reset(i2s);
 					break;
 				}
 			}
@@ -181,7 +198,7 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 				regmap_read(i2s->regmap, I2S_CLR, &val);
 				retry--;
 				if (!retry) {
-					dev_warn(i2s->dev, "fail to clear\n");
+					rockchip_i2s_reset(i2s);
 					break;
 				}
 			}
@@ -629,6 +646,14 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 		i2s->pins = of_id->data;
 	}
 
+	i2s->reset_m = devm_reset_control_get_optional(&pdev->dev, "reset-m");
+	if (IS_ERR(i2s->reset_m))
+		return PTR_ERR(i2s->reset_m);
+
+	i2s->reset_h = devm_reset_control_get_optional(&pdev->dev, "reset-h");
+	if (IS_ERR(i2s->reset_h))
+		return PTR_ERR(i2s->reset_h);
+
 	/* try to prepare related clocks */
 	i2s->hclk = devm_clk_get(&pdev->dev, "i2s_hclk");
 	if (IS_ERR(i2s->hclk)) {
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
