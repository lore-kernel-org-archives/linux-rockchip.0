Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90EDBEB64DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 18:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWzJnKAnAKIsOYfJwlqj5J1onMG51cF4BwaKavE5HB8=; b=rilxtXAHHNzlua
	k9RfxrfOfKWlSa8ef4kvpYSJxR9fI6v4ItxZiFgxgLbPCnoCZ7BSBf8fNY1qNxJPuPMBSer5Ta+8w
	x+vpPbt8XOnXkuYkATHiBZZDcXkWZU0zeTIk3Yo7VOfdgae54YYKD42oQGxvR4G6/GlZilUtx/WLA
	Whh7/TxlFAcn4SJZUB+5+YO+32/2RdweXzuU88iI+GfHQi9fZz5uCkQ8qeZWpH5Tivr3JWOSSjlxT
	k6ua+uNGmMrUE6vteH8QCHmM+9kHTXo/fVS/OaHESZvoUcZRS04WTcTvJGIB5kZAtt0lr/6kg13Ql
	NaMqAS7+v7oZKI0rY9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJwH-009EKf-1J;
	Mon, 19 Jun 2023 18:49:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJw8-009EFo-0B;
	Mon, 19 Jun 2023 18:49:13 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687200548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AdJOrsfn+EjXmTCRjY9atZ1E+lqcObT34k7FSpSTYes=;
	b=FrLVapj15vZ7KBbR15UTnHU+GyBHKLy/UW2lCy6/rPbORi7BU6tcZ+jEW12WGbgRioLP8W
	Gd9UoGvm/thtANfAH2hHXyIAazbdgwbN7ukx8J3lnl378T6qLIDqcp2l/o36mtefLyEtNt
	1TnmNF6xEZR08NsMiBNtxDY5LouG2bk89jmP81z0nsLeC2ZPtX1B6tRRzTiEoin1ZKnnFP
	XY9LmXx4v46t83EK9BWpUGrtjuxK8ej5KCCFG/xX/KJ4k5KiSUMFAN30gqVaJsSdjk73zJ
	K1MB8O7f7x4bjXCVZ6717oCFd8izIf7xHI4XD++EQ5/2N6S6o3MpGCavc1iRPA==
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	broonie@kernel.org,
	deller@gmx.de,
	dsterba@suse.com,
	arnd@arndb.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCHv3 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Date: Mon, 19 Jun 2023 21:48:55 +0300
Message-Id: <20230619184856.23066-2-f.kardame@manjaro.org>
In-Reply-To: <20230619184856.23066-1-f.kardame@manjaro.org>
References: <20230619184856.23066-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_114912_264954_2AAA772D 
X-CRM114-Status: UNSURE (   6.14  )
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

Station P2 is a single board computer by firefly based
on rk3568 soc

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937..fa21640bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -185,6 +185,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station P2
+        items:
+          - const: firefly,rk3568-roc-pc
+          - const: rockchip,rk3568
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
