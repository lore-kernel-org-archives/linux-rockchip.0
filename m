Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA26EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9UN/hLmUukW79uQjmbIGC+psp6W7BGDLCgWx73fVms=; b=4LFjlYu1WA3iKt
	o5uPembaVTZLyJoiMbAhNIICny8PcrmQgh0xIeJ9NAwgCeNptJdZStDfoh7Q72I6Mex9Mtlk2yiES
	MyKvHEXicnxASlrCTkH3USYQXKML56DnEFbSFRNCKPB2iKFxZYDGMPTSCja/YHkTuFbKfN/+QCGVN
	W0XdfxJ7EhqyKk89BghD9fpLiy19hzQfc/u80Jlwx3gxFBg3/A9Ze876wxb1SPn64eAWQ4GvpzGPO
	gLT9Tt8JloTNjt4WITO4qFhZl1G8zNvDwPOQ+AmZ9fmUrrt2nmX0mFtyAGJMs6XqTMkb0Co7db+fg
	R51Bgc+5wXCwvS+0tInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmjF-00BDRN-J9; Sun, 08 May 2022 19:38:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnmjE-00BDQw-6R
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 19:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1XeJnNNlIllodvcVQo3PDKeXH2oW9QkUYejnaC12tvI=; b=P4/61RcLKDhKwvQVpMnKWExXAy
 NoPUoJnQoNVMox34ReQhiZgPCX8z4c0iyEOjxbGFtLXOO4VddmeXn1vO0pYQ+9NvkQfP+wIasBNLn
 P7seFPeGbGHKyg69STme4mb9k+Jrjch+5DmJKm3Q4ulnuY07wnhMESih6tYHBDdONasPWhXpmn+o/
 CYNPeZzb2udqizF+1p06rymPkz6HmVtusvJRxs1Hxc39ht2Sg49MsZf6TQIjSjagblrgEL5sdK9y7
 W+d5U8/f8E4sa2O4ZxFoRamb7x4g7kwlhi9MqkGlcDROQcIksgUBK8OfarUsoKCEtVGoCi6masxKL
 TpPFmbNw==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm90-002jud-6b
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:41 +0000
Received: by mail-wm1-x334.google.com with SMTP id
 n6-20020a05600c3b8600b0039492b44ce7so184423wms.5
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1XeJnNNlIllodvcVQo3PDKeXH2oW9QkUYejnaC12tvI=;
 b=EKLb8gFApnhW1NHMOvk+HTnlP5d2IGcAS2IJkExF+KZUAFIXqmLMINZEwKiXIcd+PX
 GeWTv2PjtyigU6V14+/nkFywTtyo65wizpAdkkboK8pdgfqzN+PzGMUwo4O1l2ZFgCFU
 Gy8ec67I/C7DsrhErMIpBYpCgTfcUA/6dX8jGmOGnHpN8G3MkSn1pDEhuGYLmWhHmGAX
 jURzzE1OSPkaJu8qL7qKeUR7DbunQnafGYNtKt2anQugwEOhiII0PZEqP1Lpbv/xMPnJ
 WGSXmsKx4Jci2WDX/6FJdn2c5T8pKFFRHO4jTyZab3ylxEMTT5HwUfC30hOIrfhkAsvp
 VsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1XeJnNNlIllodvcVQo3PDKeXH2oW9QkUYejnaC12tvI=;
 b=3vU+TiVNK8WRQ/YGw2Qclv7r4Wp7xaKbv67nJHbLHoVswn9ny2X/yAb2DfX2w+assI
 9CUA6hy5hk/aHTiVKQqt0CpXQEGMedXRiXyvlpFSZgVrIZXgACx104m8w9cp+CsiEZZU
 WVuSyT/Scn3+Ke9DoTJiG2TCp7pBVYbabbCirVFOg0jV89JuVSUkipJ6YPTYNiQaupa7
 vCRnF9PQD30SohIZA+VqAjNe9V6TcidzJ/ReDhPUgvRsS/HRnbeukzFWQ2AXqlNOowul
 ERh1wSA1r4WiMM9hqd0kjPH34buePYlJwW3kGGEU/kNKDTGi8rdA4DPgZ3phvmAW55y3
 gtvA==
X-Gm-Message-State: AOAM530Cm9xtBQOuNrY0ifiLcZ2k29ogPyigdJNxxA2eC0CCyaUjPREE
 uMremBsOYfnufx34EM7HMWCMTQ==
X-Google-Smtp-Source: ABdhPJwwRntsdzFUuXKfkmpqvNijx908tSi2UxBRgQNCzWBUOaPaiLjRkknap7Jh4nyl+xg16ddrDg==
X-Received: by 2002:a05:600c:4994:b0:394:dcb:d66d with SMTP id
 h20-20020a05600c499400b003940dcbd66dmr19323600wmp.178.1652036431415; 
 Sun, 08 May 2022 12:00:31 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 25/33] dt-bindings: crypto: rockchip: convert to new driver
 bindings
Date: Sun,  8 May 2022 18:59:49 +0000
Message-Id: <20220508185957.3629088-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200038_382833_11542DBF 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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
 .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
 1 file changed, 77 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..5bb6bf4699ff 100644
--- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -13,6 +13,8 @@ properties:
   compatible:
     enum:
       - rockchip,rk3288-crypto
+      - rockchip,rk3328-crypto
+      - rockchip,rk3399-crypto
 
   reg:
     maxItems: 1
@@ -21,21 +23,88 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
-      - const: sclk
-      - const: apb_pclk
+    minItems: 3
+    maxItems: 4
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    items:
-      - const: crypto-rst
+    minItems: 1
+    maxItems: 3
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-crypto
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: aclk
+            - const: hclk
+            - const: sclk
+            - const: apb_pclk
+          minItems: 4
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+          maxItems: 3
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+          maxItems: 3
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: rst_master
+            - const: rst_slave
+            - const: crypto-rst
+          minItems: 3
 
 required:
   - compatible
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
