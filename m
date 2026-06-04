Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA9ACD6E55
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 03:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxgTrvPBu7Vn/pQvrwLbSF/ul5Jmei98MXv7xSQ/f6Q=; b=YqKd3NZLtRkl8W
	WhBqESN257//niuh55cK8KfF9MY1YAeEW0CPeQ7Ah4CO5nQp00zWG/woIKsBaYiT87oh1KoqbT4R2
	qBQf/BiGdkeoavS1St75IjSEAIMRzfebKUGI+norMQqjNCa2/OK+Shn8xX6DmMX0o4F31NWPgudPt
	G0a00kRYc7lxQHn2lRYePka9ikLxRnQC4/H9vao9p3iwJi/SUFr++ArN4ZRcv4mgVjIwmQMJLG+AR
	67dRXgMq3r1kH4Jlg/utxz1KOnU3TAPT6T3/aMmOIwIZYz/0OHQQCf/axaBV1geU3wGrnBR8l54+F
	lbSl1R7FzO2YmTroIoXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysa-0000000G75g-0U78;
	Thu, 04 Jun 2026 03:36:24 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysX-0000000G736-2RxF
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 03:36:22 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-8423f52af13so154130b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 20:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780544181; x=1781148981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6nO3aH+rs1DO+SPkK+tgw7RxXFDKMNno/ViWk7zADc0=;
        b=AN2qJoBHVLDAC6XZ+95sgEU9AQr83YxYQYeccI85It3EPOTxlc5He7uT1jpN3lNU4o
         rDBfP3fmtQaNwdNuJyQoRA3UZ/U3yXBe0So+2irul8SnIpfAR/FiU2MTQwAWnf9y5dWq
         /EYMN9baj9Wmkw7fOOUtQcd8s3JIFWf5jbmQmf7fE0zSQAgDfhrcepii5y4O60I9UTd7
         ogW4CMULsz4DGAL7vUWBJW/ZF2MMVgrn74duM+27mzoNSOSBwx73A3rn5G4P4Tt+Cjqw
         d0Nj/sQdCLMAnT1LxWhQI+jFhCh1ETwRbcK+Wdeh9WGtiUixpTuV8zjXRUm94kfmYKrG
         jqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780544181; x=1781148981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6nO3aH+rs1DO+SPkK+tgw7RxXFDKMNno/ViWk7zADc0=;
        b=oa5Xr6xunCyVgxTe+Xzx6tMZpIobeu54dAyfUJTXViDbWCLZtbEjcDyj7079oQK0LS
         wLJiCT9t2fj85IKoS9lA2io+1oymFv4OqARmaS8vIz0xchNND9SYzQdEMXMS5Mt+XPnF
         Mkf5XJqKG07XDKOEzFZNC7Seg4wQBxN3wWpDCCSJIoWv8N249IO+x8qhmZyglU6ejOvL
         uVI4H1MtZHfNLR5L1FW8K9hQfu2Hfw98yZ8zuKjFcWmH9PA5fPLnViYySI5gj7zQnlaO
         kD7FfIX1qoFM4VOVm6wBGjdJMgD7joh0W2ryuWVzkcRJh+pE2xdo32Wawu5gbr2E0OX6
         7k7g==
X-Forwarded-Encrypted: i=1; AFNElJ8VmDGObge8j2V65oI5iZf1U1KXtdUIWKWYGFtvH9wAoDmB+5KicGdEyB7ihhUAXJEXYJPN5X6Yk/ahdXfIMg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/pzRRKm0S1sEB0YL9J0lBHhaaAq9TLbQ0qjbxdOyHNEm8upSG
	KwGT/zDFurih9TWgzaFjvO3OTEn6isMfmsvCw6Kex4huEMbIbcw4vuot
