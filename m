Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DB8C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A1bfQEf5+dgnt+VKvV1ZbY1vDvuhg7WkC/b98mlZDO8=; b=n7r7RMV+/K9PSy
	pjNfOquW593ML24ffJfyWhxCEKE3F6lI3FLofo9Vlf5XHtnmG3GRdosZmTSjkBLc5ZybTf9upiw4w
	AspWOJX/0+owph9Oev2DNnbPdNOym24fK3ED2DAtGy3KpGsSVnvpWj7Tc7Bls+Km0kFDf39dmGrmJ
	59QXDMOQcmnryQEDDpP4vgrbBwVSpPEjRhDEm7rnV8UFXxLPh8NGiLquqa7agdv1a/4kiNCtXFu9s
	wsoT/+DYbL2yTzqEOXKoleT8r0hpGIRN6oqN+huqR49a9wrXJKMyDn8KSEKDPbHKr2KWOHTBth6hJ
	myF6W68YBcS/OmoFw5cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLyw-0000000DwPI-2JJH;
	Sun, 23 Jun 2024 12:06:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLyu-0000000DwOu-3Zxe
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 12:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=c5F3YApVjAfHxMvodzG6Yhn4rglnbNNAbLw90pugegc=; b=OiyV1yK6IsEz4o+jAMZd6FnI4k
	XQWqhmCi5rPPDyM/n93XTxUJZrOlL2+a+Ymt+9reBhZju+69aEK64PUrK+4MDAOLqJJrupuoRrD3g
	mXeGVjC82Gpc05+w+lmmZmcuscmQIBT3D6FffQTvxolhYvvWUQ9ZI9xespjIgEm3jNYLcVox1cDLT
	4owK1hmjGrMh9g1g6zdhi3TFBOIVhuzxYGrByvppucPaDtQx4nTmHp1lT+ONgXHLOlZUHHu0uZ/bx
	usuRwNMQKaecLmnI6WtwUorjqTJ4g2aXaUU5pSyDzs5bEgOuQaht19dczj3eO2SqJ/ivS9qPH9FaX
	cX2EEDGg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLu8-0000000828M-3S0B
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:05:30 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NC0fJA006059;
	Sun, 23 Jun 2024 21:00:41 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:00:14 +0900
Message-ID: <20240623120016.82990-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_130319_618229_5BE6160D 
X-CRM114-Status: UNSURE (   6.21  )
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

Add devicetree binding for the Radxa ROCK Pi E v3.0 board.

Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
RK3328 SoC with a compact form factor.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..53ca61c47b76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -779,6 +779,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
