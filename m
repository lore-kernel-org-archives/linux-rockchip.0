Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6850C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51BE560F3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 51BE560F3A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1NPVKNjUb3y1S1Ld7eflxzL86e34TGTyZViVMXGhWk=; b=hZyvAlNHnqKhl1
	lLzXe1dENRaPcSSot43jCqH6KruRYyEUwp4KYFxhz7qK2TDfc1zLJw5WlnUVLmVX/La5lb+Sv/Qm1
	hv3aypyjsLjhy4WUQ+vHy2TQU5dJxLNccYP0mOp2ewfQ4RlY8CEorNFaNT/uIs/kMDLtYykZXG+Xk
	Wg/zhoHViA7d8xzqw+kSx7YC+2gP1HF7tt0AL+QhKZHN2RFnMfgwsP6Z8E/y7ILtrR+f/3k+DhosI
	HI4eoyogGZ7QKjcBW+/sosoH4rmJJHRcAEx15BsQKJgLBXYwvwlF+EoV4y23z3CC4vYwR3q0uRbh/
	uRBrXGCkWt6RwtvsStcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPumQ-003Ucd-O4; Mon, 13 Sep 2021 22:50:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPula-003ULN-S6; Mon, 13 Sep 2021 22:49:37 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=localhost.localdomain)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mPulW-0003SX-C6; Tue, 14 Sep 2021 00:49:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Cc: heiko@sntech.de, jay.xu@rock-chips.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] gpio/rockchip: fix get_direction value handling
Date: Tue, 14 Sep 2021 00:49:24 +0200
Message-Id: <20210913224926.1260726-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210913224926.1260726-1-heiko@sntech.de>
References: <20210913224926.1260726-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_154935_015759_D10E2290 
X-CRM114-Status: GOOD (  15.15  )
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

The function uses the newly introduced rockchip_gpio_readl_bit()
which directly returns the actual value of the requeste bit.
So using the existing bit-wise check for the bit inside the value
will always return 0.

Fix this by dropping the bit manipulation on the result.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 16d9bf7188e3..3335bd57761d 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -141,7 +141,7 @@ static int rockchip_gpio_get_direction(struct gpio_chip *chip,
 	u32 data;
 
 	data = rockchip_gpio_readl_bit(bank, offset, bank->gpio_regs->port_ddr);
-	if (data & BIT(offset))
+	if (data)
 		return GPIO_LINE_DIRECTION_OUT;
 
 	return GPIO_LINE_DIRECTION_IN;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
