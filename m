Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596B8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 01:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TqA2aSpgMjj0i13+ak71u8ri49gRJCIlM+S6t5pLko=; b=2ZL06wwsRHncQU
	wmO3LeTWQAi0PeqKS0Af8AWL/HzOZ9Bcog+3I+Yg7IPRZ9iQE3bXf/ba2JueNGx1ngTmNIYasjFEe
	fovyRC/L1FJcwr2wwSYwjWFQ1xOCgHYCVxY0T6wM2UvHltAtmCzp7b8K/03dxlRdtSqoCgJLEn2Aq
	thXZn+GDhenRvT2QJSCoWW/8bA/XjJ3wS1nsabClN+niof5YmtwtFlNT3ZsJUlXqYvNhmfMtXUC9/
	2qI4ByD4OxLR5ve9ByKy0wIt5o06Vnbflf6rDzNXDfEYUXy08xGiLZTRR0d7uDVklz/nIwWc4Rhi4
	JSmjExHND8W2O/lk9EAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFfs-00Hagc-8u; Fri, 28 Jan 2022 01:03:36 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFHP-00HVaH-BI; Fri, 28 Jan 2022 00:38:21 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id s6so4383382qvv.11;
 Thu, 27 Jan 2022 16:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j2PLycvcW6dLTZ8kcMY5iFXYAkkFP3UnZiWjf1YUPQ4=;
 b=qei5y1xK5AiiFqzeJefi3veSDhVeTBnZu8kMBlXneKUPa8tac/pYCkuigqyB6dU8po
 jo6xLloKFqPXGZTlJEzi+nNm9P4AFCGOnAKG2pG3GUjrRjJ2J61K4UEiUj4QJz739dZg
 UnpeXicZpoOkOSftq78cDX4rMTR38Tnoog8YEVHVTEhDrdwvPllI8QZM+kKjGt4O4FLO
 tdh9wcNQLAB4Au3XCe3+8ZtLAM0fwd5ibfwz7VGdd1mWF5rMDW8A/c6QJfFue0GcXUs2
 Ji7/dRmJ1PpHOuYqxm/yiEuRA2vB67e8c02i+YQN30MIacjrkFnKjCmFubKYmo+q6ggl
 /YXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j2PLycvcW6dLTZ8kcMY5iFXYAkkFP3UnZiWjf1YUPQ4=;
 b=cw095fpSKZbq249ndWp9yVUfTPYkkd1w0a0066q6DHaZoIKe8KoE+mdb6gbtIG8Bfe
 IfGc5nhhcc9hNWfdOfLbz/PRoainHRr0Ox+jfQGRQF8VjQt7VQjwamsX1F+W+OW97Oqb
 xnnXvSoMZyC0DFvpn1C8b3VKzz8g5I/84Ka6ISXd9mqfWkO9875vppiY5mA/SoVci+qS
 kx3n9v0+v3FCYH9sEnl03/YrsZkjA7j8ezLgAeV2E0B4k/PkiGN7Q89naARy+1cCtA+X
 bIUT2FeHkBKs1QNa0bboeZfXhBuKUsRx5o3ZBPIFmIZh0z8/pdFWbj4xpS3A8XGhPq1z
 dwmQ==
X-Gm-Message-State: AOAM533vIydetGiHBWSWbw79+w3h4wkaV/1/MieZ9C05BgDEOzy8YP85
 4LjO9ThLiDiOF5RNBVgZZ3I=
X-Google-Smtp-Source: ABdhPJyR73xdepexciUgvlSA/jSq2GFvHyyuqvrAYyMxkwDfo1QZ7VBQCxZ2wWUgM/C9GfryivNEPA==
X-Received: by 2002:a05:6214:1d2e:: with SMTP id
 f14mr5730571qvd.2.1643330298334; 
 Thu, 27 Jan 2022 16:38:18 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t1sm2142883qtc.48.2022.01.27.16.38.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 16:38:18 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add Quartz64-A con40 hardware
Date: Thu, 27 Jan 2022 19:38:08 -0500
Message-Id: <20220128003809.3291407-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128003809.3291407-1-pgwipeout@gmail.com>
References: <20220128003809.3291407-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_163819_490550_C2540A3B 
X-CRM114-Status: GOOD (  10.09  )
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

The Quartz64-A has a 40 pin connector that exposes various functions.
Annotate the functions exposed in the device tree.
Enable i2c3, which is pulled up to vcc_3v3 on board.

The following functions are currently exposed:
i2c3
spi1
uart2
uart0
spdif

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index c5a79046a9d0..d3dc60ff60dd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -449,6 +449,14 @@ regulator-state-mem {
 	};
 };
 
+/* i2c3 is exposed on con40
+ * pin 3 - i2c3_sda_m0, pullup to vcc_3v3
+ * pin 5 - i2c3_scl_m0, pullup to vcc_3v3
+ */
+&i2c3 {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx
@@ -559,10 +567,17 @@ &sdmmc1 {
 	status = "okay";
 };
 
+/* spdif is exposed on con40 pin 18 */
 &spdif {
 	status = "okay";
 };
 
+/* spi1 is exposed on con40
+ * pin 11 - spi1_mosi_m1
+ * pin 13 - spi1_miso_m1
+ * pin 15 - spi1_clk_m1
+ * pin 17 - spi1_cs0_m1
+ */
 &spi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
@@ -576,6 +591,10 @@ &tsadc {
 	status = "okay";
 };
 
+/* uart0 is exposed on con40
+ * pin 12 - uart0_tx
+ * pin 14 - uart0_rx
+ */
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer>;
@@ -602,6 +621,10 @@ bluetooth {
 	};
 };
 
+/* uart2 is exposed on con40
+ * pin 8 - uart2_tx_m0_debug
+ * pin 10 - uart2_rx_m0_debug
+ */
 &uart2 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
