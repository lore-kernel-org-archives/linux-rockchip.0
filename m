Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F1EFC77B73
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 May 2023 06:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JenesyFaKYL7k1rUG79/3LS+csnkX3bXhnBMN1nb02I=; b=0aeHF/QwcEZJeE
	IwKHe2GumKFh4QFVGvEOw9b58vQWZ0ox5LBvmHV5AEBMHAU/zbFsAzALAERtEjGrPm3scWrP2kY/E
	pognra5WKhNtcQnmwKO3eIXTNTcwThFL8mYz5NkHalfb6+AGnoADmjA/JiG04d4YnWl2q5f0hASc+
	GLTaL7UZyIryEK81r+YwoFfkvD3o/000vEgNOA7GZW9OL8B7ePf2DGh4LbP0R99qIEQ0DcjnQHB0Z
	CLvb8rSqHicfsg3tNUQiVLJsEDXHhhoX5H+Oqhf5xjH0qC++WHLZRAfhLELJ5SxUKVsxcGxmjHnZH
	kTrkzBNy/moJYJCLvnqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvB8Z-00Cdrj-0Q;
	Sat, 06 May 2023 06:11:19 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvB8U-00Cdq7-0l;
	Sat, 06 May 2023 06:11:16 +0000
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-333866a265fso8990305ab.3;
        Fri, 05 May 2023 23:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683353472; x=1685945472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VE2YlrUyq5bOerpTSJ4F3tPsUEgEruXEc28cG2wMg3A=;
        b=jzHAeMwNfRTd0NdZ/iG/nzD4VC5m1KPVuLB3sK/Jjb/bDlh//nDvbPLAuEY9j4ehHm
         zcs7hbymYw5mgo+474DHEgkcBXD7W3mYdqqgb1YL82jIyeL5mXjO+d1plbqtksNn/23z
         Sxl9s9cLSSGgrGuFBxl8t5zlFb+hwTUeSgpdcPUayIvlRGPzH1U78/u0Hl8N7rOWi01n
         JQuIk/WLE4XqdPBNeTvYVbvrQi4S7KsOfRCZoxb+bDinjuSEL1Sh37VOI1ZFRwwJpIgi
         xNwWbPiDSfDSEpadl9/paJp2evrY+vi0b7zW7j1gbQicrsPzQ1KFuuN5ESX0HAel1z1K
         8VMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683353472; x=1685945472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VE2YlrUyq5bOerpTSJ4F3tPsUEgEruXEc28cG2wMg3A=;
        b=Ir/B4yPgMhmyY8TZtbQIbKjhr0jrlZ0s0p3qdER3hnewufwLP3McU1rZrkW+WyRIgB
         0+4+JbBX+tLBp7UOeKBHHSQpiOYpyoZJIbVw8l0kmaVzMq1Zlf4q7gHkHh6B724tVczO
         iFVg0UC3iv88oZ6jlR0OUWqH2N+Crqh/XYAde3LVepqpjre1FuTn8RymFexqG/eV3Zxx
         GO7di9yEUJyEfepS4tWmXMPMYGX5LJa5X4wNamDAxXFGF/7NXr0jKm+TB+YjRloib2em
         c9ENnZnNpX0qGVN65i+FgrhyOy30xa7XptHmw2qMph1VWSeRvEoO+N0+h4Nj+JvbObQP
         QwsQ==
X-Gm-Message-State: AC+VfDzawl6NkDWs5bvNyB8fRXWh9E5tPkLGk1gzYdV0MkuVNXlEFEbw
	MRB5OkOTLWdsEFJPFMd1b/w=
X-Google-Smtp-Source: ACHHUZ6ZnHVBxAHo7DZR0rRf52cK96e9/U3YCE1XTTh+l9xyr4FPCfqeGMLrwoJoW7Uv32XIJa50bA==
X-Received: by 2002:a92:c60f:0:b0:332:dd0a:c6df with SMTP id p15-20020a92c60f000000b00332dd0ac6dfmr2498088ilm.22.1683353471686;
        Fri, 05 May 2023 23:11:11 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id b16-20020a92c850000000b0032e28db67dcsm413047ilq.84.2023.05.05.23.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 23:11:11 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: Add doc for Fastrhino R66S / R68S
Date: Sat,  6 May 2023 14:11:06 +0800
Message-Id: <20230506061108.17658-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_231114_280017_4A69FB2B 
X-CRM114-Status: UNSURE (   9.55  )
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

Add devicetree binding documentation for the
Lunzn Fastrhino R66S and R68S boards.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---

Changes in v2:
* Collected Ack-by tag.

---
 Documentation/devicetree/bindings/arm/rockchip.yaml    | 7 +++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..b1d271778179 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -562,6 +562,13 @@ properties:
           - const: leez,p710
           - const: rockchip,rk3399
 
+      - description: Lunzn FastRhino R66S / R68S
+        items:
+          - enum:
+              - lunzn,fastrhino-r66s
+              - lunzn,fastrhino-r68s
+          - const: rockchip,rk3568
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 82d39ab0231b..c3d426509e7e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -781,6 +781,8 @@ patternProperties:
     description: Nanjing Loongmasses Ltd.
   "^lsi,.*":
     description: LSI Corp. (LSI Logic)
+  "^lunzn,.*":
+    description: Shenzhen Lunzn Technology Co., Ltd.
   "^lwn,.*":
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
