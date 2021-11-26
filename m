Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 748B5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKzFw76Taii7YSRY3fzgv72nHdB+pBm4LFLm5fskRMo=; b=EP/KBMlXxmimbU
	TsWkjfq/J6qXtPyfWsC/tlKuiE9wwwlErVOpjq4jQxieiE7SAIXvfrBxu68d6FneWWIWG3RApRl/m
	6Gd4OhuXLpvN2ZqSleTLQKPYHW7Ol8VDExtvPkuZ5ta855bqt9JOzGxCG3TOVqUB+5ycDjwxEggRF
	408LyA3zgV28Vk2nHUSt52h/h50YfsqOO2UlQCMqrf7mzJsiU+2AyI0sutvH6ASxLVdkRkvCNPB/H
	TF1rYy88W3FfsSK9imYGzku4V6SpzSyM7yhdOC0ye6zI3J+lmiR4gxlSBtRCSbMmQAY/x5r5+M+9A
	is6c4b0pjkxGcB0rWttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqcz5-00Atdc-Nl; Fri, 26 Nov 2021 15:17:55 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcys-00AtZ8-0Z; Fri, 26 Nov 2021 15:17:43 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b12so19378267wrh.4;
 Fri, 26 Nov 2021 07:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7632Wp+Dnl5QiuckVe1VavN+ZTk/pekVUAmEmgU5JLo=;
 b=Bz7mbuRMPID17ZDmYvP0fKpqK4E//J2NOtGDfu3zmArWkioxBedFq9tyeQf7oQt/1L
 9dT1+bf6F99+vrxmbEEnfRtlV8sYHzwNZEbGDl+fsytlM4XmbiW8qX3bhF56h04/H7Ow
 s0rKgYJ+ZbsKZTtpk1geLawQ+rza4ttBfCunJzuvpBBkybBHZOxCjCnBWv6027REcKBL
 flIG77FUl/fyLy6dxA/Yf44nBiGcAFo+nlXBslHdox3dmH5ZsoVJVnWg258ixJXXPIqo
 jg08lMRWGQ1Sg9o4fDjpoqo2UVzNZAA1b4II29xWFbQFcyjwm8073ChwCbxPfMq9bFSG
 OuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7632Wp+Dnl5QiuckVe1VavN+ZTk/pekVUAmEmgU5JLo=;
 b=34A4GKqjwDUnZvYgpat1NyiFGKwnEoMK0XdITvrjCsQA7Rjn444pEyGgoRXs1E5GF8
 M6LSZjE81fmOTvQiOY2GPhK9WTTu89g3+PFk+yHZtc9aoMp4Y76pxwR6ksDKCG8s2pxH
 DhQ+GRqypd36Y7IHKQwIZDSrJPv5E//6IPwoSpLT2jq+2/we7qIViMFtq2ZSH1Y/IrPq
 R4trsTWdpvJNmyctjXv5Y2PJmOAdyxnVxbQmdhPYxDOjoTRjkTg4NbHC77iBiItWthZU
 5RPlSy39MbBNO1pcoom78kv03F6eJIlm34C0bVFVZ+DgrYYhM51Fw7KkqFYWjZOfKBDq
 lv9g==
X-Gm-Message-State: AOAM533neQ9NtMYwhvlhMeBbhZkR71pJV2voJ2nQwzVXlJr8y27i6lrh
 OK4rsj1qHw93Cnl4wr1v2zbguiH7pESu
X-Google-Smtp-Source: ABdhPJyPQuWLOtmO9f5rmyG1TcI0nYS+8H+GshbbqOdr8H3ilv4rcJQTDjiQ243aHwGIHBgR+6ypVw==
X-Received: by 2002:a5d:480c:: with SMTP id l12mr14996630wrq.518.1637939860158; 
 Fri, 26 Nov 2021 07:17:40 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id k187sm12323496wme.0.2021.11.26.07.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:17:39 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Add GPU node for rk3568
Date: Fri, 26 Nov 2021 16:17:27 +0100
Message-Id: <20211126151729.1026566-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071742_081158_CF81196B 
X-CRM114-Status: GOOD (  11.62  )
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

From: Ezequiel Garcia <ezequiel@collabora.com>

Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
which is based on the Bifrost architecture. It has
one shader core and two execution engines.

Quoting the datasheet:

Mali-G52 1-Core-2EE
* Support 1600Mpix/s fill rate when 800MHz clock frequency
* Support 38.4GLOPs when 800MHz clock frequency

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6028..3b314ccd6c94 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -125,6 +125,40 @@ opp-1800000000 {
 		};
 	};
 
+	gpu_opp_table: opp-table-1 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <825000>;
+		};
+
+		opp-700000000 {
+			opp-hz = /bits/ 64 <700000000>;
+			opp-microvolt = <900000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1000000>;
+		};
+	};
+
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
@@ -386,6 +420,22 @@ power-domain@RK3568_PD_RKVENC {
 		};
 	};
 
+	gpu: gpu@fde60000 {
+		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
+		reg = <0x0 0xfde60000 0x0 0x4000>;
+
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "job", "mmu", "gpu";
+		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
+		clock-names = "core", "bus";
+		operating-points-v2 = <&gpu_opp_table>;
+		#cooling-cells = <2>;
+		power-domains = <&power RK3568_PD_GPU>;
+		status = "disabled";
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
