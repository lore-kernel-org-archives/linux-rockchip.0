Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03CDC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:49:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A56C61107
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 13:49:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A56C61107
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pTxcvw0tD/hD+BZ3CvF6zysdKUIHiCp+kVw4mH/2YGo=; b=SIiWqjzLh+NT89TpXNMGo9Xt9A
	kIlMi5+57bqEYtG0T/P4sPPrwcm0z4i7KgYpOSwgc4+MtoUmGVeThrnOOGFV7mTAqg+DgsIR8eOLk
	vZwZIyvjBK/UbEAYZ3K9Ix/kzX3Aa67gSo6j3vUF5nHniBznvwYTA6AN+uRHacyxMm7nIyLaOK04G
	nOHpokZbdo4y6i+A0Eq9ZS3JYpBX5ZfrnTu1cn4WHOq8f4exU+wp+/9cLxhdat2LjY68QT0h0+bjt
	wanQtFjvPRFU4lqKIIHPO+8mh/vef/GM3y6X5+9Ym/7zh7ObBPgzSfiexk8ojbJZ79zdV3e4KvS29
	31P1DyRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbkYk-003YTf-Ki; Wed, 28 Apr 2021 13:48:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY7-003YP0-4N; Wed, 28 Apr 2021 13:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gLnSCXusk8SJb3nGkzqXkWM8ycwZ+aOw4sOZ8q/xIwo=; b=R2VIiKfxnORxtxpKudNOT7Dc0s
 TM0h/pYhtNtZBiy4+RTJIRQ4MOwpR1ULmbXp9QP2ML8yZvtEMbqNiMsftzj4idOqleghFT2EW+tEt
 Ns6hjlXXkSRIDn+uIU+o9me/r3ASvc+Klyu9Ksvf8McqFXY6J7ZiY368H7XvY46zuFCg84f52w+KU
 lLd1jL3ZGXFUFDGX0fb2RW5WWaJ2vO8csIaynSlieneNQSDETe80cwN8p3liiuGyoT3QOpO+PlUaz
 k0M6PGw6tmTIZzHu2BHO0hOZ+9fhjf5eIXm5FplChSPVRsC6pU9zi2y+NwIqjwZjlTAHbvz80aCsv
 wusivj1A==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbkY1-00HStV-Ue; Wed, 28 Apr 2021 13:48:16 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 7B39ABA115;
 Wed, 28 Apr 2021 21:48:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140649007400704S1619617681633012_; 
 Wed, 28 Apr 2021 21:48:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e985095ae2b11a15e9ea2b1ede2141c0>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 30
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: <cl@rock-chips.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: [PATCH v3 03/10] dt-bindings: mmc: rockchip-dw-mshc: add description
 for rk3568
Date: Wed, 28 Apr 2021 21:47:52 +0800
Message-Id: <20210428134759.22076-4-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210428134759.22076-1-cl@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_064814_293953_9194F6CB 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Liang Chen <cl@rock-chips.com>

add "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc" for mmc nodes on
a rk3568 platform to rockchip-dw-mshc.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml        | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 3762f1c8de96..eaa3b0ef24f6 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -29,21 +29,14 @@ properties:
       - const: rockchip,rk3288-dw-mshc
       - items:
           - enum:
-            # for Rockchip PX30
               - rockchip,px30-dw-mshc
-            # for Rockchip RK3036
               - rockchip,rk3036-dw-mshc
-            # for Rockchip RK322x
               - rockchip,rk3228-dw-mshc
-            # for Rockchip RK3308
               - rockchip,rk3308-dw-mshc
-            # for Rockchip RK3328
               - rockchip,rk3328-dw-mshc
-            # for Rockchip RK3368
               - rockchip,rk3368-dw-mshc
-            # for Rockchip RK3399
               - rockchip,rk3399-dw-mshc
-            # for Rockchip RV1108
+              - rockchip,rk3568-dw-mshc
               - rockchip,rv1108-dw-mshc
           - const: rockchip,rk3288-dw-mshc
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
