Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E3B0C10F04
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 09:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oXkcc+srNt//WErZ8gZPM/1XvtEyVMgorNatOFB3EJg=; b=Q1EYjET7eIr9Qt
	voQZ4M1iasxg8ZKSVaqj7HXHRi0+06dABD4cu4nAZ/B5HXGgBnpvlspWVrpo4LmeY3HMt/HvzXi2J
	RLuuT9o1ll5MZcDFZVBHOsxf7xQxFuYrndkAF7lc5UeNfMtY3i66IN03o5aXGNXH8h+GaHRtuOVHD
	UHki8ATJ2Uuw5Ad2HyiYYdF3w3V1gQfqmeXDrtuKvK5LiKQbZrRzDfGrjdMp7QvRWwlUs94dmM6+Z
	IGJamolxekc7PW7XDLb8p8+RYR4OddcqlLW5eijr6+ott9NdGr4pabRItdu1obewUqJ02Vhqa2oMP
	1fEQgxRUaFHvwuxAYBHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAnsC-009Vw8-1H;
	Wed, 06 Dec 2023 09:07:16 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAns6-009VqY-2g
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Dec 2023 09:07:15 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-286d8dae2dbso508619a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Dec 2023 01:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1701853617; x=1702458417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vkgnInx34MsdRC00k2I9y+o/ne93gzAEsHKwXhaX8A0=;
        b=pLe6OMqalB7WmUO/eEjE/p43NOJqyrz48zNglL1Hr9rQJGx2B0Wjtdc+sFIcT3CHOo
         CLlJcoX43VSpEmGgkryaz1VsIOHEeiFM50mBXvQnAbU15NAlPLwpU2l4TvMyjq8qZEe5
         GPAzRorxu5LD/rHCnEVliDaPMFJ3ESpd1A04igar62hwivi2AFXkSOIHKo3tUcMZTIJH
         I7+OWB67wSuscFxzghT7AN02g+bCwfI12wL+kg6cua5r8WAuTELJQJJ81zpk1YdTGe3r
         cilpU8/sn4Gu6PXOf1hL0HDF2kfzX+/MB8L5W5R7FEL3Uj2cc0zFtPJoKvWjSYWuDAZQ
         ZktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701853617; x=1702458417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkgnInx34MsdRC00k2I9y+o/ne93gzAEsHKwXhaX8A0=;
        b=ErkQGZ65b/uqC6ee0/ct2dcR6/As5xi0mKfVr5nGSCLbZcoCXpMUOjMs4IqRAPeRLL
         Urv55CdtC50aTq9lq+FHFmtuj/FoI+2CuCqMDL4iiCoar5aR2DEnOtVQAIHWJfmoIXyI
         PNaXidrMvgKp4YiAii1TwRWvxK/FCeoQ5pZmIvRdo2+KXsKonIo7eEwO/f0nL85B8dB2
         B/DGcviz0HbVp2yNxyHZQhLAh1bF2nVjpZrhq7vHsoKgwPZ0JEbnBj9nzAbvTAFGq5EG
         92C68Dn2eD7Y+pU42euBwU19iUiVcNu/0oaE4AiF5WBIzEgeST5M+y2DAZGIvlztK9QJ
         hI2A==
X-Gm-Message-State: AOJu0Yz4j8quvbnqFrGZrJx/1twQMFfl6xH31G41U7Zpty2muIlibl61
	QxOQ0ivFvBhCjNUC+tRTPziHSw==
X-Google-Smtp-Source: AGHT+IHrGxsDqoubS9LhJ6U+qoCk+pQ/zFRwTborkh3P26N1W35bYry7lNZkS91ue9idDeKXGjDzeQ==
X-Received: by 2002:a17:90b:1b46:b0:286:c155:10e0 with SMTP id nv6-20020a17090b1b4600b00286c15510e0mr827953pjb.31.1701853616973;
        Wed, 06 Dec 2023 01:06:56 -0800 (PST)
Received: from jensen.next (li999-236.members.linode.com. [45.33.49.236])
        by smtp.gmail.com with ESMTPSA id mi7-20020a17090b4b4700b00286a708cd07sm4967797pjb.57.2023.12.06.01.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 01:06:56 -0800 (PST)
From: Jensen Huang <jensenhuang@friendlyarm.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: rk3x: fix potential spinlock recursion on poll
Date: Wed,  6 Dec 2023 17:06:40 +0800
Message-ID: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_010710_872049_32859A63 
X-CRM114-Status: GOOD (  12.05  )
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

Possible deadlock scenario (on reboot):
rk3x_i2c_xfer_common(polling)
    -> rk3x_i2c_wait_xfer_poll()
        -> rk3x_i2c_irq(0, i2c);
            --> spin_lock(&i2c->lock);
            ...
        <rk3x i2c interrupt>
        -> rk3x_i2c_irq(0, i2c);
            --> spin_lock(&i2c->lock); (deadlock here)

Store the IRQ number and disable/enable it around the polling transfer.
This patch has been tested on NanoPC-T4.

Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index a044ca0c35a1..94514637c3bd 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -200,6 +200,7 @@ struct rk3x_i2c {
 	struct clk *clk;
 	struct clk *pclk;
 	struct notifier_block clk_rate_nb;
+	int irq;
 
 	/* Settings */
 	struct i2c_timings t;
@@ -1087,13 +1088,18 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 
 		spin_unlock_irqrestore(&i2c->lock, flags);
 
-		rk3x_i2c_start(i2c);
-
 		if (!polling) {
+			rk3x_i2c_start(i2c);
+
 			timeout = wait_event_timeout(i2c->wait, !i2c->busy,
 						     msecs_to_jiffies(WAIT_TIMEOUT));
 		} else {
+			disable_irq(i2c->irq);
+			rk3x_i2c_start(i2c);
+
 			timeout = rk3x_i2c_wait_xfer_poll(i2c);
+
+			enable_irq(i2c->irq);
 		}
 
 		spin_lock_irqsave(&i2c->lock, flags);
@@ -1310,6 +1316,8 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	i2c->irq = irq;
+
 	platform_set_drvdata(pdev, i2c);
 
 	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
