Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54215C77B73
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INostNWNLuLi37MAdsRLUAIfStvagNU+5xMVkVNPlwU=; b=h9+WLRod/sxGYQ
	Uuytk4mZlyJSaUg8ddzVA3KFta7QsFlLKtPIshPm33VIpiTJeo/7TqF1hNL9aPmCD61Xtpi4hfia6
	cNoQ89IEfBY/3nsvfvPIMA+3ohdEop9xmLdNHEPPoIgi/KNPhaFR9BJq76V1CHZwJ4LAIHYfAW7jQ
	0Ie9k4rCnWgre+gDMfNZDKnbQ7UbXpbI/0U6iNeehnbRqfrsCzf92kc0G8oIWQnrraiR9wfNn5uOD
	bIuvNAsv5XdsjI8+Niv5o3aNydhuZbwWlxTk1ExOnY/Cl5P36P9n4cka7msNRpYRf8JeasAWetuMe
	GAuL1R8GA382kde3LTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOp-00AM3Z-1g;
	Sat, 03 Jun 2023 18:54:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOl-00AM0m-0A;
	Sat, 03 Jun 2023 18:54:48 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C34646606EBA;
	Sat,  3 Jun 2023 19:54:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818485;
	bh=VNGGZRi4A9Mnt5jeD15aqWDciGe58NwxbjwHqV5hKJY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DHHO5hadMuUConDV8846JqFF0fEN4sAW4K7ZCgLW6LZWp+8WyoG24cTXNJbQLacZ1
	 0dfcHQ8V9cTbYNz2h0bKmouSVvohMYfSOD33ZKCuh7uE+3swL2Ce9F1A1zIiYe4GMz
	 e0/x8jwu4qm9LDAyOZq/AZDaHWs1znkt+fR/9sS/tfSpFIIpcjSd1Ma8Io0cn2xm7C
	 KgDtdboWl2RGlg5HAt2JIff7gB2A5rp7BakXcsf6ha7HsdkSw30+FXsYVllZWOMgpy
	 uSihtW6RhfM0ziXzfj9e502/HYHCrYSx36U648Z7OZhyzIlK5T61sUC2LamtTPc7R3
	 OkXPGJm/ygVTA==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v3 4/8] iio: adc: rockchip_saradc: Use of_device_get_match_data
Date: Sun,  4 Jun 2023 00:23:36 +0530
Message-Id: <20230603185340.13838-5-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115447_309802_A6D3209C 
X-CRM114-Status: GOOD (  12.89  )
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

Use of_device_get_match_data() to simplify the code.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---

Changes in v3
  - No change

Changes in v2
  - Add a Reviewed-by tag.

 drivers/iio/adc/rockchip_saradc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index ac424ea50787..cbe347fe8df7 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -415,10 +415,10 @@ static void rockchip_saradc_regulator_unreg_notifier(void *data)
 
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
+	const struct rockchip_saradc_data *match_data;
 	struct rockchip_saradc *info = NULL;
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
-	const struct of_device_id *match;
 	int ret;
 	int irq;
 
@@ -432,13 +432,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	}
 	info = iio_priv(indio_dev);
 
-	match = of_match_device(rockchip_saradc_match, &pdev->dev);
-	if (!match) {
+	match_data = of_device_get_match_data(&pdev->dev);
+	if (!match_data) {
 		dev_err(&pdev->dev, "failed to match device\n");
 		return -ENODEV;
 	}
 
-	info->data = match->data;
+	info->data = match_data;
 
 	/* Sanity check for possible later IP variants with more channels */
 	if (info->data->num_channels > SARADC_MAX_CHANNELS) {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
