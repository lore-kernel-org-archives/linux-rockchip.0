Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEE1606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 01:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OJyC67xS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Kg3KLAQv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OJS3C014YsaIWOf+AiayoQV0gtSYBKes3m3T2Bv3ErY=; b=OJyC67xSy3COBmIZHAkL+LSxbb
	yNv9rKtriSDCtjmD+a/hNlDTVmmuMhTY2xDRS3m0MdMEw3FXSwuNdo9seGH0Fw4yiwKDcqtxyy9xa
	VEjfy+GNOIwsNxLK7JUkBxnsvn8oN0D5WUVtgttpBFbp+Ol8oEhPytnrNcfBvHS8ESQqP3cGLkvej
	jGKKD2wU1Z3UxPXGQrnWi9r0uXDTChd5Hn8hV0I1CwPGN+6Kc7Dzj0tPLNhE2U0UgJV8XmVi3AQOW
	Knpn00Cd+z37ArrnomAgfOK/qGkDUv0GWAzZLzzqmKgAVTfHXpX84wkOqIlfsp5ZwSNSPF/kBe5Fk
	FEPvIUsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCe-000000026dP-47Pw;
	Mon, 23 Nov 2026 01:50:44 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCa-000000026bX-2OXM
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 01:50:41 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-53ec92375d2so1792719b6e.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 17:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795398639; x=1796003439; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8DwRmjGjcZQoXY2ILH3hB5x2vfhtY7WuYsGRx6Zuzow=;
        b=Kg3KLAQv0qyIs72b7f5P3yHBTnCE+6g43wbEDl0hB3CS1+NKafSuBT2WH72vrxUKWy
         6nmr+c3FNG6WK01TE7N8GV78EzPQVPXpAWfWqf9+jEHYYaYOD1xH3n638rOOqSONQ6+i
         TP7ObnqGgUjQX3P8sfeOuAOJhHTv102fuSMihBQHSlWfbYZ0e+8eu4GY7TzpYdDNEHNO
         e/U2hY+IBApf1goJcDQ3IfHovqJmv6PL00cJRRc6JKrhln/yMQJJh0BrXAIZVd5t/2vI
         RUMyqdPx1vGc9QaxUpg+vgZ3OS/I8C8RBvzjaHU9agcxvbNJH1oHQXpeBYCFGJcSt0MR
         i22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795398639; x=1796003439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8DwRmjGjcZQoXY2ILH3hB5x2vfhtY7WuYsGRx6Zuzow=;
        b=kkcKlnrp37wM9sRu9iWG+4h/nr1xa8xecD/D0FLh4MTqxYjvr+0iObNQ3ieomM1Xsn
         8mrCAcW5B//2giLgNgIZNsuCsxEsHyrKxmzFav5F35GEqg8kJBcBQ1LYDAkIznv45trj
         cNfk1L0sjdIFZx5EmKksMymhU0mSi8/vl9erQMWk0+xgqzys8QEt/AbsTBoTvPNnsYB5
         moRTGsP8/2laViJD8Akx7l+yKp+CoGPjfo6lEn5d+B8OViAkiQxb4MbUQJd2PVTgKySP
         BOYmQhhjMa5rZYEd//hHJkIebgPK6Lcz8wyFzXRd2n+J1hM5MvHDqpQfPPBhKFHdtjbe
         r73A==
X-Gm-Message-State: APuU4Z+HWyGqh6A81YevdTiKd0QzYAhzsTfmyiCSnu7iUqnMyAAHJ0zd
	RABcv6W87akxjAP6NU8GDpKEfXXY+QHd0PWkdi65i/AKtucUWswjNUEIr0Zg2tql
