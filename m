Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53934C43216
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:19:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2915F60E78
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:19:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2915F60E78
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh9T/xrAjQYCmNBhy9YwYrlc0Tj6tJrIFtmvoxzJ6Zw=; b=i8++tetp+VULuF
	vVjYFO3pDHj6KKXtlKBpUqgCzKnjWEhJlHYBWWJnypZrjacrKT2sNQTBdCzK9JlKSQ45+joqAU1A+
	QxYQqkAWqJsvItLaKs/pRWAH1W8xsqTSlfScufM6UEb+AyTo9KFK4LaBgt6Mf9g/VzuVm+kXxQEsf
	f2XTXRe6oWO44yoAqNczKEKVbkL/FVBGu8+Y9ybKpNxGTf+kx+cArS/VD2+cmA9hwVjf7nvpwnfTO
	l4QrbiwwbMBM/yORhkWyy8Y57jLbzS+cnbgBNmlBEkQoSU+iodlshoijUSVC7oLT+ZFGX4OSHnz+Q
	Xyvu9gqPYWc/SJyIJsYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mISaU-002HuM-20; Tue, 24 Aug 2021 09:19:18 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mISaQ-002Hrn-MZ
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 09:19:16 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 60C58FB89D;
 Tue, 24 Aug 2021 17:19:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P704T139881214887680S1629796736938922_; 
 Tue, 24 Aug 2021 17:19:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6468d61e6fc0bf28c73c76649ed44478>
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
Subject: [PATCH v2 13/15] ASoC: rockchip: i2s: Add support for frame inversion
Date: Tue, 24 Aug 2021 17:18:52 +0800
Message-Id: <1629796734-4243-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_021915_052965_F07DAF81 
X-CRM114-Status: GOOD (  12.75  )
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

This patch adds support for frame inversion.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 20 +++++++++++++++++---
 sound/soc/rockchip/rockchip_i2s.h | 10 ++++++----
 2 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 8898ba4..84884ce 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -233,13 +233,27 @@ static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
 
 	regmap_update_bits(i2s->regmap, I2S_CKR, mask, val);
 
-	mask = I2S_CKR_CKP_MASK;
+	mask = I2S_CKR_CKP_MASK | I2S_CKR_TLP_MASK | I2S_CKR_RLP_MASK;
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 	case SND_SOC_DAIFMT_NB_NF:
-		val = I2S_CKR_CKP_NEG;
+		val = I2S_CKR_CKP_NORMAL |
+		      I2S_CKR_TLP_NORMAL |
+		      I2S_CKR_RLP_NORMAL;
+		break;
+	case SND_SOC_DAIFMT_NB_IF:
+		val = I2S_CKR_CKP_NORMAL |
+		      I2S_CKR_TLP_INVERTED |
+		      I2S_CKR_RLP_INVERTED;
 		break;
 	case SND_SOC_DAIFMT_IB_NF:
-		val = I2S_CKR_CKP_POS;
+		val = I2S_CKR_CKP_INVERTED |
+		      I2S_CKR_TLP_NORMAL |
+		      I2S_CKR_RLP_NORMAL;
+		break;
+	case SND_SOC_DAIFMT_IB_IF:
+		val = I2S_CKR_CKP_INVERTED |
+		      I2S_CKR_TLP_INVERTED |
+		      I2S_CKR_RLP_INVERTED;
 		break;
 	default:
 		ret = -EINVAL;
diff --git a/sound/soc/rockchip/rockchip_i2s.h b/sound/soc/rockchip/rockchip_i2s.h
index fcaae24..251851b 100644
--- a/sound/soc/rockchip/rockchip_i2s.h
+++ b/sound/soc/rockchip/rockchip_i2s.h
@@ -88,15 +88,17 @@
 #define I2S_CKR_MSS_SLAVE	(1 << I2S_CKR_MSS_SHIFT)
 #define I2S_CKR_MSS_MASK	(1 << I2S_CKR_MSS_SHIFT)
 #define I2S_CKR_CKP_SHIFT	26
-#define I2S_CKR_CKP_NEG		(0 << I2S_CKR_CKP_SHIFT)
-#define I2S_CKR_CKP_POS		(1 << I2S_CKR_CKP_SHIFT)
+#define I2S_CKR_CKP_NORMAL	(0 << I2S_CKR_CKP_SHIFT)
+#define I2S_CKR_CKP_INVERTED	(1 << I2S_CKR_CKP_SHIFT)
 #define I2S_CKR_CKP_MASK	(1 << I2S_CKR_CKP_SHIFT)
 #define I2S_CKR_RLP_SHIFT	25
 #define I2S_CKR_RLP_NORMAL	(0 << I2S_CKR_RLP_SHIFT)
-#define I2S_CKR_RLP_OPPSITE	(1 << I2S_CKR_RLP_SHIFT)
+#define I2S_CKR_RLP_INVERTED	(1 << I2S_CKR_RLP_SHIFT)
+#define I2S_CKR_RLP_MASK	(1 << I2S_CKR_RLP_SHIFT)
 #define I2S_CKR_TLP_SHIFT	24
 #define I2S_CKR_TLP_NORMAL	(0 << I2S_CKR_TLP_SHIFT)
-#define I2S_CKR_TLP_OPPSITE	(1 << I2S_CKR_TLP_SHIFT)
+#define I2S_CKR_TLP_INVERTED	(1 << I2S_CKR_TLP_SHIFT)
+#define I2S_CKR_TLP_MASK	(1 << I2S_CKR_TLP_SHIFT)
 #define I2S_CKR_MDIV_SHIFT	16
 #define I2S_CKR_MDIV(x)		((x - 1) << I2S_CKR_MDIV_SHIFT)
 #define I2S_CKR_MDIV_MASK	(0xff << I2S_CKR_MDIV_SHIFT)
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
