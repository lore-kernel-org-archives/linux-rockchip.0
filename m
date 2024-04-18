Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C5DC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 16:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uSedFZtNwxmL6GMmc5PR+I90eliejL7SVy4q+PYvWWQ=; b=Tqz8qOdduDZzna
	gFGoni5ILj8Z/dw7bmUiFPh9k+Y86ubJN6HHH6hxCpk2E6aAIzLGByuMnvSvty8zyMjXbbeP92l54
	lNuPxEJlkXODMz0FQFk9P7mNGYw3etB8khwNvInwWuKqqGdKazQQ6BDQzXdCGPAvFYJYEnWhMJ9o4
	CDpIgFfDbKidmH2OEFq6M7HJLOCAM32JkGbUGNg1JwdS23ZgyKnuXNWxKzDlGnLSZPXX8rvAOMPW8
	+C5zruyFpCX02tDVEP8JibfiBNB8URfWdFwPQb2uGoQ2XjSzY+Vk32g0G7JbxnDk7xkiQragBlsWs
	w3Rir0W8WqdFRgx6c4Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUap-000000030O6-3HkA;
	Thu, 18 Apr 2024 16:26:35 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUak-000000030Mj-3Bln;
	Thu, 18 Apr 2024 16:26:32 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713457588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+wupbNxZE2H0FG5W1L+OSoGIdCRs9gwAXKL8/dQ4bBI=;
	b=d+hweNz2MFNfIGPfIJwYe2SfDIOZv9CjJ+tUb959aS3GJD28OEwC18sAR/gSblhcHzzMrd
	DqvVobSD8PxrL9ix0bVqd9uqh/Qix+NbFLocoLWP7Fw0MJ8YwcTogr5/rxss7SgOlzIIMJ
	gCNseL6X4XdtrMukk3eXn8a6JnfvEkxpN8fW8rSPQzFdZAZg1lzY04Oq+1svL2qQIQwceS
	DM/mhWKqjJu65gbShouULkP+j+FMQ9SBRJZuZsRXoWRPQRkpzz67PHexpxWex04uuwRPVA
	D2tTnuh2dNBMxcnTcbQhD0Z91g4gCOUmWsUbVg0Phe9X6rJCeApC2TVE8tbFhA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	amadeus@jmu.edu.cn,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards
Date: Thu, 18 Apr 2024 18:26:19 +0200
Message-Id: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_092631_373303_410F7904 
X-CRM114-Status: UNSURE (   7.22  )
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

Correct the descriptions of a few Radxa boards, according to the up-to-date
documentation from Radxa and the detailed explanation from Naoki. [1]  To sum
it up, the short naming, as specified by Radxa, is preferred.

[1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..ae58e25c29ec 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -705,7 +705,7 @@ properties:
           - const: qnap,ts433
           - const: rockchip,rk3568
 
-      - description: Radxa Compute Module 3(CM3)
+      - description: Radxa Compute Module 3 (CM3)
         items:
           - enum:
               - radxa,cm3-io
@@ -767,22 +767,22 @@ properties:
           - const: radxa,rockpis
           - const: rockchip,rk3308
 
-      - description: Radxa Rock2 Square
+      - description: Radxa Rock 2 Square
         items:
           - const: radxa,rock2-square
           - const: rockchip,rk3288
 
       - description: Radxa ROCK3 Model A
         items:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
-      - description: Radxa ROCK 5 Model A
+      - description: Radxa ROCK 5A
         items:
           - const: radxa,rock-5a
           - const: rockchip,rk3588s
 
-      - description: Radxa ROCK 5 Model B
+      - description: Radxa ROCK 5B
         items:
           - const: radxa,rock-5b
           - const: rockchip,rk3588

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
