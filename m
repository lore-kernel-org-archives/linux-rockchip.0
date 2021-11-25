Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B21FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 10:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCW9QDmzNSxU3x6DbgdHZvhn6Jm14mMASaTDPo6SHmM=; b=L0QfCXJXRA39QU
	NZJMCjMcdYTV3amxLOTMbNUjE+yhRhteGJk5gEsHlYGuo8V1g7QaZp96ezdng1W9xe1MDT/gFW/Jc
	lIRtNogz0rpq++5vhJ42ONyFx//W9gH9KDYjmkN9ZJWYfow7lli0obsNG93vc+qgvANPJ4oV+w22B
	VrPb4rngJDKwhk89nVmfKjwTSzDZVr3Ppn7uRRf59fzduxRYgE/vpJmDnB3tAQrai6rYvqXH8kP/K
	XXM8I7nJo0iEtJawuXJyoLULtODp6PXCgkE64jo1shGYN2plY6tjNTicTfrZdF8GJ9MxOTM7tiqc1
	fGD49Ypy9Hh5nscCmhKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqBhP-0071jb-OM; Thu, 25 Nov 2021 10:09:51 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqBh3-0071do-4V; Thu, 25 Nov 2021 10:09:30 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so4284505wmc.2; 
 Thu, 25 Nov 2021 02:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JtO60bk1RCy4qMnS1/rQRVPFrbrpTCMvxJUpVoIqlWA=;
 b=ReGBe7+5AvucSDE2RMRe5whSP0SAb8lWJ5R/KQNu4gOzSMIVWWo8n4AEi2CAsOG+9C
 uT5lCxuRrHfNXGsy4hMnBGvq59ZDMERw0+e7nOYaEJERSDd8Kb+Bsia/8lQVEdKt79H+
 +jQChXvEmRcQtGbDpqbJTuQgXAZJYA15oa74+hpAfOxd8vphXFG0U3wr2r5MdvwVsCjw
 hRL9GYS5W8sHfVStw+KXnTNCxcYZUNOAqrluKAKeMhA5rL5Ke8WWEWsOLZGorPt+Y2rn
 zi38of35vQIKl7TCWldclrKRxMjFbXq0F8SQ+VcOCR/+Vzr9jfinZZNXjiYIzm95kuM0
 Zq6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JtO60bk1RCy4qMnS1/rQRVPFrbrpTCMvxJUpVoIqlWA=;
 b=KOeFDfgA5AZ+dvFAIhwvdEwHZ92VniuzfPHYPVbm1CE380FWJ1ddlCOH4S4WExmKwH
 i4GEbYyBXwdUcR4Ato9KNPu4WaPyBR0+juhXeEA8IIFbB2lt78b0/BpfI5JSgNHFwpi2
 24j+6+ptbNQY5RfWGLyFv+n+I+Hi3xfRQ4dN3ZWKZ37uY2kmV7KNaSu9cWJks9NMRH25
 G19cz9hdjEP/uUo8alPgCmGBZbVSSU1NfC2ay6LmSGLt15l54gB1m4GQ3IGyPO7pkb5g
 MkVN72z9IiirQo066ZsGaq8Mv8reYB4emBP040Rlxlrvke59vjtLNYrk20tT7JSg0Uyk
 Q5tw==
X-Gm-Message-State: AOAM530ezA3IWD7kiV8ID6LBu82ed2cVoVD0xnijQTxfdhinlBfyOpLI
 PV2WkkyjG5Zh3ubtBlYg+HY=
X-Google-Smtp-Source: ABdhPJzZLPDc2HewTHumJfbaWU/Daj4OM99frT8vDFf8AI3I960W9RaDktVTqGH9eNyMTYFmOMcx0Q==
X-Received: by 2002:a05:600c:1e1c:: with SMTP id
 ay28mr5726488wmb.131.1637834967755; 
 Thu, 25 Nov 2021 02:09:27 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm2903533wry.86.2021.11.25.02.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Nov 2021 02:09:27 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: rk356x: Add HDMI audio nodes
Date: Thu, 25 Nov 2021 11:08:34 +0100
Message-Id: <20211125100836.423808-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
References: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_020929_211243_6CC726E2 
X-CRM114-Status: GOOD (  12.18  )
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

This adds the i2s0 node and an hdmi-sound sound device to the
rk356x device tree. On the rk356[68], the i2s0 controller is
connected to HDMI audio.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 3c09cf6d4c37..ad4053402eef 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -614,6 +614,21 @@ hdmi_in_vp2: endpoint@2 {
 		};
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "hdmi-sound";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
@@ -789,6 +804,23 @@ spdif: spdif@fe460000 {
 		status = "disabled";
 	};
 
+	i2s0_8ch: i2s@fe400000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe400000 0x0 0x1000>;
+		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S0_8CH_TX_SRC>, <&cru CLK_I2S0_8CH_RX_SRC>;
+		assigned-clock-rates = <1188000000>, <1188000000>;
+		clocks = <&cru MCLK_I2S0_8CH_TX>, <&cru MCLK_I2S0_8CH_RX>, <&cru HCLK_I2S0_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 0>;
+		dma-names = "tx";
+		resets = <&cru SRST_M_I2S0_8CH_TX>, <&cru SRST_M_I2S0_8CH_RX>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s1_8ch: i2s@fe410000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe410000 0x0 0x1000>;
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
