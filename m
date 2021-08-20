Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666B6C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:31:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FFA46113B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 18:31:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2FFA46113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSp9Vbo96dh7gTQ/yLbbJ2pnNNfU6f+dgT40w5X5HVQ=; b=DZlZ17bWNs9oDo
	sIdK1fetwsRJOwzmd/MkZKSAqBygOxUZCy90YrOhA6IyUbwKh8anP1Gdm+2B1xN7eUICPv/xZ9Ov0
	yEaM2CG2caImNanlKCOZ+jNl7pEPAtsnxjDsEUm9X0mcI4/jPHJU/Hsk7qnET8KLA4dOWgzQbyUeH
	55+uaPWjeSFJ/8CG1wBWIY5By8PkqiBM/TYXWQZsuHzwSQ48pkeggFKGrB5wUlHUGYvdTs+ZRG8Yr
	mNjM5pT2AFVWuFpKRjqKi2xuDO42mEHCXNJn2UJXr+FUIQ4t2qL2oC81kNUOTTfK54O/6qVd2siuh
	vMzrOl1Ajjv3aC1V4e/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9IK-00Brxl-Ll; Fri, 20 Aug 2021 18:31:08 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9GB-00BqsN-ET; Fri, 20 Aug 2021 18:28:56 +0000
Received: by mail-ej1-x642.google.com with SMTP id x11so22078105ejv.0;
 Fri, 20 Aug 2021 11:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y2TFOiJdD6/bVUi+HowGp/lkXbvGkSZjNzeuPAsFmZo=;
 b=Hf88SitH2sHhCyvdUquEOOLpu3bSpXYNlW/Yh2d9WI3ZxRTs9MNQYLvBlecNfNamct
 VXl7SWUq8duQtFMCrLYgcZtvILuUxEe3XOoCWPnnK7EMbVDFslmoSBELjg3ZXo1TFjZ2
 7nrc0CkXZjQ+Mm+aL4wG+7D8NwcIurb+XYJxmCC9Blt9+QEddvtjuyRiEoUV7ygH6vrW
 NkGfKQjJd5MTT6dw60W2+eC5006o/GUpbjMdmrNaGFtXiyczFNBZr2EcCvefKFTfHacH
 tv0QPfiFr0sjh8N5uy1niNdYnyTl0pA6/0diwuHYu5q2oSD/eXegGRq929PfdPrH62Kd
 +CMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y2TFOiJdD6/bVUi+HowGp/lkXbvGkSZjNzeuPAsFmZo=;
 b=udSFIRz5rqRF0qQQrP8RCrg5V9rfcwXuGo16V5rCgXrtFozfNUGD1q0RS5l9s01Y4z
 Pbe3iY6h6HGSzN2+aIXS3x2pl5LPhXUlXOCSx+AgAP/asug5EiCxc9ihuW0P27tNmpvB
 EPvb+9DEqPJOL0qUJStbQymRhw+cJt85NQ8onSf0vm8C8hkwkC5z6GTSmTnLfzzH0JoP
 j/riEw7mbzpP/W7p5W5WVZFbnmZSF77PwXwIfMsK79SXffcQzNiBCNvGWNqXBlievP42
 cQ7X9E+z2c4YLxgCtX6XZl/0+H89qTym1R97g7UgSD20vsvz9yxLuD2EB6qrk6mtepmH
 a2uA==
X-Gm-Message-State: AOAM532QCEx35sXVG7TWMK7sYZm3JPtUJQ7AOXk21LEjqfYsKZblwaPX
 mQHEMdBXwwSyyNDV1EtfmThXBnd/vhJ0PmZM
X-Google-Smtp-Source: ABdhPJydRKKIbGPJcmnQMsf+qQjxZ2VmsIQ8pfrRLYKH5AeNCcUX+Ys0M5X+iVaGiUaGIkjboYXspg==
X-Received: by 2002:a17:906:38ce:: with SMTP id
 r14mr22586377ejd.268.1629484133925; 
 Fri, 20 Aug 2021 11:28:53 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id n10sm3255724ejk.86.2021.08.20.11.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 11:28:53 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Date: Fri, 20 Aug 2021 20:27:31 +0200
Message-Id: <20210820182731.29370-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_112855_536381_026DEC2E 
X-CRM114-Status: GOOD (  13.83  )
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

On the Quartz64 Model A, the I2S1 TDM controller is connected
to the rk817 codec in I2S mode. Enabling it and adding the
necessary simple-sound-card and codec nodes allows for analog
audio output on the PINE64 Quartz64 Model A SBC.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index b239f314b38a..c974b0e22ac0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -50,6 +50,20 @@ led-diy {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK817";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -174,8 +188,13 @@ rk817: pmic@20 {
 		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 
+		#sound-dai-cells = <0>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
 		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
@@ -364,9 +383,23 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+		};
+
 	};
 };
 
+&i2s1_8ch {
+	status = "okay";
+	rockchip,trcm-sync-tx-only;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx
+		     &i2s1m0_lrcktx
+		     &i2s1m0_sdi0
+		     &i2s1m0_sdo0>;
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
