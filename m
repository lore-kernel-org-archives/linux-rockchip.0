Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDBCC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 03:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LuDOiWtAaN0xacYuuKIUja/Y4VAS2aoXDsAujKDVTu0=; b=fDmO32fu3Y/qK6
	/qZtwxTIqp1mIRdunF6WeHQmOG1vQ4cxFfu14m5YN7o7NUpIKOwRcFDNK5hx2Nr6ux/xw6ZuZfaAg
	gd6V5cDb8a9xVcQZB4Q0+L4x8wp51yZH+tUMHh8a7W+FD/2AKhl6i7wJwgW9Mdm75DPRYLedAis9H
	SSjXvTCdmBfTajjoB31j+wZXdB1/rV4MHhJvitLtIVEE/pS90ALkAfUcupUY7D+5lH2P+wpMnhWtW
	IFhZ6ySBnYhHHKEPPy5c6H0uQsxhOcCr0VwRMvCdrBFTS7Nl7a5WbQLqxhZGhAoYC6E0qvEFWMed2
	s0E0XNfqf5FoT/vK5pdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYIpY-005Kl7-F5; Wed, 14 Sep 2022 03:12:52 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYIpT-005KUm-Vc
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 03:12:49 +0000
Received: by mail-pl1-x62f.google.com with SMTP id v1so13786933plo.9
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Sep 2022 20:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Ru/J57bKYILUKFipBlhIw83PvGlUWh882vmvyBi7Ppo=;
        b=EhQ1a6FHsjcONdLKhZQEAPbglYOd4CBescJyriBTJj8+A53IqRootIFPtUUCL4oG1m
         hIvlZ9NsD0oGScx9MMY3Gy/aT1SoYC/MejdRBlCwb4Y9QXJ0YSyAqNbDaDYIAf5syb/q
         plNDPHp0gHeyJImSJ6ucv3gsORDOOHbe4BC7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Ru/J57bKYILUKFipBlhIw83PvGlUWh882vmvyBi7Ppo=;
        b=zZsmv1QhgWE39ssU6dBeLgULlaGyojbFiZl8tNM55IVCoAjabQeOpxY1mXluTvII4W
         1TvXLP9i9GflZN56VM+KBqyZXA5L8ZHykUkVAphxYcTQjCOngLsdyBb8a5JvA9F7h8h/
         6DxQO+pd8D5dEeHfYsgWJircJp6ZLrmMjxhKMqJbpuRq14Jh8ZffB8WthCzSs3NAtSqM
         nSDSEyLp4JnS0GWxEDrgu7SDpxrYebes8tIz44mzZkycGV7w+zJfPIi8VTMBxvu6AXU0
         LZpYglOX+0vSheoWVQF0vln0aoq7IxsrWrn6DEqaeeqmEUwfLzKp2soV9Vm4bKV4ea/8
         wU1A==
X-Gm-Message-State: ACgBeo1/pkL8Qmp7Z91Tv4CRUmKrsw94VT+orCFKTPzaCABk4iQzm2NE
	c0HccCW2hKES+y5dN+l8HE/16g==
X-Google-Smtp-Source: AA6agR5GmHRqaTG/+yzg03cabUk4aN8uXhW1lkkDGgX7gqTXoYZvQtnNYufHIkIdthFpK0/3bwX+Aw==
X-Received: by 2002:a17:902:cccb:b0:178:2a5e:b6e7 with SMTP id z11-20020a170902cccb00b001782a5eb6e7mr14471471ple.49.1663125165490;
        Tue, 13 Sep 2022 20:12:45 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id y18-20020a170902b49200b0016dcbdf9492sm9236737plr.92.2022.09.13.20.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 20:12:44 -0700 (PDT)
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
Subject: [PATCH v2] ASoC: rockchip: i2s: use regmap_read_poll_timeout to poll I2S_CLR
Date: Wed, 14 Sep 2022 03:12:34 +0000
Message-Id: <20220914031234.2250298-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_201248_456223_C64231CE 
X-CRM114-Status: GOOD (  13.20  )
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
It also fixes the 'rockchip-i2s ff070000.i2s; fail to clear' when
the read of I2S_CLR exceeds the retry limit.

Fixes: 0ff9f8b9f592 ("ASoC: rockchip: i2s: Fix error code when fail
to read I2S_CLR")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
Reviewed-by: Brian Norris <briannorris@chromium.org>
---

changes in v2:
  - Remove unused variables.
  - Refine debug messages.

 sound/soc/rockchip/rockchip_i2s.c | 41 ++++++++++++-------------------
 1 file changed, 16 insertions(+), 25 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index f5f3540a9e18..28c86f5e435e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -126,7 +126,6 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
 static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
-	int retry = 10;
 	int ret = 0;
 
 	spin_lock(&i2s->lock);
@@ -163,18 +162,14 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
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
+				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
 		}
 	}
 end:
@@ -188,7 +183,6 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
-	int retry = 10;
 	int ret = 0;
 
 	spin_lock(&i2s->lock);
@@ -226,17 +220,14 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
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
+				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
 		}
 	}
 end:
-- 
2.37.2.789.g6183377224-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
