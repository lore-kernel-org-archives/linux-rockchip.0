Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789C5C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 17:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Itbcx9oH8wi5HXIZCI0g23p2Dzvdbhs4gbFFRwKCUUQ=; b=F7sin5Fsal80N9
	MqL42weqgOFAKsIAgop2YBE05+xhSaLny3P3f2r1BGK9prZHp0kXTfoa7Ry77ey8EtgP4Of91sTz7
	J4GJZoTILbPWekRPOKlZIKKTHpD5y14Moxf/Gp2Izg1KWjCSIoTBZ0aGbhbmTyCOloewvmNvhVwUP
	gNIvgdRv2agNVwqs8rAtjLqXiYMWdQWlCd2fHL+8xkS9uX7BYxnrfSPFUaNEbhw7hMeACZvAZMNeV
	soFunc/LPeuKlX01AHiULpquJGNzZ7jmFau1FPUnJDCtUB90hAg0DGDlibcb+TOSLmvRFf14vbj8K
	C8x8c3MPCUdrBvQHWlDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3p-00E9uF-2E;
	Wed, 15 Mar 2023 17:37:13 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3l-00E9ro-2l
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 17:37:11 +0000
Received: by mail-ot1-x334.google.com with SMTP id w21-20020a9d6755000000b00698853a52c7so2608024otm.11
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 10:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lQsibjwoLRXCJBBiCNwIELq0yYn7Rphfllokp35YPhM=;
        b=M0WY0CcpxaAgn3Z7jEMbg+YYSqbEe14W6WCbGXkJuwg7xh/WOOaE4aIXJEuW54DkmE
         hxgdQyihlh4kqIzbQ+RC6jLrSu0zf67u1ehd8hOCZvsFEWF01RzJZzsxmJ4VXuitUX6x
         PdNwQ2z45k5r/OOtiV0NFEMQPRnh6iVO+LT4EJ2wYc8BzLlTPzV9B3C0Wu9i7b0U/LXa
         ksheZ6PmOLO7IqjSFf6KXeCOn2FKnJU0X0ODt33MzPbb2ddpRfKqT2JH/AaodCDySd/5
         7/eRxkeRxND4gNj1/HaYkumg147NGziDaHO4mbkaL19hBgf+rCBm4Vbj6r2fKdcCMY5R
         XNxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lQsibjwoLRXCJBBiCNwIELq0yYn7Rphfllokp35YPhM=;
        b=b7O8Xxy+Vcnt53US2zyCx6BQeYZrfmHKRZUhvPC0QqNRTZcuKG0JKibRkzKNmE7eb2
         ensZOsPP6LJVWiUAjiLPnsukbajJSnuNxSKOQUtWzAlifxuCv9yJG7y+PPzuYKL0Rvkb
         P6eNnInVxdYUXpIOMrd86dCGuXILLIHHzjhKizcBNpJt3eWKYtuVRvPGgex/evdW8ryV
         ykF7gSG1XG//YYlCSCXxFA+7fFgq5zE7UQ6pbnBnJL6+xD3WRDi44rvs03rbPoZaLty0
         QY4tcJSdQ9w5pXW+gcLAQCgUxz1wUG54cEc/ghSCwbZC3Fm3U17kY/pVDgPIH6eK9ivT
         VpcQ==
X-Gm-Message-State: AO0yUKWCWhXpCt/RWf03xt5of++NzZA+SRaXN+WNRuk+kezSsiJtZHcr
	oiZjVRGXZvOPwxME+bAW0Ak=
X-Google-Smtp-Source: AK7set/d0UBs6z8jXZJOU7WorYGwNKFayanHAXK1jdGZCV+f+2KnVx/L9+n2sUofgr62DhmkECLWPg==
X-Received: by 2002:a05:6830:576:b0:699:45ab:52f7 with SMTP id f22-20020a056830057600b0069945ab52f7mr2083030otc.14.1678901824330;
        Wed, 15 Mar 2023 10:37:04 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id a23-20020a9d3e17000000b0068abc8e786fsm2562044otd.10.2023.03.15.10.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 10:37:04 -0700 (PDT)
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
Subject: [PATCH 1/3 V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Date: Wed, 15 Mar 2023 12:36:55 -0500
Message-Id: <20230315173657.28692-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230315173657.28692-1-macroalpha82@gmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_103709_897569_5516593B 
X-CRM114-Status: UNSURE (   8.86  )
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
 .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 143b5667abad..506ea9b17668 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -4,24 +4,30 @@
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
+      - enum:
+          - realtek,rtl8723bs-bt
+          - realtek,rtl8723cs-bt
+          - realtek,rtl8723ds-bt
+          - realtek,rtl8822cs-bt
+      - items:
+          - enum:
+              - realtek,rtl8821cs-bt
+          - const: realtek,rtl8723bs-bt
 
   device-wake-gpios:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
