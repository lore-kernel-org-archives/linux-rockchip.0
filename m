Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6602FC433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:43:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3082161288
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 09:43:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3082161288
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZybP9JutY6PNuV7vxd/KCULMY4zVFNwwuRdfBQJpLuo=; b=YH9R0LjWyJe+j1mGNlUt6XlvWf
	J4ScJI3pEDcbWqrqlNvdEwE9VduQeiuTxUUGgRlJH+6NgYQ/CCmQi9hNcMmp1DM6aK/tVLLeOzujc
	ibjfhIcO2nPiEwtDmZ3BsqI2G6mFXhcxCCGDboRUvWhLzCguousOCPkNvOzIkPoD6kb5hF1qJ/Tvk
	z7O+K8fc3YJta9jFXQktkETN8rRikQ1gmQIEaxcsAXLJr3a5OJXKHXZNe4za39xZgCuWUNuXWU6wF
	WxE6ifXdzByaZNQAx+8f+/BwQSIwWQox7P5FF2zUIk53WOnU3KspwSEOqH4Oi7y3Ue0Qv+euooX8M
	z0dylrRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1labI8-005Nxn-L6; Sun, 25 Apr 2021 09:43:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labHd-005NtX-17; Sun, 25 Apr 2021 09:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=23M70nJzY4D5dSg0EN1/BUmEcTSd6UttYZMONrxTHWM=; b=Mad4HSxVtvrYGrcEThy9Wlbm4g
 5JDmb+mM70KkERFkqOtybwTXPL8nlve3Nsg6vDh3GLMIpc9QM6efeiCjSWoewWGOjFeRuYSSWthpc
 kP1sXO7GWg2ARkE2Zf1QlKTm1ew0dOmLPBlr1jpMlpyGrqaZtB+Hj9LNrxiZrQoHkO/CHJXwxuhxV
 tSWxYRJy/FTKUbAW3k1lhVpaBtyx8U+QAS3rU1ROaD+KePEOdSRrmwtCBDX3m8SBHuL+cIYG4s/LT
 EXfpzb9pLngugi0XqnQ4aQDslqf+AiYHdG1AUnHky2qKJKm/JCeITTREQPZ+g6p3VgGEEFsIOhob3
 VX9Q++lw==;
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1labHa-00FNtP-H5; Sun, 25 Apr 2021 09:42:31 +0000
Received: from localhost (unknown [192.168.167.225])
 by lucky1.263xmail.com (Postfix) with ESMTP id 9B4D8D188D;
 Sun, 25 Apr 2021 17:42:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3565T140663333058304S1619343740259115_; 
 Sun, 25 Apr 2021 17:42:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0283a0a77b3882e71481c7371a03fe2b>
X-RL-SENDER: cl@rock-chips.com
X-SENDER: cl@rock-chips.com
X-LOGIN-NAME: cl@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 29
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
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: [PATCH v2 2/7] dt-bindings: serial: snps-dw-apb-uart: add description
 for rk3568
Date: Sun, 25 Apr 2021 17:42:11 +0800
Message-Id: <20210425094216.25724-3-cl@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210425094216.25724-1-cl@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_024230_751505_0505E25A 
X-CRM114-Status: UNSURE (   9.27  )
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

add "rockchip,rk3568-uart", "snps,dw-apb-uart" for uart nodes on
a rk3568 platform to snps-dw-apb-uart.yaml.

Signed-off-by: Liang Chen <cl@rock-chips.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 87ef1e218152..97debbf68748 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -31,6 +31,7 @@ properties:
               - rockchip,rk3328-uart
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
+              - rockchip,rk3568-uart
               - rockchip,rv1108-uart
           - const: snps,dw-apb-uart
       - items:
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
