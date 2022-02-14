Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E53C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD+gid6XAi4/ph8CN7MUKJjg66NK8HlBEzsY69/cYLM=; b=AbStqcnB7M/SIt
	EZBPFpiiwq/XMh7aOC3XV/4u1fFGPvSkTnQIyaG6ZS8b3X0E2f1MM4gGK7I1EOt2w04wZwcGRxVrX
	0a0G8rfzIwR/PDpvEDncYVlgSAzS5/zcCcDN5fTUGCZhlCpS0O9rEfaFD3osw/4g/qTQOxfTNdZSr
	TwwzhgK8c2GrrMxUlCGFfzaGJ83LOrqMG642qVxk7tTXEkw5mbGsYgPVqDlNZGlIwz0Exzrbs/RS2
	HwizBAVHEfuGGTA21B8fuPNVqJLIpIBVX0gmUOMXvz3bkOkGgRdAx2o9L+2cUJQyUMIccPxRZDARF
	NDv5zsvexCOXnzPaNO4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJinR-00GyD3-GU; Mon, 14 Feb 2022 21:22:09 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinJ-00Gy7p-4i
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:02 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E7DA94033C
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873719;
 bh=pHflPK+1dIKzIsgbbrg2ywYytRq8pFheQaXjxJrMqyY=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=g1ty9RcHmZPCCgi2rSNdJHf5y7lTyZ4lEB9frpgvmS2aj+8g+ZALAfWMJRrqDzMpe
 JdRYC8v80pIS9wxNaTFhcdZ0LqnK7SXe20MMfaXuX4xnG1P+KHVbxkKsuQl/ms9F2+
 AxeBRjFWaOIN1/wJFPvr2lv4gqt01Mrvy1drs7yepAfdg5uoccTayNDNE6doPXXtst
 aMmd8hQ1wvk27HvxCR4YNz4ovPJykrP3oFAvHWroy+7nMhNjZbEK9auYnnu3Ia6ZnZ
 A5VRC4j3sgfQh7SvbQz0NtGWfzkHqJDJHtJLhyznMflxLGq4flDx0OJ5/5HR4E8nTm
 chA8/tStdV3kQ==
Received: by mail-ed1-f72.google.com with SMTP id
 j10-20020a05640211ca00b004090fd8a936so6440363edw.23
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:21:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pHflPK+1dIKzIsgbbrg2ywYytRq8pFheQaXjxJrMqyY=;
 b=i4lzbuhhxDxSFDndHVGWgsMfKvkfUnRyEf2GdVfFsBr/seagdkI9umTCD7LLPck1GH
 OHAtdFEW9uBoCTB2kqmD8TfD6CRdw/YWUrGBPFb1AIBwdrJBq2quLe/n2aHM8q+uRe9N
 3IAAcj8X32rrlHzN1w3YmEWlWAXziAbzoGHrXoKvsapuKi2YhMOnzlbF5TsHSgU5Pfql
 +M56WVj2qwZU6uL4CH10A+WAJoLnPN0mQ2Ot5LTxJejsZ3/TeOjwiGVDrNMT4GafmLzo
 ja1JXFX9Bcvlu4CXAGD7b6CVvhmw30ruEEh8MYJ4sCvOXsVlBlD0jnjbbBthYBL0A1NL
 i6Fg==
X-Gm-Message-State: AOAM532USWR4GFLtvw8BO4IDD5sta0/9zTN1q7WNsjRS7RH5KVfnJXg+
 ChFu1mPDN4f+xOlCQBaALTaZFFiJv6Mg4b8HvylNLQ9caX5YaK/59gyQyNas8niE/GMAIT0gEJU
 pt0bze4YJDIBYpZ5/tgEgjdt4OTVX2ybdifDTtG9uu2b7qf0IAw==
X-Received: by 2002:a17:906:d555:: with SMTP id
 cr21mr592291ejc.428.1644873719505; 
 Mon, 14 Feb 2022 13:21:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyXvrgHPtrdYKNQY7C7Wd9/NsvQdSUG3/eoACXgHTI31beBEFWPYpjvuWpVSYib/oyyZwbB2w==
X-Received: by 2002:a17:906:d555:: with SMTP id
 cr21mr592282ejc.428.1644873719273; 
 Mon, 14 Feb 2022 13:21:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.21.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:21:58 -0800 (PST)
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
Subject: [PATCH v2 01/15] dt-bindings: pwm: allwinner,
 sun4i-a10: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:40 +0100
Message-Id: <20220214212154.8853-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132201_359049_3424EFA0 
X-CRM114-Status: GOOD (  11.83  )
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
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 53 ++++++++++---------
 1 file changed, 28 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
index 800d511502c4..e93e935564fb 100644
--- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
@@ -52,33 +52,36 @@ properties:
   resets:
     maxItems: 1
 
-if:
-  properties:
-    compatible:
-      contains:
-        const: allwinner,sun50i-h6-pwm
-
-then:
-  properties:
-    clocks:
-      maxItems: 2
-
-    clock-names:
-      items:
-        - const: mod
-        - const: bus
-
-  required:
-    - clock-names
-    - resets
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
+
+allOf:
+  - $ref: pwm.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h6-pwm
+
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: mod
+            - const: bus
+
+      required:
+        - clock-names
+        - resets
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
