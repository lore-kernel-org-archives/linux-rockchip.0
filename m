Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 689D3C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNkm+6sIePdD9+8bkS4M18noDlt3PkS7fS9Wii51tbY=; b=YnXSGz9yjXFpKB
	YD0a721zbrIil3IyDkOO6NMksCiDhWCCFJsfFug1qilAY3CdgmuC3AQJqWvTaABrZAbRpiCXNRDOp
	3mM7lWukgvNfAwBlX/uVKqKIutAjKTzXvU6uAj8aca/+8kn6c/keDMYrLlbHIumQGXiz1V21OI1PG
	3ZsODAXmQ6FgANM6MeXs1CGY8WADcdjS6F+wYW3+oNULNkC9aQLFaxRUVolmgfTN0TkCorMlRfZ/W
	V1NHLvsp/A6MY1DkEbSi6pEouUxv67JVfARfzxQlOHCS+GMJOY05s9F6MdxvWI6nvB6Fhj5Y148by
	vaCHsiQkQo3hl6/eoUmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEZDC-00000003ULN-0MT5;
	Tue, 04 Jun 2024 18:48:46 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEZD8-00000003UJh-3yWm;
	Tue, 04 Jun 2024 18:48:44 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52b8b638437so1609281e87.3;
        Tue, 04 Jun 2024 11:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717526920; x=1718131720; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YhU1SbvM7znKVct1eWXWAILOVj0SRCPHV7V811HpayA=;
        b=FEnCWWcgH+ChuZljTjmOiL/FZuUKu2nPAMRS0gJwU2saq2wRYCfhe6yPPqPfelUEEI
         k6MHqgSZwncAMJAqvDaGivOanKVbbn8ue+mZadulaKjjSOvW6IKWJGaYwOykUY4nbQSr
         dPRN+7QvYjnB6VCJm3TtDoGlKyEh8+Eehc8Emz+d1LYHaQgkFzJ+alYJiijhtw2WK2h1
         1quhutzE8lrSjOvSsZwyfTnn5xBvIqXnf1NHymxO7Jt9gqjZyFtRtGgt7G+ElEb8o/4x
         N93AsaFgO2I/zKIgmV+0ZmHMJlPCXkunw6E5G6qEngyQc+jZU4C0BzS6wfCCSo5HCeHq
         qPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717526920; x=1718131720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YhU1SbvM7znKVct1eWXWAILOVj0SRCPHV7V811HpayA=;
        b=gOSbgKtIUF/53VWvVz7YlSBQ2AmhtTU6oLLvKpFfObqLud/28lcLKijafFmArI1kWU
         xkPPL9AIMoe8EdH8qKDzACSzfQrMn3hSLCyiYtm88hUsyeFNGlBraxnnTByW7we/eZMy
         zoNXeJXUXZ1M52niYim84ROGcPRuK6f4/UizLQD8oHRge6JFBv7hS9tRjdUIent4g9UL
         OgcTTVcQKX3yiSq4HBAXTelaaSy70Zx9zmjCfp73VIC5xxxBni/17gdU1DmWwkt/9wVg
         5JpU8JIp/kUhtfBs/nBt0H8ugoe8ufpCx5SJoXWrtWjmLMBZh8zKy4f7IaHuWQqrKF/M
         t9xA==
X-Forwarded-Encrypted: i=1; AJvYcCXcLN1rYofMW2c0rWzpAg78VOqHvfKOH7BTKJ5VYa+wbZJVxQnYrlS6nLsSIwhdq+O01Gp9PKT5WMXKFEtJ5NPcPzOttmZ3g33tFMnnq5dOWg3cxyDVQU/4fuHqEPaJjqqfu2Yl0js8QK3Vn84+EouXNp76ghbIIBI=
X-Gm-Message-State: AOJu0Yy9VZaAB5PxNU0Q5TcKfCaEwmvkSzf4703LdihKNKNccjDAR9qE
	l1Jmr9X6M1OPznU0mfgzv5EpF+H1lPqYoFlItiyiY4YLmMOgOCtlJy3mAajIXjw=
X-Google-Smtp-Source: AGHT+IFEJ8hqG5xCrTQKvzSoryOtPIc1PkC8aaNWtW7orx0ghMl5wbgtdEJ/5xVPTPWB8vdw9HCNQw==
X-Received: by 2002:ac2:4e89:0:b0:52a:fbcc:b358 with SMTP id 2adb3069b0e04-52bab4cbd6amr226548e87.13.1717526919443;
        Tue, 04 Jun 2024 11:48:39 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b9ea5271fsm452903e87.252.2024.06.04.11.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 11:48:38 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: luca.ceresoli@bootlin.com,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alibek Omarov <a1ba.omarov@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: i2s-tdm: Fix trcm mode by setting clock on right mclk
Date: Tue,  4 Jun 2024 21:47:52 +0300
Message-Id: <20240604184752.697313-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_114843_012665_E1663A4C 
X-CRM114-Status: GOOD (  13.13  )
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

When TRCM mode is enabled, I2S RX and TX clocks are synchronized through
selected clock source. Without this fix BCLK and LRCK might get parented
to an uninitialized MCLK and the DAI will receive data at wrong pace.

However, unlike in original i2s-tdm driver, there is no need to manually
synchronize mclk_rx and mclk_tx, as only one gets used anyway.

Tested on a board with RK3568 SoC and Silergy SY24145S codec with enabled and
disabled TRCM mode.

Fixes: 9e2ab4b18ebd ("ASoC: rockchip: i2s-tdm: Fix inaccurate sampling rates")
Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 9fa020ef7eab..ee517d7b5b7b 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -655,8 +655,17 @@ static int rockchip_i2s_tdm_hw_params(struct snd_pcm_substream *substream,
 	int err;
 
 	if (i2s_tdm->is_master_mode) {
-		struct clk *mclk = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
-			i2s_tdm->mclk_tx : i2s_tdm->mclk_rx;
+		struct clk *mclk;
+
+		if (i2s_tdm->clk_trcm == TRCM_TX) {
+			mclk = i2s_tdm->mclk_tx;
+		} else if (i2s_tdm->clk_trcm == TRCM_RX) {
+			mclk = i2s_tdm->mclk_rx;
+		} else if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+			mclk = i2s_tdm->mclk_tx;
+		} else {
+			mclk = i2s_tdm->mclk_rx;
+		}
 
 		err = clk_set_rate(mclk, DEFAULT_MCLK_FS * params_rate(params));
 		if (err)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
