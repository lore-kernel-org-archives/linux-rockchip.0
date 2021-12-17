Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB232C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 13:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/M0lcYkiAJg/9unn6onvBhNsLlfrjG7UmB7oZ/C0wU=; b=kSx2o+ngK2rogG
	aqiYBTI9OPvMwr6EHS2kfQbg0e/uZoZdhJGmlAGebhOAQxPxEKt5iskkh5HGwDYXgKtF1Fs+ViBBQ
	ushKuCtZ6WrfGaemAn/JDPNddc5Rlx2wCi5pBkqSof+9sGRHV9dp60gzmisztt0PJadVrsZUPx1r3
	IDPzYqzQe+yPLiCAq4/qwJAjZTrS8Sjkp/SERdr6xGJ+LHpz2GplcITZH9tqD74lGO50f+vuREN49
	tdGDypRM5SVY+mzNH8bo4X7LtXbDnd38uOV6I+Bk1Fw4pHO7V5T4qnO0GuxLMqPdH5L3nS0jOdUSx
	A5A+YWSFZmhWfn6pPRsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myD0S-00AJS6-Hv; Fri, 17 Dec 2021 13:10:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCzW-00AIsD-LI
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 13:09:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzF-0004Us-9N; Fri, 17 Dec 2021 14:09:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzE-00Cjq9-15; Fri, 17 Dec 2021 14:09:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 4/4] dt-bindings: power: rockchip: Add power-supply to domain
 nodes
Date: Fri, 17 Dec 2021 14:09:19 +0100
Message-Id: <20211217130919.3035788-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217130919.3035788-1-s.hauer@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050942_756188_8D7A4A52 
X-CRM114-Status: UNSURE (   8.99  )
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/power/rockchip,power-controller.yaml           | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 9b9d710874663..f7e4b95fb6feb 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -71,6 +71,8 @@ patternProperties:
       "#size-cells":
         const: 0
 
+      power-supply: true
+
     patternProperties:
       "^power-domain@[0-9a-f]+$":
 
@@ -85,6 +87,8 @@ patternProperties:
           "#size-cells":
             const: 0
 
+          power-supply: true
+
         patternProperties:
           "^power-domain@[0-9a-f]+$":
 
@@ -96,6 +100,8 @@ patternProperties:
               "#power-domain-cells":
                 const: 0
 
+            power-supply: true
+
 $defs:
   pd-node:
     type: object
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
