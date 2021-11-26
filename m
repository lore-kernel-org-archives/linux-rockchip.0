Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC242C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 12:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2gmOSdmC7SyqZKq//ecG1JQZgT4Ijjd5bxym8Iq5V0=; b=3vQpOaqqYD0Q2P
	S8UzUwy4MEYnjaf7PxUy1ndXb6FZE4bfdTX1331DkQqy/PqDgOMENdl27SzpDIkd22JYuprtTtfgb
	LDmP3r9tBYRtD2hF3AwiQrmiGWWWkNehg0uYwPVv9zxKosw7uu0bCciWUF+Oi6SH9nz8FNOov6WvT
	12IuMWMdt1eFBGcZseRqfA3eadDpZsvNQwN8mlo7L92knHGe86ZyV1sUxxWixccRUCUg1GKbLzybq
	dqza2oeMYitdgR7JiRuoh7JrMiCu4R8rxs/e6gl0zcFQAgEdp/oY3Nfy1ds/7FWIEZeqsZTv5PbpX
	H09uWjoGozBkYFr4KEuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqaaO-00AR0g-3K; Fri, 26 Nov 2021 12:44:16 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqaKN-00AMob-DN; Fri, 26 Nov 2021 12:27:44 +0000
Received: by mail-wr1-x436.google.com with SMTP id a18so18294350wrn.6;
 Fri, 26 Nov 2021 04:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qpRX64CMZm7Y2DuIQVIacG4FzI2CVJ1lZz7XcJCtr/M=;
 b=Xe0HTRFAKWYlwKHjVNF6MVgVq6pLaQR69L3+XDI3z+uemkV6pqmuCsvNH6D6kKNcz9
 tLg8dKqw580qpJtTHj7HnkWRsvfJ+1fkL41tAghkH+FcVOBlYli7+z/vaoZGnIy12/jJ
 M9Lh6fxr/mSk4Y4q9uWLZfxp3+fSOvX/+7n0f9T+XRN3PoWNlKLaBn7+R0QeiDw61Hbh
 qJSKNN9QiW+Q0t9fPgx3BJWoKo0nLEtP3NnPp2W5p/YeH0jX9gklOWkfUeVIvnUaYrtA
 geDUwudxhz/vY+VG4gT39hsc68HZz76sQg4haT+5icN3uZPBWakajFSv4MVyE/OsaN4Z
 YwnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qpRX64CMZm7Y2DuIQVIacG4FzI2CVJ1lZz7XcJCtr/M=;
 b=Qbf4X3gK2XTAhWrVnVzCZAN2ExQTHwcE4F0Z1+wsnsQ6mwxNknfDC/Ei5KtpOzYUw1
 vgUA+ug9/sfuq/bCeGqwlQLRRxHtdZILjvyVidk10Ctr6iI6iYvqyZRoa36xUcu9zwTI
 O/Mo7S/6qbN7UZ/9kY0guje4IgcEPnM8F4vZkFa6CW75K02YinxT2tLPonLTrJEir15Q
 7ZEnqfyz05URWCoR0xdsKvCB6qMv5iCqWYfvlZZh2NURQck6eyhQXvJ1u4ndnnC6cOXd
 JJikPi7P07bgONf7hSAeGa2KVjPf4dC7kdIswR0L54YlaRJjcBkhj3CvkGXeOvOojCFi
 1eUw==
X-Gm-Message-State: AOAM532KZvgAGBL1yRpkAvwt78vS2xVrpuEgKsU/8qngOZAWVH+JMutG
 Ojm345kK6euPe1wYYfV8lx9ZlCwa3uM=
X-Google-Smtp-Source: ABdhPJzLW9aNvXs7gU42/3ZNC9XsorhlsdH6U6QbAS3Jp0sD6qxKrzrq/5jk9UIx1Fai2zKDeURPlQ==
X-Received: by 2002:adf:e501:: with SMTP id j1mr13286411wrm.516.1637929662097; 
 Fri, 26 Nov 2021 04:27:42 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm6821130wry.86.2021.11.26.04.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 04:27:41 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: rk356x: Add HDMI audio nodes
Date: Fri, 26 Nov 2021 13:27:17 +0100
Message-Id: <20211126122718.631506-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126122718.631506-1-frattaroli.nicolas@gmail.com>
References: <20211126122718.631506-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_042743_531404_D1C46307 
X-CRM114-Status: GOOD (  12.25  )
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

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---

Changes in v2:
 - reordered nodes to conform
 - reordered properties to conform
 - add Michael Riesch's Tested-by

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 3c09cf6d4c37..aafb622dfa83 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -174,6 +174,22 @@ scmi_clk: protocol@14 {
 		};
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+	};
+
 	pmu {
 		compatible = "arm,cortex-a55-pmu";
 		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>,
@@ -789,6 +805,23 @@ spdif: spdif@fe460000 {
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
