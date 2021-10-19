Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F95EC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:00:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B41F46135F
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:00:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B41F46135F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=cmss.chinamobile.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HO2P+dSfkiezaMSL1h+TzC4/fPYqfWjtlKh39eRQsXo=; b=Wy1WzUmhZuOP5C
	TfL6s/Cy8yOW7p/k9amZp2aTvGJ0gk1c9adE7B9lkmDOtHSP6EnDAJryM6+ypS27pqqswvRNxSGcq
	2OAIXrPojtzku0quGHyT4r3bu5EfyYRTWMzIgvaYCnSq0ytVkZPE9g3logpJzEoLWvUYv0wk/WpEs
	1rPtm3UgSf0GeAzcs66fZR6eGd0mwiRzrvybudroJ713jl0sIoL1PSMaY41YjJ8jNnJq21FqjFA4w
	VgRZRyMAJO3ILEb6JOrrmt0FQs8k6Q64czPKE1GMUEEFfDU9y/y/NrK/oaZX1uTqc/81CePUjVwjb
	RJHG9qJMWOisFU1ZR/nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mclvP-000k25-FI; Tue, 19 Oct 2021 10:00:51 +0000
Received: from cmccmta1.chinamobile.com ([221.176.66.79])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mclv0-000jxw-6N; Tue, 19 Oct 2021 10:00:30 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app02-12002 (RichMail) with SMTP id 2ee2616e972dcc0-fb04b;
 Tue, 19 Oct 2021 18:00:15 +0800 (CST)
X-RM-TRANSID: 2ee2616e972dcc0-fb04b
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.112.105.130])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee3616e97244be-dc5f9;
 Tue, 19 Oct 2021 18:00:15 +0800 (CST)
X-RM-TRANSID: 2ee3616e97244be-dc5f9
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Subject: [PATCH 1/3] iio: adc: rockchip_saradc: Use of_device_get_match_data
 to simplify code
Date: Tue, 19 Oct 2021 18:00:11 +0800
Message-Id: <20211019100013.27312-2-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
In-Reply-To: <20211019100013.27312-1-tangbin@cmss.chinamobile.com>
References: <20211019100013.27312-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_030026_756585_41AAA87A 
X-CRM114-Status: GOOD (  10.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Retrieve OF match data, it's better and cleaner to use
'of_device_get_match_data' over 'of_match_device'.

Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 drivers/iio/adc/rockchip_saradc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index f3eb8d2e5..e221e7aaa 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -304,7 +304,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
 	struct resource	*mem;
-	const struct of_device_id *match;
 	int ret;
 	int irq;
 
@@ -318,14 +317,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	}
 	info = iio_priv(indio_dev);
 
-	match = of_match_device(rockchip_saradc_match, &pdev->dev);
-	if (!match) {
+	info->data = of_device_get_match_data(&pdev->dev);
+	if (!info->data) {
 		dev_err(&pdev->dev, "failed to match device\n");
 		return -ENODEV;
 	}
 
-	info->data = match->data;
-
 	/* Sanity check for possible later IP variants with more channels */
 	if (info->data->num_channels > SARADC_MAX_CHANNELS) {
 		dev_err(&pdev->dev, "max channels exceeded");
-- 
2.20.1.windows.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
