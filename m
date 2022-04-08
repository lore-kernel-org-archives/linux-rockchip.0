Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BE9AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 21:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHfIXj+3IbrZf/uwZSkjR7mT0H698r2rJM0kkw0B2eE=; b=YLNRDdPzkgK0Br
	Lc/ZLNLHzA0anNqtNLnwVOv7h9uJU7EMTpSMgsK6uCHn/TTOodesWzyMUYl/Y3jzFcOdto/wl8dii
	loxtiYJ0Ysg/BLaHRmywfiZfol/5PNFXs2Ec3ktmT46kJZU9ax8rDh7B3e8WzhVL9HO6Hdl6kBOoZ
	1dIHZQzOXGmxSjN1DBxRZYYQC9MJrIDoQJoh++VXjWheNySu/pSJt5hnmylAf1X4gf6OWt20bfDNK
	rXpuBmb/rhxyzkhjFKb9ANM7GLVNb/KaP3H01wIWxbrPk0XGXNiAYYp/lHU9g7uFjjSxFArQXexS5
	L/So+Xu2LaCMBLJN5S0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncw2t-001IeA-9N; Fri, 08 Apr 2022 21:21:31 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncw2q-001Id3-TV
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 21:21:30 +0000
Received: by mail-ot1-x32c.google.com with SMTP id
 c24-20020a9d6c98000000b005e6b7c0a8a8so3491656otr.2
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 14:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NSz7K5b19XO8QthP7HKkn0j7bBJdLPWpwnyCCD24rzg=;
 b=SCk/MAAi/FxNsb7z52mlGHrgzeCDvyZeButxLA9JxQgDGLGn7M7mZrQM57/9nltDAb
 1eXz96dJYi7tP2L4+eM8Pr/CfGjTzbdPDCkHxAbtZr6LmjvJyLyIrA+yYlfPlFweGStO
 8K+vPTtqLLs4bF09NOCFjnN+9T1ylWEJSDYD6PVuX8TwXDifown5dEKOjFz0/iqt0QKw
 /ciZufo3ksJsR7Q6CS5MmmOfVSw1w3YJllIzyMszgTVKDqtKHUaD+8wzhrmvWQUW8m0q
 vYakZZkye+EmPpxrsYD97F0FQv8VeVNvERfaaMcVJruF+qkklL5YWHxPfbd+jrnVllh9
 3UBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NSz7K5b19XO8QthP7HKkn0j7bBJdLPWpwnyCCD24rzg=;
 b=BKkWIltgqOU/julBHX7zEn0+klK9MPMamEgdE1m15YlagJGoAXaJDIWTzAzpXswzkO
 YY111EHJzRG5Xk1f58UuQKQojnQAVCgc2e4z+K77giMq/uc4Mj3jUAr2IcV3v4fCrpIs
 UdxfMCVKfQcAiLMeP/7baxEy4ZWokg3edlbFqljQM4rmQ+r1b8KbW58moFN6nD0gYJcH
 nVAmPFdbADzzc4alCfHMIuCg9yaP7cjIKhl9J3Z26eidELyiKNM8mOr084T3CKHmcLtP
 VCC6JFoJSvL/9+7qNuDns/BNnAt5+4E9nv/XKGzyhB7nQ1n2qwEh2NPjwtPgR5mVUPfJ
 czhA==
X-Gm-Message-State: AOAM53244GiaiQQkgEUDS9hY4UPTuUR0OF7GN9asSE5WRtRqSKKiy0sB
 trxn4RD0iMFXToMKgX37J8o=
X-Google-Smtp-Source: ABdhPJzjMt5GRQHD7VGPCTMxCL8blnxKeGKjJIx7U96yzSYdBFjnbvy5/42EShsJh8jjvCFvT7Cljw==
X-Received: by 2002:a9d:b91:0:b0:5cd:99af:bebb with SMTP id
 17-20020a9d0b91000000b005cd99afbebbmr7585230oth.245.1649452887769; 
 Fri, 08 Apr 2022 14:21:27 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 ep36-20020a056870a9a400b000de98fe4869sm9950375oab.35.2022.04.08.14.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 14:21:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, maccraft123mc@gmail.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4 v6] dt-bindings: Add Rockchip rk817 battery charger support
Date: Fri,  8 Apr 2022 16:21:18 -0500
Message-Id: <20220408212121.9368-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408212121.9368-1-macroalpha82@gmail.com>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_142128_993910_D9F17B18 
X-CRM114-Status: GOOD (  13.30  )
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
usage. New device-tree properties have been added. Note that this
patch requires the following commit (still pending):
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220404215754.30126-2-macroalpha82@gmail.com/

- rockchip,resistor-sense-micro-ohms: The value in microohms of the
                                      sample resistor.
- rockchip,sleep-enter-current-microamp: The value in microamps of the
                                         sleep enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
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
