Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3953EC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 08:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=escdh5MM3T++benvQxiSUoMDMX1fXka0qPpvxOJfbqE=; b=Qrmjc9aMbPTLvS
	IsUABOxQSM1n4SFuKTfV0p+dDVsN2fXjBncxL6edV43KYx1rBHLtSDGYJPWoDw+47petvXJEteUvf
	ksciKSInmNkYPFwspHtJ1jUe64iBZg/hYvabflIIGhmGVzO+Bg7tyWY2nz5HWuebvuhWBFD+EF/8W
	klK7uqMHUMG7js/3sbjSGTA4kEOJv+U4ITlqt6rRBzNmizo/I3Tcgmwo13igR5FPS89Fw7k49Nn+O
	BJcxkH6R20N8dMtk7vTPaZFfHCIbVUJLW1BBP+wTOm98qAUh9j051BIJmvhy9n1j/nUDXVz+sJvwW
	aSFW/ijS8WUM7wRNE0Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SgM-00AHO4-Mi; Wed, 29 Jun 2022 08:04:18 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Sg3-00AHG3-RX
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 08:04:01 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 68so14576442pgb.10
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 01:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kYKmRwqhkod5kWIfzS16sS6jaDGBM3foLD2Ky8UkHos=;
        b=cvTkmfHi796POn8CJZVh8BuxQwCNHiL3lhRSUhCOi/iv8SBNkEjDUwW4bPCRwPQn2T
         78pmahWeeTSLx9N8hoYKAFzkZ06RUSRYZKtuOJJQ6OcBO/9FvozCxrj7AraN/NoC9Ugn
         Y8+1EFUP24BNpDYGjvcxFLYXVBUf7tkUheYHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kYKmRwqhkod5kWIfzS16sS6jaDGBM3foLD2Ky8UkHos=;
        b=lmCRpPcoTzn6S12SIBekVO6PYTR89G41WREKJ+5nMH+5983BS0g55ETP7mfieqGBvb
         OKFLjIIYOYiUjj8UFGyuy27SjdsV5cnwBg1NCQcaZUtuIHdJ+A+rujvJlc08f21WgXfm
         VjaaSxqHiy+US9b/4ToBwUkVJ8CDj+RssQYolFQlch1BOV4v7SvNvCYflpe/zU0llkdn
         V6gWPryXoQ8NGKKlahaSS9XLh+H0yllHDo3kOUgSwj+M1aG4YAV4YUb9E3RLAMmQxxRn
         Bq8J7OA7LhvY5AbYmHg+5363Q+zwiRBxxmZ1h0bORnvK9ryWCvuLZTjN2MJM6XuYykd6
         Y1aQ==
X-Gm-Message-State: AJIora/44AB+LvxJsiZoQga4DZtjsbfB+lOij5ae0y9I5/n7Prs75gU7
	8+Is6Q+JCaSifgnY9htEwhs2Rg==
X-Google-Smtp-Source: AGRyM1uLKuVxfxJVTSk72PzpYK6KFIsep162OacqzigSpO++IFBp3TTs/nUxCAA0MTJPJWRHyAz0Dw==
X-Received: by 2002:a05:6a00:c91:b0:525:8c3f:269 with SMTP id a17-20020a056a000c9100b005258c3f0269mr9140613pfv.66.1656489834468;
        Wed, 29 Jun 2022 01:03:54 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id h18-20020a170902f7d200b001624cd63bbbsm10676727plw.133.2022.06.29.01.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 01:03:54 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v1] ASoC: rockchip: i2s: Fix the debug level on missing pinctrl
Date: Wed, 29 Jun 2022 08:03:45 +0000
Message-Id: <20220629080345.2427872-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_010359_998122_DDD53AAE 
X-CRM114-Status: GOOD (  12.29  )
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

Use dev_dbg on missing i2s->pinctrl as the pinctrl property is optional.

Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 285b6455be28..f783994cc16a 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -812,7 +812,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 			}
 		}
 	} else {
-		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
+		dev_dbg(&pdev->dev, "failed to find i2s pinctrl\n");
 	}
 
 	i2s_pinctrl_select_bclk_off(i2s);
-- 
2.37.0.rc0.161.g10f37bed90-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
