Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A41C2CD6E56
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 03:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8Veu0j3MrsV1B0LOVXoyciV/ZUXFpemCPx1qGNzJKU=; b=F5YGRTYxTCgjhz
	/hTCHrPZsuhzwFABkLcUKz1DsE5wQo7Y80sGI72pFSPe41OusNhuZzsh3B3pkbouj2ELz/VToy3iH
	OpxRCPSfBcSPLT8UZkVIH241SBrd+aojCFrhdctG+n1Xljl5Cg8LuyQ7DQv9PeGY/GfMTBpz/1G9e
	nXjnBkTnaG18WBHn4ShS9bp4hsbxe979PLX+3M9Si2a7skc+7dbOprH+BoMixRqRpqKVb430FLd94
	4POO+xk6l4vm7rrDrr5MXivGPz5trJ61ZfL1QFrwBdga/opBzinsLxU+bM4yhiJJxUrWMsTtDM/bs
	95feiNr1CC1lIxkQb0Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUckc-0000000EDkz-0Qc8;
	Wed, 03 Jun 2026 03:58:42 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUcka-0000000EDjT-0cvV
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jun 2026 03:58:41 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2c0c20f0c0aso22710575ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 20:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780459119; x=1781063919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TEBgbFdEMrwR0Bbx/xOW9IyMneCSJBVo6qr7YB9TYfA=;
        b=mHR6iwLEvAHTSoSBMkrxjeyEFzSARl7U4ePkLZstJ0PalSbwlhb9+ZaLGxDvNtENwB
         /YSF9zO0/ZJaRFkfalbaMCXIqC+CTVsQ8r7gnxsNf8S7Oowd1p8xcY6y/CL3SG+9e5Na
         Wz6okp4HBobrSa/GCtWYWavYVHtOgLK4HHzwc1lmkLRsu8mgSeU6rGAHx8dcVv28NXh9
         1GH1WDO8RZ2x8UOdkDKslOztCBADb/kQjejs2ZhalOwR6GXzbCyaHclMIthOUmW+J6z7
         L24wNBB1I3s4TK9v8G3kHWFYjIHDdnqeF/1BJ4rn9LsU4gnV+BpLyUhlm+JZUdgSMSZY
         pfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780459119; x=1781063919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TEBgbFdEMrwR0Bbx/xOW9IyMneCSJBVo6qr7YB9TYfA=;
        b=p0SU7pi96B9yRXKb+gRMTUBG4ok+MsrEPjZRYNQj5s2Zxk76XkwIRmr0C+NEtxQdQY
         f1Og04csizRcmwXlkv2gTuIENBstBc6XP79wO6Kyle+eEdHc8rhaKYnuyzdXtD0mNMrA
         F20oR3S/UWtXoA6jeEuVm7G0GLestaWwIg3W609QQcKbfw0vz+7o803F3HNN/hx9iZWG
         JcTs7BODdIYkve6y5TTtqG80q4Q4X0zdSVUaLECO1eirY9EwLEFsO3msUZqxwT02ulcc
         IFbMAeYyvChb6lN4ssefg6k3ZLLqseMA864d4u/XD9ojXfJB/w/VpXxABlAo5zDCVSJL
         gCqA==
X-Forwarded-Encrypted: i=1; AFNElJ+E4b60lAdjOil/fVWb1ovtHLv8wR0JBFV9e0ag9auhmg/XJZ5Bs3F5shyhX+mXY3OCNtuqMnXKRhoucZpBpg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg6UVqKsSU9rebu8mqa6SpBpLiZw+M04O8Q7OuXN4jMJgElRpD
	2reLKKuy/mWjlgwA3Tp4+jSl2+PVCa/ooz+U4o4RAVgWa4IChz4aEdKh
X-Gm-Gg: Acq92OE1BICEmMkoX5CcEO/YhmJAxQf0CyQpOHc3a+qc5yH7z9V8/gPG8w8JdwUx7K0
	iklulIkYmhi4D+ELXyfNWISxSExoNfb43cJxr/dVG/Mjh4NUiHf77he4O1FZEuB+HC+mKT033V6
	ZgpMDnRMI4h9kuuPDbObYEw0ELCnJ5Gy5QWHXxzMMCsWKkCiQrAKDeMZmOySQcaefQp9XQW/D5T
	zOaPd/OYyQDz3iScjkwJlyN6RqwDr7jfEYlR7DbHJ+cEj1mgqnnOX1lg64y8716kXeurqkU4aCK
	QW+GZbmP3w8Et7Bi3m6GB6B5DDG+hvTxJpHJCH7AUfOXOuCyf/EzMvYCw8stdIHbEbxOZqylzI7
	t+1ojXyGnhBUJ5bf24ZSRoMYfeDCtT5BfURQUHhcP4a9TmiLcO7oHdi+iepgc2u92mLYt9DTk18
	tsVvzii81iUd0ASWHloZdSADlMX89SRsW7ws8WgoBXXnLz9L9md/UIdJjIrnduZuwtkyWB
X-Received: by 2002:a17:903:90c:b0:2bf:305a:310d with SMTP id d9443c01a7336-2c163d86b55mr16757265ad.24.1780459119038;
        Tue, 02 Jun 2026 20:58:39 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6e294sm8461085ad.6.2026.06.02.20.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 20:58:38 -0700 (PDT)
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
Subject: [PATCH 1/3] ASoC: rockchip: rockchip_i2s: Use guard() for spin locks
Date: Wed,  3 Jun 2026 10:57:39 +0700
Message-ID: <20260603035741.68893-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603035741.68893-1-phucduc.bui@gmail.com>
References: <20260603035741.68893-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_205840_209639_6CEF52F9 
X-CRM114-Status: GOOD (  13.89  )
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
