Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE12CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt4XVO7JpLuPYyta2YaRow/DzVLkYL7tzaawaxEpd64=; b=40mtqvqwqwR5qa
	NTrO1laMQxDJDeoccM5cQY3T28ZyXOu5+HM/wYxrcsAgHamn4Me2hnmd29fmQ9TG8TP+dUDIh3qgV
	Q3tR94J55QcEiHTE4rZ7arx+6uKLwRpeNPXigM796/ShP/eM1Xx5urq9FOr0xgfOZNK6Zc42FRmm1
	qSavG8YIZMk94/h20jV05p6SQbEDlnckjNmWOGNliWJHlqkpWjwP4BBQzAArhwNG47BV5kmzQ5muk
	Mah2LlMTdqBqIuAf9+/d+eSI3cBFhBTWd7fXnaRku9BiLVkdKYHdbpOi7tC3P56Vjl9LlOZZ0fzuT
	ElhW1qVlrXDwr8sBiijw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iJT-00000007dR4-08jL;
	Thu, 25 Sep 2025 09:30:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iJL-00000007dHL-3ngn;
	Thu, 25 Sep 2025 09:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=2qN0FqsVUISBvXoaqv4EYKW7KLfiSBDet0Hh1gfEi1U=; b=eCdggl4lv/fqUGDXszcglk9RpV
	5rlEBVUB0iFS6KuLthsRFwAfe3KmKAVx08gM/VW6QEuQr8+H9EHfD/Itd9Mpug9Lw2U2njvbFcO5E
	IOxZcxG3oTw/zjY+UJzCzV1V/LfB4Rmi3DLoYM0gl2mADYuYWdXfRHdGStx+a8y89X/ghW0IGRU6w
	WELjEJT7HZ5mW4pcFE+jcnBzv8MAoec09Zgg6WZNtvdGKCe/EhWxkDnmzjwkyHHXjdLs/5djFajSz
	AsS6Qg+b7+abXsISjgn0fjMEZ4kTaX20EBE7WLFupXPlKAVgDdYwUd7tXCwV70E0sQQFcjpgajgSV
	fNuJGtgg==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v1iJH-0001Nz-C6; Thu, 25 Sep 2025 11:30:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 5/6] dt-bindings: arm: rockchip: add TS233 to RK3568-based QNAP NAS devices
Date: Thu, 25 Sep 2025 11:29:22 +0200
Message-ID: <20250925092923.2184187-6-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250925092923.2184187-1-heiko@sntech.de>
References: <20250925092923.2184187-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_023047_942181_FF3CF4F5 
X-CRM114-Status: GOOD (  10.69  )
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

QNAP builds a number of variants of the RK3568-based NAS design.

Add the 2-bay TS233 variant.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..27c353c4452f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -846,9 +846,11 @@ properties:
           - const: prt,mecsbc
           - const: rockchip,rk3568
 
-      - description: QNAP TS-433-4G 4-Bay NAS
+      - description: QNAP TS-x33 NAS devices
         items:
-          - const: qnap,ts433
+          - enum:
+              - qnap,ts233
+              - qnap,ts433
           - const: rockchip,rk3568
 
       - description: Radxa Compute Module 3 (CM3)
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
