Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACBCCD6E4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 03:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4/bUgD9oR5FAhxGgEHGOlej9X1ZgcNbuSRERsUVcYM=; b=S2dSXcobqciOK5
	5DGjjydIBTK5R5JePI5J5qbeAs79CTL3ooKcmtJNTqFc4O+8LmmW5dtIKawBrr/VdRwAino3s3hBg
	2/Jxu3MCdMoQHJOSl4ijr5/BJJxAqOO34Be5OPWACfPLDwC8+N9blo5iNHvRFyxUrg4ivrVnQ1YOr
	75yExl69hK3hpbHp1d0lmCFhhhm/nHQksQHSSm02Ns/HJK0UP1iBdU2es+w55OmgUm+rNKh7CAlYw
	/yxtdyYp25z6sLDzenZ3JqOorZ1hCU8MJDk/yxuEogvfpteQVZcOX6yuuznJl/5l3r6ravlqEHeHU
	TUvRrqsTh249ydtWCsqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUckh-0000000EDob-1Sma;
	Wed, 03 Jun 2026 03:58:47 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUcke-0000000EDme-4203
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jun 2026 03:58:46 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-c857fba35cfso2068341a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 20:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780459124; x=1781063924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqiGW/dz4YSeZ3jaBcWBt4ocDaFmKXFEK9JnLN8NHsw=;
        b=TWuJpkwxaD7Q+5JyhbvFvYduN+CTjnpLBGIZ9RFKcKFFSV6tYDanTo+jDdxskfUPaE
         IU2bNIirmw3wQ/3zteIhhzmTjpLJB+iIbtE2sGBYYIT9LatWXEUHXbaihzKVYYTgQ1eC
         YCr0T/LmBDQTZWz0675vFHgCPomFzWH+XjE/NJauppA6YLTdWLRBBB5YrP2CAEbQ4wXi
         1Bmz0GOp5l3PPitTH7PemjqMnTP3z6QzUPgoXeMjG1EqpUq1pCDCwEjO9sRINJqXmD6Y
         75hrB/QoBnEEdFyYMETaTnCa2dixvfLoc/vXdjgdHDAznnTKf5c4yzVn7qEGgcFdzPSj
         yvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780459124; x=1781063924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QqiGW/dz4YSeZ3jaBcWBt4ocDaFmKXFEK9JnLN8NHsw=;
        b=n6Bx2xK6Wn0tKPq5FL8T44a/2mU80u5v85xpxp1J1eTHb/28kLcJSGyNHE3G5Y8sQ+
         l+wctTQp31+rjVfwSxC6tr8SOm3d7doeIFInJ9J82O5kcKvWsHqRwUdJj+nGO9y6hz3q
         0JyuYJUOJi/qBumXKiIzMn89dUbsRV/D6Q/n55uzrO/2qmonGgqEy6lo+Y4thLpo514U
         E1CN6IOoVuhlsIpRoYH7HPeTIHvpFnWyPfLlFGlery7rDvdVhTWuaMvefx3cxXq56zMy
         frEd/fPxN9bDQ7zUlIgU2+g724tHkLVY48S0zkcyC2MQKeTrEGBboU+YKMRUCAheMlTU
         hBHg==
X-Forwarded-Encrypted: i=1; AFNElJ/YV/XnYpA5EVwx5wTY6cIrlGB2fw0wALQaraSkoYo1l160dGniVHilYXHp1rL7TvwEo4kQe5tsmDNgi64Mrw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyB7HFlsHNFFw9fkB08TewnNS7cD8qeP9o3vV1xaC21BW7SDZLp
	jyZ3g4tHnRne2nNQFSF4Hbhybklb2cBIbHpCKgazSpEpWU8VSKLrQQRI
