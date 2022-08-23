Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37300C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 19:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5M3oEjWiwqX20bvqN85nI3xfjs/fkLlwj8zDtP5/joM=; b=q/4iaA5BUIyOpO
	QxuRI19vVPg6ZQ2nPjpQ/7/6FOB+OcwWdobd2US6sOHvt9yZuPdvxDguBr+6CJ1mt3CKmiSDv/jMf
	vdVlm4Igp/oW/y8c9e7WMYWLfjUZYV3DhI2+E6fo8tCklWnjFfyF6jZLqy6LBO9c5sT1Lb+dVC4lp
	gjKo8n4Sx3vnC9tzGzD5spksQYm9X7sv1Io/LHzcMpj7s9BhWLnozFpmvF6Muqn3Nisvd7OcpsXEc
	CtycoSkMTzRQw/h9Fy//4NbUYbeQrIo5PsSM+ud0ok40ERbB/aSaTcgL60cNQ1fxBJ19gwtsOR0Jj
	froWAjp70jMPHGJMkhvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbX-008apv-OW; Tue, 23 Aug 2022 19:30:27 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbU-008anz-4M
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 19:30:25 +0000
Received: by mail-oi1-x231.google.com with SMTP id n124so6246541oih.7
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 12:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=L34mygYcsY64WF3ptC9v2v7ym7ZciNtxv50Hixsy1YI=;
        b=aAjJMbW7malEfNcJRA8xKCK2iWw531h3z1kyfHcQpt+fQmMCbzrV8Qq2PvkyMFwCVd
         dzfyhTnrs9TaPtVRzXrNfSgopmta+oHX/sbIXGEgv0Ik7hw3k7YNP3oM4YEpbbSXXtWn
         GDX6AuN/zNFguv4L2b3LXppGl3lbTFunGpLnwPaheR4kVH3t+j66YWBkOX69gOs9/K8h
         gkSQB9ZgDvN2iif5wDxnQnUp69LLm/mrAPVKY5HGX+9nFfX7+0ZKyflEs7dVWWX0Oc7t
         rwCsgi6vMKP8RKaF/wT/EFXMz+6OPGmURjHX1H+uUrYmclpaQO9ZhNVfU6LklN/F+/5P
         UnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=L34mygYcsY64WF3ptC9v2v7ym7ZciNtxv50Hixsy1YI=;
        b=wupXycVxwjj0yb9LYl1DMC4xh95sHH145tq/IWpRZ7QOViMcdcuKtS3sy72IWE6k2/
         +bqvsDSmsCEegHKH4rAaq/bgpOwLmJpWXUG3dLJkWP/6muNg+5zAvOIHY4XjzcS7rPSA
         etQ1gHYVH4+p1kUSBaPoGriQEP5y1RAEkjWYLhCmL4r9SwFgb5XiQviSLkpPFXP7hyGM
         pgPcG+Ny3EtUK3sZ0prdllelFHNo5XZRN3ysctngTUOAaUKy+opaIR8QMlznbXiM+W0W
         99PvVszbzX1Dlxul8RaSZ61jBzThIBypNnGekFxBp69n6jIZ92s+pVxjfdP+5C2WCa2D
         gW0A==
X-Gm-Message-State: ACgBeo0XgbNtoeilxt5tcur50NUhFrwdKHSYfS6TEDXhtLpOQ7Vc23Ah
	Ff9PKZnus7w54Lv7wA6+Axy/szrXOHk=
X-Google-Smtp-Source: AA6agR7iL4NFe6cr4BmrZKeT85s1EnX/c4C6RYOgtH4291z6DXJ2aiav5YMdqV9SL2+Wbad/wsDxlw==
X-Received: by 2002:a05:6808:1b20:b0:343:678c:451b with SMTP id bx32-20020a0568081b2000b00343678c451bmr1937135oib.171.1661283020016;
        Tue, 23 Aug 2022 12:30:20 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id f36-20020a056871072400b0011382da43aesm4070372oap.16.2022.08.23.12.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 12:30:19 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	maccraft123mc@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V9 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Tue, 23 Aug 2022 14:30:12 -0500
Message-Id: <20220823193015.10229-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823193015.10229-1-macroalpha82@gmail.com>
References: <20220823193015.10229-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_123024_193732_84E58F0D 
X-CRM114-Status: GOOD (  12.79  )
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
