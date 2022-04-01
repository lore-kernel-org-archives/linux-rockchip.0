Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00898C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJugfIWiXBFsPSzRxllZBDBhlAArTqbByfw3xUddjII=; b=2T31D1JBYJyw/k
	uJ6QxHCtfykn3K/H0HV8wmoEKcRIZkoy/s4e1Lh1lzSRZ2OfBOU6vdc+rvfbnKoRqfywFR7HKTFCM
	LN9zDpRTzdriXkladbTrSrlfA32IxZqw/H3hBDrRrO1XoXdw8sPmIqsFVUl4fPYsiAZ6yOhDu2L48
	iCTqfCpBxCmM894wsGTYZj1BeCjjrtrdUg+K5NBJ4+wHBHpyWE0I9hNLaxbIGOsxOFll8d46M51ID
	h9Cgq3h7q0SyyumEm4YAdNTOE9lvC/fPnTuue88zVjJWSz0/sIKkjAwNAgkwyV6qkZtVT0wF+TFR9
	DgUMFT3eLucLMwPWF23Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNug-007BOE-FQ; Fri, 01 Apr 2022 20:30:30 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj7-00757u-24
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:36 +0000
Received: by mail-wr1-f52.google.com with SMTP id d7so5770266wrb.7
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PMuWbodJyhmCb7hmEWkoVY/bSgVMUfCQs2M7Z5YmUsI=;
 b=APv+8vZN/p43PEYAYXXkQ97MQMdsMXNOXBpZBk7wwh+Kgp2i8Q2CtF4FYZ5aWu9TRV
 s0c/zx8X06gV/OI180ba+mj0ypPHDr8mhDBivBxWCMnGs8fKjPmYQAj3OQGE2Yc8wm4c
 5y1eUxUYeAoEGew7Rj50TASiXH06CCMg/Asn5WLFwudAjq0pRIWrXgWTZ30cb20ReP6t
 OzWQg4s/UluvLBJCWObOwi7NEhtfgDmeMKwKYaDZYyfxj4BobHoNXpaiW73Q1903j8vl
 90nqxbW21xHChXWgvog5PImVlLBccj9EK2Bb65JPMeV10G8fGeh1bOPVMlVeUC6dtylX
 8WbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PMuWbodJyhmCb7hmEWkoVY/bSgVMUfCQs2M7Z5YmUsI=;
 b=gceNkuzk9YkXll5L8d22hswpQVTyyRytQ38SexNF9UtFr9RxDO/BVO0h85j//wIS+B
 KRLDc2RNXxRPWfMRf8LeO0tea/af4pawLd84e0JwH1WdBh0ZK74lQUncNgIqZq1UbVHR
 LMXOATKZwQeDSKTM33zAGzaOphrLl0wT3gZZoqamB9IwwSosJqNxnjsw9YEqPoeofG7N
 5KoWlvZht45gtELjMMGx6e+LI/TAfn65er8csWWVcJafauhdWMX2NR7czQGbQKswMb8H
 sbuCrrJX7VewIJf7xhM83cQRhMiwKJDTsiD6N/CsnfeZt2cM/61Ftiu+5+E50AGEqdmF
 Tfkw==
X-Gm-Message-State: AOAM532nrb9nLK585GgA8Q5OKl55V+034nmnA0MjuurhqxUCC1BcM2i+
 +5FU+i+WFmpSchHdKhO85fPkIg==
X-Google-Smtp-Source: ABdhPJxgiFstTAIC2faAeEqGBB2eVy/Dl6VuZHzoFW4rlvVrxHMS7ueZQeP0OvVyPtWKbQ3SOnFb/A==
X-Received: by 2002:a5d:404c:0:b0:203:ea4e:3c07 with SMTP id
 w12-20020a5d404c000000b00203ea4e3c07mr8623820wrp.597.1648844311436; 
 Fri, 01 Apr 2022 13:18:31 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:31 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new driver
 bindings
Date: Fri,  1 Apr 2022 20:17:59 +0000
Message-Id: <20220401201804.2867154-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131833_111564_86054E15 
X-CRM114-Status: GOOD (  10.96  )
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

The latest addition to the rockchip crypto driver need to update the
driver bindings.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 68 +++++++++++++++++--
 1 file changed, 63 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 66db671118c3..e6c00bc8bebf 100644
--- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -11,8 +11,18 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3288-crypto
+    oneOf:
+      - description: crypto IP present on RK3288 SoCs
+        items:
+          - const: rockchip,rk3288-crypto
+      - description: crypto IP present on RK3328 SoCs
+        items:
+          - const: rockchip,rk3328-crypto
+      - description: crypto IPs present on RK3399. crypto0 is the first IP with
+                     RSA support, crypto1 is the second IP without RSA.
+        enum:
+          - rockchip,rk3399-crypto0
+          - rockchip,rk3399-crypto1
 
   reg:
     maxItems: 1
@@ -21,16 +31,65 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
+    minItems: 3
     maxItems: 4
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    maxItems: 1
+    deprecated: true
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-crypto
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: "aclk"
+            - const: "hclk"
+            - const: "sclk"
+            - const: "apb_pclk"
+          minItems: 4
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-crypto
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: "hclk_master"
+            - const: "hclk_slave"
+            - const: "sclk"
+          maxItems: 3
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3399-crypto0
+              - rockchip,rk3399-crypto1
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: "hclk_master"
+            - const: "hclk_slave"
+            - const: "sclk"
+          maxItems: 3
+        resets:
+          minItems: 3
 
 required:
   - compatible
@@ -39,7 +98,6 @@ required:
   - clocks
   - clock-names
   - resets
-  - reset-names
 
 additionalProperties: false
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
