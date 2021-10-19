Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88FCFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:01:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CAA061212
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 10:01:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5CAA061212
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=cmss.chinamobile.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2M+NnYVjg6O3a5+b1xI2Lf/w7iLgW7Mrz283JpqGWwY=; b=1qZxcl/1IaBzqB
	JUNPd+intCABWKqiHz9E6GI52Gavay680nyjJHP6+vhLOVfEcyuacB/FV8SMc+Bgx4UL+IAopI/Vw
	UpRpZKTIhTOJw0AWr+z4RXrqyzcV9mROz0BDGezVhEh4i8X+KcNRZ+a2J5nj7XHpgpZ6U/6Ox1MxU
	FpmEUg0TWIIO5WjgoOemI8yxe+SrJDwc9dGn1St92TF1PN/pzNRbGQorB6Qq8Dpztv1vLhOYDVkiK
	Pp8jCHOZaLv3jegGqEIAWcci/Wk8XfFiyyvLvDlUcSnVopCbaUdvPWwGxb6vYcFnnMmFCmrKcDcvQ
	KSA28k8sVyVXsgrcXbSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mclvn-000kCy-RS; Tue, 19 Oct 2021 10:01:15 +0000
Received: from cmccmta2.chinamobile.com ([221.176.66.80])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mclvH-000k03-0V; Tue, 19 Oct 2021 10:00:50 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.5]) by
 rmmx-syy-dmz-app05-12005 (RichMail) with SMTP id 2ee5616e9737c9e-fb390;
 Tue, 19 Oct 2021 18:00:25 +0800 (CST)
X-RM-TRANSID: 2ee5616e9737c9e-fb390
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.112.105.130])
 by rmsmtp-syy-appsvr03-12003 (RichMail) with SMTP id 2ee3616e97244be-dc62a;
 Tue, 19 Oct 2021 18:00:25 +0800 (CST)
X-RM-TRANSID: 2ee3616e97244be-dc62a
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tang Bin <tangbin@cmss.chinamobile.com>
Subject: [PATCH 3/3] iio: adc: twl6030-gpadc: Use of_device_get_match_data to
 simplify code
Date: Tue, 19 Oct 2021 18:00:13 +0800
Message-Id: <20211019100013.27312-4-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
In-Reply-To: <20211019100013.27312-1-tangbin@cmss.chinamobile.com>
References: <20211019100013.27312-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_030043_545746_259BEA04 
X-CRM114-Status: GOOD (  10.54  )
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
 drivers/iio/adc/twl6030-gpadc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/twl6030-gpadc.c b/drivers/iio/adc/twl6030-gpadc.c
index c6416ad79..0859f3f7d 100644
--- a/drivers/iio/adc/twl6030-gpadc.c
+++ b/drivers/iio/adc/twl6030-gpadc.c
@@ -867,17 +867,14 @@ static int twl6030_gpadc_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct twl6030_gpadc_data *gpadc;
 	const struct twl6030_gpadc_platform_data *pdata;
-	const struct of_device_id *match;
 	struct iio_dev *indio_dev;
 	int irq;
 	int ret;
 
-	match = of_match_device(of_twl6030_match_tbl, dev);
-	if (!match)
+	pdata = of_device_get_match_data(dev);
+	if (!pdata)
 		return -EINVAL;
 
-	pdata = match->data;
-
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*gpadc));
 	if (!indio_dev)
 		return -ENOMEM;
-- 
2.20.1.windows.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
