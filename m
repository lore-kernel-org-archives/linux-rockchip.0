Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D440C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BDAF60F3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 22:50:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4BDAF60F3A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Tit4VUaBiBFl5oBxm6i51aEGCUPxZ8NU4oudaWd+2c=; b=1vfqr8C5aYVbBw
	gjTWIRQyAKxkfgDx5sdjHqKqSBJ9DnfcyADLtEkdIFtDsv+2K43M3THzlaYm/4bfK9x1hs1/hiIwL
	TBqNFqGPnGjNAmFzKzPjI2HS4ZUnBgQTfaUrYWQ/YgK+/xD8cux2pUxUv0ig7VouruR2fAu8YHiLe
	wGeqOwJEgE9bNlQ5I39qYGWZIELkagnKikMvrbPghHFBlBRi/kRYUkqqkUS+kX76yLV2VwCYdoT6s
	eKY/vZ+uP7snFC7FWraBcce4eX9QcNUaDGxv2Jwir+Tl8nVmMcvkYD4ilcokafTjtly/eGhEiwXcP
	PiIYC8FQoaTqTREiHJtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPuly-003UPD-MG; Mon, 13 Sep 2021 22:49:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPula-003ULO-S1; Mon, 13 Sep 2021 22:49:36 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=localhost.localdomain)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mPulW-0003SX-2U; Tue, 14 Sep 2021 00:49:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Cc: heiko@sntech.de, jay.xu@rock-chips.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] gpio/rockchip: extended debounce support is only
 available on v2
Date: Tue, 14 Sep 2021 00:49:23 +0200
Message-Id: <20210913224926.1260726-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210913224926.1260726-1-heiko@sntech.de>
References: <20210913224926.1260726-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_154934_983154_531D123F 
X-CRM114-Status: GOOD (  16.55  )
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

The gpio driver runs into issues on v1 gpio blocks, as the db_clk
and the whole extended debounce support is only ever defined on v2.
So checking for the IS_ERR on the db_clk is not enough, as it will
be NULL on v1.

Fix this by adding the needed condition for v2 first before checking
the existence of the db_clk.

This caused my rk3288-veyron-pinky to enter a reboot loop when it
tried to enable the power-key as adc-key device.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 036b2d959503..16d9bf7188e3 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -195,7 +195,7 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	unsigned int cur_div_reg;
 	u64 div;
 
-	if (!IS_ERR(bank->db_clk)) {
+	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
 		div_debounce_support = true;
 		freq = clk_get_rate(bank->db_clk);
 		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
