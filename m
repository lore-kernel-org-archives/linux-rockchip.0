Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF73FC4320A
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:48:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A63CA60FF2
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 03:48:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A63CA60FF2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaUoJK+CZY+GlnnCWSwQMpWveW64ft2/K3XlJKcQ/fk=; b=0li/rSNR4Vh2Op
	mr5piBhVO5XF1QTbxmVPR7r3aY8ens8JwSClMh/zA3hB4dT88+MkNIHckTk7qfd8aNHlxw19g/Z6Y
	L5pM11E1Q4nPPUoUIvp+chpVeRHC0L5cHYSOhsY0omnt1KcbXc9nTvSF/6Jrr9HyEFaoQq3SF8iQL
	YpOGE91gNxfNS42hWDp0BdJ8u4FbzOSyOnoluiC6ymDoysWArNmjMmI0EA+PTOW6jwshIyjKLEKqt
	x7gqGrsujKaB1b5fxfWmMzsiSsvORKcBU1aSfIwSJLK7L/+a6UC0EWMvxDw1MrriB6JZuQtRadPi5
	RdpCxgiQgmX7M4H1x8Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLHEd-003hRV-NB; Wed, 01 Sep 2021 03:48:23 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLHEY-003hOm-5U
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 03:48:20 +0000
Received: from localhost (unknown [192.168.167.172])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3D061FB597;
 Wed,  1 Sep 2021 11:48:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6276T140523079702272S1630468091356880_; 
 Wed, 01 Sep 2021 11:48:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <449a2f28c7adb87da8493fe004d11afc>
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
Subject: [PATCH v3 1/7] ASoC: rockchip: Add support for rv1126 pdm
Date: Wed,  1 Sep 2021 11:47:57 +0800
Message-Id: <1630468083-7248-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_204818_763541_C3253671 
X-CRM114-Status: GOOD (  18.25  )
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

This patch adds support for rv1126 pdm controller which
redesign cic filiter for better performance.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 sound/soc/rockchip/rockchip_pdm.c | 76 +++++++++++++++++++++++++++++++++++----
 sound/soc/rockchip/rockchip_pdm.h |  3 ++
 2 files changed, 73 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 38bd603..67634d1 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -24,6 +24,7 @@
 enum rk_pdm_version {
 	RK_PDM_RK3229,
 	RK_PDM_RK3308,
+	RK_PDM_RV1126,
 };
 
 struct rk_pdm_dev {
@@ -121,6 +122,55 @@ static unsigned int get_pdm_ds_ratio(unsigned int sr)
 	return ratio;
 }
 
+static unsigned int get_pdm_cic_ratio(unsigned int clk)
+{
+	switch (clk) {
+	case 4096000:
+	case 5644800:
+	case 6144000:
+		return 0;
+	case 2048000:
+	case 2822400:
+	case 3072000:
+		return 1;
+	case 1024000:
+	case 1411200:
+	case 1536000:
+		return 2;
+	default:
+		return 1;
+	}
+}
+
+static unsigned int samplerate_to_bit(unsigned int samplerate)
+{
+	switch (samplerate) {
+	case 8000:
+	case 11025:
+	case 12000:
+		return 0;
+	case 16000:
+	case 22050:
+	case 24000:
+		return 1;
+	case 32000:
+		return 2;
+	case 44100:
+	case 48000:
+		return 3;
+	case 64000:
+	case 88200:
+	case 96000:
+		return 4;
+	case 128000:
+	case 176400:
+	case 192000:
+		return 5;
+	default:
+		return 1;
+	}
+}
+
 static inline struct rk_pdm_dev *to_info(struct snd_soc_dai *dai)
 {
 	return snd_soc_dai_get_drvdata(dai);
@@ -166,7 +216,8 @@ static int rockchip_pdm_hw_params(struct snd_pcm_substream *substream,
 	if (ret)
 		return -EINVAL;
 
-	if (pdm->version == RK_PDM_RK3308) {
+	if (pdm->version == RK_PDM_RK3308 ||
+	    pdm->version == RK_PDM_RV1126) {
 		rational_best_approximation(clk_out, clk_src,
 					    GENMASK(16 - 1, 0),
 					    GENMASK(16 - 1, 0),
@@ -194,8 +245,18 @@ static int rockchip_pdm_hw_params(struct snd_pcm_substream *substream,
 				   PDM_CLK_FD_RATIO_MSK,
 				   val);
 	}
-	val = get_pdm_ds_ratio(samplerate);
-	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_DS_RATIO_MSK, val);
+
+	if (pdm->version == RK_PDM_RV1126) {
+		val = get_pdm_cic_ratio(clk_out);
+		regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_CIC_RATIO_MSK, val);
+		val = samplerate_to_bit(samplerate);
+		regmap_update_bits(pdm->regmap, PDM_CTRL0,
+				   PDM_SAMPLERATE_MSK, PDM_SAMPLERATE(val));
+	} else {
+		val = get_pdm_ds_ratio(samplerate);
+		regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, PDM_DS_RATIO_MSK, val);
+	}
+
 	regmap_update_bits(pdm->regmap, PDM_HPF_CTRL,
 			   PDM_HPF_CF_MSK, PDM_HPF_60HZ);
 	regmap_update_bits(pdm->regmap, PDM_HPF_CTRL,
@@ -441,9 +502,10 @@ static bool rockchip_pdm_precious_reg(struct device *dev, unsigned int reg)
 }
 
 static const struct reg_default rockchip_pdm_reg_defaults[] = {
-	{0x04, 0x78000017},
-	{0x08, 0x0bb8ea60},
-	{0x18, 0x0000001f},
+	{ PDM_CTRL0, 0x78000017 },
+	{ PDM_CTRL1, 0x0bb8ea60 },
+	{ PDM_CLK_CTRL, 0x0000e401 },
+	{ PDM_DMA_CTRL, 0x0000001f },
 };
 
 static const struct regmap_config rockchip_pdm_regmap_config = {
@@ -469,6 +531,8 @@ static const struct of_device_id rockchip_pdm_match[] __maybe_unused = {
 	  .data = (void *)RK_PDM_RK3308 },
 	{ .compatible = "rockchip,rk3308-pdm",
 	  .data = (void *)RK_PDM_RK3308 },
+	{ .compatible = "rockchip,rv1126-pdm",
+	  .data = (void *)RK_PDM_RV1126 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, rockchip_pdm_match);
diff --git a/sound/soc/rockchip/rockchip_pdm.h b/sound/soc/rockchip/rockchip_pdm.h
index 8e5bbaf..13bfbc2 100644
--- a/sound/soc/rockchip/rockchip_pdm.h
+++ b/sound/soc/rockchip/rockchip_pdm.h
@@ -41,6 +41,8 @@
 #define PDM_PATH1_EN		BIT(28)
 #define PDM_PATH0_EN		BIT(27)
 #define PDM_HWT_EN		BIT(26)
+#define PDM_SAMPLERATE_MSK	GENMASK(7, 5)
+#define PDM_SAMPLERATE(x)	((x) << 5)
 #define PDM_VDW_MSK		(0x1f << 0)
 #define PDM_VDW(X)		((X - 1) << 0)
 
@@ -66,6 +68,7 @@
 #define PDM_CLK_1280FS		(0x2 << 0)
 #define PDM_CLK_2560FS		(0x3 << 0)
 #define PDM_CLK_5120FS		(0x4 << 0)
+#define PDM_CIC_RATIO_MSK	(0x3 << 0)
 
 /* PDM HPF CTRL */
 #define PDM_HPF_LE		BIT(3)
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
