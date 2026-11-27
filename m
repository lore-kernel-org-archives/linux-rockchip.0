Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F1A606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 19:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U8PiYSDE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ReTuEmdy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ro2oH1OGzRFLeMCZScztSSDVUGISukRlPzKcwsf5MSs=; b=U8PiYSDExVsNONhkQQAsH/NiPf
	NileqJ+7pg2a2keygwuo0gykHCex0OgJZyivYM/OK1AVEGmOA1sZQN/LmWxCgjGdUGfcYZ1YGOKHP
	airmUW25CaYlWyEsz/vrt8LvY8LHhCrvx7dsWMQO4wpLowI5kPe5ei/1kNUHDz8OXWcej9Y0l4Exc
	AG3cSY312Q2YSeznVL//ZxobkWDy8j0CZmwAT8AAoyzJc56L8LFTwPRfBleBN/putq7LAY/p6FxXC
	sp8tadNJBw20eQOP82C61hNu6diIL+ouapgzuMNkTI2WQaPAUdtnEmawPM9XgTnaNif5gN3LdeJxb
	qLtqQ8nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xo-0000000HXSc-3noU;
	Fri, 27 Nov 2026 19:23:40 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xj-0000000HXQ8-3u6U
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 19:23:37 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-4adea5b7a2fso3074099fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 11:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795807415; x=1796412215; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sr3t56lz2ew1ExXZcTsdCaVtIgRa73m8p4gNG8bPmz4=;
        b=ReTuEmdyT6bIgTqHUVRNNHTwF6ApgP41fn9QzZPRG+ZC8u7YyVSPgI/coBae2w7I9h
         4OmewpDIJreVNixYEALWUlfvHQbR23VK9rlARAuyjk6tzMG8iHtAblWTc+T1qk4RZmvh
         ItufW63ftp/Lhf1eDcM0dPH+uNvh0nPYMPX43oqUOKk4CmqYzzMUuF851L3hUOU4Qozq
         7TfTVh7n3Orat9KHlqxHpf6FHF+LYO01U55+X8KfOBSDw4o1vC4Lu0NibQO2ptZGQ/KE
         r0WFc++vGc1OeqFaw6/uRd0nLQn6oNsjm16hKjMffKG8MEMX0X5ZDY0jsCiAHgM9Q0vZ
         kF/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795807415; x=1796412215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=sr3t56lz2ew1ExXZcTsdCaVtIgRa73m8p4gNG8bPmz4=;
        b=uIqyknKheCT/6cKlLYqjHk2e6wguc33DLYwASOmUl9SXmwA3DQGCaHp2JHdoA2mwMD
         hbalLEQrTygbMuRUwIYxmfCwUJscDHGAs/+ejsYoEelLXkrHFtNtbqDQC97f421HIW4x
         8aB8tIND8LL1OpXIHzRoZYTKJCCjw2w8ve6y0TGeE/2lPN7KrWDtWA2eBIHIhujhuJ7P
         4otog9e3oQeVwtGQLiWqkQbtwZFPC1IZzN7QOSd3s1UvWudA+Ke+zwcIWCA07oH6/ONs
         VaXfZwB6tfXmNW0vQvkadlqfprb4bl8P5ZTT0/SjfDkD2cS6NVLHSxZMxi6F1SoQPLU1
         WTXg==
X-Gm-Message-State: APuU4Z9E+5FFrlj0ik+Q0uvibihxDrGS6K9CQaIHBtvsnPbIVJArDA7n
	FgJxoEEiLFBCqFuwAsUXOiBvmm6IS080dvNIQ1rhM+eOnHRKsbcxH3lTyCp5qA==
X-Gm-Gg: AZFdTZeSl8yOLkOLC/+U2V4rVEVQbx6wn5j3/1e+C/YYdLbHun8JICgmxlC9Rxk6afs
	haFoL3aEwqd3d1dLKlV+3qONZt9i19ImueMNnzFHw8TyQZScj+zGJA86UZVsJZeoFkXzleCF+QS
	+NYcQqFEZlkSIcF2ShejbbnALEOw4VuS5avv0nSJyfzJjW/6+ltqF7/CxNg8AhHgQ24xlISUxfi
	wvMbImVJeZCEtpMhU7jNDmSW4P2qUHibClZl20Wh6VbjXa9qqvxws30+1isekOa52WMsk8mX1VL
	BHAUR/aTjc1hla5Z2Z03HnarZkmX8x2eXHYyJuvDPLnd65Iwe9CjyAQgwVQ2l0kONGQv66yeGCP
	lPDUqAIIGLU4Gfgkp5KTuzN8dzQ/rsfvYC5X9xwRTwqHmv1bRoKB24Sb5lICVch2hmGI2oo16oh
	IE9lqC3yGZ6T1ox97NCFfmyUmuQoun4HFjm9LtGGX2bf+RImq53Sp9FjEyvSnB0E7c0qjyvlteX
	THmirLdtukeR2Jg4wJrFtaaIU6PST2jj7i37RFClyi72q8jfXVHqhub6fSaQG8j7DoevsjFQlUD
	Mfh7gS28NjfP8isW+ubzxLzJ7SehiQ==
X-Received: by 2002:a05:6870:828c:b0:47c:c8e6:23df with SMTP id 586e51a60fabf-4bc84f22914mr23087614fac.27.1795807414615;
        Fri, 27 Nov 2026 11:23:34 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc60891cf6sm24044850fac.13.2026.11.27.11.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 11:23:33 -0800 (PST)
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
Subject: [PATCH V5 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
Date: Fri, 27 Nov 2026 13:23:28 -0600
Message-ID: <20261127192330.610452-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261127192330.610452-1-macroalpha82@gmail.com>
References: <20261127192330.610452-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_112335_980881_3011D72F 
X-CRM114-Status: GOOD (  12.56  )
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

Update the minItems and maxItems for the battery profile so that the
cw2015 continues to have a min and max of 64, but the new hardware has
a max of 80.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/power/supply/cw2015_battery.yaml | 41 ++++++++++++++++---
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
index f7bde324153d..2db80287def4 100644
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
@@ -32,7 +33,7 @@ properties:
       back a test report with the binary blob.
     $ref: /schemas/types.yaml#/definitions/uint8-array
     minItems: 64
-    maxItems: 64
+    maxItems: 80
 
   cellwise,monitor-interval-ms:
     description:
@@ -43,12 +44,42 @@ properties:
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
