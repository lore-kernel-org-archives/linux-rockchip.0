Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30FF9C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtkEPAzLTmYSKPLpx4CRtVcOJIOjJocMIwZ0a2qnfao=; b=SWSqGBjejGkgne
	0iZUzGeyxwPkxt8UMhExy2bt3elw9d/WbNoXwzSluDuKppXT40FS/Kbga04jQVI4UeYX+Wk3Dd6d+
	6mMgNZ0cItCtL86NhKs3bqUh0U0qzjZ/Fxa++WMJxMPxNxHpdCVi1hp1G3AL5gfT60F7213TjMwHH
	pAXpxPA1NLcXy/vli58CLZf4sXsNgqlId3I+04YrsNUGRqp6EHzZD7a8yewAlSoUJZrAQK6o5t3dz
	/Arhf5CZxVcXaPOxqO3VitYjdvDfeSPxpgiNFJCKj8jJRTgbO4YRfMmklg/BsSr8XJhMEiNbycP7h
	ROtG7OPBqGdRKNb+wXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbUi9-00GVbj-Lv; Mon, 04 Apr 2022 21:58:09 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbUi6-00GVal-IS
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 21:58:07 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 a17-20020a9d3e11000000b005cb483c500dso8144637otd.6
 for <linux-rockchip@lists.infradead.org>; Mon, 04 Apr 2022 14:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I8SF98rfvfsECoLgv/3qDJ7dOWAbp3etpp0VBkgOEd4=;
 b=llbe/jozSemX/Dt2sgIr8j+xJRQHaLnkhS58ESP4PGlU4YqQiTnWTLahrld27BPO/X
 KNJCwjVviq7YOMboPvKdYhdBc4Vpb+Fz50XvHxFU6DcJXtg8LoSwAoG4AZYJpSuVNpZC
 rJscq5/C56OUxWds9fod0ZorT/bPw0V+UC+VW99D0Cm7ftFerBHRtp6agVoCCxWLl6w2
 UoXEe3ggD0wDv464QU5RMyAuzGfKfSGNYs5vABx30KicLVEx2p7/jORpRlopw3zO5nns
 ZGib1aTQ4yIW9s1rDDYB6c2qt3wAJCcs4AHxZJI7elJ903QtaWSnUls4SCWPuC1Tg9Hv
 lNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I8SF98rfvfsECoLgv/3qDJ7dOWAbp3etpp0VBkgOEd4=;
 b=i2iPi2xO5FKVg9hvEHM/s0kVJiqWsLS7bHY0/XSAllvpCp1i0sNqPmXdcg1qNtzjKk
 WnFz4pWxXu5g6Z7tfn0LQAxmeNtER3eLjk5zq2DspUCFjRWJq3o/XQbm7Xq7nCzdFAdF
 rbZWmtbu7NfF2YR6wNGKNXqsGhxO2OkF5SzplpUQqlScIZIJK0rTxinxjPvsgRPDhuo3
 EzHjAmtQRUx7R3BaKnZ7ItXtfvRCtwsveT7J9KIG+pNSbOWdirV5busL2umoXD0jNqU2
 GGMH/lAiPehfExji185Qa6NCEmhtOfiC/dkRgcJA9tB5dToR9Jkyd4zybjPXjNPDMhuC
 ptgQ==
X-Gm-Message-State: AOAM533S5XbkOTZd5caiQeq+++I6sg8BNMl2CVgVx8DGUy/DZeXRb2A2
 Tsp9QU5SF9uzH08dA8uFpjA=
X-Google-Smtp-Source: ABdhPJxNUEmI/HP0u5EwCfYA2HhDlWdo3pXzSO4krY1nKVPBsaB1PI+VnKEWcQ2aCzvkuu+6qWebTg==
X-Received: by 2002:a05:6830:138d:b0:5b2:4b0a:a4fa with SMTP id
 d13-20020a056830138d00b005b24b0aa4famr136564otq.380.1649109485376; 
 Mon, 04 Apr 2022 14:58:05 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 r3-20020aca4403000000b002ecf4d70c83sm4646402oia.27.2022.04.04.14.58.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 14:58:04 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger support
Date: Mon,  4 Apr 2022 16:57:51 -0500
Message-Id: <20220404215754.30126-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220404215754.30126-1-macroalpha82@gmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_145806_650059_EFAC46BC 
X-CRM114-Status: GOOD (  13.45  )
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
---
 .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index bfc1720adc43..b949d406a487 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -117,6 +117,47 @@ properties:
         description:
           Describes if the microphone uses differential mode.
 
+  battery:
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
 
+            rk817_battery: battery {
+                monitored-battery = <&battery_cell>;
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
