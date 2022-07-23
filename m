Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE72C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=782GMsyJ4zio1CU++0CH2RDiJTc2LCNtr7mlWQdjIug=; b=u6eCpVkfR+V40c
	alYy59aJLtIOTD4lIWqH+0RoH05bwiaa7Wb3gCS5/ErQqhOMOcA2ytthPhtqbBmj6XuQkApEZJaQl
	kbuQRIuBR0JsVgbAVz+ueeLldJKLX9tUvCBKqmyLC93M/++wWQ7uvMC2P/efooxkPsZ6OGbp9UtWH
	EVIybyuhdp8M1mHFbuL7U0eR2Bc911ssXQ7USpVDeYy/u4qo5+Z2I1Hdm7pk/7C2HAPRw/F9iKdS5
	RtxiWiABp3V0fizuWLrZ/Am6OOG3Vis5ZBX7TIzr5C01p1XprtE/yNO3sgqj6GrUid6UKTlOW+rnG
	Xwo2mH5NWi36I89zAzgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzx-0078v7-LQ; Sat, 23 Jul 2022 20:45:17 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyw-0078Iu-DI
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:15 +0000
Received: by mail-pl1-x62d.google.com with SMTP id k16so7218434pls.8
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ya3Nv1BTlUUpwGAncPsDfdl2nqFWAnDiqXbLgPZdXYg=;
        b=HTFeQ7kucR3M2+AUfUpXXnIYYsgtk8UBbjxiWQ3Wm53QGLhyjJAd/GSLzQ4zzFSk0T
         YCkxoaFSOs34z2PzuWZHosX3/UvLV4Qgrqpgw5U4KyfvPyBtIZIol9qRgFu5nwoJLfCz
         vv5t0OO8pRckOTBNAeYVQ8BCRDY8NqpGwezWdZJJFDjzhomhXODgfvKBYfu63FRX3raD
         i/U9aK+KS1MqsAeK2UA2zbB/yjLB3PuVEm+VMRbbcySEyH+UFAsfkkgxdtCZbOfGmmgo
         O1i+uzC5JeaP2iCHqnXBjN06YZS75ccwNUjdQPIm0ZNXgT19yFyVOK9Wfty2vyC6t3JQ
         6/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ya3Nv1BTlUUpwGAncPsDfdl2nqFWAnDiqXbLgPZdXYg=;
        b=X3cyMbRQf0kirpHNxT9DyoS3Cc0d2GQglfyXKJxxm1rXCucL0emAbaDrD0QHt9DR5Z
         5Fr8xoC2/KrkWLKnGfj8ktfIEQKvAq4RSzs9FvHMSahKQY6xJ22Cfqon2F2B4saXz2a5
         1mfbdVKmrI8OWE80XawqLcoCI8j1h5VnrEY3VcnvEiyKLLWfAAvPqogpa9xYfFjxGB5X
         Vge48jSIx/xA4nKtD1u0I4Wnd5tWrZ6leITwguPDf2V55ssYKqTgdRqYkXYPg1/TyeW4
         nRN2TK6TGgMBaw3d5BTwH25GSujlQ2987v4wG3OVHUqY6ojPn6lKxbZpwonHG4wt9TkR
         3u2A==
X-Gm-Message-State: AJIora/lOigD6FqWmSeWSltsvIQrEEtt4TPv8mfi75vGGjuW+WqCGTvR
	ZaeCo8mmRldl552bFPBYRbAS+g==
X-Google-Smtp-Source: AGRyM1vBB0eSjNmpQs3DSZOBgAS25ovghKKNEzKyk544KKusygz70CWKQNKSfDSroiZdY4fhQhc7wA==
X-Received: by 2002:a17:902:e886:b0:16d:5184:11fa with SMTP id w6-20020a170902e88600b0016d518411famr3908270plg.2.1658609053254;
        Sat, 23 Jul 2022 13:44:13 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:12 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/22] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date: Sun, 24 Jul 2022 02:13:17 +0530
Message-Id: <20220723204335.750095-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134414_474446_12BA6589 
X-CRM114-Status: UNSURE (   9.18  )
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

Document dt-bindings for RV1126 PMU IO domains.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index 1727bf108979..d71fc72d4464 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -58,6 +58,7 @@ properties:
       - rockchip,rk3568-pmu-io-voltage-domain
       - rockchip,rv1108-io-voltage-domain
       - rockchip,rv1108-pmu-io-voltage-domain
+      - rockchip,rv1126-pmu-io-voltage-domain
 
 required:
   - compatible
@@ -78,6 +79,7 @@ allOf:
   - $ref: "#/$defs/rk3568-pmu"
   - $ref: "#/$defs/rv1108"
   - $ref: "#/$defs/rv1108-pmu"
+  - $ref: "#/$defs/rv1126-pmu"
 
 $defs:
   px30:
@@ -344,6 +346,34 @@ $defs:
         pmu-supply:
           description: The supply connected to PMUIO_VDD.
 
+  rv1126-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1126-pmu-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        vccio7-supply:
+          description: The supply connected to VCCIO7.
+        pmuio0-supply:
+          description: The supply connected to PMUIO0.
+        pmuio1-supply:
+          description: The supply connected to PMUIO1.
+
 examples:
   - |
     io-domains {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
