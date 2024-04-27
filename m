Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4A6C19F53
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Apr 2024 20:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcS0hxS+p83/kdQLYSm1RWVPPtqHOmeQzBwgDCTho/Y=; b=QyOm2/zaZZcyGx
	Q4hdwzoSHT/+/Yqw65OnsdM8I58AIWFPi+q02XXpeaZA6jF50kdqmMU/4J0SIkxnH1kdTzSyIJ41K
	JUqZu+X9lEGjxjBoGHaCJ4fgZUjrE8CRCQSi5D2QDZzPOttwBbB1wrRSetvbrutCjbw2vhru8pZjo
	4j8Hd+W2BAPlBBK6nN9+iWKNzYQcB+pg1yQW0ILmzECn1StCLCc0EQeioPr7zl4EYV/VnGYJVBwlJ
	DQEKS61394SBbnTENw4ITMFPQlq1qHUJeey1UPxRaHakd+Csw5J9Zneeh2vl2Sf1AASonnx3Zwgt2
	p4Z2ieEOx7Ai7id3WBtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0onB-0000000G8ad-2OLO;
	Sat, 27 Apr 2024 20:37:05 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0omj-0000000G8ML-07sD
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Apr 2024 20:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Mqxa2PoRjYYBR4TQvcaMfBjEHimjCGFPRonW4OLsXg0=; b=aM1UUK
	0ob0Dn1guHJxPMrE1lLm/SPHStcdwkVQLew562thX6mna5R/Eq7H38PKiLYDFjNw
	AvZE/2YHutuyWnenR8vGOrC1lzVizEfWj7mFHEaRAjc9IOzg34sGj4BPYpdfpLK2
	jGCxEtGRnxcsEo3ayNe+2qOF9jMK6AMstMX5gjJnBHJinWS5TvxbjYH1HNWlMPtX
	aAAIHK3wO8PKKZwtk+DC1RyXw/wAp8gldZqHVVckF/Gc2+eCZyfwfPaTvDb4PrWU
	fFlLppn+xVHWqddAFCNyZapTgGXCt9JnbZ+g9rxlERvRuyISt5cb4Ae8KNjmXHL3
	//dirk2CdNRzy6tg==
Received: (qmail 1782108 invoked from network); 27 Apr 2024 22:36:25 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 27 Apr 2024 22:36:25 +0200
X-UD-Smtp-Session: l3s3148p1@WgJR+RkX/s9ehh9l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 13/15] i2c: rk3x: use 'time_left' variable with wait_event_timeout()
Date: Sat, 27 Apr 2024 22:36:05 +0200
Message-ID: <20240427203611.3750-14-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
References: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240427_133637_721901_82E14300 
X-CRM114-Status: GOOD (  12.40  )
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

There is a confusing pattern in the kernel to use a variable named 'timeout' to
store the result of wait_event_timeout() causing patterns like:

	timeout = wait_event_timeout(...)
	if (!timeout) return -ETIMEDOUT;

with all kinds of permutations. Use 'time_left' as a variable to make the code
self explaining.

Fix to the proper variable type 'long' while here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 8c7367f289d3..beca61700c89 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1060,7 +1060,8 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 				struct i2c_msg *msgs, int num, bool polling)
 {
 	struct rk3x_i2c *i2c = (struct rk3x_i2c *)adap->algo_data;
-	unsigned long timeout, flags;
+	unsigned long flags;
+	long time_left;
 	u32 val;
 	int ret = 0;
 	int i;
@@ -1092,20 +1093,20 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 		if (!polling) {
 			rk3x_i2c_start(i2c);
 
-			timeout = wait_event_timeout(i2c->wait, !i2c->busy,
-						     msecs_to_jiffies(WAIT_TIMEOUT));
+			time_left = wait_event_timeout(i2c->wait, !i2c->busy,
+						       msecs_to_jiffies(WAIT_TIMEOUT));
 		} else {
 			disable_irq(i2c->irq);
 			rk3x_i2c_start(i2c);
 
-			timeout = rk3x_i2c_wait_xfer_poll(i2c);
+			time_left = rk3x_i2c_wait_xfer_poll(i2c);
 
 			enable_irq(i2c->irq);
 		}
 
 		spin_lock_irqsave(&i2c->lock, flags);
 
-		if (timeout == 0) {
+		if (time_left == 0) {
 			/* Force a STOP condition without interrupt */
 			i2c_writel(i2c, 0, REG_IEN);
 			val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
