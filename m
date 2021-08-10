Return-Path: <SRS0=Jt5i=NB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70870C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C45760F11
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 02:55:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C45760F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hvQJIdXDL63JUMF+XNdmyYSOWuYFLS9REIM+GtgK0o=; b=dLeuqAlb9z+J7/
	mGZVmySss/StEWa0u3reZs4IcoVrfMDHtDFDLEwr4QGjkcrWq5AjSKWFP7HgwCrc4C6URIpfgOPOC
	e8SeDNyfncclid7C6c6kSrDl00QKy/+0rPtm0tPhIZFHcfqaJa59apLeydcoJ4NXOMzSM6LZfV0co
	TvB3rYAgHnIk6Zj6zMop6V9njBgL29aw1f79OLtGHeH/TxL/bQdnX1rUOmgdJt7tNLP7PIe1YGcCL
	ozG9pmBDt//q3DQzpaKPIJeY7eJQu8owIQat2akDqu8blLdkKJzt31JBP7V90tyxuZjLkfEOb8ESu
	yI2ubfxau7ByD68reZmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDHuq-002J0U-Av; Tue, 10 Aug 2021 02:54:56 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDHun-002Iyd-4D
 for linux-rockchip@lists.infradead.org; Tue, 10 Aug 2021 02:54:54 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 r19-20020a0568301353b029050aa53c3801so3467095otq.2
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Aug 2021 19:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AXpc99n4MUgAooECetaziYMLNx4QWnC4XCxkO2+s1cU=;
 b=JE+3dodsleEaqADGGlbjnZthv7gZfg+EBun52/Qc1VojEGuv0XrF0qqNTJCSlg6oV9
 uxZA/YJPO+XBxymoZLVltefPd99EQfDV+XZAAxYh8tqd7yXt00nV5CwP1eTWmXGHBoxf
 KDyJAFGG5hk5/y+CGC2eIp2VEt1E9NO6gSxI+cODaWusb0gD9KYj5o4mDvtlHI04WoSd
 1KlfyBEvb/Cvke+gX1aIIsn8BAzdQZHhyk8guIbjdIfKk33JD5OywmPA2OyQCrsIo5qN
 Pps4IKzO56bK8YuIMOWNXtrvS7TutnhOhnTOb5xIO9DRDcFvLj7UYqgYIcJ+gfM6jqkq
 9YyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AXpc99n4MUgAooECetaziYMLNx4QWnC4XCxkO2+s1cU=;
 b=XVe098b28RJTfAWzodNLGr5dCZb95CdRfCbUofepw6QgqRwbRU8iHMywqwH5vVKe4C
 oc3Vonis58KDSuJileV/aDFW+hQcQICd6v+ZQxA2Hk4psDls6erv5a9iTijRTrYQSIo5
 i32xcfXyP2nFJ3fb5tO4YpcZOTQqEg2FC7FDx/BKKvDT/EpWtD/byTRJxQ0OXXjfk+zU
 zmhvhQsgvXj3SOC2Bj4X9a2ZP29jzQ/VzkaOX7849AqHk8Tkyd0SJafIx6MzXm1cPD97
 C06sg3sOuiOkQB5t+ERh3wGbvl4KGw3tuT4kO1R6YdFs5U5/M0mOvKP0dcDcwRD2mm5I
 tnIQ==
X-Gm-Message-State: AOAM531SpS6EeYUHmdeGPPD6w16wBULqEQYI5PbyQvCbJYh+BOb7Np4C
 FGKIAT7t1dWdss3AJkwQC6Y=
X-Google-Smtp-Source: ABdhPJw8yhd/QMz8mC1JOUkbfGSmv8jJhlEP0HqaeySBW/7k27lvYpjSdJzO9dRbcxg8tNgoVTkhLw==
X-Received: by 2002:a05:6830:43ac:: with SMTP id
 s44mr19084601otv.74.1628564091566; 
 Mon, 09 Aug 2021 19:54:51 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id h187sm3654898oif.48.2021.08.09.19.54.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 19:54:51 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Mon,  9 Aug 2021 21:54:33 -0500
Message-Id: <20210810025436.23367-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210810025436.23367-1-macroalpha82@gmail.com>
References: <20210810025436.23367-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_195453_214189_78613167 
X-CRM114-Status: GOOD (  16.47  )
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
 .../devicetree/bindings/mfd/rk808.txt         | 36 ++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 23a17a6663ec..89b9fa7e10b5 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -70,13 +70,40 @@ Optional RK817 properties:
 
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+
 - codec:	The child node for the codec to hold additional properties.
 		If no additional properties are required for the codec, this
 		node can be omitted.
-
 - rockchip,mic-in-differential: Telling if the microphone uses differential
 				mode. Should be under the codec child node.
 
+- battery:	The child node for the charger to hold additional properties.
+		If a battery is not in use, this node can be omitted. If a
+		battery node is used, the following values are required:
+		rockchip,resistor-sense, rockchip,sleep-enter-current,
+		rockchip,sleep-filter-current, and a phandle to a
+		monitored-battery node that contains a valid value for
+		charge-full-design-microamp-hours,
+		charge-term-current-microamp,
+		constant-charge-current-max-microamp,
+		constant-charge-voltage-max-microvolt,
+		voltage-max-design-microvolt, voltage-min-design-microvolt,
+		and a valid ocv-capacity table.
+- rockchip,resistor-sense-micro-ohms: Value in microohms of the battery sense
+				      resistor. The PMIC only supports values
+				      of either 10000 or 20000. This value is
+				      used by the driver to set the correct
+				      divisor value to translate ADC readings
+				      into the proper units of measure.
+- rockchip,sleep-enter-current-microamp: Value in microamps of the sleep enter
+					 current for the charger. Value is used
+					 by the driver to calibrate the relax
+					 threshold.
+- rockchip,sleep-filter-current-microamp: Value in microamps of the sleep
+					  filter current for the charger.
+					  Value is used by the driver to derive
+					  the sleep sample current.
+
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
 - vcc2-supply:  The input supply for DCDC_REG2
@@ -459,6 +486,13 @@ Example:
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
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
