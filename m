Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E31C04FF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 13:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q65xYTqIJyd4uK5XP9ThecX3QcEdrxlh1spoO7vXGxI=; b=iVMvkKI+A9tl4V
	pDlQYC6VXiFpYzlVXZn5uelKnSt5RobSGBmaBY392y0XGLKWhstjLHoOSjaPlkMpIgMpoE7NcwgP1
	sDE0gvMuSGsus3iEuuUytsmgOC+j0WJWysD9vs9XjOekjaeLVl+YyPVJS8k2DmuXiwnTiruEegSrG
	A0KANpQsgjX0VudLIL1ySiS3F4Nb752/BX2pxJvDDVdIG0Lc8I5mNE+txzDpQ/7qr9Fhb8ualgJN4
	zQN1tp2q+ZdvuWUfGnJWKorWChiwvU7Mztt1ARHQA4RrxAmQvs5RTWZ4SL3oRxqaxXQuLaSNfLt9y
	zowHNUxQ7IBVehjUu4QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxROn-00000002I1e-1MUe;
	Thu, 18 Apr 2024 13:01:57 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxROe-00000002Hwl-2AIk;
	Thu, 18 Apr 2024 13:01:55 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:5e10:18fd:e06e:24de:a3c9])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 9188C7E0172;
	Thu, 18 Apr 2024 21:01:25 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name for Radxa ROCK 3A
Date: Thu, 18 Apr 2024 21:01:19 +0800
Message-Id: <20240418130120.67663-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT0pJVkwYQkkaTEwfSR0fT1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0tBTh5KS0FKQx0fQR5LTR5BSU8fHkEaSBhCWVdZFhoPEhUdFF
	lBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a8ef14c2fc803a2kunm9188c7e0172
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mzo6ORw5SjMcQkozDC0*UTdI
	Gj1PCTRVSlVKTEpIT09OSUNNSkxJVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTh5KS0FKQx0fQR5LTR5BSU8fHkEaSBhCWVdZCAFZQUlJTkg3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_060148_763864_4C2A1B8E 
X-CRM114-Status: UNSURE (   8.25  )
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

According to https://radxa.com/products/rock3/3a,
the name of this board should be "Radxa ROCK 3A".
Also update compatible to match the model name.

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 99bd5e2c76a0..88e9e0011953 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -772,9 +772,9 @@ properties:
           - const: radxa,rock2-square
           - const: rockchip,rk3288
 
-      - description: Radxa ROCK3 Model A
+      - description: Radxa ROCK 3A
         items:
-          - const: radxa,rock3a
+          - const: radxa,rock-3a
           - const: rockchip,rk3568
 
       - description: Radxa ROCK 5 Model A
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
