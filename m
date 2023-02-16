Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83225C636CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcIvJRQY8BExf2xl8YClnK5Ur1G4sCNUH6p0yTLYJmM=; b=QBefgKQwEw54PR
	040uLuEqVaC94fzf8HKuAuCt/2NR45mFcXZGm1SYry/zdX5ARqyv2xtaOif+sYOYEuxMnJ41pHzWl
	79MXEqUrdtHXAPviyOac2uM/UCgcJ/yeA1JAKUoxj50OpDQ3R57SCrK8pGXwLgX0rstvd+LcYWcGX
	4gR8RPCs4ZyLmsJnGRjEEqBguQBrtg3gd5oHy17BR6JsnfseBancJYVeovAmVCAgdJjkTojB7QEQw
	jFCpZTDlFOOip8ZOX/k44nR8gfC39D4sDee5pJPNTfZWQUkw52vPtMt3awKtcaqa6DY8LbIYnJLlu
	fZ2h6RlzKw9/XtEUIxzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbl2-009fzB-OV; Thu, 16 Feb 2023 10:44:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbdQ-009bHA-KT
	for linux-rockchip@bombadil.infradead.org; Thu, 16 Feb 2023 10:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6gm263M26ObRt+tNhQlpXp9TDX0m+W3QVJDpyByt9dg=; b=YDVP+DgfL3kw36nXp8aB8GWhs5
	R1OML1RPW1mGqsESjeXnP0IN1jx+Kt/RFFw063tmr4JAepRi6cxJvQcgvCb3zh+rCa2GJRftHZWNI
	M4sGzXtLU02vlkVkKxW55GMvRQ9zEKQfTV5unMHk5dIgBCcXAw7YSRoxMzO1K69WfySnzd19Ml3Hm
	wVOVJycs8/6aJ4Xul4A0JdIhMySFcW+oicV+EDTiwLZCLRBpJYDd5rYoBQ9qkbgpLSivDWgK3SpwP
	40wy2K2T8yDPULk8CXK/43KxPa3JZg244oAcB9mdebvpkdpU+e4xK3rOVt4iNjL8+G35F6O60CSzB
	GxhKjbYw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pSbcL-00AF01-1E
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Feb 2023 10:36:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcs-0003hW-SC; Thu, 16 Feb 2023 11:36:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcr-005Knb-0O; Thu, 16 Feb 2023 11:36:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbco-002Wit-8B; Thu, 16 Feb 2023 11:36:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 19/19] dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
Date: Thu, 16 Feb 2023 11:36:24 +0100
Message-Id: <20230216103624.591901-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230216103624.591901-1-s.hauer@pengutronix.de>
References: <20230216103624.591901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_103640_122417_D00004C9 
X-CRM114-Status: GOOD (  11.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

This adds rockchip,rk3568-dfi compatible to the binding. Make clocks
optional for this SoC as the RK3568 doesn't have a kernel controllable
PCLK.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/devfreq/event/rockchip,dfi.yaml      | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
index 7a82f6ae0701e..e8b64494ee8bd 100644
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3399-dfi
+      - rockchip,rk3568-dfi
 
   clocks:
     maxItems: 1
@@ -34,11 +35,21 @@ properties:
 
 required:
   - compatible
-  - clocks
-  - clock-names
   - interrupts
   - reg
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3399-dfi
+
+then:
+  required:
+    - clocks
+    - clock-names
+
 additionalProperties: false
 
 examples:
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
