Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43A76C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:45:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC7FA6100C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:45:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC7FA6100C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QxY7F3vby1p1DzpmM43S3OO9HVdcHqF5vWCGXCTr9lE=; b=fDPOGuUm+kOhF7hZ1r+jv1vVW7
	G97QEe7a41p93AiXTd0jYbCc7LHLMU5er1SmooePBW6rQ51C0o5jjS2CybqZyJvsY41OV7zNwXyv9
	9sZy5ApsoMg9I22QdP9tFjAzjDG5PjE4VcK1ny9xbChejLns2mueYc1sjJUtcXQvZqVy5FjP1lCtL
	26ps0k7JRBySvcUgTJNFIUclEMSgfpEso4RMumpfdWKAn6wrtkry3wfwQG1mAgYxuAYYTqMsa/ViT
	+bhpvTVkd/qDaVWEfeJBJDVC1huIojcF05nNz/njYWXDSS+L0H+7WjfgsTWw6tU2YJ+y+w/klbkeW
	jHfILkfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIOz-0010Cg-6a; Tue, 27 Apr 2021 07:45:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbII4-000z9s-9u; Tue, 27 Apr 2021 07:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wO6h88rCFL6jUV5X9N8mokMhbuhKjxNLIO8lLsddsYo=; b=lRT9LgtCYgZo5gNVr3jvMzAlgA
 zrGvxw6RDRx689sKq4R776Q2CZZWSFtpEmwaOvIxkPBkLSTSvXu8OkktuEy1qgmYwplTqV+oKy5tS
 dkQy2RrFypkZm2wD0IqacGcf6YT1g8/XAPQ2+5IeKmUoFS4MgW7Gvoojg3UblZBm78nCbYCkE4red
 qB2D/cdTZ4wDY9d7x9wmc5IMGoufnujLvWoX6Br6ynPvkaBN+3jCFXkgsfYVJQU8PwCBwlffBvyb3
 IGIkw76EQ02b8ohr2qEAxGJ5fAMuzT4Ac4qxwJMoItjtsaVDtTXiT4IbRweINuZuzCtRCqTYNLr5y
 vVX8uu0w==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIHx-00GVlu-MA; Tue, 27 Apr 2021 07:37:47 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id A958BF3AF1;
 Tue, 27 Apr 2021 15:37:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2750T140648996910848S1619509055243892_; 
 Tue, 27 Apr 2021 15:37:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <01111ffee587bf109de715e58a149324>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v2 3/8] dt-bindings: spi: spi-rockchip: add description for
 rv1126
Date: Tue, 27 Apr 2021 15:37:28 +0800
Message-Id: <20210427073733.31419-3-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210427073733.31419-1-jon.lin@rock-chips.com>
References: <20210427073733.31419-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_003745_899414_2D108C3E 
X-CRM114-Status: UNSURE (   9.94  )
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

The description below will be used for rv1126.dtsi in the future

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 1e6cf29e6388..4ed5b72a8494 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - rockchip,px30-spi
+              - rockchip,rv1126-spi
               - rockchip,rk3188-spi
               - rockchip,rk3288-spi
               - rockchip,rk3308-spi
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