X-Gm-Gg: Acq92OEM7XSOUiPHWOfanTPCvSS8qa4L3MYKTGF7GGP3OkptNonlYkuSqx5+54XE3sZ
	IgNPgH1AHCEN1ZmLfkJb52vYhRO3y3oKuw5jHCvteGowK/FAg2q6Qaxy9uPWRRxmcp3Y0vpUps9
	FdRMLxJQ0FKOr5XeoerjZUv/5GiUm2O8mI5zwGFMua7VIP7VUFMxx7/Sg8JU+M+pZRUux/xTlFu
	dbePVMiwTbCALpNfnUmV30CRFi6m4PPgybnO4Wy6sU0yDT/LgLM5tEwXEnM5BBfiU9QwUfnNPWO
	N70c+bHDomrGGC2M/ZWLgyo8KaSCD1kocAxQiYtxfT0zcASfYZ826cD/Qhuyuh9svc/g3ypFBzl
	hWmwJEmqlUf2Y+Bi84dXP948+stlDQNua8rJIv1ZKLS8qppzrsXzfIt8hPgL/MqA+D/zCBuEmPr
	21HyFpEZ1EQY609fuazs+ueM535hC/b5vYrB9LRwsUuKyx+HAU6nughAOm0dP50EpSZmnMnI2Hg
	eeLS0I=
X-Received: by 2002:a05:6a00:6c9d:b0:842:708f:39a6 with SMTP id d2e1a72fcca58-84284c4aa40mr5735294b3a.10.1780544180694;
        Wed, 03 Jun 2026 20:36:20 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8428221a7e9sm5539745b3a.11.2026.06.03.20.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 20:36:20 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 3/3] ASoC: rockchip: rockchip_sai: Use guard() for spin locks
