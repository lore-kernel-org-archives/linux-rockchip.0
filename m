Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 18:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pvb0bPHYTu8eQxPMmV0I/LSWiVKWHNvyb52zn6JbRfY=; b=zz/BrFxVzl8KRt
	0ZD7PpnNZ0atnxAcrkFS452LfpVtAas9HD/wdJfwmqW5KMzav8/oOwYXAN7dC4SMJ2qJ9Gqe/cFT4
	BOWEZlTr1gW3EJeHwJLPYcSU86TedUAQzlEbCFImGC6QJfpbvNdFQr4BG69UbhPZeHbftzEZIe3t4
	h8FesTfQkOC1SYlgOlKvBg7lBs+SC3ya2CGEOOqCAHYn+6HlTeCujkfnA0QfOCMwlpzjWIiSTjbFv
	FeZY5SkGrPugtKMEpUcg+AOk+gjfCacrCtrcmF91QBvA1jxCu3pCyt/gg837Lzt51ay3qUif4xUHu
	q5m7OitU8a8zPZ0vOwvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3j4p-006m0d-4W; Tue, 21 Jun 2022 18:58:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3j4e-006lzs-Ah; Tue, 21 Jun 2022 18:58:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 43FB2B80F1A;
	Tue, 21 Jun 2022 18:58:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6DBCC3411C;
	Tue, 21 Jun 2022 18:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655837879;
	bh=2xsWIxZWNcmnA/fSbyReBOaWSpwo1zz6UKyS8jFCJ1c=;
	h=From:To:Cc:Subject:Date:From;
	b=jHnzKEj5GGG2YK/PcG1gY5A27p4dUbt/IiTwOJaasEvKaNn86EQBy3nSIAVAiGnep
	 lMyJYjHaPsCnhs7XJsaSNDhESynN7qiQt62+GVNfrsRuSdVQgjvyb75PqR+Papyd9q
	 eMga+hXbSgaoN8RV1C+Ij/1CZ1lZme4ECzxW3n8H9Et3qOw8xDdGijdu307QXXXios
	 uqA2yo4W0ymBA8YoRYDujz3RdFQAAaXgi1kz6kUXrCaYdo89mjIxLgtXk9JeVBYZ3a
	 eNWj/ihwpkYKGlZkGPMO/NW6K7QcYqdJIUdKw4FvZGLdYufncLfvp6JVWZtRpdSmHP
	 5yXlNmZXd9DGw==
Received: by wens.tw (Postfix, from userid 1000)
	id 83D575F9C4; Wed, 22 Jun 2022 02:57:55 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Chen-Yu Tsai <wens@csie.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH] ASoC: rockchip: i2s: Fix crash on missing pinctrl
Date: Wed, 22 Jun 2022 02:57:47 +0800
Message-Id: <20220621185747.2782-1-wens@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_115804_693278_2CA3BAB4 
X-CRM114-Status: GOOD (  17.49  )
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

From: Chen-Yu Tsai <wens@csie.org>

Commit 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO") added
pinctrl lookups, but did not skip the lookup if there was no pinctrl
device tied to the I2S controller. As a result, the lookup was done
on an invalid pointer in such cases, causing a kernel panic.

Only do the subsequent pinctrl state lookups and switch if a pinctrl
device was found.

i2s_pinctrl_select_bclk_{on,off} already guard against missing pinctrl
device or pinctrl state, so those two functions aren't touched.

Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

This is based on next-20220621, which just saw the inclusion of the
commit this patch fixes.

This issue was found and tested on ROC-RK3328-CC. Tried to test on
RK3399, but that has some other DRM driver related crash.

 sound/soc/rockchip/rockchip_i2s.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index be051e48b97b..9fa8ffd712ea 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -808,24 +808,23 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 
 	i2s->bclk_ratio = 64;
 	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
-	if (IS_ERR(i2s->pinctrl))
+	if (IS_ERR(i2s->pinctrl)) {
 		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
+	} else {
+		i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl, "bclk_on");
+		if (IS_ERR_OR_NULL(i2s->bclk_on))
+			dev_err(&pdev->dev, "failed to find i2s default state\n");
+		else
+			dev_dbg(&pdev->dev, "find i2s bclk state\n");
 
-	i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
-				   "bclk_on");
-	if (IS_ERR_OR_NULL(i2s->bclk_on))
-		dev_err(&pdev->dev, "failed to find i2s default state\n");
-	else
-		dev_dbg(&pdev->dev, "find i2s bclk state\n");
-
-	i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl,
-				  "bclk_off");
-	if (IS_ERR_OR_NULL(i2s->bclk_off))
-		dev_err(&pdev->dev, "failed to find i2s gpio state\n");
-	else
-		dev_dbg(&pdev->dev, "find i2s bclk_off state\n");
+		i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl, "bclk_off");
+		if (IS_ERR_OR_NULL(i2s->bclk_off))
+			dev_err(&pdev->dev, "failed to find i2s gpio state\n");
+		else
+			dev_dbg(&pdev->dev, "find i2s bclk_off state\n");
 
-	i2s_pinctrl_select_bclk_off(i2s);
+		i2s_pinctrl_select_bclk_off(i2s);
+	}
 
 	i2s->playback_dma_data.addr = res->start + I2S_TXDR;
 	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
