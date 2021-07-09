Return-Path: <SRS0=C1nv=MB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67408C07E99
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 08:02:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14DAF6124C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jul 2021 08:02:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 14DAF6124C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=t-chip.com.cn
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvdIhOH6KmoWiXIEJdbScYmD028DUp8pCip+SZ0W/vQ=; b=UNSo5DcVEwPOc7
	zGYRsJtR6Ute4wvjoQAuke97pM/DKCyxa1VtEBT2EJWpPfaak2FUN8OEGNT2MuNZmjql5LrT0IL/7
	v56b0VJD4+4IQpoNqTdpA31xbXHaz1U0fUk0+xD8HqlvgKaAsRYmWVmv5fYi6KkFvAhgUtIj4cbGJ
	gqaghhUfUgfJXPYuSTXT88IOZJOSCg+AbFYZBBHvT1SwXKH8eEXelTn2sMSHUlMovopemOgepDtUB
	Onb99HMBe71epFQhlzbvH75eToDHYxt8QfSftszgv6uwwG1Y5sWmYm8D8bNMPEmzLjnp8nRP+jqHe
	xXk3fB4J1NlVYQaj/MMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1lT6-0011st-GM; Fri, 09 Jul 2021 08:02:40 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1lSm-0011gB-BX; Fri, 09 Jul 2021 08:02:21 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 79A3C8C7;
 Fri,  9 Jul 2021 16:01:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED2: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from localhost.localdomain (unknown [183.57.25.242])
 by smtp.263.net (postfix) whith ESMTP id
 P12349T139824269707008S1625817711146317_; 
 Fri, 09 Jul 2021 16:01:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cebec1905e2ea82dabc47d7e6a775ecb>
X-RL-SENDER: djw@t-chip.com.cn
X-SENDER: djw@t-chip.com.cn
X-LOGIN-NAME: djw@t-chip.com.cn
X-FST-TO: linux-rockchip@lists.infradead.org
X-RCPT-COUNT: 14
X-SENDER-IP: 183.57.25.242
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: djw@t-chip.com.cn
To: linux-rockchip@lists.infradead.org
Cc: Wayne Chou <zxf@t-chip.com.cn>, Levin Du <djw@t-chip.com.cn>,
 Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 David Bauer <mail@david-bauer.net>,
 Jagan Teki <jagan@amarulasolutions.com>, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Tianling Shen <cnsztl@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v0 1/2] dt-bindings: add doc for Firefly ROC-RK3328-PC
Date: Fri,  9 Jul 2021 16:01:25 +0800
Message-Id: <20210709080126.17045-2-djw@t-chip.com.cn>
X-Mailer: git-send-email 2.23.0.37.g745f6812895b
In-Reply-To: <20210709080126.17045-1-djw@t-chip.com.cn>
References: <20210709080126.17045-1-djw@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_010220_708654_C2820FA9 
X-CRM114-Status: UNSURE (   8.40  )
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

Add devicetree binding documentation for the Firefly ROC-RK3328-PC.

Signed-off-by: Levin Du <djw@t-chip.com.cn>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6546b015fc62..7ef902f45b38 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -115,6 +115,11 @@ properties:
           - const: firefly,roc-rk3328-cc
           - const: rockchip,rk3328
 
+      - description: Firefly ROC-RK3328-PC
+        items:
+          - const: firefly,roc-rk3328-pc
+          - const: rockchip,rk3328
+
       - description: Firefly ROC-RK3399-PC
         items:
           - enum:
-- 
2.23.0.37.g745f6812895b




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
