Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CD83C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 16:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSiTeA49QvwjAPWnZCjbSrBAz+oiM/vjoFqoUUrzmyg=; b=crdNPdXzJqzZbz
	AmEeC0mNzAJl8udBHFgA0lP4uGZGtvgXNHgq45VCc2KJkOC5/zVYsOIUTcGtLf9uKEmzJ0p9Ba9EJ
	5StcVY/FDuJE9WkmEkYM3RedsqVjCqBbXWPvKrJb8908H2GY2MEwaW3peLT4ynY6bpjQxLhaJEiU5
	z0hNrg6qkRbnsVm94+qD8A4NgOGDfboNi3F98MNBZK7Iaa7XTvAF3oprM5cphru3bElyBQmUlX3g1
	LtcbolwRlklIF2CgE5kT8MQwfv2/Y0j3YQ7TX6Qm4raREe3DD0ZRKqsSwepLX3VZSlrpDOG0xM8pT
	rKsaDpjIknCCyXawGZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrjHb-008Snc-GH; Thu, 19 May 2022 16:45:51 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrjHW-008Sks-Jh
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 16:45:48 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id
 f2-20020a4a8f42000000b0035e74942d42so1084919ool.13
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 09:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=za+JFS8UrUe1EXtSy/HN8YRbGNE25Vj78rAPO0Rkf/g=;
 b=cg6+vIhCSI7HHV/IeYX98FFMnomiDXGC8qXPpKRbECi9S5ZPJM/TJ6XLIZGo1Rmtzn
 WubFecTLsBClsoR+g6p1nKIOFb78/bSf4q/MGpl6ATisNNCM4al5jpUhisyKdbJPYQm4
 DniJUGei56MYcf7txmuimwp1geQYYf0ROpbQqrNIZM8WwczMVlgclvFw5oHrzcEArE4X
 821NNnf+nfcY6a0cgayYSzy/ht6XZ0saVVLfwAqsXE6dQZgJjHsTz8e8EOkGQxXbG+GG
 ZIgnTwMYWun0XI3m5LNFIHDjTDH0VX2QwGMtzB1c8oncBk82kZ6v0/7H8eBPDYuRrxcz
 t5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=za+JFS8UrUe1EXtSy/HN8YRbGNE25Vj78rAPO0Rkf/g=;
 b=RnmpEgGx+zjd0y/X7REbTt0KLrTUovuW697Sy8xRFbqcvWy77QcXWxw0SGAdgsXl0u
 /RVgC87dg52JJDwRHQ1SUCwKLr78XGDTPivPx3RbXXe3Crm9ZtCj3z8ZFVe8mwYwTTgu
 XHAA5/hSJmEhAyeTnxS1PNTZrQlxqAK8m2TWaB9Y9jhxdOA7i6Hn96ffs94/ws5edzxm
 luK5WBIqZ6Jtysx9ZvUadCFT1Ittjmm60eb8/cBjduybLcZ6TK81cXmNGFp0WOZaQbm8
 QbBiznIKNMngwP8GAuX3kTGjsg2ORZ1R+d9ieW9Rc81S7kXHMmNaZpdnLIx55SpDo8Gu
 OJNA==
X-Gm-Message-State: AOAM533tJVlzYZ2n6Q1ym2Td3nI8CweN34tigWS6qrsoFH6XytHLFjJy
 DCMOaLQ2Q99g36il2y3NMvY=
X-Google-Smtp-Source: ABdhPJxI5A12WfjhIpKU1q8aHjBpHtVeCEkedOkazEWaDVAuM5xlWJaLTR9YwGgAHnZmikOHhX1Y/g==
X-Received: by 2002:a4a:abcd:0:b0:35d:9b36:62f3 with SMTP id
 o13-20020a4aabcd000000b0035d9b3662f3mr2450026oon.14.1652978745137; 
 Thu, 19 May 2022 09:45:45 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 i20-20020a9d6114000000b0060ae5f10973sm575601otj.15.2022.05.19.09.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 09:45:44 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 sre@kernel.org, jon.lin@rock-chips.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4 v7] dt-bindings: Add Rockchip rk817 battery charger support
Date: Thu, 19 May 2022 11:45:30 -0500
Message-Id: <20220519164533.1961-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519164533.1961-1-macroalpha82@gmail.com>
References: <20220519164533.1961-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_094546_730169_BA7DE934 
X-CRM114-Status: GOOD (  13.73  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Create dt-binding documentation to document rk817 battery and charger
usage. New device-tree properties have been added.

- rockchip,resistor-sense-micro-ohms: The value in microohms of the
                                      sample resistor.
- rockchip,sleep-enter-current-microamp: The value in microamps of the
                                         sleep enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Note that this patch requires the following commit (still pending):
https://lore.kernel.org/linux-rockchip/20220519161731.1168-1-macroalpha82@gmail.com/

 .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index bfc1720adc43..d0dccb1aaf4c 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -117,6 +117,47 @@ properties:
         description:
           Describes if the microphone uses differential mode.
 
+  charger:
+    description: |
+      The child node for the charger to hold additional properties. If a
+      battery is not in use, this node can be omitted.
+    type: object
+    properties:
+      monitored-battery:
+        description: |
+          A phandle to a monitored battery node that contains a valid
+          value for:
+          charge-full-design-microamp-hours,
+          charge-term-current-microamp,
+          constant-charge-current-max-microamp,
+          constant-charge-voltage-max-microvolt,
+          voltage-max-design-microvolt,
+          voltage-min-design-microvolt,
+          and a valid ocv-capacity table.
+
+      rockchip,resistor-sense-micro-ohms:
+        description: |
+          Value in microohms of the battery sense resistor. This value is
+          used by the driver to set the correct divisor value to translate
+          ADC readings into the proper units of measure.
+        enum: [10000, 20000]
+
+      rockchip,sleep-enter-current-microamp:
+        description: |
+          Value in microamps of the sleep enter current for the charger.
+          Value is used by the driver to calibrate the relax threshold.
+
+      rockchip,sleep-filter-current-microamp:
+        description:
+          Value in microamps of the sleep filter current for the charger.
+          Value is used by the driver to derive the sleep sample current.
+
+    required:
+      - monitored-battery
+      - rockchip,resistor-sense-micro-ohms
+      - rockchip,sleep-enter-current-microamp
+      - rockchip,sleep-filter-current-microamp
+
 allOf:
   - if:
       properties:
@@ -323,6 +364,13 @@ examples:
                 };
             };
 
+            rk817_charger: charger {
+                monitored-battery = <&battery>;
+                rockchip,resistor-sense-micro-ohms = <10000>;
+                rockchip,sleep-enter-current-microamp = <300000>;
+                rockchip,sleep-filter-current-microamp = <100000>;
+            };
+
             rk817_codec: codec {
                 rockchip,mic-in-differential;
             };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