Date: Thu,  4 Jun 2026 10:35:53 +0700
Message-ID: <20260604033554.96996-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604033554.96996-1-phucduc.bui@gmail.com>
References: <20260604033554.96996-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_203621_641558_9E36978C 
X-CRM114-Status: GOOD (  18.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

From: bui duc phuc <phucduc.bui@gmail.com>

Clean up the code using guard() for spin locks.
Merely code refactoring, and no behavior change.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

NOTE: This patch is compile-tested only.
Changes in v2:
 - Remove the unnecessary err_pm_put label in rockchip_sai_hw_params().

 sound/soc/rockchip/rockchip_sai.c | 262 +++++++++++++++---------------
 1 file changed, 129 insertions(+), 133 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index ed393e5034a4..a195e96fed0a 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -18,7 +18,6 @@
 #include <sound/pcm_params.h>
 #include <sound/dmaengine_pcm.h>
 #include <sound/tlv.h>
-
 #include "rockchip_sai.h"
 
 #define DRV_NAME		"rockchip-sai"
@@ -216,14 +215,12 @@ static void rockchip_sai_xfer_clk_stop_and_wait(struct rk_sai_dev *sai, unsigned
 static int rockchip_sai_runtime_suspend(struct device *dev)
 {
 	struct rk_sai_dev *sai = dev_get_drvdata(dev);
-	unsigned long flags;
 
 	rockchip_sai_fsync_lost_detect(sai, 0);
 	rockchip_sai_fsync_err_detect(sai, 0);
 
-	spin_lock_irqsave(&sai->xfer_lock, flags);
-	rockchip_sai_xfer_clk_stop_and_wait(sai, NULL);
-	spin_unlock_irqrestore(&sai->xfer_lock, flags);
+	scoped_guard(spinlock_irqsave, &sai->xfer_lock)
+		rockchip_sai_xfer_clk_stop_and_wait(sai, NULL);
 
 	regcache_cache_only(sai->regmap, true);
 	/*
@@ -483,7 +480,6 @@ static int rockchip_sai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	struct rk_sai_dev *sai = snd_soc_dai_get_drvdata(dai);
 	unsigned int mask = 0, val = 0;
 	unsigned int clk_gates;
-	unsigned long flags;
 	int ret = 0;
 
 	pm_runtime_get_sync(dai->dev);
@@ -499,56 +495,56 @@ static int rockchip_sai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		sai->is_master_mode = false;
 		break;
 	default:
-		ret = -EINVAL;
-		goto err_pm_put;
-	}
-
-	spin_lock_irqsave(&sai->xfer_lock, flags);
-	rockchip_sai_xfer_clk_stop_and_wait(sai, &clk_gates);
-	if (sai->initialized) {
-		if (sai->has_capture && sai->has_playback)
-			rockchip_sai_xfer_stop(sai, -1);
-		else if (sai->has_capture)
-			rockchip_sai_xfer_stop(sai, SNDRV_PCM_STREAM_CAPTURE);
-		else
-			rockchip_sai_xfer_stop(sai, SNDRV_PCM_STREAM_PLAYBACK);
-	} else {
-		rockchip_sai_clear(sai, 0);
-		sai->initialized = true;
+		pm_runtime_put(dai->dev);
+		return -EINVAL;
 	}
 
-	regmap_update_bits(sai->regmap, SAI_CKR, mask, val);
+	scoped_guard(spinlock_irqsave, &sai->xfer_lock) {
+		rockchip_sai_xfer_clk_stop_and_wait(sai, &clk_gates);
+		if (sai->initialized) {
+			if (sai->has_capture && sai->has_playback)
+				rockchip_sai_xfer_stop(sai, -1);
+			else if (sai->has_capture)
+				rockchip_sai_xfer_stop(sai, SNDRV_PCM_STREAM_CAPTURE);
+			else
+				rockchip_sai_xfer_stop(sai, SNDRV_PCM_STREAM_PLAYBACK);
+		} else {
+			rockchip_sai_clear(sai, 0);
+			sai->initialized = true;
+		}
 
-	mask = SAI_CKR_CKP_MASK | SAI_CKR_FSP_MASK;
-	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
-	case SND_SOC_DAIFMT_NB_NF:
-		val = SAI_CKR_CKP_NORMAL | SAI_CKR_FSP_NORMAL;
-		break;
-	case SND_SOC_DAIFMT_NB_IF:
-		val = SAI_CKR_CKP_NORMAL | SAI_CKR_FSP_INVERTED;
-		break;
-	case SND_SOC_DAIFMT_IB_NF:
-		val = SAI_CKR_CKP_INVERTED | SAI_CKR_FSP_NORMAL;
-		break;
-	case SND_SOC_DAIFMT_IB_IF:
-		val = SAI_CKR_CKP_INVERTED | SAI_CKR_FSP_INVERTED;
-		break;
-	default:
-		ret = -EINVAL;
-		goto err_xfer_unlock;
-	}
+		regmap_update_bits(sai->regmap, SAI_CKR, mask, val);
+
+		mask = SAI_CKR_CKP_MASK | SAI_CKR_FSP_MASK;
+		switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
+		case SND_SOC_DAIFMT_NB_NF:
+			val = SAI_CKR_CKP_NORMAL | SAI_CKR_FSP_NORMAL;
+			break;
+		case SND_SOC_DAIFMT_NB_IF:
+			val = SAI_CKR_CKP_NORMAL | SAI_CKR_FSP_INVERTED;
+			break;
+		case SND_SOC_DAIFMT_IB_NF:
+			val = SAI_CKR_CKP_INVERTED | SAI_CKR_FSP_NORMAL;
+			break;
+		case SND_SOC_DAIFMT_IB_IF:
+			val = SAI_CKR_CKP_INVERTED | SAI_CKR_FSP_INVERTED;
+			break;
+		default:
+			ret = -EINVAL;
+			break;
+		}
 
-	regmap_update_bits(sai->regmap, SAI_CKR, mask, val);
+		if (ret == 0) {
+			regmap_update_bits(sai->regmap, SAI_CKR, mask, val);
+			rockchip_sai_fmt_create(sai, fmt);
+		}
 
-	rockchip_sai_fmt_create(sai, fmt);
+		if (clk_gates)
+			regmap_update_bits(sai->regmap, SAI_XFER,
+					SAI_XFER_CLK_MASK | SAI_XFER_FSS_MASK,
+					clk_gates);
+	}
 
-err_xfer_unlock:
-	if (clk_gates)
-		regmap_update_bits(sai->regmap, SAI_XFER,
-				SAI_XFER_CLK_MASK | SAI_XFER_FSS_MASK,
-				clk_gates);
-	spin_unlock_irqrestore(&sai->xfer_lock, flags);
-err_pm_put:
 	pm_runtime_put(dai->dev);
 
 	return ret;
@@ -564,7 +560,6 @@ static int rockchip_sai_hw_params(struct snd_pcm_substream *substream,
 	unsigned int ch_per_lane, slot_width;
 	unsigned int val, fscr, reg;
 	unsigned int lanes, req_lanes;
-	unsigned long flags;
 	int ret = 0;
 
 	if (!rockchip_sai_stream_valid(substream, dai))
@@ -591,8 +586,8 @@ static int rockchip_sai_hw_params(struct snd_pcm_substream *substream,
 			dev_err(sai->dev, "not enough lanes (%d) for requested number of %s channels (%d)\n",
 				lanes, reg == SAI_TXCR ? "playback" : "capture",
 				params_channels(params));
-			ret = -EINVAL;
-			goto err_pm_put;
+			pm_runtime_put(sai->dev);
+			return -EINVAL;
 		} else {
 			lanes = req_lanes;
 		}
@@ -618,84 +613,88 @@ static int rockchip_sai_hw_params(struct snd_pcm_substream *substream,
 		val = SAI_XCR_VDW(32);
 		break;
 	default:
-		ret = -EINVAL;
-		goto err_pm_put;
+		pm_runtime_put(sai->dev);
+		return -EINVAL;
 	}
 
 	val |= SAI_XCR_CSR(lanes);
 
-	spin_lock_irqsave(&sai->xfer_lock, flags);
-
-	regmap_update_bits(sai->regmap, reg, SAI_XCR_VDW_MASK | SAI_XCR_CSR_MASK, val);
+	scoped_guard(spinlock_irqsave, &sai->xfer_lock) {
 
-	if (!sai->is_tdm)
-		regmap_update_bits(sai->regmap, reg, SAI_XCR_SBW_MASK,
-				   SAI_XCR_SBW(params_physical_width(params)));
+		regmap_update_bits(sai->regmap, reg, SAI_XCR_VDW_MASK | SAI_XCR_CSR_MASK, val);
 
-	regmap_read(sai->regmap, reg, &val);
+		if (!sai->is_tdm)
+			regmap_update_bits(sai->regmap, reg, SAI_XCR_SBW_MASK,
+					   SAI_XCR_SBW(params_physical_width(params)));
 
-	slot_width = SAI_XCR_SBW_V(val);
-	ch_per_lane = params_channels(params) / lanes;
+		regmap_read(sai->regmap, reg, &val);
 
-	regmap_update_bits(sai->regmap, reg, SAI_XCR_SNB_MASK,
-			   SAI_XCR_SNB(ch_per_lane));
+		slot_width = SAI_XCR_SBW_V(val);
+		ch_per_lane = params_channels(params) / lanes;
 
-	fscr = SAI_FSCR_FW(sai->fw_ratio * slot_width * ch_per_lane);
+		regmap_update_bits(sai->regmap, reg, SAI_XCR_SNB_MASK,
+				   SAI_XCR_SNB(ch_per_lane));
 
-	switch (sai->fpw) {
-	case FPW_ONE_BCLK_WIDTH:
-		fscr |= SAI_FSCR_FPW(1);
-		break;
-	case FPW_ONE_SLOT_WIDTH:
-		fscr |= SAI_FSCR_FPW(slot_width);
-		break;
-	case FPW_HALF_FRAME_WIDTH:
-		fscr |= SAI_FSCR_FPW(sai->fw_ratio * slot_width * ch_per_lane / 2);
-		break;
-	default:
-		dev_err(sai->dev, "Invalid Frame Pulse Width %d\n", sai->fpw);
-		ret = -EINVAL;
-		goto err_xfer_unlock;
-	}
+		fscr = SAI_FSCR_FW(sai->fw_ratio * slot_width * ch_per_lane);
 
-	regmap_update_bits(sai->regmap, SAI_FSCR,
-			   SAI_FSCR_FW_MASK | SAI_FSCR_FPW_MASK, fscr);
-
-	if (sai->is_master_mode) {
-		bclk_rate = sai->fw_ratio * slot_width * ch_per_lane * params_rate(params);
-		ret = clk_set_rate(sai->mclk, sai->mclk_rate);
-		if (ret) {
-			dev_err(sai->dev, "Failed to set mclk to %u: %pe\n",
-				sai->mclk_rate, ERR_PTR(ret));
-			goto err_xfer_unlock;
-		}
-
-		mclk_rate = clk_get_rate(sai->mclk);
-		if (mclk_rate < bclk_rate) {
-			dev_err(sai->dev, "Mismatch mclk: %u, at least %u\n",
-				mclk_rate, bclk_rate);
+		switch (sai->fpw) {
+		case FPW_ONE_BCLK_WIDTH:
+			fscr |= SAI_FSCR_FPW(1);
+			break;
+		case FPW_ONE_SLOT_WIDTH:
+			fscr |= SAI_FSCR_FPW(slot_width);
+			break;
+		case FPW_HALF_FRAME_WIDTH:
+			fscr |= SAI_FSCR_FPW(sai->fw_ratio * slot_width * ch_per_lane / 2);
+			break;
+		default:
+			dev_err(sai->dev, "Invalid Frame Pulse Width %d\n", sai->fpw);
 			ret = -EINVAL;
-			goto err_xfer_unlock;
+			break;
 		}
 
-		div_bclk = DIV_ROUND_CLOSEST(mclk_rate, bclk_rate);
-		mclk_req_rate = bclk_rate * div_bclk;
-
-		if (mclk_rate < mclk_req_rate - CLK_SHIFT_RATE_HZ_MAX ||
-		    mclk_rate > mclk_req_rate + CLK_SHIFT_RATE_HZ_MAX) {
-			dev_err(sai->dev, "Mismatch mclk: %u, expected %u (+/- %dHz)\n",
-				mclk_rate, mclk_req_rate, CLK_SHIFT_RATE_HZ_MAX);
-			ret = -EINVAL;
-			goto err_xfer_unlock;
+		if (ret == 0) {
+			regmap_update_bits(sai->regmap, SAI_FSCR,
+					   SAI_FSCR_FW_MASK | SAI_FSCR_FPW_MASK, fscr);
+
+			if (sai->is_master_mode) {
+				bclk_rate = sai->fw_ratio * slot_width *
+						ch_per_lane * params_rate(params);
+				ret = clk_set_rate(sai->mclk, sai->mclk_rate);
+				if (ret)
+					dev_err(sai->dev, "Failed to set mclk to %u: %pe\n",
+						sai->mclk_rate, ERR_PTR(ret));
+				else {
+					mclk_rate = clk_get_rate(sai->mclk);
+					if (mclk_rate < bclk_rate) {
+						dev_err(sai->dev, "Mismatch mclk: %u, at least %u\n",
+							mclk_rate, bclk_rate);
+						ret = -EINVAL;
+					} else {
+
+						div_bclk = DIV_ROUND_CLOSEST(mclk_rate, bclk_rate);
+						mclk_req_rate = bclk_rate * div_bclk;
+
+						if (mclk_rate <
+							mclk_req_rate - CLK_SHIFT_RATE_HZ_MAX ||
+						    mclk_rate >
+							mclk_req_rate + CLK_SHIFT_RATE_HZ_MAX) {
+							dev_err(sai->dev,
+								"Mismatch mclk: %u, expected %u (+/- %dHz)\n",
+								mclk_rate, mclk_req_rate,
+								CLK_SHIFT_RATE_HZ_MAX);
+							ret = -EINVAL;
+						} else
+							regmap_update_bits(sai->regmap,
+									SAI_CKR,
+									SAI_CKR_MDIV_MASK,
+									SAI_CKR_MDIV(div_bclk));
+					}
+				}
+			}
 		}
-
-		regmap_update_bits(sai->regmap, SAI_CKR, SAI_CKR_MDIV_MASK,
-				   SAI_CKR_MDIV(div_bclk));
 	}
 
-err_xfer_unlock:
-	spin_unlock_irqrestore(&sai->xfer_lock, flags);
-err_pm_put:
 	pm_runtime_put(sai->dev);
 
 	return ret;
@@ -705,7 +704,6 @@ static int rockchip_sai_prepare(struct snd_pcm_substream *substream,
 				struct snd_soc_dai *dai)
 {
 	struct rk_sai_dev *sai = snd_soc_dai_get_drvdata(dai);
-	unsigned long flags;
 
 	if (!rockchip_sai_stream_valid(substream, dai))
 		return 0;
@@ -726,13 +724,12 @@ static int rockchip_sai_prepare(struct snd_pcm_substream *substream,
 		 * udelay falls short.
 		 */
 		udelay(20);
-		spin_lock_irqsave(&sai->xfer_lock, flags);
-		regmap_update_bits(sai->regmap, SAI_XFER,
-				   SAI_XFER_CLK_MASK |
-				   SAI_XFER_FSS_MASK,
-				   SAI_XFER_CLK_EN |
-				   SAI_XFER_FSS_EN);
-		spin_unlock_irqrestore(&sai->xfer_lock, flags);
+		scoped_guard(spinlock_irqsave, &sai->xfer_lock)
+			regmap_update_bits(sai->regmap, SAI_XFER,
+					   SAI_XFER_CLK_MASK |
+					   SAI_XFER_FSS_MASK,
+					   SAI_XFER_CLK_EN |
+					   SAI_XFER_FSS_EN);
 	}
 
 	rockchip_sai_fsync_lost_detect(sai, 1);
@@ -915,7 +912,6 @@ static int rockchip_sai_set_tdm_slot(struct snd_soc_dai *dai,
 				     int slots, int slot_width)
 {
 	struct rk_sai_dev *sai = snd_soc_dai_get_drvdata(dai);
-	unsigned long flags;
 	unsigned int clk_gates;
 	int sw = slot_width;
 
@@ -931,16 +927,16 @@ static int rockchip_sai_set_tdm_slot(struct snd_soc_dai *dai,
 		return -EINVAL;
 
 	pm_runtime_get_sync(dai->dev);
-	spin_lock_irqsave(&sai->xfer_lock, flags);
-	rockchip_sai_xfer_clk_stop_and_wait(sai, &clk_gates);
-	regmap_update_bits(sai->regmap, SAI_TXCR, SAI_XCR_SBW_MASK,
-			   SAI_XCR_SBW(sw));
-	regmap_update_bits(sai->regmap, SAI_RXCR, SAI_XCR_SBW_MASK,
-			   SAI_XCR_SBW(sw));
-	regmap_update_bits(sai->regmap, SAI_XFER,
-			   SAI_XFER_CLK_MASK | SAI_XFER_FSS_MASK,
-			   clk_gates);
-	spin_unlock_irqrestore(&sai->xfer_lock, flags);
+	scoped_guard(spinlock_irqsave, &sai->xfer_lock) {
+		rockchip_sai_xfer_clk_stop_and_wait(sai, &clk_gates);
+		regmap_update_bits(sai->regmap, SAI_TXCR, SAI_XCR_SBW_MASK,
+				   SAI_XCR_SBW(sw));
+		regmap_update_bits(sai->regmap, SAI_RXCR, SAI_XCR_SBW_MASK,
+				   SAI_XCR_SBW(sw));
+		regmap_update_bits(sai->regmap, SAI_XFER,
+				   SAI_XFER_CLK_MASK | SAI_XFER_FSS_MASK,
+				   clk_gates);
+	}
 	pm_runtime_put(dai->dev);
 
 	return 0;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