X-Gm-Gg: AZFdTZc1Hnl0RdonWmzKdTRyV5zkwgrgLpp5BguTQemZtQcFjLcDr4dempUOkFcCIv8
	kk7BW2vZIPwftflULrVeevAI6HYC7P+c2Dko5x+oGex1lP7Z2HFbpEVHwQnEv6nkSZzG/uz8phw
	HpkDg+TT/l5XVVTXp33Yanr6s30iPf9Z3hfpcNEbQeh/EiZkIV4uhFZyKRABBxYs89qaFZXPNCJ
	GJVDHgs3rs63Wh6RlAlDCr9roQT+BXcLPJRFhW+8SBTe7NtPghVU1xUMwblxd0tO4R2h7LARTyQ
	9olvjLSbsL6YyvecrsyTUFcpLlginjRSL50CpGWb4qXXh1jgZp7ZRkpb5aCH1vYp609wtBHT7TG
	KifjjGz586DMySNuFfmvvyYx918/Q1G9XhNG3uHxn0/iPr0R17d6Uni0kf8ycJq7Mu4eNx/9tq0
	QVUUI5nHyUGWyC1JmvjQV/77LheRs3WoqyY9ou609xSTX6xJ4oUmqZXfeORjQaNhEwLE/pG7Lku
	iN0t/OUe3cx4dkBYBsPZrYuYMR8xIvw1eIRIAECaGQcHSsT6Rs++GHQNPxRXpmgmhzW4UyHX5+N
	CtRpiIGKA2ELdJZabD0WCw9+IJ9GyXMd17un5rUncpBygOGODb0=
X-Received: by 2002:a05:6808:2208:b0:4d6:92b3:5c8d with SMTP id 5614622812f47-57a0dd479f9mr13048388b6e.67.1795398639463;
        Sun, 22 Nov 2026 17:50:39 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5f7ae7dcsm9209484fac.8.2026.11.22.17.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 17:50:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
Date: Sun, 22 Nov 2026 19:50:33 -0600
Message-ID: <20261123015035.369192-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123015035.369192-1-macroalpha82@gmail.com>
References: <20261123015035.369192-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_175040_615603_B2000822 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add bindings for the Cellwise cw2215/cw2217/cw2218 i2C interface
battery gauge. It is similar in function to the existing cw2015 but
with a different register layout. Each of the cw2215, cw2217 and cw2218
only really differ in the minor specs and the hardware ID they display
when queried. shunt-resistor-micro-ohms is a property in use for
multiple devices so not appending a vendor prefix to it.

Move the minItems and maxItems for the battery profile to a conditional
based on the compatible string, as the new monitors require 80 bytes of
firmware instead of 64 bytes.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/power/supply/cw2015_battery.yaml | 41 ++++++++++++++++---
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
index f7bde324153d..992cd5f6a216 100644
--- a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
@@ -14,12 +14,13 @@ description: |
   phandle in monitored-battery. If specified the driver uses the
   charge-full-design-microamp-hours property of the battery.
 
-allOf:
-  - $ref: power-supply.yaml#
-
 properties:
   compatible:
-    const: cellwise,cw2015
+    enum:
+      - cellwise,cw2015
+      - cellwise,cw2215
+      - cellwise,cw2217
+      - cellwise,cw2218
 
   reg:
     maxItems: 1
@@ -31,8 +32,6 @@ properties:
       it is to mail two batteries to a test facility of CellWise and receive
       back a test report with the binary blob.
     $ref: /schemas/types.yaml#/definitions/uint8-array
-    minItems: 64
-    maxItems: 64
 
   cellwise,monitor-interval-ms:
     description:
@@ -43,12 +42,42 @@ properties:
     minItems: 1
     maxItems: 8 # Should be enough
 
+  shunt-resistor-micro-ohms:
+    description:
+      The value, in micro-ohms, of the shunt resistor used for sampling
+      the battery current.
+    minimum: 1000
+    maximum: 50000
+    default: 1500
+
   monitored-battery: true
 
 required:
   - compatible
   - reg
 
+allOf:
+  - $ref: power-supply.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - cellwise,cw2015
+    then:
+      properties:
+        shunt-resistor-micro-ohms: false
+
+        cellwise,battery-profile:
+          minItems: 64
+          maxItems: 64
+
+    else:
+      properties:
+        cellwise,battery-profile:
+          minItems: 80
+          maxItems: 80
+
 additionalProperties: false
 
 examples:
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
