Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B14C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R23ec0ZeMxtb/TOppE7NrzIpGkOoWIH1JMhfyeuqTJQ=; b=sahb+znVnbS6fP
	hqcTtuw5AsAzFI61fQzHNP2BhckvfQs4KTq2pgBA/+nXGVib+X5TK8dxGIUP/JrCWebd9U9k9SPqH
	dW40UgzqYaMhC5B7j2+dRkFRwZ7aUYGKHSrmYs2fw0TMfw7pK8JjfQqlh5F+9kQz08D0IIyoOav6P
	1haO2rsHUiJT0u+tKS/BO7/2Ny3orWyL5iHijXMlQ6P4zr/iKWYDjiOE20OqcK+DlLiXikyRCykNT
	zO3Z/qYxl9zCLzyhS1sFrh3U5efxE6VP/j8zaKSckFQVn7mcjVaL3VshH8Y6Yl5NiVSrXD19HpSnI
	NtbrzKWsAx3tllHk/wKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWZM-00DqSt-7g; Mon, 14 Feb 2022 08:18:48 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXZ-00DpO0-MW
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:01 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A5CE9404AE
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826609;
 bh=RUrvha3jd75o7xb7qinVq9MRNe4Hz0+UgFNjZM5U/KA=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=MwFtOB/nEfHDWBMbfaet3rRGfkGMeYjtynHsOh7ppn2Xz+WwurZ1PVjDRwW+aNA31
 NzLtt5h91kV+od0OAH+P/lSe6XSE9g4b285RwAgeSZbSpv5g2tpK8RoR4E9OF6opKG
 xWUrdZGA0f8aAjvlByzZzkqd3s1V7k09B3mxQqChv45uknxAE5rqfBrQURigDo+LzJ
 BlpjkzztZowY6m8dfUB4pZKY09x+rjHEe9gKRAV5ZqnUnbTeosyd1Uyq8Z3JlC2UB+
 9VmOz14W3ghMpBO2aiZ3GFJLC8gX5k60QRmeqq0oEwCMhIp6vJ2tHAIDxx3WEbseup
 7DvKQjsbTb25w==
Received: by mail-ej1-f71.google.com with SMTP id
 d7-20020a1709061f4700b006bbf73a7becso5466327ejk.17
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RUrvha3jd75o7xb7qinVq9MRNe4Hz0+UgFNjZM5U/KA=;
 b=kk9uXLn1OoXZwKznAk4Rzt22yg5yucyIcxIOOlmt3l7JhKZaMFJ1qneu1SBukN449r
 0CmUqsraGac2xQvayEU/kk/NLaX6C/V8qiFiOwEo9S00E0BikN6h5PYMfN8Ss6uyGbtD
 4u4/Q7oUMnJJhGTVvM2Zrb/UgXNCY0yYwUbyJ6E/YivqiIzy49sjFGitqsKffqbC3m9g
 bQKa8yQNZ66HqU2TbxVyO7K3djyV30vWL34W9cHUYvHJA7hZ38eDYmBxhgfQW9nThyug
 7+Miy0tFkt587PgpW+HA+oO0mI4jwBtWyhwCbVtXKn2Yz2bzsNf+gd29KDRbUOR2SHNz
 bt4Q==
X-Gm-Message-State: AOAM531nFQM14Cnq73pp7f5izRJl44iExxli4ekx2oWoo4Im6M/YAzdq
 nlUxqQS+p6g+ZE/7lzfekyAOyA4XAo0Lk5CqzyPV11Z7TAhNGDYn5W27ow+vjoAXsBP0r8r6pOJ
 d0h0nCv07ml9HZYL8m9X4ggq12xKdB8h/ReaMnABi43cWSNxPWA==
X-Received: by 2002:a05:6402:2683:: with SMTP id
 w3mr14323056edd.405.1644826609112; 
 Mon, 14 Feb 2022 00:16:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyzkuxNo1QP+7t12yVjZD9t3Y/Itl5ApNf4frcHdZJDQgI3MTIUIYVP/fV2AVsdZ2EHF8ILcQ==
X-Received: by 2002:a05:6402:2683:: with SMTP id
 w3mr14323005edd.405.1644826608899; 
 Mon, 14 Feb 2022 00:16:48 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:48 -0800 (PST)
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
Subject: [PATCH 06/15] dt-bindings: pwm: rockchip: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:56 +0100
Message-Id: <20220214081605.161394-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001657_935248_16B5E783 
X-CRM114-Status: GOOD (  13.16  )
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
 .../devicetree/bindings/pwm/pwm-rockchip.yaml | 74 ++++++++++---------
 1 file changed, 38 insertions(+), 36 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 81a54a4e8e3e..a336ff9364a9 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -51,42 +51,44 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
-
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - rockchip,rk3328-pwm
-          - rockchip,rv1108-pwm
-
-then:
-  properties:
-    clocks:
-      items:
-        - description: Used to derive the functional clock for the device.
-        - description: Used as the APB bus clock.
-
-    clock-names:
-      items:
-        - const: pwm
-        - const: pclk
-
-  required:
-    - clocks
-    - clock-names
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
-      description:
-        Used both to derive the functional clock
-        for the device and as the bus clock.
-
-  required:
-    - clocks
+
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3328-pwm
+              - rockchip,rv1108-pwm
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Used to derive the functional clock for the device.
+            - description: Used as the APB bus clock.
+
+        clock-names:
+          items:
+            - const: pwm
+            - const: pclk
+
+      required:
+        - clocks
+        - clock-names
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+          description:
+            Used both to derive the functional clock
+            for the device and as the bus clock.
+
+      required:
+        - clocks
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