X-Gm-Gg: Acq92OEZqiOVokxgagrstgAoA1DLCht1ubcbO8caewePEF1LEwX1sFRFW9k14WX89BD
	4lkoG2YoNT5+gaHgKuPRSocuBwMD6lQByP8rDMtB0lzL1HWP9C2/KACjaaGuAVL9mZfJl6yTMNb
	SHFFIZM1wKP2UDrphOo7o9Ok63K9bsm4KcieuDqldll7kEQbxRjEpM85s667OlUZii/SswU7qbM
	nlIJn0FKWd6eEeh5aBmzuL5c5Ihio5HoAMlrwPMYZTPixB0/HEdxV4EWLbNpeCN9B+SR/QU0Ou8
	oPIjI/7wXkN4gq7U/Po4+9W9lhCis2H2k9UURhDk6kkwZjprH+j7pyFebNfUE3Li4aTpTZk3+UD
	OutLsy+a7nSx42C25rkWUZqp4jfHtnDuTa3UQvHwXnM3B7k8Lkea9yVBfYH05pVGWxjFKFU8X2Z
	ylZwMrPW1dpazKP5fPwsUvLUEueXGClWVM27AuHK1QQlfTS8cYitjVQBm4zYFQiOdO1LlT
X-Received: by 2002:a17:902:e5c6:b0:2c0:cb90:1e07 with SMTP id d9443c01a7336-2c163a12aedmr16797215ad.11.1780459124031;
        Tue, 02 Jun 2026 20:58:44 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6e294sm8461085ad.6.2026.06.02.20.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 20:58:43 -0700 (PDT)
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
Subject: [PATCH 2/3] ASoC: rockchip: i2s-tdm: Use guard() for spin locks
Date: Wed,  3 Jun 2026 10:57:40 +0700
Message-ID: <20260603035741.68893-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603035741.68893-1-phucduc.bui@gmail.com>
References: <20260603035741.68893-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_205845_006563_9FE2B94F 
X-CRM114-Status: GOOD (  11.38  )
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

 sound/soc/rockchip/rockchip_i2s_tdm.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index fc52149ed6ae..3f3db28b8940 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -285,9 +285,8 @@ static void rockchip_snd_txrxctrl(struct snd_pcm_substream *substream,
 				  struct snd_soc_dai *dai, int on)
 {
 	struct rk_i2s_tdm_dev *i2s_tdm = to_info(dai);
-	unsigned long flags;
 
-	spin_lock_irqsave(&i2s_tdm->lock, flags);
+	guard(spinlock_irqsave)(&i2s_tdm->lock);
 	if (on) {
 		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
 			rockchip_enable_tde(i2s_tdm->regmap);
@@ -313,7 +312,6 @@ static void rockchip_snd_txrxctrl(struct snd_pcm_substream *substream,
 						I2S_CLR_TXC | I2S_CLR_RXC);
 		}
 	}
-	spin_unlock_irqrestore(&i2s_tdm->lock, flags);
 }
 
 static void rockchip_snd_txctrl(struct rk_i2s_tdm_dev *i2s_tdm, int on)
@@ -587,12 +585,11 @@ static int rockchip_i2s_trcm_mode(struct snd_pcm_substream *substream,
 				  unsigned int fmt)
 {
 	struct rk_i2s_tdm_dev *i2s_tdm = to_info(dai);
-	unsigned long flags;
 
 	if (!i2s_tdm->clk_trcm)
 		return 0;
 
-	spin_lock_irqsave(&i2s_tdm->lock, flags);
+	guard(spinlock_irqsave)(&i2s_tdm->lock);
 	if (i2s_tdm->refcount)
 		rockchip_i2s_tdm_xfer_pause(substream, i2s_tdm);
 
@@ -614,7 +611,6 @@ static int rockchip_i2s_trcm_mode(struct snd_pcm_substream *substream,
 
 	if (i2s_tdm->refcount)
 		rockchip_i2s_tdm_xfer_resume(substream, i2s_tdm);
-	spin_unlock_irqrestore(&i2s_tdm->lock, flags);
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
