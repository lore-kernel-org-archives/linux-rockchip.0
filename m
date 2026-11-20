Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C246606A6A3
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 21:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rg1SvSgb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=J6M2k4cp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xiMKCRo1Pwg3IMByku011gcY92ANwnIJVfONk57JV9Y=; b=rg1SvSgbpR7zqkEkXYGKLlXN2d
	0RNgq+sRk8UJ4FdG+7VJYzFyHm+GhIPf5B7ogggeb31s/aVznLwPIZdIkS6J346V+Atyhcacii2oM
	4U3hZozcwFlOHpEwo/xqlrLslU8UlVnJ/BwVP0fYJrUCq/m27N33D+bA0jT2wv2BOWILDYvREvPgL
	+8xKEOPion2OMEgaL+DFAco0MiPc5KLqwJLdbZtRA9LEs2xqpROzHTplh22TSKu3lYypE74h6SDEi
	VGNpP9OL68K66zUeq9OS+Dk6bFuV6ZFEe7LkY2HKpHR+OWtMJOLG0bjonpu30k6M6eSpdYWqeDvUd
	/ZkBc8qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUWAW-0000000GJ8j-0wCm;
	Fri, 20 Nov 2026 21:29:16 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUW9f-0000000GJ2u-2zYy
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 21:29:12 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-46556b9e02cso1005634fac.1
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 13:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795210102; x=1795814902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LXePsUP69J9BLo04WPbdbC0T2RsRqLHGKdkvwdCquvE=;
        b=J6M2k4cpuzuGONtruvVR+DvJpl4xcYC52GFI17JxOzimXmdUHLTzgvSxQiGwWeMg4y
         Lq0UvOtO22b8fZOOKdkEDmOQNlMcVyw35yT9olOB36qCR3DHv1UfoKL8+wu2V6adg05Z
         owCpJyhHURz+MOjQes6V6i9PWbS13iGIpafq/F+vfnFutw+kBOHaohE3cyO3L9psP7YK
         9+m1e2Fm3EkNpav6IMkXQKXw8akFlan//oij0c3LjOiHP27ha62LfWRUoOo7gxZ2cNAD
         eHeWlSY3XO2Xlkts5TwJ5gT/WdjyCU05UjPlBen4MG9hbUY3YUhvkZviJ/xv4XR2hp+4
         hHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795210102; x=1795814902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LXePsUP69J9BLo04WPbdbC0T2RsRqLHGKdkvwdCquvE=;
        b=N2ZkmVsm5vOez+hQQ64HL1Ma5QVftQjy3z6jOS/bHi0oDo2rZY5q4xJGtoyiWSMoqI
         CIsTXJKIqn7gpv5u1yY/2M7UotWXKOqVJGie/yI9Ha9UNmEdgbKM75ryKof7s+NAxOFY
         S0IDdCESR7k5LvHtUYlhXTaVv8+IB7FijZYll/AExtDHcT2iVGu/8LPFuO+w1r6xe4gx
         op5uaOGkKpkaqW+Xmjfc8z+iWDWlSjIRWA2RjYmM1BprEkBzTlNL4b2XvRI18LhtMjst
         VXkjNu5of0nuBSO8S+GZSIqiwxHqad870tebE0Py3jRtaKYU0AIA5e70QxeGnPAchIYL
         5+QQ==
X-Gm-Message-State: APuU4Z+mUmO5CcdHxUwUkieWo6MSW+DYdIVpCdyC4O6ht7yOL1/S3+IR
	3Je6xKZofBmxQtw6hK6zRnH6u9ZyqXjDzTweY+sci4WZJBtPkNdH6rjJ4ToWVcbC
X-Gm-Gg: AZFdTZdm+4tzvu8mfCryt0COTOm7WxNmtYxOaEsJ9k9+lz/0OpijKynSPud71xC8N3n
	b3/78Y0ufWZAu7eV//e7mFC5+ZvRzbKDuc2PX3nfbEoePMyZLeXypWfoL8PHJ5r+xZ3d0Cwkv5j
	Z2j2Fq//+BslVE2D1k8apnb1jRsxgYfBgtFDzeqsUPxmbs6Dpo/KR4VJTXf+uDdrIsguGc9NzUe
	L7Bla5WQRXCa4JpCkG9Zq1+GKL/6oR0fSRFLd/O9fv1S+51WvbZRaupp2TkfNaT3ooyrnGCELXG
	LaywMLq2d6X9dLidnUgXV1Pb5lsYUFfaxPg7XnUtADRFOsAc861vwvENB70hXXIX7QGhe3ohi3z
	xqUFF/EiMkuvjfK7ZmzIaCH5gTbIP/aY057pkDkn0gAOeRczWMKapB6CcpzS+YjjH+p0TRuuj63
	pYiLMrcgmssG2fDuAUv1ManRJibY8UvshIcQZyXwwhkhVSEybn5e5TBwsBpUIZu7t5Ur6SqS20j
	ac9ktYZwyo3Tie6JlHwwMwan9qoAhk8K7yPATYl6ljMFKTfl6J/sAO7zmm/MyyT/jLsKmZ2fkUO
	KTL/rWF/6vON4nyZ+VQTVaeTHltsbw==
X-Received: by 2002:a05:6870:9d90:b0:4a8:15a:b062 with SMTP id 586e51a60fabf-4bc84f170d6mr2947268fac.25.1795210102525;
        Fri, 20 Nov 2026 13:28:22 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5b07d766sm3774126fac.2.2026.11.20.13.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 13:28:21 -0800 (PST)
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
Subject: [PATCH V2 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
Date: Fri, 20 Nov 2026 15:28:13 -0600
Message-ID: <20261120212815.35663-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120212815.35663-1-macroalpha82@gmail.com>
References: <20261120212815.35663-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_132824_494955_38712081 
X-CRM114-Status: GOOD (  11.48  )
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
index f7bde324153d..dce7c51e4e62 100644
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
