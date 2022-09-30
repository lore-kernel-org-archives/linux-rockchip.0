Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C8A8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 15:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OffclPAsaM9HCAM16M0AI4PCJUmh2GBrohfPTak3zF8=; b=lz/qNpfKEejdiU
	nWLdiVnu8sndoutKYG+dtf/lAvUHxiIIM9qsz8n0xeRwfPuAJRLxQo94AYy0OQgLKDCgoJAT3Jk0o
	GYY0ek0itHzTBzTV5pEiuXPhP+b6TiZNDPpJUo1uOsoJSM1nOuUufp7lgFW2EiuSOzzshJWXLXmZE
	0e3fhgBc92XR4yrS2HTvmhzCHhxWiniWrZVotm4M5vMP443ks0qIsnND1oXzf7ISdNee9Y4a9SkRN
	BKGKdMgYs7jlgOsEW8uU+HsUdWYWtNBVw3+uHjcfjpP99k2IuIXDboPRetkhVBw3iLuoZe3umYlLy
	PVyvMNI6OGkZEZVXakHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeHkk-00A6ll-Qv; Fri, 30 Sep 2022 15:16:38 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeHk5-00A6OZ-JE
	for linux-rockchip@lists.infradead.org; Fri, 30 Sep 2022 15:16:05 +0000
Received: by mail-pj1-x102b.google.com with SMTP id x1-20020a17090ab00100b001fda21bbc90so9374435pjq.3
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Sep 2022 08:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=bkGZlMCLcjGUMJh18RhP4Ctr01ZIOmKFkpG+F89/rcQ=;
        b=cybBlknOX9/DfQdo0Xe980ssg21Q5o50iv9PUSvznC2qYrzK2NumO347QdFKTRyOHM
         FY4hfsYNXFezlLbuarWagHuoz1s+oVb5jXi5mtBx5Hg9andKcny+jCAmaPHHIkYeJkPX
         Nk2/IL12+8PjMxfSxrf2YNtcvLyJHguO1qIMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=bkGZlMCLcjGUMJh18RhP4Ctr01ZIOmKFkpG+F89/rcQ=;
        b=ef4aNB0vaSrkH5PLTT6/leflwzb23LDXvJTM0xloiQbLUJKbUnzzNWOQjLQfKfhfhv
         dh4vC70EKCBvZ/3Zejf79A/SD+NZiOurTj7dTX2t53F4ySUk29TE7TANmmYsggs8E2pi
         u1PZyWUIUWogsR9Is991Hf6P12lajpv1PvX9KEPrhjmZe5y0L+8utOKahiIedV8ijNUz
         yt4Nayfb9BYqkNc7xfrdH+NFQ92wA5MZ3ZG1C3Pt2TWhdE2ZJKuNuyvDDl2tXb/EMV/d
         W8tQo0U/PeKuylVFaLDJ1UISOiy7hRHyhfKXOFDn8PmzPMajDDX1jGIEQdB3sZnEMw9u
         o6ng==
X-Gm-Message-State: ACrzQf0Xf9C3MOQvPmBoUnZvn0pJoizQdkQcVpc9LP6wTIjuwJOnfySk
	YAN6GOkgwMVlODaNCYiJc4tRyQ==
X-Google-Smtp-Source: AMsMyM7dgX6KIprJugnpW4W2X/BhsVT0zR5F1NzXqlIHS4EK3Do0GsiexPC5q7UZws3YeTuk7VrkxQ==
X-Received: by 2002:a17:90a:9b12:b0:203:9b0:284e with SMTP id f18-20020a17090a9b1200b0020309b0284emr10424274pjp.116.1664550954797;
        Fri, 30 Sep 2022 08:15:54 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id z3-20020aa79e43000000b0053b9e5d365bsm1894355pfq.216.2022.09.30.08.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 08:15:54 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Lin Huang <hl@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v1] ASoC: rockchip: i2s: use regmap_read_poll_timeout_atomic to poll I2S_CLR
Date: Fri, 30 Sep 2022 15:15:46 +0000
Message-Id: <20220930151546.2017667-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.38.0.rc1.362.ged0d419d3c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_081557_709072_4833AF15 
X-CRM114-Status: GOOD (  11.34  )
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

1. Uses regmap_read_poll_timeout_atomic to poll I2S_CLR as it is called
   within a spin lock.

2. Fixes the typo of break condition in regmap_read_poll_timeout_atomic.

Fixes: fbb0ec656ee5 ("ASoC: rockchip: i2s: use regmap_read_poll_timeout to poll I2S_CLR")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 28c86f5e435e..a8758ad68442 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -162,12 +162,12 @@ static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 						 I2S_CLR_TXC | I2S_CLR_RXC);
 			if (ret < 0)
 				goto end;
-			ret = regmap_read_poll_timeout(i2s->regmap,
-						       I2S_CLR,
-						       val,
-						       val != 0,
-						       20,
-						       200);
+			ret = regmap_read_poll_timeout_atomic(i2s->regmap,
+							      I2S_CLR,
+							      val,
+							      val == 0,
+							      20,
+							      200);
 			if (ret < 0)
 				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
 		}
@@ -220,12 +220,12 @@ static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 						 I2S_CLR_TXC | I2S_CLR_RXC);
 			if (ret < 0)
 				goto end;
-			ret = regmap_read_poll_timeout(i2s->regmap,
-						       I2S_CLR,
-						       val,
-						       val != 0,
-						       20,
-						       200);
+			ret = regmap_read_poll_timeout_atomic(i2s->regmap,
+							      I2S_CLR,
+							      val,
+							      val == 0,
+							      20,
+							      200);
 			if (ret < 0)
 				dev_warn(i2s->dev, "fail to clear: %d\n", ret);
 		}
-- 
2.38.0.rc1.362.ged0d419d3c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
