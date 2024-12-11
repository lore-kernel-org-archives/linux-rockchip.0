Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1348CE7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 06:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VN7G1ojQ88pXIuuZ2TxFcNm19bfnSLL8mZTWG+dysFc=; b=sP22is3sU3uHOT
	/yAy1CYD2EVkiCq456BFiUl4RCA65t7KnX82pJ61+hWmTcf9/Mkvs5tE2loVGxphCC32bsInqPm9b
	cirxktecPRGX+1TC+KZfLR2jD0iq+zqQlEG42CJCZQlw1jvRnM20PzXsqSblKLgJu0oPh3t+FaO1L
	e0pbZPczKKubD3oP0k1pbQbkHVBI0kTRFwPKfeVWgWdUMriQQS/5AAKHYiyXH19ikvz7NGdzGmXEN
	cSkzLH/iLlU+b5JMW8l0Kb5hC8pmYORwrpOAKJ1UMaGo1xH8Ez6VOYkj7us3hWgJbpfk+pPiJiwJG
	oimA9HIEdPoRGAKr7NBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFvc-0000000DtyN-3Mwx;
	Wed, 11 Dec 2024 06:10:32 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFvY-0000000DtwP-0gUg
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 06:10:31 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BB69pr2006126;
	Wed, 11 Dec 2024 15:09:52 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        liujianfeng1994@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
Date: Wed, 11 Dec 2024 06:09:36 +0000
Message-ID: <20241211060936.57452-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_221028_414645_4DDDD401 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
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

The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
perspective.

Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2254ee079094 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,7 +895,7 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
-      - description: Radxa ROCK 5C
+      - description: Radxa ROCK 5C/5C Lite
         items:
           - const: radxa,rock-5c
           - const: rockchip,rk3588s
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
