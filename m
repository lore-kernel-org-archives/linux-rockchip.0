Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27188C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:19:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB75461078
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:19:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB75461078
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QEay1LS+NYTL2x2HDXGL2718vTyyskEstu/Lx61e24=; b=cOuEy+Y+OVRhVZ
	e2OHfMYYDsTcbdXnKQRXLK885w6oyCurbXC3ZC1krdqr10a8+2UM8eBIwlD3UoW7+Nwc9Ml8uHB0o
	c0Fo9UzDgI+bE8P/3lrNit1MhrKxNiJX9rzj4I+cyn2JQ/we3nXSMPfugg9KsfcnU+8+RuVftD9Ld
	6f9yyMh7Qp98zVzQwBLorZswohjVWZb0xsNuvhOj8lAXQcUr5bpvN2qzIT3ANuh/4ktUqC06ukOky
	bP07eepPZEjaJI9aJDnL/+1FTvf0kUm+3B8yZoaVBZ7aeuOoD0u79L3/reMAJj6ODfT77hdmjq49D
	6Ql3ho38tIhnZvk46jXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDI8-003Hd7-2R; Mon, 07 Jun 2021 11:19:36 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDHH-003HJ0-Ri; Mon, 07 Jun 2021 11:18:47 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id E01B8D1C44;
 Mon,  7 Jun 2021 19:18:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32529T140357062862592S1623064720154033_; 
 Mon, 07 Jun 2021 19:18:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cbeeb3a5b401e4e32cf6af6c73b8fcee>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v6 1/6] dt-bindings: spi: spi-rockchip: add description for
 rv1126
Date: Mon,  7 Jun 2021 19:18:32 +0800
Message-Id: <20210607111837.31074-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210607111837.31074-1-jon.lin@rock-chips.com>
References: <20210607111837.31074-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_041844_118712_A3DCE3D9 
X-CRM114-Status: GOOD (  11.70  )
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

The description below will be used for rv1126.dtsi or compatible one in
the future

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v6:
- Consider to compatibility, the "rockchip,rk3568-spi" is removed in
  Series-changes v5, so the commit massage should also remove the
  corresponding information

Changes in v5:
- Change to leave one compatible id rv1126, and rk3568 is compatible
  with rv1126

Changes in v4:
- Adjust the order patches
- Simply commit massage like redundancy "application" content

Changes in v3:
- Fix compile error which is find by Sascha in [v2,2/8]

 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 1e6cf29e6388..50d98c8f372c 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -34,6 +34,7 @@ properties:
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
           - const: rockchip,rk3066-spi
+      - const: rockchip,rv1126-spi
 
   reg:
     maxItems: 1
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
