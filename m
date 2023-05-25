Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFADC7EE2C
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaD8hB76nbVXhVfS2NIuUrV0nSbFTJA+6pEx5d3xvrI=; b=WxwMOahZRLJqbp
	9DFGwQzC/uTWcQmmpdcWORt/nML0ayY9waW5Lo4gQjNd32TB9DafV17VQVCscLDYoajrFSWRsYfI8
	NIi0VMTSuqiqMnKAgbfoheJkFqKv0Dmj+mC3M2I66xg/ngdR8OQWHwoGrwJKYEXJxwdAZ10JTrCl7
	ZvhVwco80RPSPG8kWxiagrlX1U770D9VXh2ixA5u/sP72y67gztE2ljUvirtIQmg62oS9eY6kdDch
	XgAW6gx9xS6EkIqfpVBffhLWZWVLQm5P3J3RVi/LK1HS99cgfErD9NxNTi0tKGNL7QvLWNOSoa8XK
	gBiWxQDSS+bAhx+2h9/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVc-000Bxh-0x;
	Thu, 25 May 2023 21:28:32 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVS-000Bqu-1K;
	Thu, 25 May 2023 21:28:23 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6140C6601F54;
	Thu, 25 May 2023 22:28:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050101;
	bh=7hciE8XoQj7YqlZBospZkfZLJzFdMH510lvKyu7BdNc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UF0qvBDPNvxoe16vml3vZK/8BatpX4/GsrtRd3QOH/jD1xufqG2yBD7FFWze7l1NK
	 ngN34u7iM26d6UurhdFCBGS/KtTyUPFVGysd+qIlj9kZH4amPZuReUotzwENmWg08E
	 TQNZAEBHslxP0Xo21v0FoLSiaZiEAUijpZsS+vreK/K1Zvsu6ZVMNvDYRUuUAAJjfJ
	 k9X0Fu4yza4WvjOUY1QhqVanVn06opgwniw7kJ8XywWzzWEu5elkrm2dtrmouvnoNI
	 H1d2Ko6fiLjHtcUOxuGxN0y0sdMFwjRlER9NWtj+fPgbz8F3Yh549tmEnWP6ZSTTZR
	 rQ15X7TtjtufQ==
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
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v2 4/8] iio: adc: rockchip_saradc: Use of_device_get_match_data
Date: Fri, 26 May 2023 02:57:08 +0530
Message-Id: <20230525212712.255406-5-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142822_592531_95038D81 
X-CRM114-Status: GOOD (  13.17  )
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

Changes in v2
  - Add a Reviewed-by tag.

 drivers/iio/adc/rockchip_saradc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 41226b76a995..1a5790264ec1 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -414,10 +414,10 @@ static void rockchip_saradc_regulator_unreg_notifier(void *data)
 
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
+	const struct rockchip_saradc_data *match_data;
 	struct rockchip_saradc *info = NULL;
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
-	const struct of_device_id *match;
 	int ret;
 	int irq;
 
@@ -431,13 +431,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
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
