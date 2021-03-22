Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20EAAC433C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:43:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 63AB761931
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 10:43:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 63AB761931
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nUDZOnPowyUNVWpHcbl8pNjpoYNFrqNvs8akYPytBdY=; b=humSy77rZnJ7PFwtLfzttR6RR
	/knG0HEt0si5E45unsGSVvpui+C3AjsxkPxXPMCty65OuEZtNkoNUqfqhKc8Bv9W+smH8tlSymLvc
	gsdVoFywxvYRNEaXIBDsD+HItaCEPC2+5oNB0mgn5yCaXk3xSy7RHjvsNnJA4XHFegXsYr2C20Hij
	5khFkG5NcYAutW9OSapDsTxLcwBVEPZVZb1CFgWItxKyzTa18Um94sHA0OIpLjhdpaCQ82YYdNAb3
	xNfMdw48wW6Hu2KWTD1mqxVOHwJaRCdohgL9gqVGZlYl+vZv6U6dLXKKV3b+KUSNh2EGQKf885oe5
	tZ+t/nX+g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOI1z-00BMBY-Vt; Mon, 22 Mar 2021 10:43:32 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOI1m-00BM8u-22
 for linux-rockchip@lists.infradead.org; Mon, 22 Mar 2021 10:43:23 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 76176F3377;
 Mon, 22 Mar 2021 18:43:14 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139685293258496S1616409792243826_; 
 Mon, 22 Mar 2021 18:43:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bf31d402894e306b7286649179f7c0be>
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
Subject: [PATCH 2/3] pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio
 bank struct
Date: Mon, 22 Mar 2021 18:43:09 +0800
Message-Id: <20210322104310.863029-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210322104310.863029-1-jay.xu@rock-chips.com>
References: <20210322104310.863029-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_104320_284402_26639672 
X-CRM114-Status: GOOD (  12.46  )
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
index 69e4639214b5..0a816e256ae6 100644
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
