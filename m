Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B70AC3DA4D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 21:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ahX/4SS9ISTvvnw5AcWZ4Y+buSYZIr4UTShQxpVcvVc=; b=x0gFPZzxS9zozv
	LaMOYhFXESlIWQSF6bQ7e/VWwBF0nWVkDzkpZAbaLgg7QGsB0vdIMcK9NTXr8xPnlrZ6ZFrK6Po63
	8z0jvmTADdvPwCh9XGHhcqzsF3Agn7MOKF3fYaeWH6M4FL7mPX2kjwoWxWvNB9jdWf3DBrplAuhbb
	g8Tyb0UUnoObmi7qNktEkDURG+gO+8naJq4Sywm0k4IgML6os+pKemGMQs7LbOTihsrP0wY6hP4wB
	1smnUY3gY3tBg1s8hAUd3G3f5bAmo2BG7Hb52D0AatbQcZyz6S/KnqnKEh08sHui0BNNg9TPe7ZPS
	TVx1dgiYA3N/IN22vQJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS0z2-0000000FQhS-016f;
	Thu, 11 Jul 2024 21:05:44 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS0yx-0000000FQfb-0t2T
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 21:05:42 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46BL5VZm002297;
	Fri, 12 Jul 2024 06:05:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 06:05:25 +0900
Message-ID: <20240711210526.40448-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_140539_499288_F4AFF1FD 
X-CRM114-Status: UNSURE (   6.25  )
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

Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3288 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..3caa4e6428be 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -782,6 +782,7 @@ properties:
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
+          - const: radxa,rockpi-e-v3
           - const: rockchip,rk3328
 
       - description: Radxa ROCK Pi N8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
