Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E84BCD6E71
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 03:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8Veu0j3MrsV1B0LOVXoyciV/ZUXFpemCPx1qGNzJKU=; b=kQvW1GJR9Fuvp/
	TN9rw1GS2WxxqoCpzD9P4MbBGow4NNKtWPE99p2xxqnIaMK5lcXmP14Mg6xU0Xp2/4Pm5bAnYDr9s
	Rf/u7qsClgNash87Weh7O3woqEPtlzSYoJFCDxSXNsdEHiJmsMzMko/dEyf8AUc6KregSu4CRfcNg
	kejMpRqsi3vNB0nYSnKttEB7KzKROU9+kSj+2tjbRvtdragk+IwKDVHpBkn7XLLP91VhNn4v9XyiG
	/s0BcBFxs5OMP3+PF+zylpey34sRGquEtWOHjK9b4lKqFj8OIWVH8BEezYuTDt2eqewAfT0L3Iz9x
	j5o3NgBC/pEwYlsG4Ppg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysR-0000000G6zH-3Q1h;
	Thu, 04 Jun 2026 03:36:15 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysP-0000000G6xL-2gjp
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 03:36:14 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-8422871b42dso118847b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 20:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780544173; x=1781148973; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TEBgbFdEMrwR0Bbx/xOW9IyMneCSJBVo6qr7YB9TYfA=;
        b=SixoUEN+TCFpremiLpzrUXYoANknE/fn2yl34hC2puYSxMiUNu0Mjz0aQj0bvh+X32
         tea9YrHyH2O6z0gwr4xP1OG3iZxVK/RDSnkLNOv44VL4Uh+DFIOtKqeqEiFqRk40NfLd
         ZQEJf+dP7lB40+Gj3SFK+MaTs20SGjXrfY3adcsI+yk19zQCEDe9ic4dM7RET3mpFm4v
         KEiBeohPfU1OPNVeMfDPmQzauTm15JEImOm8ta+iEfVHVar8fbZ8HKWmKLVBldBS9IoN
         KXfifqqrk4BDVSH2R7vnbrL1IMBv2QacT2ymUjS3/WVLWmpz3cW662yjENJnBO8HE+Xq
         P72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780544173; x=1781148973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TEBgbFdEMrwR0Bbx/xOW9IyMneCSJBVo6qr7YB9TYfA=;
        b=MLOt5RQ1oitbVE2Az1HGmq8EqsPa+IaH/ziDziJ3O5mvvnwnZRPwu1dj38LiUssnJg
         1S9gQbxw6eM9GDhkjVcnCeDmBFePNnMm3YW7CRtEzZmiV+cQv9t0VopTbMNZR1LzkLHx
         akJevCXkV9ieQ18lJxvA5x0c+e8oBsfNpXQCUbaH4V3d5+4C07I7/JHvcDws79lSH6A6
         SvWgdEHeDhEnCeagOX7jaYkLP5Yyzoh7XFk6s0ucKMc6zwggE+IGWyFc7A99I+HCeN9e
         KhPkbuWqwfaOSar6uTPlbreL1eAmBYPV/n7EFq2EZvkBgXu8P9Niq8E2nHTUwaQJhhao
         IXwA==
X-Forwarded-Encrypted: i=1; AFNElJ9zmS84ygkVbHTCuZL66lWxcTOHVJVHpg99nYCVCQEKaTIdfU/jIMw1ilJtBPziq9zee0sth7nhGvBSQwyRTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwF67JGxt3GyjMTXbF0hPYtABHImkXI8tkSQhrTWPG8n4HST+K4
	PdaBF90Pb1BAcN3VqnxozdDjnWoyc5KmVIG4nQ32Kye30FdLit/vhmbN
X-Gm-Gg: Acq92OGsa4lZa5bQ+rGmFlTkyExK7+dqS1b9MhmcrL2uiRDMxbFHIUMKTEavciDXgsd
	KytglARMc8fehBW9eu0DRW3D3EFl6mimAaRZwTYUK2OR4DlbCCRBptCK4QjHPPI6mPOPpsDjMgN
	Bg3kRYFRP3XS7wNiOdkMe1xlFC/1vXqphFYt8CjTqd8jFaowuGRnFsNwZC3HKuA5qDx9h9PWSzZ
	sbynYUAyIdtFDmZAEogmWJChZzmqJ/leapjRjjSOLmj2+IqrHsPGNYvp55iqBmsjj4/Zgi02qyD
	yPucVPAwhY42+zWn0OsD1INkSpOTOPhzfwT5NryoC2aLI+4ZEr+Dhd60EkVAo5jqFmg4xRADwI7
	6J7ePeiQuPM1owOP4qMghK1S8Dz5Nr89O62XLMOJRa9UEQkpwrIiZNZmaCe308ZUg4FOKQPPVWt
	j5W2CtQq3P2iyjult2hfhAX1yPiCQDxveXyiKnxRvf2c6QBb9cUx5pMokqrUS6Mt7UEAi0
X-Received: by 2002:a05:6a00:b483:b0:842:2ddb:e303 with SMTP id d2e1a72fcca58-84284da5a08mr6132587b3a.12.1780544172780;
        Wed, 03 Jun 2026 20:36:12 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8428221a7e9sm5539745b3a.11.2026.06.03.20.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 20:36:12 -0700 (PDT)
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
Subject: [PATCH v2 1/3] ASoC: rockchip: rockchip_i2s: Use guard() for spin locks
Date: Thu,  4 Jun 2026 10:35:51 +0700
Message-ID: <20260604033554.96996-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604033554.96996-1-phucduc.bui@gmail.com>
References: <20260604033554.96996-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_203613_744932_1DEAF37E 
X-CRM114-Status: GOOD (  13.66  )
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

 sound/soc/rockchip/rockchip_i2s.c | 160 +++++++++++++++---------------
 1 file changed, 80 insertions(+), 80 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 0a0a95b4f520..5a5087f4ae03 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -127,52 +127,52 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 	unsigned int val = 0;
 	int ret = 0;
 
