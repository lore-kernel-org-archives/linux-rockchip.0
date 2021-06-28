Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2358AC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 03:55:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCB4361444
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 03:55:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCB4361444
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aahf57CPujv+8fVHpDWWnrOkjL/3kK6NRrm2ziO85mI=; b=pmbz6P+SwOMzQl
	+SGVBzKe2elBndqF3KOe1tM5Oiz8OyMCGsAli4UVFEu0A6Kb6yQJLMt/hzvvX8Zx6M7e/IAo4jbiS
	jwR7mwKZsqx/782KzowMwsi+4y9UsQkf5TnCKWSVGmQLOadWGswwA3UtkK+lWW3qMXCffHL02AeUu
	kGhFVEvpCFWnIsAhNXjyV7oAOGO8S6YlUiwWcG1LCNsOkp+5tkBg2h0mLpsByY9t1MEYUMQWkfaKu
	gnvS8o4mDg1PtCA+Z7hWkxaJ/rzz4NBuz9PDjTTddpA2EKgaRaZPjknz1l661iBHu3ltlFk9vUXaI
	hLrn8pFarpl2E8fKUM4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxiMd-006f4M-9p; Mon, 28 Jun 2021 03:55:15 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxiM8-006ezl-FK; Mon, 28 Jun 2021 03:54:45 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 78FF6591;
 Mon, 28 Jun 2021 11:54:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost.localdomain (unknown [14.20.131.7])
 by smtp.263.net (postfix) whith ESMTP id
 P12369T139709984536320S1624852472443677_; 
 Mon, 28 Jun 2021 11:54:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ac41327752d6ffaaaa78b061e5dfb0b9>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-rockchip@lists.infradead.org
X-RCPT-COUNT: 16
X-SENDER-IP: 14.20.131.7
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: djw@t-chip.com.cn
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Kongxin Deng <dkx@t-chip.com.cn>,
 Levin Du <djw@t-chip.com.cn>, Heiko Stuebner <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, David Bauer <mail@david-bauer.net>,
 Jagan Teki <jagan@amarulasolutions.com>, Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v0 1/2] dt-bindings: add doc for Firefly ROC-RK3399-PC-PLUS
Date: Mon, 28 Jun 2021 11:54:01 +0800
Message-Id: <20210628035402.16812-2-djw@t-chip.com.cn>
X-Mailer: git-send-email 2.23.0.37.g745f6812895b
In-Reply-To: <20210628035402.16812-1-djw@t-chip.com.cn>
References: <20210628035402.16812-1-djw@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_205444_710670_9EA2E939 
X-CRM114-Status: UNSURE (   9.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Levin Du <djw@t-chip.com.cn>

Add devicetree binding documentation for the Firefly ROC-RK3399-PC-PLUS.

Signed-off-by: Levin Du <djw@t-chip.com.cn>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6546b015fc62..c7b2f5f852d5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -122,7 +122,12 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
 
+      - description: Firefly ROC-RK3399-PC-PLUS
+        items:
+          - enum:
+              - firefly,roc-rk3399-pc-plus
+          - const: rockchip,rk3399
+
       - description: FriendlyElec NanoPi R2S
         items:
           - const: friendlyarm,nanopi-r2s
--
2.23.0.37.g745f6812895b




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
