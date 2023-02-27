Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7313AC64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c//0/Kv8SM+TI3RR9oL4MF/MnPkzLjtWIAAApAauggA=; b=HA77U9AObiMF8Q
	9c0cC5U3oTzjCo9usC6pSQNESXRrSNDk9SITSUbk18Q9Yztk1VwX5J4DTYlYipIY2soD3rk2JOLYW
	GA+qDiFrqdeZ+dNkOoLIPfpLs+p2xtJnZPVQtNozZ3JQB9yJcc0OzO09SgfEmuTwl8i8xzqX6eBQ2
	SRMX3ow7YdrrJUfdxCqP8IzzhmxICptWWWWOy8VFv1RtAeN+XPO4s3v4VFqKbbeqy2wLI1nRRZ/z4
	Crxtt1dzxTJOkKdyhfchVLk3XOW4ZwX5i8sB/B8mLRFgfBSkg1OJ6/Cdj1QcCxlbpclyKPNBWQhzC
	LK4BD3i7kNKNjGxu43iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOf-00AMwE-9L; Mon, 27 Feb 2023 16:30:41 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWgOZ-00AMtS-Ap
	for linux-rockchip@lists.infradead.org; Mon, 27 Feb 2023 16:30:37 +0000
Received: by mail-oi1-x231.google.com with SMTP id o12so5630694oik.6
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Feb 2023 08:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SAWhW5/ZnWeHEgpd0MyQefc2epsEeOvOGaibb4+S/Vk=;
        b=qL2SUOx8PeNpTXVu+f52nmeJL6R8pZRkKLzh1AHBRTAMZai+ZekvT8aiIeb2q1FCcw
         yek2PZ3YHEmLYh8E1QI1zHldFcdY/+DZPIqcE1RTtJnqssm7utvIm7Ihi8RXGWVXHFrx
         rSLoc6MRKyArAb2q3BJJPwHFHo4FMrDxjuDYRWOtZR9zm4e5WD9jWMkCFLUoQF06sMvb
         hSYgt8ouMIVejwZy13CSoDh6pZzryPY6wEwuGv4/ZhyROc9gjJaAQn2FoNX3I9WCVD9i
         pd6BBBZ51/r5WNE6W+h9hVlz2KnxcaEhtW7Iy9nT690DeEUu8kl/jKTDz3hfdpd4fvP/
         RQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SAWhW5/ZnWeHEgpd0MyQefc2epsEeOvOGaibb4+S/Vk=;
        b=hXaj+Rg0DRoPf6zenK4HFjpXyz1rbzNOUvu3bM6CUv898rKUx6kVW6NeV4NCclzB2a
         biqM1Jn7O/0/AwX/H2U5zzIdpiJJ3xtoiFUdZBtkVmBnQKI6sUKuYJH9XNuwwG6WsyaF
         SCmlfDRJ3dHRtppsnm7+4/vLr/UYckHHXzQ+hlxnz7JSzAR/tjM3sH2sfXw2nLwkNUT/
         1XcOO3PLAIi391UBem6FHxV4OQCh7RRDQhroi/oSR44YyuYfXnCC/Uq+a3hTCHjIDPKS
         ojslsZBCgLFs5qNBLZ8+O4eCuoTp5FwUNbzfmzSeQuPZaWIHoZCIqAJWMzmMecMPhh23
         dOrw==
X-Gm-Message-State: AO0yUKWe3wlBcK1U5cHHYArj9+PbE/LXEGd7HR0bPBfR4RUPz2sIqHp4
	oNwC9UMhTDKruTEGJT56GE4=
X-Google-Smtp-Source: AK7set8MAAPsyxbCcn+KGnghPgtS15u+x3K++bHUAQn4v6dHOQphWDyh24Fogc0pw/iteaRUlCRScA==
X-Received: by 2002:a05:6808:8ea:b0:37e:aa97:4660 with SMTP id d10-20020a05680808ea00b0037eaa974660mr12136016oic.16.1677515433231;
        Mon, 27 Feb 2023 08:30:33 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id ex16-20020a056808299000b0037fcc1fd34bsm3267713oib.13.2023.02.27.08.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 08:30:32 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3 V3] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Date: Mon, 27 Feb 2023 10:30:25 -0600
Message-Id: <20230227163027.130292-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230227163027.130292-1-macroalpha82@gmail.com>
References: <20230227163027.130292-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_083035_403437_AAFB213D 
X-CRM114-Status: UNSURE (   8.99  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for RTL8821CS for existing Realtek Bluetooth
driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/net/realtek-bluetooth.yaml       | 25 ++++++++++++-------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 143b5667abad..198c5dd1f257 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -4,24 +4,31 @@
 $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
+title: RTL8723BS/RTL8723CS/RTL8821CS/RTL8822CS Bluetooth
 
 maintainers:
   - Vasily Khoruzhick <anarsoul@gmail.com>
   - Alistair Francis <alistair@alistair23.me>
 
 description:
-  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
-  SDIO, while BT is connected over serial. It speaks H5 protocol with few
-  extra commands to upload firmware and change module speed.
+  RTL8723CS/RTL8723CS/RTL8821CS/RTL8822CS is a WiFi + BT chip. WiFi part
+  is connected over SDIO, while BT is connected over serial. It speaks
+  H5 protocol with few extra commands to upload firmware and change
+  module speed.
 
 properties:
   compatible:
-    enum:
-      - realtek,rtl8723bs-bt
-      - realtek,rtl8723cs-bt
-      - realtek,rtl8723ds-bt
-      - realtek,rtl8822cs-bt
+    oneOf:
+      - items:
+          - enum:
+              - realtek,rtl8723bs-bt
+              - realtek,rtl8723cs-bt
+              - realtek,rtl8723ds-bt
+              - realtek,rtl8822cs-bt
+      - items:
+          - enum:
+              - realtek,rtl8821cs-bt
+          - const: realtek,rtl8822cs-bt
 
   device-wake-gpios:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