-	spin_lock(&i2s->lock);
-	if (on) {
-		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
-					 I2S_DMACR_TDE_ENABLE,
-					 I2S_DMACR_TDE_ENABLE);
-		if (ret < 0)
-			goto end;
-		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
-					 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-					 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
-		if (ret < 0)
-			goto end;
-		i2s->tx_start = true;
-	} else {
-		i2s->tx_start = false;
-
-		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
-					 I2S_DMACR_TDE_ENABLE,
-					 I2S_DMACR_TDE_DISABLE);
-		if (ret < 0)
-			goto end;
-
-		if (!i2s->rx_start) {
+	scoped_guard(spinlock, &i2s->lock) {
+		if (on) {
+			ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+						 I2S_DMACR_TDE_ENABLE,
+						 I2S_DMACR_TDE_ENABLE);
+			if (ret < 0)
+				break;
 			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
 						 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-						 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+						 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
 			if (ret < 0)
-				goto end;
-			udelay(150);
-			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
-						 I2S_CLR_TXC | I2S_CLR_RXC,
-						 I2S_CLR_TXC | I2S_CLR_RXC);
-			if (ret < 0)
-				goto end;
-			ret = regmap_read_poll_timeout_atomic(i2s->regmap,
-							      I2S_CLR,
-							      val,
-							      val == 0,
-							      20,
-							      200);
+				break;
+			i2s->tx_start = true;
+		} else {
+			i2s->tx_start = false;
+
+			ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+						 I2S_DMACR_TDE_ENABLE,
+						 I2S_DMACR_TDE_DISABLE);
 			if (ret < 0)
-				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
+				break;
+
+			if (!i2s->rx_start) {
+				ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+							 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+							 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+				if (ret < 0)
+					break;
+				udelay(150);
+				ret = regmap_update_bits(i2s->regmap, I2S_CLR,
+							 I2S_CLR_TXC | I2S_CLR_RXC,
+						 I2S_CLR_TXC | I2S_CLR_RXC);
+				if (ret < 0)
+					break;
+				ret = regmap_read_poll_timeout_atomic(i2s->regmap,
+								      I2S_CLR,
+								      val,
+								      val == 0,
+								      20,
+								      200);
+				if (ret < 0)
+					dev_warn(i2s->dev, "fail to clear: %d\n", ret);
+			}
 		}
 	}
-end:
-	spin_unlock(&i2s->lock);
+
 	if (ret < 0)
 		dev_err(i2s->dev, "lrclk update failed\n");
 
@@ -184,53 +184,53 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 	unsigned int val = 0;
 	int ret = 0;
 
-	spin_lock(&i2s->lock);
-	if (on) {
-		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
-					 I2S_DMACR_RDE_ENABLE,
-					 I2S_DMACR_RDE_ENABLE);
-		if (ret < 0)
-			goto end;
-
-		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
-					 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-					 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
-		if (ret < 0)
-			goto end;
-		i2s->rx_start = true;
-	} else {
-		i2s->rx_start = false;
-
-		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
-					 I2S_DMACR_RDE_ENABLE,
-					 I2S_DMACR_RDE_DISABLE);
-		if (ret < 0)
-			goto end;
+	scoped_guard(spinlock, &i2s->lock) {
+		if (on) {
+			ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+						 I2S_DMACR_RDE_ENABLE,
+						 I2S_DMACR_RDE_ENABLE);
+			if (ret < 0)
+				break;
 
-		if (!i2s->tx_start) {
 			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
 						 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-						 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+						 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
 			if (ret < 0)
-				goto end;
-			udelay(150);
-			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
-						 I2S_CLR_TXC | I2S_CLR_RXC,
-						 I2S_CLR_TXC | I2S_CLR_RXC);
-			if (ret < 0)
-				goto end;
-			ret = regmap_read_poll_timeout_atomic(i2s->regmap,
-							      I2S_CLR,
-							      val,
-							      val == 0,
-							      20,
-							      200);
+				break;
+			i2s->rx_start = true;
+		} else {
+			i2s->rx_start = false;
+
+			ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+						 I2S_DMACR_RDE_ENABLE,
+						 I2S_DMACR_RDE_DISABLE);
 			if (ret < 0)
-				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
+				break;
+
+			if (!i2s->tx_start) {
+				ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+							 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+							 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+				if (ret < 0)
+					break;
+				udelay(150);
+				ret = regmap_update_bits(i2s->regmap, I2S_CLR,
+							 I2S_CLR_TXC | I2S_CLR_RXC,
+							 I2S_CLR_TXC | I2S_CLR_RXC);
+				if (ret < 0)
+					break;
+				ret = regmap_read_poll_timeout_atomic(i2s->regmap,
+								      I2S_CLR,
+								      val,
+								      val == 0,
+								      20,
+								      200);
+				if (ret < 0)
+					dev_warn(i2s->dev, "fail to clear: %d\n", ret);
+			}
 		}
 	}
-end:
-	spin_unlock(&i2s->lock);
+
 	if (ret < 0)
 		dev_err(i2s->dev, "lrclk update failed\n");
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
