Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D899C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 01:20:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0B0C613D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 01:20:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E0B0C613D0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfZSdNTPOLYzXPlHUUqyLI3O5hyMf2fxNnnFigMwTRE=; b=A5dr0RQbRzHkR1
	vPnJn7UnXPc2FaghT4z62RtTjbNTBtSpnOpm8gUowrQLW/X23gUq9Z2jf0Og3WccNJ/0EwmtC8QnH
	LZTInVET1RK979tRr0U7xA2dv3fQ7mZyZXBDqaJXyFQpRvYLvyNzihSeAt0ZXZ3HNKDQg5IabYSo9
	OKOvs4ajw0LlhI0OUegcd4AMK9OSGkeWxrcqgs3jYPOeVNtz+TakfZqfRe9VrmdAM4Fr8IJD/wmdM
	UQxu/tWmuuVSSx5h48OlfHH/Byq1GvqDwWtpCHg3Tri0dy0ePdxgQJ09+XuKSMnyr157oC8w9vBQ2
	3V/q1tan4v9afQpWDOOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFRIJ-00Fws2-GZ; Mon, 16 Aug 2021 01:20:03 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFRIG-00Fwpr-NT
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 01:20:02 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 4843BD7662;
 Mon, 16 Aug 2021 09:19:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26933T140041269528320S1629076790609014_; 
 Mon, 16 Aug 2021 09:19:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9b3da95c0ae359f5c5a3a1f3f3eac345>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: bgolaszewski@baylibre.com, robh+dt@kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v8 3/9] pinctrl/rockchip: add pinctrl device to gpio bank
 struct
Date: Mon, 16 Aug 2021 09:19:42 +0800
Message-Id: <20210816011948.1118959-4-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210816011948.1118959-1-jay.xu@rock-chips.com>
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_182001_056265_A03EB15B 
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
v8:
 - none
v7:
 - none, keep from v1

 drivers/pinctrl/pinctrl-rockchip.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index dba9e9540633..4aa3d2f1fa67 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -81,6 +81,7 @@ struct rockchip_drv {
 
 /**
  * struct rockchip_pin_bank
+ * @dev: the pinctrl device bind to the bank
  * @reg_base: register base of the gpio bank
  * @regmap_pull: optional separate register for additional pull settings
  * @clk: clock of the gpio bank
@@ -105,6 +106,7 @@ struct rockchip_drv {
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
