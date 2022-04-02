Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DB26C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDxNO8qCLeIBpSR+OSJ/0INjes8QJw10QUqp1YpxM+Y=; b=FWhPRmugbjD+Hh
	9w38KRsaT1Taof7eohjWbY8lV9PnLMc18jMge7OUyo3hFf9CLNwOj6vCHQ7yG5qdJdg9tty11j02z
	vh2waQ8cAYHhhu3XS00AvNYDq1WVTJQAeOHIU+xwcLHdM1kraC1vAy8GoimQQ6mEzCgEtyfmpZfIE
	/NLVry5U0mukXTZ+aX6p1cn+F5AXMMZzBBB9zc/7FA71aDCxW+bzRvodJAkLm/fPle/f8PbJCVfLH
	Bkd/H4w9ho/pVPd0AAWexGJVt6OanAzYC+8f84Kvjkb5spzx4qBcNMrbNOyqVWbqY/wfuyXjPOJan
	QP4EQIGFjRVZSo1dF9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naezu-009NrO-VT; Sat, 02 Apr 2022 14:45:03 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesE-009JKn-U9; Sat, 02 Apr 2022 14:37:09 +0000
Received: by mail-ej1-x631.google.com with SMTP id bg10so11423507ejb.4;
 Sat, 02 Apr 2022 07:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A5SAjUnYFQM9w8TOLgtiKBk9tPwBKnHPcAhw0POhc3g=;
 b=b+K26tGd8dmMu+pIRWuwIMbEAih1Gm5KNPQz4TaxkahLVAIXTDQOYilQfs8RntMuHl
 z1o/m88jL57/PMesvniiC8uNJH9XM91PY50+Fe6sr9+CKQM6os9BZO+0TpyKt16jRTTD
 ViQt0MTtubQNJJf2rVHYmbgOIQxVgCbd4upIBjEWLKJNuxtrXiVkFucspBDYOq46Nmkg
 puOsAJgpI3321euHAjQ3Twa2TebnTGPh8WPtifqk9tP5a3En2kcYWMnA8BE7Z/mtCPer
 xADC7oCqHspz098E2cckQ6A2UFWwMhNgZvfFbeVvQba6yXlE4y6EZFiGjPf10ntrc4Cv
 p4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A5SAjUnYFQM9w8TOLgtiKBk9tPwBKnHPcAhw0POhc3g=;
 b=O1QwzeHhs1P4Za0TkU/w6AOYMga988x1li2wk8M2QHoU/mO2KkE7nkkHlAxWORdRYH
 ssrydmD8GfXddfxJk3JG1J1io2xjenrqLmlD9uuaTdmQBy+Psc8m6GRetvVFsOfdV3G5
 uftxTUVXrxVkg5mDdFaapo6d08OMkoVarBq2mHb4nXaW7Jfq0h53U1RAm1O6xbPHJO3l
 BlJNFfGGF6LcJuzcAirZAayzAIpTHH+rl7kusrOXsibzkpT/tiX7Z86j5l/BXyW3Zgmz
 0C+PXhPT4kCfKabDF91KUtxDWQR3uV/95b8BAIh5AMXVm7k+RJ777OXEf8+nudPQFyAe
 QtWQ==
X-Gm-Message-State: AOAM533lad4elUHNj04ufABE8k0WnXf0+dZZ8tesL4XXjOmxzV+WXXdY
 LfmE/UgFLlN3/C6jvn3QNb8=
X-Google-Smtp-Source: ABdhPJxKiB5huzHM1gmRf9jZL2520dkuPbe0wyAiByFM551Ipm7AyngjKLm0atJYVdkKEmHblocIHg==
X-Received: by 2002:a17:906:4fc4:b0:6da:b4c6:fadb with SMTP id
 i4-20020a1709064fc400b006dab4c6fadbmr4195430ejw.282.1648910218049; 
 Sat, 02 Apr 2022 07:36:58 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:57 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 16/16] dt-bindings: clock: fix some conversion clock issues
 for rockchip, rk3399-cru.yaml
Date: Sat,  2 Apr 2022 16:36:36 +0200
Message-Id: <20220402143636.15222-17-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073707_045688_57DB4E7A 
X-CRM114-Status: GOOD (  15.62  )
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

With the YAML conversion somehow "assigned-xxx" properties where added.
If a proper clock is added to the cru node these properties are no longer
needed, so removed them.

With the conversion of rockchip,rk3399-cru.txt a table with external clocks
was copied. Include these clocks into the schema.

Add clocks and clocks-names to example and make them a requirement.
Reorder/restyle so that this file is line with the other Rockchip
CRU bindings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/clock/rockchip,rk3399-cru.yaml   | 55 ++++++++++---------
 1 file changed, 28 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index e91147c84..4574727da 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -20,15 +20,8 @@ description: |
   used in device tree sources. Similar macros exist for the reset sources in
   these files.
   There are several clocks that are generated outside the SoC. It is expected
-  that they are defined using standard clock bindings with following
-  clock-output-names:
-    - "xin24m" - crystal input - required,
-    - "xin32k" - rtc clock - optional,
-    - "clkin_gmac" - external GMAC clock - optional,
-    - "clkin_i2s" - external I2S clock - optional,
-    - "pclkin_cif" - external ISP clock - optional,
-    - "clk_usbphy0_480m" - output clock of the pll in the usbphy0
-    - "clk_usbphy1_480m" - output clock of the pll in the usbphy1
+  that they are defined using standard clock bindings with the
+  clock-output-names defined in this schema.
 
 properties:
   compatible:
@@ -39,37 +32,41 @@ properties:
   reg:
     maxItems: 1
 
-  "#clock-cells":
-    const: 1
-
-  "#reset-cells":
-    const: 1
-
   clocks:
     minItems: 1
+    maxItems: 7
 
-  assigned-clocks:
-    minItems: 1
-    maxItems: 64
-
-  assigned-clock-parents:
+  clock-names:
     minItems: 1
-    maxItems: 64
-
-  assigned-clock-rates:
-    minItems: 1
-    maxItems: 64
+    maxItems: 7
+    items:
+      enum:
+        - xin24m
+        - xin32k
+        - clkin_gmac
+        - clkin_i2s
+        - clk_usbphy0_480m
+        - clk_usbphy1_480m
+        - pclkin_cif
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-    description: >
-      phandle to the syscon managing the "general register files". It is used
+    description:
+      Phandle to the syscon managing the "general register files". It is used
       for GRF muxes, if missing any muxes present in the GRF will not be
       available.
 
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
 required:
   - compatible
   - reg
+  - clocks
+  - clock-names
   - "#clock-cells"
   - "#reset-cells"
 
@@ -80,6 +77,8 @@ examples:
     pmucru: clock-controller@ff750000 {
       compatible = "rockchip,rk3399-pmucru";
       reg = <0xff750000 0x1000>;
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
       #clock-cells = <1>;
       #reset-cells = <1>;
     };
@@ -87,6 +86,8 @@ examples:
     cru: clock-controller@ff760000 {
       compatible = "rockchip,rk3399-cru";
       reg = <0xff760000 0x1000>;
+      clocks = <&xin24m>;
+      clock-names = "xin24m";
       #clock-cells = <1>;
       #reset-cells = <1>;
     };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
