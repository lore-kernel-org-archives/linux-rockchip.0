Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A587DC43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 09:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=S5j560Ozb4oBKc
	7Ov/fDXW5IP+JaFvs4OiJuRfmzhrK67GyL7UbI1Qh2ZzyIcCXUuyj04y8WFSv4PFBv8n9ryZ+PPPo
	kEJi140xuVocUXC2Tp+OiGrI2mbVlhoB2NbR9EOTNIPWsb7KsmgTD4ziB0D7DdGCZb4VMi8Zg5csJ
	MLzfzNJPm0wuKsR5hu5RYBwgVjtUyZw29uJ1g80h8n2CUKK2YVxbeDnm87nVwzq24Z+dTXCWedMfl
	4Cfv0c1GVdgVipBLVPx5nUst4zrivLt6pUPDNQXXk8m2H7sDXg7wJ+BiJ5QWaW3ptO9xCd+Ki6bs2
	0AS6s8hmj5KG0PKPicUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPUy-0000000CKqH-42gE;
	Sat, 27 Jun 2026 09:38:52 +0000
Received: from mail-dl1-x1231.google.com ([2607:f8b0:4864:20::1231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPUx-0000000CKpF-0Ccm
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 09:38:52 +0000
Received: by mail-dl1-x1231.google.com with SMTP id a92af1059eb24-137335bc3caso3431577c88.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 02:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553130; x=1783157930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=Lipa4fxCTL/jIu8QxcR15vAlkludemcDCkx3n396d1B+l0qXAdr12rUOLEUYse430t
         6BjR4HVcGr2NDLlWOot9Eq7b0bsyX3R3gRiVkrOQUCWPjWGCVvjqVldX7quQui09rCqi
         kpa12lIVm8XVLOFiSFLn6pzAAeLvm4jEoKFNmi6K9APeKyA70+lG4vsNzg4Plji+xS8y
         beUQuJ9blSO+dMEx77o1WgSjGR1d99oTS/osfGBAr66FOnIDgtVzNoY9ctlbpdD1n1Iz
         7s4NCgq75OBRQR7Hrhe62v2abLtLMOXeQzwyBAHuFkMii9poPkpmsKeC+zv5AiY1rhY4
         gXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553130; x=1783157930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=gKUpSl6SMaKBxQk1fBov/Mz2guJ3Z9YSHpA4/Y67hbJB2+laAecO4ANUaQDcOVJDYv
         ie9IpeH3GDhigQJ3P5frCqEMIEua0n3ViPpaQLvSmeq3xOInPlc9lcrsXQG0YkcWsD4/
         4PX4oDmYzV7YPJf0R/dgXk9nNOqVaw4VqLIAc99e3++KjurJCpW+wPaGulQbKo+0MTQc
         fNj1VPnvOsOJXb/HAw2EQe7MZWwxMIpbvlVVoUHxXUt/7D71BsafAPeIzMUnWGEhxRc5
         ZPwIru5h/wt78AOHv5DUi4FksijmWew7hb6Xl6QLFhuUUNiLamoGjDg67mEOh6tB4otC
         Oqrg==
X-Gm-Message-State: AOJu0YxzMAiWSjTf+6Iqd4SCCTlY6oockG0jqjLBmekrSf30l/eelMYx
	Hxj3/gL1PZ8IT2YCz999elSlr9xefSzfARS6XTL7+vduVsZ8zvkPqVrBeL4jwEAw
X-Gm-Gg: AfdE7cn8ROif1QpjrABWBQ5JzCOw4Y3acjjnddINB7/fTybH3va28JBf92tIa05ewLq
	JvXFhgjve6FlaKt1VxBMk3Y6an+iK9VViqWg0pAXiBdnzXUZ6SP8zOkmWXwHBvS+sFydbb9oMrq
	cNBjJ7JJoD/kB/gws/ZdZ2uswaQcLJQgxXUMcqVKMUIopKo1lcEcnSAvTnBBzgWgvl5LC3nEtR4
	708NvfqwW5j3le/y6EmNN/zxT0LuKTn4sAN6TCxO+X4NIchveVaVq5b3I4fgETCTonrJiXRHgyF
	+kyniOyFVpzwVKv9PvcaWdu5n6ikQlPYVUBr17SHeAUsXqHEv8LxJlr1f+ADWuPiVebFVH4/tKB
	bcuZKLrcbAns8W5mWL45q4oA9MXNVnBl4H9a510Fz6xXWrnbtLX/WrEGIr8K/7kZUx6IWiLvCB3
	TQnfMQmubu8TU/fKcH9g4=
X-Received: by 2002:a05:7300:640f:b0:30c:6a50:3805 with SMTP id 5a478bee46e88-30c85009a5amr10727758eec.28.1782553130073;
        Sat, 27 Jun 2026 02:38:50 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30cf86deed5sm4902948eec.1.2026.06.27.02.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:38:49 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Sat, 27 Jun 2026 15:08:29 +0530
Message-ID: <20260627093831.80495-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627093831.80495-1-hrushirajg23@gmail.com>
References: <20260627093831.80495-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_023851_087676_4BA9A37E 
X-CRM114-Status: UNSURE (   8.37  )
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

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
