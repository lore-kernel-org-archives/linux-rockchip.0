Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D73BC54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 15:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iuZ1gEk3+C9B/HF8aQHhwwrT9eCLxr1/h2oajWQdE+U=; b=I4SFbC8TClgIv/
	OR6JtJF1jK5u14O/7i69Gkkyn1bNqirv9LxTzIKIrj+Gf9+ntQp+RLrA0eQLdxvHVk+Us4Q/2NPuu
	D14aNFsbyS6+v9MVIhmMXvAFjHTYbH+NpjoizMtYEZOFE5D5kSfyD91+T7Um23jcH189Ls5hvmZjT
	LGwc1uTgEfaL38YQ25j18rJTC8LGxD7ZRz5ZEZj7iCLDg8EI92XfbZ5eLZdhSq9ba7x8O2xYU9woY
	O3Woplnc1sx3z4tL2PgRtsayqkcUSnyJrBNw+CRXZ83asTmO7kQSe0LVkMkMiSNvqDmBBefppJNEa
	x3KoLA+KJJBjzB3YoZew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJQo-005C0E-7W; Thu, 08 Sep 2022 15:27:06 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJC4-0055Oo-WC
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 15:11:54 +0000
Received: by mail-pj1-x1034.google.com with SMTP id p1-20020a17090a2d8100b0020040a3f75eso2773057pjd.4
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 08:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=evICa2gP1OZP3o4uj2q6UUkKvForG1fKNpFXQceaCWU=;
        b=EqmtlG1EAApXEHPAJtRBAEY3KRn2qNipV7J7wV23a7+9xkZs61Aozim+Aj5IpshuOL
         RTvka8w/TCO9lBxh7znsR6pIpfOZv+a2P4ITvHmeV/Kq31miqSqcHlha/9ZVtniOdKmT
         ky5+rrH1c5YDZVrEZFER1XpuSN1YyZ2LKagyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=evICa2gP1OZP3o4uj2q6UUkKvForG1fKNpFXQceaCWU=;
        b=vj+qXu0hyQDQc87GUXw26uUvFn1EYpY0yXdcJlTvlhVbttHOUgXQkmjPQ7HhiKf92f
         nANXd/w6U9zL0sDJIMuWtMTH9PWFSyp8ZtA6pLlyWk4PdWJzzH1/Wok+MxPfjvAD/mxm
         tABR6wSNGouNSX0JpT1+vCemH5+Z8e7piXcS8swpZrxRMKof38RJPujzQ7Fr6fHHqXWy
         Pm5CyFNFF4e69wpEECeVwjnITpwonQmkPWX8uTQGfvrhL3eu2CFgnDlDthJaJqYcu1tR
         uvUX3CF6sc0iOMvpbyTbBU1mNM8OGIs25Bi7RnEcMGDUYN/nXPwuA8pLaBptbGTh3M+3
         SBOw==
X-Gm-Message-State: ACgBeo3ytNHuzymu3+2vrfjNZFvtbzrSCWaY6l20MursQrxaknlzj3FQ
	8ureTWrxe6aHcZDlpWdifBX44g==
X-Google-Smtp-Source: AA6agR6yoSUpGUarSfWA17yyn6yPMU3yzNaqtpF6IjQdc28o5dU7QuUtAkXWsncXc5yfzIzSjer2KQ==
X-Received: by 2002:a17:90a:df13:b0:200:ae8c:700c with SMTP id gp19-20020a17090adf1300b00200ae8c700cmr4784872pjb.203.1662649909840;
        Thu, 08 Sep 2022 08:11:49 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id e16-20020aa798d0000000b005360da6b26bsm14892692pfm.159.2022.09.08.08.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 08:11:49 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v1] ASoC: rockchip: i2s: use regmap_read_poll_timeout to poll I2S_CLR
Date: Thu,  8 Sep 2022 15:11:42 +0000
Message-Id: <20220908151142.1479810-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_081153_055757_25A85B73 
X-CRM114-Status: GOOD (  11.69  )
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

Use regmap_read_poll_timeout to poll I2S_CLR.
It also fixes the 'rockchip-i2s ff070000.i2s; fail to clear' and
return -EBUSY when the read of I2S_CLR exceeds the retry limit.

Fixes: 0ff9f8b9f592 ("ASoC: rockchip: i2s: Fix error code when fail
to read I2S_CLR")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 39 +++++++++++++------------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index f5f3540a9e18..02905eec615e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -163,18 +163,14 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 						 I2S_CLR_TXC | I2S_CLR_RXC);
 			if (ret < 0)
 				goto end;
-			regmap_read(i2s->regmap, I2S_CLR, &val);
-
-			/* Should wait for clear operation to finish */
-			while (val) {
-				regmap_read(i2s->regmap, I2S_CLR, &val);
-				retry--;
-				if (!retry) {
-					dev_warn(i2s->dev, "fail to clear\n");
-					ret = -EBUSY;
-					break;
-				}
-			}
+			ret = regmap_read_poll_timeout(i2s->regmap,
+						       I2S_CLR,
+						       val,
+						       val != 0,
+						       20,
+						       200);
+			if (ret < 0)
+				dev_warn(i2s->dev, "fail to clear\n");
 		}
 	}
 end:
@@ -226,17 +222,14 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 						 I2S_CLR_TXC | I2S_CLR_RXC);
 			if (ret < 0)
 				goto end;
-			regmap_read(i2s->regmap, I2S_CLR, &val);
-			/* Should wait for clear operation to finish */
-			while (val) {
-				regmap_read(i2s->regmap, I2S_CLR, &val);
-				retry--;
-				if (!retry) {
-					dev_warn(i2s->dev, "fail to clear\n");
-					ret = -EBUSY;
-					break;
-				}
-			}
+			ret = regmap_read_poll_timeout(i2s->regmap,
+						       I2S_CLR,
+						       val,
+						       val != 0,
+						       20,
+						       200);
+			if (ret < 0)
+				dev_warn(i2s->dev, "fail to clear\n");
 		}
 	}
 end:
-- 
2.37.2.789.g6183377224-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
