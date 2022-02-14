Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31936C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJwiSsIMyu0Q2dWA2hqSRD6KRAqMYUOzFwYBb9aObXE=; b=Ythm1xSBJmNBHs
	Y5+3/F90yAsr9c5SbjKTc+9MamXvdHW0tl8bUwP77KMT/FcfJWxoNIKDBuh0G1gcsCXlNwDLeu3Af
	wuB/Xxx3VMLL7Mkaxvzx0tUBfdnelpvsOZtAHEeG8pNPsko4AGOLADAp9vh7aImkeFM7lLOHMuds0
	milqdWQe6GsHxoxepCmWWhrzbeR9Y71nCA7KFsA9YBL4VYONWkwUMmmWUiviThP0CXTYS58WQ4DZR
	qkepVM7EMFJiOv55XnEZIqGU0woHB5sXJdIOXIP6ceZuafOkbKnoPY+0tNtO2Xn0TnppquSDqfMYX
	mNQnSVnqkE+bh3GQ73/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWZb-00Dqcj-4a; Mon, 14 Feb 2022 08:19:03 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXa-00DpOP-Jt
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:01 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BB13040520
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826612;
 bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=XguQib6tqbQdHn2xFczwuTV9mnJe52komOQN1koFGv95u6P2pbaz8YonvIdH3LHsh
 jphP7OwoTCNldHaEcDFVqdFgSXhiOO0jhZyhHIhK9Czvdfruq8jj+9jHY8nLiUo/gK
 vqFOfdB2MZE+Lr1LRc0El3+TKF+aU2Wg3OPKhU7/jXMx62+u/BFnMVY/xJJVoRksYb
 1kpzFSRf+syeTny0SBg0unbbNn4t/ANMMILrFG8MdYOrEX0qY3SNmS0K3p3CxpLR22
 gD0DrZlj6PLBVwRhiQZvOUaVOcKmmsKNXYTsddH3K1cRcfi4d6SDeaRudhJ6Zre+GF
 InqLUFQfdzOUg==
Received: by mail-ej1-f72.google.com with SMTP id
 ky6-20020a170907778600b0068e4bd99fd1so5483129ejc.15
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rXTrjGyqcJ3i7iMn5DJq5QR/kPtoX00uoKdkO1EvWnA=;
 b=j5V9TNPKfKqhTdrfBTVzn76dQk0ennsBcxr2nlNiIgOrRimg0O72jHmlVOW28/8NPY
 AOsrwo2aNlHyVCWMJ2TMOaooTUrdZCCHJyUb+BQSs6wL54KyBtwxLi5ls1wYCtdCwSFF
 fIrJlMWTXkCsE+wtjiJcRD2PUNTSkVuTiRAIFeW+rxb2sL1Vd528p96JZckErJLeB+Fj
 cJhGI6PkKTo0eWPnBYvExLXN8RkDHp3qKC594j4bHtZd2InBFTuxGWUk34Uz/Vx3l9TX
 rO1rsZtEmGZ98GHpWJD7ctO/zpQ3lwgOAm+k9NwXsvl2VltSbET47Dq37c4y3OFsWqvt
 zHTA==
X-Gm-Message-State: AOAM532wfwgwKn1xB4ynAVPnFfycdzCRwtas2jkr+cCYYDSV0Avf4z6/
 3JIr6lmhMmEKUCjCEsqp5H1I61Q9h1Vyc+UpJZP+SbSxwyyXCAdKLq4FxmW8meMRxIStO9DjL7g
 qZNAdvXGNgI1O9Jx6JRIOeD7yRoKlkkdmv+pVkXuzY3YAgyoPrw==
X-Received: by 2002:a05:6402:c1a:: with SMTP id
 co26mr8160832edb.442.1644826612060; 
 Mon, 14 Feb 2022 00:16:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwS9jQ9wGixoRtv+jL2Y9f4opmRogKX8GhZRCH8lW8x+aJuR/wbCf92drFjmIbNOrRWeCUm2w==
X-Received: by 2002:a05:6402:c1a:: with SMTP id
 co26mr8160813edb.442.1644826611896; 
 Mon, 14 Feb 2022 00:16:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 08/15] dt-bindings: pwm: renesas,
 pwm: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:58 +0100
Message-Id: <20220214081605.161394-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001658_849271_D0C00D88 
X-CRM114-Status: GOOD (  11.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/pwm/renesas,pwm-rcar.yaml        | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml b/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
index 7ea1070b4b3a..1c94acbc2b4a 100644
--- a/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
+++ b/Documentation/devicetree/bindings/pwm/renesas,pwm-rcar.yaml
@@ -59,21 +59,23 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
   - clocks
   - power-domains
 
-if:
-  not:
-    properties:
-      compatible:
-        contains:
-          enum:
-            - renesas,pwm-r8a7778
-            - renesas,pwm-r8a7779
-then:
-  required:
-    - resets
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - renesas,pwm-r8a7778
+                - renesas,pwm-r8a7779
+    then:
+      required:
+        - resets
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
