Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F114C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:19:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DCBB61390
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:19:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0DCBB61390
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAAFp29eVt9ptEQ3UDXGLknwqP2tTZRoRHOkwRLjhBM=; b=47/SRMLQDE1OZ0
	R3RXypUV+Rte+SbnMqXtKSTf82AxHJP+7i2vV8O+fht//PJ2eQi0QGogHccv9rcXxKn22cJ6DD2DR
	2beDn8jsvkFKFJ6lAAcw5Kn8eX5IsODDixyyQxPwoawNeqdhrf6Rv/pPMte8zOF+UKRQ2MokAjrTY
	5GGCWubVePCYzNaHwp3Ah3jJXp6s2p51t5Xq1QaIK/+E7xYD93Wj95uayecyY49H47Xt5T30vpkwj
	xaJqAy3y+MbJOATqv4coSGx0kS4Vqkn51E9dza6eEaGb8hgD5PQPAWbiwHwn8xfNA1gSXyo1L7IyN
	cUx0tmQagp/i46C17V/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWMBr-000zFs-3k; Fri, 01 Oct 2021 17:19:19 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWM9K-000y0d-H9; Fri, 01 Oct 2021 17:16:43 +0000
Received: by mail-ed1-x530.google.com with SMTP id r18so37169213edv.12;
 Fri, 01 Oct 2021 10:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P8JQmOMEQkuJFUGXTus7HXI4JS/hSQsOjYtjeCOR59I=;
 b=AeIPoGpipBKrV3Os8gXxW3N5pLD0YHZMyUnxmNMMQ/TXc9qh1arbLTGhZvb2ke1xhz
 dLjxXR+HPcf0c4qw4htzsihot1nHsK2ub6OYRudBB06tNgKIj42E/XsnK0TaCLCK2FaU
 cF508NqVQWlFxRhB+OSWCU1Td4r7V3N5sfPFJxU+6NMTJ89p4wNC4ZfEPxkMb3RanA+H
 /cRKXwDsecF1SwLMGDIS7i+iDqIgdThPA1WYCrNjo0nEuOG55zDhtd8WU9cyak7y1Edx
 AKhEgTILgq60NSgG/6vI41zWOfW9ZTBcknigRj89dEwvMUJCRSNe0dl5edOhNH2jYVqU
 8tIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P8JQmOMEQkuJFUGXTus7HXI4JS/hSQsOjYtjeCOR59I=;
 b=P6LfTdiItAlAC/LA8l9JPtrP0k9GGtFB3v1IWl2PtdRWmLPA28HcifAAo5Dp9tkEq+
 /ZNuZspMOMIJW2+8h+9xIMFyFtPPVB2GyuVU0AiUkeeYMKN/1RP9cqlea0cdF+gvNaNu
 O8JzRJF4DWmxRh90TgDuxweGDePObFGWCOUUpz8LTXfKE2uLd+RuHa21/nn8ru03jgEV
 vGZiCD2iju5VFl26YhUQhbGnsj4c2YhUDLnm8iT08ssGLWjLmg+TU3qgcX/ERNeqzWOf
 2P671Ob15lP9cm6VcjiFnWBZBLeRhH4R0yaeLfpQJYp/EWYddaKV+NQ5RnC6xPB9rLvb
 U0Lg==
X-Gm-Message-State: AOAM530tK8hIreqCYtZX3QuUbGREdHqZlhqAHLHTYYFGBqfxV/igQIUG
 FOgzSKA0VASxNZnaavf03AY=
X-Google-Smtp-Source: ABdhPJz8bQw92xN8uAjG9YKIx+zsvFJ7MPKLOLMena/e+MWNKk0dCETamyCu1Vne5gkQFkXdq359ig==
X-Received: by 2002:a17:906:f6cf:: with SMTP id
 jo15mr7666504ejb.244.1633108601301; 
 Fri, 01 Oct 2021 10:16:41 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id h10sm3588130edf.85.2021.10.01.10.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 10:16:41 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Date: Fri,  1 Oct 2021 19:15:31 +0200
Message-Id: <20211001171531.178775-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
References: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_101642_605502_58B4B24F 
X-CRM114-Status: GOOD (  13.66  )
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
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a244f7b87e38..f1261f25cb35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -58,6 +58,20 @@ led-diy {
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
@@ -199,8 +213,13 @@ rk817: pmic@20 {
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
@@ -392,6 +411,16 @@ regulator-state-mem {
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
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
