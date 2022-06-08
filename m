Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF935C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jun 2022 16:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uYIrzVs0KA+mbziv6O+IU7DtyfvCVIicm7zUwN/dI4=; b=pz4wcdFBlbRADG
	KlltaCc+r80eeTQh6cjs9a9o48HN8ShSUldgwAQjTKVTgXSUe6dxny7EfEpz1tCf3zYUBqYym11b4
	8utjhR4Ay5Q0VIDQlKtCV01N1uylDc3vBEYNehH1nGcrp0aSNHjt6Tg2oC1FnU2HDY5qwoX0RuOAm
	7fjUbD0HC/0Iy4O+6gcClVJMWlTpP+RVR2UpP630Uc02CVT6azxnGiBcfsaqb5dCJL9Qxo/2arCmv
	qGD/Fmsqrb571qujJv2CDFA8YPtWsDwJClixfMhZs1FLJY6G9/2vKBe2lXJectlB29Xkloym4dzLz
	9nSxNceGKsxG52EabHFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyIT-00EDyE-LY; Wed, 08 Jun 2022 16:12:41 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyyI5-00EDt4-0h; Wed, 08 Jun 2022 16:12:21 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout1.routing.net (Postfix) with ESMTP id 0D9A540723;
	Wed,  8 Jun 2022 16:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654704731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+yNCEI1M50WCFwTtBdpIGCBslfrVDPiRRt09PxL34Ks=;
	b=MGlNPMSr/ikza8N8iG35Niw1MJ4Zhxd419d8LEqdGJ1FuFgjrBL+iXSYqk76JJPhxqc5kT
	+MTeqLq5/JNSywC/QWrixzy7jyL1FnIF09NoHI4jiVUL+JQ94NnPJOC+Jm5kvfxksbPKgC
	OLJQM1ggc7G9rXwDyNdgxnt6qXKEV+U=
Received: from frank-G5.. (fttx-pool-80.245.76.43.bambit.de [80.245.76.43])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 333C8100CFB;
	Wed,  8 Jun 2022 16:12:10 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 1/2] rtc: hym8563: try multiple times to init device
Date: Wed,  8 Jun 2022 18:11:48 +0200
Message-Id: <20220608161150.58919-2-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220608161150.58919-1-linux@fw-web.de>
References: <20220608161150.58919-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 86d1654e-4123-44a3-899d-68cca389b7da
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_091217_724596_26AD44CD 
X-CRM114-Status: GOOD (  15.65  )
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

From: Peter Geis <pgwipeout@gmail.com>

RTC sometimes does not respond the first time in init.
Try multiple times to get a response.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/rtc/rtc-hym8563.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-hym8563.c b/drivers/rtc/rtc-hym8563.c
index 90e602e99d03..9adcedaa4613 100644
--- a/drivers/rtc/rtc-hym8563.c
+++ b/drivers/rtc/rtc-hym8563.c
@@ -13,6 +13,7 @@
 #include <linux/clk-provider.h>
 #include <linux/i2c.h>
 #include <linux/bcd.h>
+#include <linux/delay.h>
 #include <linux/rtc.h>
 
 #define HYM8563_CTL1		0x00
@@ -438,10 +439,16 @@ static irqreturn_t hym8563_irq(int irq, void *dev_id)
 
 static int hym8563_init_device(struct i2c_client *client)
 {
-	int ret;
+	int ret, i;
 
 	/* Clear stop flag if present */
-	ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
+	for (i = 0; i < 3; i++) {
+		ret = i2c_smbus_write_byte_data(client, HYM8563_CTL1, 0);
+		if (ret == 0)
+			break;
+		msleep(20);
+	}
+
 	if (ret < 0)
 		return ret;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
