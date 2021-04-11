Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD5C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E91D611AD
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E91D611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6n252r/0Njtu8SFpA6sozc4azz6ilNl/4GEHBcYJVc=; b=a0+cFGcDWCwAScnRTHVr2vvoZ6
	dHmqIzKi7Uw/JwxuxyzfmhrIZxX0glBjeGy8Np7ddj8seGQAZrGjb0U2o+mI+iwOLSAkiYAGyUT3B
	qp8MxoosyXIeLEMBVXCPBtYlv+c7oA+PnBMr/U8Pp+vZqU4CI1TcBFy7O3CbzH8kXdKopF59Shh5X
	mFrl/GPmZ8pLa44mJMlTtWz8oeaiTuAiT7kq+lQ1fK6izdl+lf/zGuednBHmDpqAfPdB4i2veQ9nk
	ShbkK6eF6reIJXIPnqUOrNVkWe01DIPcdEtfLtqeqqBZAh6mAE2yqBVx2jDmgs4KGZ3966YXkt5Ut
	dHvC9cDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZsA-004Ti2-Tu; Sun, 11 Apr 2021 13:11:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr4-004TOV-RM; Sun, 11 Apr 2021 13:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=; b=KER9e2wPCzGmVSCQ5PdUhjKRLS
 1lI8hUHdnetkpsZg4zynZ5SUMOdH/+PJLFf6y7tkWT+8/OyW8BG44XsUGDT3FX7CUeK0wtzDPN/S/
 awP+KrNwIJYGLjBuoAtcMQ4f6EXW7f8KM1RTvHL1TpBtG9y+0k6xaAGQJpROG38JRJHsF7Rh1RB1C
 +ZfYim//NU1CQ9iVhfXalIhogRoV0u8nH2fjxiq+VfnwKGpSVq5IhD8d7r5KjXdVj4kncqMi9quZz
 UtBhhfK5qgLKTWi6eUBGp7UybuzY38DwA5/o0VjuPoHG09at9RgDh1w+goC4Zv22Keny+hdcMBZ4D
 P8GaQJ1g==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr2-005WNG-AR; Sun, 11 Apr 2021 13:10:21 +0000
Received: by mail-ej1-x62b.google.com with SMTP id r12so15817884ejr.5;
 Sun, 11 Apr 2021 06:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=;
 b=Rg+cSuaVmSjmTDibRXA8sdjDBMrmUwzphxaFPKrw1KrQju6roHl6S0t7yrl1ggfoim
 pk9SaOEmOJFDha66VLsFbuSLCehvUNxNnL9K1c5zu58KcNDHwLwpkkm7V2b4MUc0punt
 ME5rm32kVABTRbJ9wP/07zWYQhbe/G/ctzn+E8ZdDJhXnly5j1dvxgY2aVaAP6ZM2yq7
 so/h8ZGUhOEPL5Ov8NznDUVaWa7EV7qeR+wYrVPazpvpEBBWEWoCXaZNK84zoJ6QM3Gs
 GlBwoP5grqECVRTUTygT3Dq3OBIwYBaFDCztrJZocFQNygNDCuQMaRsuDOsZkFA8/zTQ
 +cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=;
 b=odpd+rl0r93GETm7f5MPcg4YnCSryPD9rAppcJLiTLa3dp1Ie55X7W+yx/ar9JLFl5
 0i6PSl6RWg3NJs3rGcMJZxaaPTgfwx4NCwAWXQxeub9bcAvFy0tsyqa35N1mqhLDSPQv
 DaI3rdhX3bnOjxWlrBJb5nuJSWZVnzr/UlI/FvnEglQWe4CiXxT4RHniCwbEwAqDEagZ
 cgR+phk/VtlAxa98HtTD2ww4SLOP45wrxTieeuUajGXnqf+hddpJkqwjsce3SIinvGXl
 U36UNYJbZZS1v/F7RzNn3WBZbTiEgrHyZdX5H7pK3ag/yapCX0SXRgvXJhc1gtBfsoyD
 0SJA==
X-Gm-Message-State: AOAM532+eSNq5TB7LdaM2MkNBQo2kWTJmFxp+nYyItW/bFPq+kHxQgu1
 AC42Y2VUq72r1N2tk5kYA/M=
X-Google-Smtp-Source: ABdhPJzMrep/dqtmFqleBVmWlFLT358vORL48eeH9EjXxNOm5BPPYolk9ikhMRMe573T7MhPljHSFw==
X-Received: by 2002:a17:906:b7ce:: with SMTP id
 fy14mr4002248ejb.261.1618146618908; 
 Sun, 11 Apr 2021 06:10:18 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:18 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] arm64: dts: rockchip: remove clock-names from pwm nodes
Date: Sun, 11 Apr 2021 15:10:07 +0200
Message-Id: <20210411131007.21757-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
References: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061020_378375_8EAA23C0 
X-CRM114-Status: GOOD (  11.38  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml:
pwm@ff680030: clock-names: ['pwm'] is too short

Devices with only one pwm clock use it to both
to derive the functional clock for the device
and as the bus clock. The driver does not need
"clock-names" to get a handle, so remove them all.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 61b0a2a90..7832e26a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -561,7 +561,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -572,7 +571,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -581,7 +579,6 @@
 		reg = <0x0 0xff680020 0x0 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -592,7 +589,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index e93a5f320..6221b027e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1185,7 +1185,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1196,7 +1195,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1207,7 +1205,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1218,7 +1215,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3a_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
