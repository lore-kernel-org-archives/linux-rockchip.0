Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D26EC77B73
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Apr 2023 01:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hn3Yezk+mZvvP1b7b+Itj7HoFDOF+EPorb3AtXTSmEs=; b=lf3HeOcK6vNkip
	nl98L+3/+heLIiq51tqh6GwYPkghivRre9Q6KSoB7hhHMSlcgKCNTrxk/4jJpvKbuPbUayDVLLyfC
	WYVmR8otQY+X5kNEd7PKl0Px7oJJnia1kbYIfMHOVkFWDKuuLeHcRg6G9mYxGZOwb9Z7hymXm/sR/
	X2DAoESUoPtH/QUoe6s2T6PjR0crMXmrPcaUUTo+i9mh1xvMJyVRqeNzeZWc3ZBmPbXG/4gOA+K7j
	pwweEHGNb/RDR7eQ9CXThRP91HOh9zMqZfVpovE8t6CJkEBajBDpCFyi8zy+DbgWPM9izbypOJPkM
	bbgkjC17rvi+RWHHwQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psD3S-007x6h-1S;
	Fri, 28 Apr 2023 01:37:46 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psD3O-007x4B-1q;
	Fri, 28 Apr 2023 01:37:43 +0000
Received: by mail-io1-xd2c.google.com with SMTP id ca18e2360f4ac-760c58486d3so225824339f.0;
        Thu, 27 Apr 2023 18:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682645861; x=1685237861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PR+EVTmtHegO0AGBugN9Gm1VAL6IOr7NhT+GR8zq4Hc=;
        b=JrRTR4UXe6oHFpaBT2wML/YPLBr/mNDFQUkg+ss99BKWvcOArOTBTZRGZD8+hefLoX
         bewsDiwnLRqNiyLKXr4x/rE2NGl8hW9Mwp/CsmlOcUJydxnpXTxJxJYaHd5xmn8xkfvv
         L+V13iwBo1U3V3B+RxkcaJJYSwxFzuWf7I87Ajd/x7SzvV9ezT0mJWzMKQ6eKwKNKvZ9
         yV3WX5ouwZ8scr+zje2aoXQVxg++hRhKNl23YILUQUxvaDyuhidGFnIS6ca2uhL2KmU2
         KcWMWUysF06FGLg63wurJWxtP+W3QzdwV1IKHOTMfGJkJWKq1bP52WPT/48hEZ/Mlrw5
         X1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682645861; x=1685237861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PR+EVTmtHegO0AGBugN9Gm1VAL6IOr7NhT+GR8zq4Hc=;
        b=j8MVlQXwXROUji9jctQAnpJ9Dhj/wskvU+kgSEWHrji5HhU680Y/VRPkBX7BZimPuE
         qFYQMqG0BDS0R4XCQXP7AZeBSoe/K9eqBZ5YsbcqEVekUeoCpjTFwm+Nwqwta1t+8j0A
         sq8mAshZJA8cWMSr9x+YguDfrOagknyNaRaau23BBiu2exrle8a8YyWLjU927eRNc/Rp
         HuYqV5KSaBKar4Hh/JJmb+ANa8HVt0tg1DYY8HYAPCmGjHcbN0qVUaPOLa0sNjdOLR9D
         zERGM1WP6laX4Px6M0/kugRcfttIOUsbL34hsyhf8jF1L9C1FiCkisyE/xvbTI+yTG8B
         p2WQ==
X-Gm-Message-State: AC+VfDwK8opQ/HvGo5KGd7n0cNMgc/xbTdCWOv6wkPpI4c3QbZ0xJ1Rl
	lQU35Hh8WDjrggqqAW1VMBE=
X-Google-Smtp-Source: ACHHUZ4pjAXoLo/NcpZLiJSpGoVkQXK1S3II7/9VNR1Z2BIZtAvFAfaeUrAOYa2o1aWzI0BzuFVTtw==
X-Received: by 2002:a5e:a70a:0:b0:763:5ead:f20b with SMTP id b10-20020a5ea70a000000b007635eadf20bmr2287481iod.16.1682645860653;
        Thu, 27 Apr 2023 18:37:40 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id u11-20020a02230b000000b00411a1373aa5sm4985431jau.155.2023.04.27.18.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 18:37:40 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add doc for Fastrhino R66S / R68S
Date: Fri, 28 Apr 2023 09:37:36 +0800
Message-Id: <20230428013738.30735-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_183742_625833_64B53814 
X-CRM114-Status: UNSURE (   9.65  )
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

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
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
index 3e29fbd53b6d..20a77b193ed2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -779,6 +779,8 @@ patternProperties:
     description: Loongson Technology Corporation Limited
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
