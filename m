Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4082C43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FF2322581
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="snkPSH0/";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD3VU4pD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FF2322581
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUJ1lr8xlVEJ0otggPCjdcskgb2SlDy25njSBFHsu2c=; b=snkPSH0/5yTbu0yY2rRzZsbLYl
	doynFasC3FzWmOt7I9DmWZU2Xo0g/VGoyNwWS9VJU6Ad3JEwX8FquMGJ4LK8lKtGbjlV4TGNsC+By
	U8Mez17pQhiLrpKQX5heFMHkv9L/YmPRLFKQ49ZwMde9yy0+/rCleAjTBDj7b1u08Bthbuw2JR0sW
	TCvvskfLAOU3Ek5sVXALXkG7l+MzyWWOpx7gwQKTN/pi9eUlluSleu5Oi8JnoqLd/97b1geuuAPGr
	B3OrZkmYh/BNiA2pad91vt9uiJhlDjlrW/BM0tX+1z8Tt/Osxw8H06uJthRm4aFCoeK0+aJS5BHiv
	5aOgstVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIa8M-0002Fl-Q9; Wed, 16 Sep 2020 16:18:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIa83-00028y-Sf; Wed, 16 Sep 2020 16:17:56 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2356722838;
 Wed, 16 Sep 2020 16:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600273075;
 bh=EHjGZUuZJT8P4Fu0wZHtU4bWPefvl/SobBpWptZnDPA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LD3VU4pDXDvILOHtDKFxURYvXgyTB8ACfXbibwSPYo+xFQOia2LymDneAbApJiQI+
 cxMskXpjhQluQQ38YUTirUoMLw+iYwfvr6P2NtTXqT+FcFsXJrGB1IXP4lwyxHTKqy
 spD0X0DFb9IkH1cUnIo4Nk8zrl19XU+gqpBDxf0A=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 3/6] clk: davinci: add missing kerneldoc
Date: Wed, 16 Sep 2020 18:17:37 +0200
Message-Id: <20200916161740.14173-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916161740.14173-1-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_121756_015306_C419764B 
X-CRM114-Status: GOOD (  14.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add missing kerneldoc to fix compile warning:

  drivers/clk/davinci/da8xx-cfgchip.c:578: warning: Function parameter or member 'dev' not described in 'da8xx_cfgchip_register_usb1_clk48'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: David Lechner <david@lechnology.com>
---
 drivers/clk/davinci/da8xx-cfgchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/davinci/da8xx-cfgchip.c b/drivers/clk/davinci/da8xx-cfgchip.c
index bdc52364b421..77d18276bfe8 100644
--- a/drivers/clk/davinci/da8xx-cfgchip.c
+++ b/drivers/clk/davinci/da8xx-cfgchip.c
@@ -571,6 +571,7 @@ static const struct clk_ops da8xx_usb1_clk48_ops = {
 
 /**
  * da8xx_cfgchip_register_usb1_clk48 - Register a new USB 1.1 PHY clock
+ * @dev: The device
  * @regmap: The CFGCHIP regmap
  */
 static struct da8xx_usb1_clk48 *
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
