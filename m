Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25C66C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:46:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B2A2619E5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:46:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B2A2619E5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AmozcnAGm5WtulJi07NCfZ+ZBykj70Kzx7LrTd7RcZA=; b=R8EE7sU7D0/I4HkPuDKRnOn/M
	rCPmwgzzpBpXHOZ9UILjVMLkoWU7RHQDksa+vgCVJZx9T5wm6Gf0Kgk7CNo79+RYWp5IzlezyLlc2
	r6VQn+YhusLyeMybb6emuy55kYGVrcbcYtAiMaVSpM3bv8UePIljUtOqz5333/9xHwgZM6aPGeWID
	2CNZ3+CW3c7wksfV1xowerXNTjmLTuUAZblZOQTGt4YM6OySa/cHrR1jgAgKNiA3YBTOR4AKHL6VK
	uq2z10oaBEk9wZpdkpfXOLcAoy9EuDRuxsaLBt2gnIiHqDcIW5lxuJY//YH8P6W9AliDYwo4CQ1m/
	KgW+ka2xA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOxHL-00GQqz-2w; Wed, 24 Mar 2021 06:46:07 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOxHD-00GQoI-Tn
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 06:46:02 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5745BA876A;
 Wed, 24 Mar 2021 14:45:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139685112297216S1616568346904525_; 
 Wed, 24 Mar 2021 14:45:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <32eb33304dd87046d83be8af57fda8e5>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: huangtao@rock-chips.com, kever.yang@rock-chips.com,
 linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/7] pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio
 bank struct
Date: Wed, 24 Mar 2021 14:45:36 +0800
Message-Id: <20210324064541.949630-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210324064541.949630-1-jay.xu@rock-chips.com>
References: <20210324064541.949630-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_064601_321758_0AEDA7F8 
X-CRM114-Status: GOOD (  11.25  )
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

Store a pointer from the pinctrl device for the gpio bank.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index ba4afab2845f..20f734ce3933 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -80,6 +80,7 @@ struct rockchip_drv {
 
 /**
  * struct rockchip_pin_bank
+ * @dev: the pinctrl device bind to the bank
  * @reg_base: register base of the gpio bank
  * @regmap_pull: optional separate register for additional pull settings
  * @clk: clock of the gpio bank
@@ -104,6 +105,7 @@ struct rockchip_drv {
  * @route_mask: bits describing the routing pins of per bank
  */
 struct rockchip_pin_bank {
+	struct device			*dev;
 	void __iomem			*reg_base;
 	struct regmap			*regmap_pull;
 	struct clk			*clk;
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
