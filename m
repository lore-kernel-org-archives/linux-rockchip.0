Return-Path: <SRS0=D5mo=PM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDB6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:44:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A990260F45
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:44:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A990260F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqPLzELFItlrf20vZtap6gtv5lV8Bv/fMkrgiQCi4ko=; b=1T77wIu7CQPe6y
	RQHYXMZXlZyi1rxYhWRvpOezglyQyRAH2JcilJyZmGgE+9Excx9W1zeC4CeBRjac7nMlUHlSq7W1K
	msqDtqy1yDPw3+hskl4M5Zdt8I4Nh+mZRq/tATGoDyLIm92tkNrX3EYFDyO811ZR8IExUZ+Dzo4eX
	W39Qm9psu06ITEqE0FVcRG4hDOPguL60uaLnuw/hSNNys5rsjAByclWmVUVTeWx9LCExLmTNNFQ5V
	w/ygd6DaLW0IM2YLBpjImUwXbbfGAuwFkHr9h9ZUoowQO4PfYxQGjF++19aabZEpm1xnM7GolveGP
	Uuj861nxbjkIexWLLSMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mea35-00DrCH-Mv; Sun, 24 Oct 2021 09:44:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mea2k-00Dr2C-Lp; Sun, 24 Oct 2021 09:43:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id e10so5849245plh.8;
 Sun, 24 Oct 2021 02:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=koX01uZWlNS6Kdoh31vOXRzgvcfPWXmHOS+HdaxihXo=;
 b=HSwL1A9YGktQJTMqsCMKdB9+CPrT6cUxMYh9g1WXPmwmMiGRXnoYwN24kz94Vnf67s
 4XSfRGhyCX7R0yDuzetkGxleNiqGyUPH+M8qQqZaRlIBAPUcNIJRlydbv39nWbePKa+Y
 0ypGKX1FeKxwoOBBjczq2S7F+PRNQzfgRr9oxTHgxPEXPcLhOOVYYa18CRYpVePm0iiZ
 ocDQv7XnhKeFFWGkPqDnP84sLuhXoIA0XVUbczGs5y9/Cri4iazqUJq5+mGEECx8T2V3
 baUUJy1rcMH7IraHuFbW2RxXExFHdIHafKMmE42mo7e1vhm5cLFlRdk4vpNw7FOm5LyN
 cofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=koX01uZWlNS6Kdoh31vOXRzgvcfPWXmHOS+HdaxihXo=;
 b=3r6pdscl7OHj/0+ZSmQIJ+3OcjZnvVU2Nlyi87ag916HIG2ukL6oCH0FNAft5rfDsk
 Sd8aiJZ9mA/ApFOoqzc62qQolZqXoV60rBObVBwJsd860Y4o4LpZNjjlV/3uFsvvg2SA
 SXUFHfZ7k0E42FqcpRJXdYyqiyivi0yl832i/3QyTIVdo99ATgbKVm+2FIqA+xn9nD8b
 dPA0bfct7je3fZTki9xdqHwHlH8bNRXWRe2fB4gtQtfPKFdi9QabOs8BDc9m0JRm+hrI
 cMGDbWyjpOjxI+XRirQmUu6FFofJnz7q1ic3IKMUPDakNqwEMKjrm8b073PqWJhSgH36
 VAzA==
X-Gm-Message-State: AOAM531Zfq26yYOtFXEX3ZmzG55x9+31aAevIdqvvIOO/979E14CuPJO
 gB8mQ3Vc/lF1EWXmyK7Qbgo=
X-Google-Smtp-Source: ABdhPJzAI733xx8YDzpNfnXppn57xPuG7NBFYIs//bB6I8NYhti9wOBCw/H9HAFq2+ukvRV3+fGunA==
X-Received: by 2002:a17:90a:5642:: with SMTP id
 d2mr27213022pji.200.1635068634203; 
 Sun, 24 Oct 2021 02:43:54 -0700 (PDT)
Received: from lxb-server.lan ([2403:18c0:2:7e::1926:817])
 by smtp.gmail.com with ESMTPSA id p16sm17636619pfh.97.2021.10.24.02.43.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Oct 2021 02:43:53 -0700 (PDT)
From: Yunhao Tian <t123yh.xyz@gmail.com>
X-Google-Original-From: Yunhao Tian <t123yh@outlook.com>
To: Mark Brown <broonie@kernel.org>
Cc: Yunhao Tian <t123yh.xyz@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: add spdifrx support to rk3308.dtsi
Date: Sun, 24 Oct 2021 17:43:17 +0800
Message-Id: <20211024094317.1641949-4-t123yh@outlook.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211024094317.1641949-1-t123yh@outlook.com>
References: <20211024094317.1641949-1-t123yh@outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_024354_737995_7D939019 
X-CRM114-Status: GOOD (  10.06  )
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

From: Yunhao Tian <t123yh.xyz@gmail.com>

The Rockchip RK3308 features an integrated SPDIF receiver.
This patch adds support for it to rk3308.dtsi.

Signed-off-by: Yunhao Tian <t123yh.xyz@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 0034312ef8f4..bbb0d2c74505 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -710,6 +710,22 @@ i2s_8ch_3: i2s@ff330000 {
 		status = "disabled";
 	};
 
+	spdif_rx: spdif-rx@ff3b0000 {
+		#sound-dai-cells = <0>;
+		compatible = "rockchip,rk3308-spdifrx";
+		reg = <0x0 0xff3b0000 0x0 0x1000>;
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SPDIF_RX>, <&cru HCLK_SPDIFRX>;
+		clock-names = "mclk", "hclk";
+		dmas = <&dmac1 14>;
+		dma-names = "rx";
+		resets = <&cru SRST_SPDIFRX_M>;
+		reset-names = "spdifrx-m";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spdif_in>;
+		status = "disabled";
+	};
+
 	spdif_tx: spdif-tx@ff3a0000 {
 		compatible = "rockchip,rk3308-spdif", "rockchip,rk3066-spdif";
 		reg = <0x0 0xff3a0000 0x0 0x1000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
