Return-Path: <SRS0=uf4h=KK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 085F4C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 754A761177
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 754A761177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q/K80f1K2OckJxJ2JT/R8LslTukZ381KD4HY+ee57VA=; b=p3LvgqFtmCQM9rds2jqXCWONK
	YXQy0bR8FwLPgJh4oC0WhgFCN7w3XTavx5GQQO37GnlkYTdqvDbe0S6pbjLuJfFvLlaOS/dKPEPBo
	Z4Odm9HTbdnUU7O+KUnohbjJNSWt5mYc9+BJFe/hdK9ZigOrpcMNjJzPO+7GL5JYJgY4+jdRxwuPp
	6WYDCRyzTD1gEbBdZZwWbfb9Z3CGsikOtUq3CJVzuvHTL/h7Vo/2mnGP3FIjriUm33fXRbAJCyk7N
	DHOcmqmDsUNyy8Hg5HdWIN5ig+7O9Huf2n8pWF2IWc5wdgGEfJlXmZVyNdhlRdCvB7YKNb6YrlYgx
	R2TZSVSKw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhkVQ-009Yar-6H; Sat, 15 May 2021 02:58:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkVB-009YYA-I9
 for linux-rockchip@desiato.infradead.org; Sat, 15 May 2021 02:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Yqt4yCh2ShdBcdEUFnNuVNABUv+IdcBwA08UozGxIjc=; b=ZePchafv8OdmdVqPdBwkSUREte
 noD6Ejz60STtGxLjTa3YAl+jJkImj0tmHlJOntC5E58GUuuIB4ugsn0hAEgU8wplpZueu12EKMx+o
 nCkbR2BbVaQUJ2lchwKz6wdgfNiapqufkHDF6mcDHugjTmn9Fy10iLW0XSxyeV0oYzg/CjadzyT4J
 JgQvVCO9OfNkWvRtWZ92x0UrdSPh1MX0hXE1Xj3mntdZKhL+NK2OJONmKbplWDD+42DW0gQ/U79XR
 1GI0S3OKdKmmTwtzHC1wcJoEtskh5Qj98Bc3T0Wk/wO7uYw628czXedkc8Gx/GDMd6h7d0361NHv/
 NfKw+G9g==;
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkV8-00CMN6-Gr
 for linux-rockchip@lists.infradead.org; Sat, 15 May 2021 02:58:04 +0000
Received: by mail-oi1-x236.google.com with SMTP id f184so1334580oig.3
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 19:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yqt4yCh2ShdBcdEUFnNuVNABUv+IdcBwA08UozGxIjc=;
 b=YW1qEhPrjrI55J8mZlLLhA30LTHWiOuu/3ZE2m+09cQKKD33myLeMnf4gtpli70YbR
 /sj+SR/bC29XqQXGKkSJl93HCRTeiNAYmBMuDuikJbg7m2oGW1m16Ng8AsH2ztkAfihJ
 GNENZKCxQ3UlwC3cxpwJRWDjZw+bjoFuFqe/Vh3TIT/rfAIQMiHsg3vy8m139OYPZVJL
 RkuJ8I1m7K5ctliFOtrdN1nWQwbtmXguVLHmkiBx5YPJ7VQlBtB32MbmnIbImb8kzC2U
 R8ip7FugTdaIC4r0Ca8ih3o7J+MaZC0QxoaZ3x46nnMhh5ECXrRr9x3SHn83nKIyWWfR
 SF3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yqt4yCh2ShdBcdEUFnNuVNABUv+IdcBwA08UozGxIjc=;
 b=ThMigjiOPl7ABEbLy2FTItFbEtKqDdMhSzZWhcDgEJBtswriE5ksTgDua9kiVLuCj6
 YXtOaCjZ/VNtf2LLhBKbFTQJx7ZgRsan8ZY0k0ij0IznpPmFedMJmHR+fEstojmEYCZT
 IbMmMmnzAwEg1M1S1DukTJCMh2y4DXpwo0gldfRbrgqEQ+rArEOZ5GjzuWpbtnA3I7bH
 Mjwgb1n2CdQxDf+EEXXKm8btXDqghmyPPOJJUhnkgWeB5mOBihn2bp9lpFMO/JL0aCXS
 GFFFq2kZa20Isq2VOyncbEFNxxNZyMI6jD+7x/ywwD7s8hoIqlKJTWifNddivir4JeJD
 6QUg==
X-Gm-Message-State: AOAM5320ld9ILzvOaVdhmQecS7Gs3jWHINKo441EMik6CqGT5zhKVFdd
 KVoKaqVq0QfKNbh8tRsfcYjw6H2hx3I=
X-Google-Smtp-Source: ABdhPJy2Na3LUM/NeDI19Md5AsfG6+ZZqHJ5VEuwEyEGwRlN1kMPCP+css5EUfyDs3Fm+F5hQVkqdg==
X-Received: by 2002:a05:6808:83:: with SMTP id
 s3mr33843759oic.104.1621047480745; 
 Fri, 14 May 2021 19:58:00 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id j16sm1689444otn.55.2021.05.14.19.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 19:58:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v11 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Date: Fri, 14 May 2021 21:57:48 -0500
Message-Id: <20210515025749.11291-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210515025749.11291-1-macroalpha82@gmail.com>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_195802_586124_06C488AE 
X-CRM114-Status: GOOD (  10.67  )
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

Create dt-binding documentation to document rk817 codec.
New property name of rockchip,mic-in-differential added to control if
the microphone is in differential mode or not.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++++++++++++++
 1 file changed, 188 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 04df07f6f793..23a17a6663ec 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -23,6 +23,7 @@ Optional properties:
   default output clock name
 - rockchip,system-power-controller: Telling whether or not this pmic is controlling
   the system power.
+- wakeup-source: Device can be used as a wakeup source.
 
 Optional RK805 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -63,8 +64,18 @@ Optional RK809 properties:
 - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
 
 Optional RK817 properties:
+- clocks:	The input clock for the audio codec
+- clock-names:	The clock name for the codec clock. Should be "mclk".
+- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
+
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+- codec:	The child node for the codec to hold additional properties.
+		If no additional properties are required for the codec, this
+		node can be omitted.
+
+- rockchip,mic-in-differential: Telling if the microphone uses differential
+				mode. Should be under the codec child node.
 
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -275,3 +286,180 @@ Example:
 			};
 		};
 	};
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
+		wakeup-source;
+		#clock-cells = <1>;
+		#sound-dai-cells = <0>;
+
+		vcc1-supply = <&vccsys>;
+		vcc2-supply = <&vccsys>;
+		vcc3-supply = <&vccsys>;
+		vcc4-supply = <&vccsys>;
+		vcc5-supply = <&vccsys>;
+		vcc6-supply = <&vccsys>;
+		vcc7-supply = <&vccsys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-name = "vcc_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG4 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_bl: LDO_REG7 {
+				regulator-name = "vcc_bl";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_lcd: LDO_REG8 {
+				regulator-name = "vcc_lcd";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc_cam: LDO_REG9 {
+				regulator-name = "vcc_cam";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
+	};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
