Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDFA606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 19:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RqslI+3h;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zajqxIny
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OJS3C014YsaIWOf+AiayoQV0gtSYBKes3m3T2Bv3ErY=; b=RqslI+3hJlQv8Uzx+t9/LiN+uT
	ggsZC/5yQdyZi1YyMfGk0a5KOC0cE4FUhNWYSpn58MXnbU1wGgX1i76KKItGXQ8yFBcdow6uwBTbT
	thDkGg67arek7EMmR5Eqy6u9MvOLCYssSVAO86BZ5Y39N5OUQh+PV98nlwrukBTYHy3wLcgEF3zPO
	G38P1h67vt8ivdjc8EMusq7Rz8RqZ0JheyWpvvrE6wZX0Jq+fZODxBYSsyAE5WiN6kSxix68apgtC
	QY7lr4s+Nowgz0LlVtvA/irxcQxC5pznvQLXbnzgS9WMPo9ZvNOd5C3ZO7Elp7DbyyKA6Mj51EC43
	pePzVFnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxm-00000007Zsq-2ZQN;
	Tue, 24 Nov 2026 19:13:58 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVvxg-00000007ZqQ-3mCJ
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 19:13:54 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-57728d859e9so2099741b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 11:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795547632; x=1796152432; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8DwRmjGjcZQoXY2ILH3hB5x2vfhtY7WuYsGRx6Zuzow=;
        b=zajqxInyjxkALNA0gbfEouFu75F88nuTj8fPvQNLKVk51pyFDjLu+i6CyEa3YcXqsd
         /NJu4QGCP3OmlxH2QB338w3OMSMD7CvUevvaSYW2GWHwpeuLdlODFx7/cADb2QSwtTcz
         UD3SjkdI0ZJrg64IwM76LO4HyJa8ntresVwZRf6PZyi3q4vxuxWNmyKLu9R3XQD9KKZy
         amKgAu1MzEbjjS+TQEOlp+EzVndKzkV7w3hlhJ14EbZnYmwUjmJVfNbFuOwFK4gyrwX8
         ZE/0mgARLY0+AHGn5MXKiaoq9kiVzhmMNw55CfBV4VAtS7ykXOwWx0EchfjajqFUUVF1
         kJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795547632; x=1796152432;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8DwRmjGjcZQoXY2ILH3hB5x2vfhtY7WuYsGRx6Zuzow=;
        b=zGSZvd1GNTcSGXTMxecjO0OhDrfeZIuU6C2YU8ViXYabmwVGVhi9zJ/AxnA3lHauyT
         V7TwPMPa89lf6tLQtCwlVE+F87zjgD7K7rATzIAUsMQ06PEOr+SqY5/aMpyCgvxB1dt8
         PlmgwzILhTAkMqtrB4BjEPDjR9+8bEYRZ0lAyFWWSOWASKYpolTouHdYwxJdXk2NazUv
         REweDM88pCjI83aozJKec4jYHBS3D8dj702PBWaeE9hY93IPC6YRAU6ArsIm2td6jrEG
         bCa5ORSiikfI40pBfwlh/6mQI56NOpykeixWVdxRfzs+EK7gkW9UlzM3IDcQ/ReMtPIQ
         KAXw==
X-Gm-Message-State: APuU4Z9owMg2BSrYrVarl09/++Qo3AxK+c26+8ytXqbY5w1qhP5r8sOe
	yxR9Q3ygBxjuYYNOuNVtgW93f1m6s1LFui/A2o7pXXifXQrqYn8M3RwFeRT5Ow==
X-Gm-Gg: AZFdTZd0hOwlYlyUKGslC8LC0SzBlCU+N1NSV5leX9nPeAyzA7EfqHyzeGbEm4EgskT
	fkwl3SGtaMl456dik3ezeR661Z/UfNPgXSdDgMSSSi3TI17J1AZlqgXqwiNUEFBS6c+QreUFZmN
	vg8o+YG+QgVvblGx9w7a3yrzWFtqIB/pbDmoJvFizVzIX0t2LBgc9G01BsZyXCuUbAcwJ4YvY/p
	Ysqlp5UYRyR4s9X7G5snnUpOuvXbe5MCIlOGlTRkFhdEyWDkXPoYmXHF96sRxswYQ8MbtD24MyS
	o3uhUM1JcvDZ7wYEviZ2ZK/6wXf+wIqK6WNJfxiaQNXoOeV9qupQq9UkjPj5BqEig8VO/04fkzW
	mdxcM2PHpdJh5s8Ij2ukrZ90kOCvyUFQbsEliFFDNiyUP4ZILLhMW0PNWFNRz7dLt6kSbbXAStW
	ORwDYVFuEXvwWJg5KcjSEymAX4nYfwHYKTLAX6sa9woIkK0GNo1RvzZE89TjDk72FpCWYD+BsBm
	hvtN23ylAv/a5bVH9BLojEfJt5TpBixGaLcVsSxjUkTYq2F7d/LWFwYMwv05R0gKnzARSkjUhxD
	QbCN7Bz3MIC4cQYp3cLplbolztZUYB6ZfW5GIhujNiImXqCgJ0w=
X-Received: by 2002:a05:6808:6415:b0:577:28d8:2882 with SMTP id 5614622812f47-57a0bea6553mr15828891b6e.48.1795547631858;
        Tue, 24 Nov 2026 11:13:51 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-57a362575fbsm12774058b6e.17.2026.11.24.11.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 11:13:51 -0800 (PST)
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
Subject: [PATCH V4 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
Date: Tue, 24 Nov 2026 13:13:44 -0600
Message-ID: <20261124191346.434143-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261124191346.434143-1-macroalpha82@gmail.com>
References: <20261124191346.434143-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_111352_944114_C3424C97 
X-CRM114-Status: GOOD (  12.15  )
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
