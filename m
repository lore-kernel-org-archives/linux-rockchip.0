Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88516ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 02:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWq08z8OALNcFCu/WMo5zZPdKM1QEMvMqG/F2BP1DFE=; b=SAjOq9pDgxpNff
	NxtFaRzqRbcTBOFBiDgukVNd/93qRWIvardG98EJzAByaibBEms4qN921gheB+c2y68ek0bPhWXqJ
	3bl9ly5wjLCHY5tEk8VNnEwjyEYvjKHWaZqSfuMbLvzItqpQPg5Qbqqy9SfXUQL9mv4yjoqYYLJG8
	lBjFaUiHMJdKwcbd1fy6j46P7FDdfWczH6m/Uw5PNmU/GvizUBs+U5UNcGVPR7aEoFk+Ifs/ebWdf
	IziOH3bxRFo/q6bH4+j6l2BpUPwcwz9Rvpj/w1EcT9aPZvXe8PealB1p8DEDV4yL1WqM6uYq0f/KC
	f3g+TlWI/WGk2YBfM58g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlNG-000NWD-Ff; Sat, 27 Aug 2022 02:16:38 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlND-000NTC-EB
	for linux-rockchip@lists.infradead.org; Sat, 27 Aug 2022 02:16:36 +0000
Received: by mail-ot1-x335.google.com with SMTP id q39-20020a056830442700b0063889adc0ddso2203012otv.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 19:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=mf/Wnkxtmv95NHNcpXu8kZiy3UcFnPoDPtvznQq/TNc=;
        b=R0/8MZkc1X84R5o5lHg0/6TgAc20liCy5Idnswb8aTUKOu8gN4gCpVw0nJB/INIWo1
         N69UI7Fg20nivbMHbK4/Jtqe+OLUp+ytlmt1uRr0Zr8EfTHBX1flgmdbN7OXvTT8bBow
         DvbeMTuQC7KSoc1CrNbGx+KJzMJrLe99Nf2z6oVGltBGdMijm3eHmpwD2a6XmSJczzSt
         2Tv6egOlX2/UWa79ssBIx8IFHqJyzMnFYE7Ds33MTq9MmO9VdS3mSb0AjyH0XhCnG8ih
         DgXSGXPEM4pRzjbGmvUQpClMNLhfgbj42t8AvOVaubiul5dlScpX3HPHLZHZU1UnZtK8
         yk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=mf/Wnkxtmv95NHNcpXu8kZiy3UcFnPoDPtvznQq/TNc=;
        b=mSjjM9zaVeA9BYI/JCs6RlDv/nXtkJGsRMPUZTmyHVjJNJp0Cb/wW9tz9UJ6ac+I0r
         2PBW2idQK6cy9qZSwnmWw0vVbC9K2OECgDn5MFxBe7gpNW6CtJy3uE8VB6stLyihHSiY
         WRcp81q2ZUwx9eCwgNSb0Hq/0e4KYYfjbK9o+8D9NWoLVe9mWD89xCK3N+VTxBnW0dGo
         sbbEM98C91F2lRbvgUbhEwhJGfoAXrMJHfP7x4N3UnaJkqUZOQXg7LWlPWbrPw9yXmvJ
         YeKYbGv/1ZBtHo81q+QY/U/vlyqu/MzmFgkdQczQHM6/q4Qgwa9yYUQibawTrsB98AWE
         qkDQ==
X-Gm-Message-State: ACgBeo3dATKlBvWUWJtEr2SfIFBv0Fq30spcxok+nqcEAd1AGFhRcPhf
	k34wR6lKEkmQs3Z6hnYEujM=
X-Google-Smtp-Source: AA6agR6BRf2WLexC57rqPJP4tMDOlY7NXO7AFX9dF6VDD+b9KLd0oaFyxcQ7XN3KytOTQOMfT7S8bA==
X-Received: by 2002:a05:6830:25c4:b0:637:2a66:1dfd with SMTP id d4-20020a05683025c400b006372a661dfdmr2368113otu.383.1661566594237;
        Fri, 26 Aug 2022 19:16:34 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id q4-20020a9d7c84000000b0061cd208fadesm1925752otn.71.2022.08.26.19.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 19:16:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
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
	philip@pscan.uk,
	mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V10 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Fri, 26 Aug 2022 21:16:20 -0500
Message-Id: <20220827021623.23829-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220827021623.23829-1-macroalpha82@gmail.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_191635_500115_7FDD109D 
X-CRM114-Status: GOOD (  11.98  )
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
 .../bindings/mfd/rockchip,rk817.yaml          | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index bfc1720adc43..5b11184a3936 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -117,6 +117,49 @@ properties:
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
+    additionalProperties: false
+
 allOf:
   - if:
       properties:
@@ -323,6 +366,13 @@ examples:
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
