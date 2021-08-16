Return-Path: <SRS0=fzRm=NH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDF02C43216
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 01:20:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 95E7F613D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Aug 2021 01:20:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 95E7F613D0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5aeZ78Xk3VioA5lqixpgZJNU0rv9BS16BCM+/xe7js=; b=Wf68KqDTa3KWMB
	a8bVuBp34qjNs/17QyrIOVIvOSpl3s++44+10e+/cVYnDN0OuGVur14JPuNDx9RtVQFYp63Si7Q+m
	+e6vpOZvF3w+2KjopxnqICTM2XKBEVg5u6J8vhT3cWORQTjbNzmjrzO+121y7qSSdn6n2wgDM4kIP
	c7hU7Nf/F680zbbRJzHL5lPNPyRvisoNHMI8GCuiEPY2n39tIGBgiJoenVA843rVKSrnAMCP1v7VK
	C5nlxOMX4AW82g4CSrT23Zuz78J+WTHqk9dUf4pDcTdyEJhGy7gH/VgcihAPde3e6xux/SHoD0I+c
	KULyee/Q/epmmwB2pXVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFRIP-00FwuN-6A; Mon, 16 Aug 2021 01:20:09 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFRIM-00Fwpt-Ns
 for linux-rockchip@lists.infradead.org; Mon, 16 Aug 2021 01:20:08 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 468FFFB822;
 Mon, 16 Aug 2021 09:19:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26933T140041269528320S1629076790609014_; 
 Mon, 16 Aug 2021 09:19:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <73d3c2060501bc2f209333a4d959d242>
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
Subject: [PATCH v8 4/9] dt-bindings: gpio: change items restriction of clock
 for rockchip, gpio-bank
Date: Mon, 16 Aug 2021 09:19:43 +0800
Message-Id: <20210816011948.1118959-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210816011948.1118959-1-jay.xu@rock-chips.com>
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210815_182007_077991_8FEAEFF2 
X-CRM114-Status: GOOD (  13.07  )
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

In the past we only need on clock which name "pclk" for a gpio controller.
In the new version gpio controller, there add some register to change
debounce clock dynamic, so the dt node needs to add the second clock, we
call it "dbclk".

The clock property need 2 items on some rockchip chips such as RK3568
SoCs.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
v8:
 - fix commit author to me
 - add clock-names property but not require
v7:
 - none
v6:
 - add to this serials

 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml         | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d993e002cebe..0d62c28fb58d 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -22,7 +22,10 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: APB interface clock source
+      - description: GPIO debounce reference clock source
 
   gpio-controller: true
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
