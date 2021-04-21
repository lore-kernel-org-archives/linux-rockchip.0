Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A90AC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E329561427
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E329561427
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxSKz4FJdalK/XIOkNouIVIUaMAvG6i9bFP0puvost0=; b=escLM8zJL0LT63zGsGRCt2DyI
	DDNbGrzxGEIYWLncajQ7j9RkBMS9a5y1tptvDj0HDJIT4h9n7DZF8E3EKxAaMS0Uy0oy1yLpUk5CF
	+GOI3mQhQaCQAd7SRRerOTx3A76S6y7miReVr5+6PKjzVfl7bv+OQ86tyQOrQnH5WE2Qh7UedOK1S
	/qHSc0yxag3Z+1S3yxPlEopr9QEKKQC0n4Z09MJajoac58WEe9eXtFo+p5hoRljUSyN+WM1LFwqlx
	jYRE63iarmW3qitFekSSJ95btbh/fS9UkHuwj4XDPTbKXL9jaxbB1xxAt/+T+hwGzWcJ+bsevFk9p
	AKT6Km+EQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZH8Y-00Evjw-Dh; Wed, 21 Apr 2021 17:59:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8R-00EviD-S3
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 17:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=495ANDExh29fLvAneW8mnxB/22AS/uHqxyX3lcF+iKw=; b=XRphq4W8ilACwlArvz3ZPQmAOG
 AJaIUK7+VJFe68tVXR+jVK6W3bAqOrfg1si/UU7qnFegsafa5u0ZdBDrAi8Tp0FFYbndgIVcfSSCN
 lJBmMLvBSPpMyoeMZdkFCQHYEKIKyXBpgDMUeY6JeVxIq8TOhlr0FFNlBd+RKv1Yb13EDya13qu+g
 zIISfGbUNP1bIFsFigww7K79itrXrS/VU1uWhkpNJI8iFHrUGWspUogfYGm2OqSEJVEKYEtdj1Xnf
 AYtIlL+Fa9L4IBmiFE6Ufek5Q+I+H9ttSZX1j8j3o+7KZBg3YHY9bWNTp6vA+lFvNbKVrOw/eHnL3
 JXFb2efA==;
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8O-00D5Li-Q9
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 17:59:34 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 e89-20020a9d01e20000b0290294134181aeso13913582ote.5
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 10:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=495ANDExh29fLvAneW8mnxB/22AS/uHqxyX3lcF+iKw=;
 b=m0uaX7c5C7xFfPLJeQlbCreXq4RjEk4RPA7FuupddiuDKeYHMp6hHIwryl8CFGvLGN
 srGSykbaxgxOaFH5XeSqxVugwTczK8OeCxWXVrbPm0rTGBVWPyjSBZ4jCrXuuPWAvzzB
 5r+gRTrVTrXkhg522AAMxC8+JdiHFh7ciejr+pWuw9MUv3UuKmtxTzETgmQ//OmJv3Gw
 yduxyuD1s2a3ZJ0e2bvqGOgE8Xmxczml+iZhVk0sjaVarOvzDBNhChOe6By6EpumADma
 JUqCoqFpGMEGInjjMOCNmytkJ1sGP9iXSq1Fv1epOQh52iNAk2GCrLelFRllEbfvul/O
 az5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=495ANDExh29fLvAneW8mnxB/22AS/uHqxyX3lcF+iKw=;
 b=PZFhsnLaQ9ey0formb8xjpDAyK7STy3pXWLHPHaUa0f4UxuYaqA16S9k+yMVeBZSeS
 ChniG2iQK0GgvYa1g4X1b2HNAZRzT3Hai4oRyMas1+CP4poWh/7E7ee/dWVvbxA+g59E
 FNb1L9WHIv3EnpDhyeytwfsg4j+Fs66udAW9q7GQrQpC5ZaqPf82kxBFg1DNhLu1xcNJ
 ZwiDUcHWS+ZJnu9ArhyV0mYYxI0Ha18nTm1O3t9C5tMX+GV2DI4qq2Gdeptj9FffxvmF
 sodnp6ZazX8IhHPmSEpvmDT3MIs16HIuanQf6h5DF/3EMhj499r5YSUkdHkLFCA3TY5z
 J68g==
X-Gm-Message-State: AOAM530Ow5BXeTSK3PkG3Wvp2Imil2C8RM5n9wAtwvLCAYXYNwRL73vk
 LbpGUtASVPxvEgRLwI5WU30=
X-Google-Smtp-Source: ABdhPJw6G7Rd7nNch0aZd5kCNGeV016juKjGBYeRj+nzDc4Ef8YCTheUVlCS2eiYPqVgFo46cfcffA==
X-Received: by 2002:a05:6830:618:: with SMTP id
 w24mr23641127oti.147.1619027966794; 
 Wed, 21 Apr 2021 10:59:26 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id l62sm13662oih.2.2021.04.21.10.59.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Apr 2021 10:59:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [v8 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Date: Wed, 21 Apr 2021 12:59:05 -0500
Message-Id: <20210421175906.31977-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421175906.31977-1-macroalpha82@gmail.com>
References: <20210421175906.31977-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_105932_878026_323EC1B0 
X-CRM114-Status: GOOD (  15.78  )
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
---
Changes in v8:
 - Added additional documentation for missing properties of #sound-dai-cells,
   interrupt-parent, and wakeup-source for mfd documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 .../devicetree/bindings/mfd/rk808.txt         | 188 ++++++++++++++++++
 1 file changed, 188 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 04df07f6f793..e27fb2c1ebe0 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -14,6 +14,8 @@ Required properties:
 - compatible: "rockchip,rk817"
 - compatible: "rockchip,rk818"
 - reg: I2C slave address
+- interrupt-parent: Should contain a phandle to the correct interrupt
+		    controller node.
 - interrupts: the interrupt outputs of the controller.
 - #clock-cells: from common clock binding; shall be set to 1 (multiple clock
   outputs). See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
@@ -23,6 +25,7 @@ Optional properties:
   default output clock name
 - rockchip,system-power-controller: Telling whether or not this pmic is controlling
   the system power.
+- wakeup-source: Device can be used as a wakeup source.
 
 Optional RK805 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -63,8 +66,16 @@ Optional RK809 properties:
 - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
 
 Optional RK817 properties:
+- clocks:	The input clock for the audio codec
+- clock-names:	The clock name for the codec clock. Should be "mclk".
+- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
+
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+- codec:	The child node for the codec to hold additional properties.
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
