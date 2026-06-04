Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13954CD6E6E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 03:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4/bUgD9oR5FAhxGgEHGOlej9X1ZgcNbuSRERsUVcYM=; b=O2r2Kaf2DfBKqA
	1o5AzzflNggV5GDVdYqzJg3F9ec3x54gI3dz8S4LEANxQBp7Rdgb8xJnEuV+1Tg/75Tk5t8Q1RblJ
	exIrt7m+z472KPM9YtCZWYT76a8ARlTGDmuFtI36gQyQuE2lsScrMzjI9RTK+PvdzLHkowZXbD0ly
	cDE7Zlj+RqQWVXQ6cPCf4V3fTdkTAdgB9EZ4BqOjej+ac+OFAgzUL67xhNgzoE1C/raZmnrwGlHBb
	U+c2bzufLWEPcQwPH2Xns28RsqM6Qk9Gj2SFTMNX/Qzlb4I3eNzVYi/VnRg4zCTP2eGtKUDW8hT6A
	OLjPUvxfvevlWGpIGPXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysW-0000000G72T-3fyx;
	Thu, 04 Jun 2026 03:36:20 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUysT-0000000G709-2LmW
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 03:36:19 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8423f236418so107815b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Jun 2026 20:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780544177; x=1781148977; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqiGW/dz4YSeZ3jaBcWBt4ocDaFmKXFEK9JnLN8NHsw=;
        b=fvMOCxprIGQ0wDZXjvS2h8Imc7cNziD3ELmP6WN7i1ewQqNzD7knUUYlZTAbrn8ywg
         BqvgXNukS+U/VZvAhTWwyyzDxCS7MpBtVMavxNUvSwwRu+h9/isaPreG/fWtJgnAtDIj
         lyZVEIQJ1q0yajpo36dFKPSFeIyI1fdulAQ9O9ioF6Aari5jXtEVkYOmy+TNOXUVw7hu
         J4IL8F2Bt4IzJhMYz9qcEeLdmjKvE8OYbL3P9h7wGDsLcvX4Ke0vPoTetc/unVz0LWqu
         4GcwRdBdHsFozEUH1Mx3bx0JOpzp3+GzAx1z0g5kLuyOfo/3SJgrGEAQxnUzqiaXTVU2
         x7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780544177; x=1781148977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QqiGW/dz4YSeZ3jaBcWBt4ocDaFmKXFEK9JnLN8NHsw=;
        b=Zl5XyQfpMdABObMY7JMGaKF3MxXwgGjdyRpgXKfh1fc4fAWWt2PIsBSJm7C+fGgrJO
         e4bhkGvFxPRAqfMRW7+wthSwfILFOfYuDPs7bK24F7njRYvvJ5N598ut6TjRpCglnChc
         aUMD1SzeJJZepZuso/T37Hy9HFzzCI9Ow4IAgr18M5XtzZshP07h+8laFrK01/WugTmZ
         sB/ALuV2DsU3I4l2o0KdzKiR7wPwextu5rFr6JvQYNFXm5SPBSlWgItDz7ttE0pASCVm
         ksAtuMHgc4XLTuvP98wM0c0+RVGJ++Y+Vbqa/pVMeGUjqBrXkxuorMI+Phe05cX6oXHK
         XeYA==
X-Forwarded-Encrypted: i=1; AFNElJ/mpQ08Pj482JwJ0soDaNUw7jqmSN008kUG4Ci6Q3VrpC3BAnuxwvBRwMllUh3iqeegCd+yQGZCr2qeImuBtQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBthxfjytwuzB5dWO7rVPo5A8LCoy5bCZZZ/cUR88iFFlYTWkc
	oXTcoTc+SZRXPrCssCfCf/G5qHYHGtTU7oo14hGDuRrYbdyyjP+hPXqN
X-Gm-Gg: Acq92OH2d4NgCKD40zm0/bLJ8KhYloFqLF5jJyYyRxoVATHritoxwPK1V7glkeUKAqE
	GZiT6qFybyFbc/lLa2R9oANA5RRqYBeYTe+31to7h1W2QPS/03melJcRsMBWaSBQUDRpT2QTHNP
	Es1mMRxtRPnp3OjZOEVP/uhZYVPQCKCdd0WiTzaO+0LPZiVNH0pWaoHqW9XWmbrS+tor+1igZ/Y
	12VxbTKFHJDW5PXU4wLASNwGAgAZrf1B1KXW7zNiPdIXGZsyYKMrAyF/sm5qXEsvpCvONUC1XcN
	ffD74PDCHXC51O1xj0jCvkSETSBfH/jH8YHPlh3g/nqjivNLJaIAmGBY4IEAA2bEsuYKLc0ZEyR
	L0AoyUteV7UtHfSUrAwnW0IEI9AkHyGBf/KlVvVr4OG+3X+AyZRjdi3vBoG4/iMXSuI+uAclX0l
	FwsE9XEC4DG44vM1XakNaKwKI5/cY8SGYcpYoEJW9aoDL6D/B61puAtpgd8aERTqJCqV9GQkr+q
	G+CQL0=
X-Received: by 2002:a05:6a00:1302:b0:837:80a:5abe with SMTP id d2e1a72fcca58-84284fd0951mr6418129b3a.37.1780544176738;
        Wed, 03 Jun 2026 20:36:16 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8428221a7e9sm5539745b3a.11.2026.06.03.20.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 20:36:16 -0700 (PDT)
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
Subject: [PATCH v2 2/3] ASoC: rockchip: i2s-tdm: Use guard() for spin locks
Date: Thu,  4 Jun 2026 10:35:52 +0700
Message-ID: <20260604033554.96996-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604033554.96996-1-phucduc.bui@gmail.com>
References: <20260604033554.96996-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_203617_599438_76D851BE 
X-CRM114-Status: GOOD (  11.05  )
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
