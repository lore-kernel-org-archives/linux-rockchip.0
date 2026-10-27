Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7C1606A31D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=crO04Q5M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=UU9Qz3sw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GOHhL4vaRbQ1PEMtd3P+uDhTHocpsOxG0sgeTQGmpDM=; b=crO04Q5MJc0y7cATjORWUNd2/R
	Ow3vgimQBx7NCsZL1tLMC+vjZHivLYh+/pV5mbTXrE3aiMOVu/kdU9bFibkkH2UUob/XLPD+pxiZU
	ZKG4+nt7sJUqJIkc+KbxJf4KwyqcwGXkQSX2ByGY8xRzlK5wOgV9N942SBluJ+8yrrqh3tX/fmUe+
	+ol45YAdfglk9FhnxX2yUGbD+cTnAE79pYwWK9YdlFnaVMz4LEOajB75qD07XSM5luj0ew06TmD5q
	RJEMH+YX6NZxw8J2wHs7YuusxrlQoXMmUQE7AQna1LWZ3yOvt9XEbs3+fM52Ca0j7xoXlIK18TSWw
	qzcLRSWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3v-00000004mA3-4Bnx;
	Tue, 27 Oct 2026 13:18:00 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh3s-00000004m7i-0eoK
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 13:17:57 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-4a77dcc4ca0so1929354fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 06:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793107075; x=1793711875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jjDyecQnnlL5whA8K/QC/fRj9uMASe5xPr8cb11QCas=;
        b=UU9Qz3swFZBh+oY/8plrUTdGxIsRZxWMIgYOO3l3vSVJ1y2zaasMlHXyTByLzkvJj1
         VdbBnr07iCCJpZHJ1iVEkd9eKy4r3oEBTrWWuSKPpPgoWkTkYiAMK1Re3VaMd4hEGbk9
         Nlsq1LQSECALtDmOvh17NAo7HQ/0ioTVuBlGxRInh2LFd2V9TZV51eCNG5I913lYHRFO
         pStWoT1vHO3PdFB5N1ZCZZk3wwg+TjPK3QSPK5Ne1Fs50lonWGKT7OpiXGdkY8LiG9/j
         cnyujhLdhdXRHU/lCJi6gFeCTiC2AcwZvtTbXtSZvO+YxACviPMHhDmuGMNwjC04DjOe
         4JWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793107075; x=1793711875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jjDyecQnnlL5whA8K/QC/fRj9uMASe5xPr8cb11QCas=;
        b=DTlN8/l+REieqXP+7pTLXBaizG1C0UNE/uFfYo9XZGcjMxyLZCRRaN0p07Y9JBupAN
         yyDmZAlaH5S2B6JLLuOSalfyvoHPNS4T6fifb04rb0ofWMJXqjrtLAv2ySPQoWO49dsc
         uxcOVX/9VLrQLkb2NxHvXYV8CCGbQB+Dg4Tb+UNdReSafPYrv8qx/Q1C3y2SzDmWmODg
         3UzGBJv/uM+n9UkfmDPTpyl+pSeNqXgeixiwBDpKnpURHwygu+YBsrjraeYrw2AP4b+2
         s0Nf2OETThMrIs6TVViQuLN6pfiCXhnWb6WxtJuGOxQZsQYVp8bVZjRB5ATOGdpUX1uP
         BQTw==
X-Forwarded-Encrypted: i=1; AKwUvBxNDhDHS/sKlbxwhzlvoSUxjuFYGrz2c6K4phToRNf9bU//u7TwmY+6ZodOwG/f73B5SFL0zRBz9dm96COyvQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJl/3BU6jSbxTF0anapDvj2KM9e6Y+3kiprd6fvJtYnQbpHxvY9
	UNLHTtXY5PhOoBugEmSeePg1+90Dl/r448zOOpV4Hc9+LbEqI27cg1W8
X-Gm-Gg: AYBFou0pWcnwA9kp71BjKc/rJBkjNT7FV5Tp2NixBfUCh9u59XpOSCZEj+5wyZVUNcX
	Z39ixX2jIM2RpYfL0LP27k1bqcJ+bMuAKmmIW5cZBhn1qsRBCOt51ywxY3+I9Z+dp3UkwsFMS85
	DrB7kwg5JG80xihXU46/xJiLadPiSd1OpHsQWtFEZ4v+eOajGL+W8KjifL0VK8IRXLaA42d8F+u
	5NzlK7+z8WmGzd/8Uw0gp0lgxoB3WmNKIMkfJaTQ/jQfx/iG1oDNnM7ewrRyst1EFKgd0/sXirK
	iOJ3sqdyfXEiAtStf5w/2OsexPY11LnFsrM4JYmB7ssKeXYoVjpU0Bwjz63/3zy8AdMD2Sg7GgA
	lIitVeVZvOsAedcH+tdCqfv3TVp/EL+XXt4rovr9f8opJbSiauC0i0LZUSewMqHoBwqCLbGiHfC
	2XSZu95j8cGJyYrAMHfHVIOpRgzuFWXeqIcr3h08AVT4hRkokA9j0Go1GhTcBAhKhQWE1S4KCt9
	lnfGbudGBnOaikV3xh7weP884WJPrvfwFRWl5pTxxPauEh997n1KWOh5bJzKcCbRHxhZzCUx2gi
	rYLwGtNersJhAGAo+mNaeg/lta/8rA==
X-Received: by 2002:a05:6871:739f:b0:48f:e107:3183 with SMTP id 586e51a60fabf-4a83f60f86dmr6853825fac.54.1793107074863;
        Tue, 27 Oct 2026 06:17:54 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a8b74c0a7fsm23412fac.2.2026.10.27.06.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 06:17:54 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
Date: Tue, 27 Oct 2026 08:17:49 -0500
Message-ID: <20261027131751.1724448-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261027131751.1724448-1-macroalpha82@gmail.com>
References: <20261027131751.1724448-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_061756_198748_E207887F 
X-CRM114-Status: GOOD (  12.46  )
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

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/power/supply/cw2015_battery.yaml | 42 +++++++++++++++----
 1 file changed, 35 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
index f7bde324153d..12d2d9a9cf6f 100644
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
@@ -41,7 +40,14 @@ properties:
 
   power-supplies:
     minItems: 1
-    maxItems: 8 # Should be enough
+    maxItems: 8  # Should be enough
+
+  shunt-resistor-micro-ohms:
+    description: |
+      The value, in micro-ohms, of the shunt resistor used for sampling
+      the battery current.
+    minimum: 1000000
+    maximum: 50000000
 
   monitored-battery: true
 
@@ -49,6 +55,28 @@ required:
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
