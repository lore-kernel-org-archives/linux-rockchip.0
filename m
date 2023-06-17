Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8377EB64DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 13:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWzJnKAnAKIsOYfJwlqj5J1onMG51cF4BwaKavE5HB8=; b=08Q/hCM1W6DGoP
	sPvOQIEy3OiLfsJkagEsBHca0xsBz34+ljNuGPcpqo9l5xUi5nCnW41gf/EpJW6LJjvmXWH8+hP6C
	aGTbWqudVSZBbZE3IdpZl2t8aTDrOIZxAriELRh/a6tOusgdPLJS/ilYwiuJ476ZZi4tdMyUDFQKW
	94jsupil2wpX9uJ3xc9McB29Sq930+1m+8y8GmW1kVC0HtEMDsQVVVjuG5uf8f/vPP7sPIacwnMeK
	g5LT7EMqDsagjxQwMZqwXkwR/4+XIokJQPBTh1lDb1Rqq4zwOV/ruv0JrPoa0059/OHs1qAlSRLDO
	h1u7F9CRN85a1W/y5arQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAWND-003i3Q-1Y;
	Sat, 17 Jun 2023 13:53:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAWN6-003i1M-10;
	Sat, 17 Jun 2023 13:53:45 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687010022;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AdJOrsfn+EjXmTCRjY9atZ1E+lqcObT34k7FSpSTYes=;
	b=tDnT8cj4a4ZuQq/nu7Zc/NybdN81LHbDHh0F9tr+HFCIr0kzYR+y0FfNgApbP2qtaL1rGV
	FoD/eRHU0i2vp289JhLsgSBZ7Bq3ihKLRpKdXiBx+wavtzHG2Iuq6AB3Ba4rBaYxVHExPe
	yk/+JsgBdP/7DL+oBtKlpGZy88o1JXu/r/QtlWsFPTTu0FbQ9LslPCTdeEFUdn+eScsvVE
	SOtqTIU0I90zxRoLNxTHT28gCk0W5hGhOrDGhIMxiz7ImF7Gbw4N4TtD2ySdIx6o7vAfCJ
	16H+BtBjYQY6CkmgxQ7mhF2ydiJj/O8T8ujsuOIaHmdroA1z/HagplC2QpTCKg==
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
Subject: [PATCHv2 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Date: Sat, 17 Jun 2023 16:53:14 +0300
Message-Id: <20230617135315.25441-2-f.kardame@manjaro.org>
In-Reply-To: <20230617135315.25441-1-f.kardame@manjaro.org>
References: <20230617135315.25441-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_065344_509853_E878973B 
X-CRM114-Status: UNSURE (   5.52  )
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
+	items:
+	  - const: firefly,rk3568-roc-pc
+	  - const: rockchip,rk3568
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
