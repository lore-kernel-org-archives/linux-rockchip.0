Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD25ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 16:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rgb8Np4WR54phxSQdqHOkKq2EOqakzcr77v2MFuEZ18=; b=fuha/xT0Q4zYMK
	YXePCi88K59eLwoGH94hBTVxhn7LUr0mXev0ZBnXpXqmoaRzERKf5DFVoeE+OM14cqOyuS8+O0QBF
	xjErW7TYEEcRI9t0NAB4rfKVgyw5JPWkpanwAr7mJQPX9f/xGsYziG+YiEzSb+OK7KOB7/L+iVi4N
	xnkzBYbD8mtsIMtNwvFhEKXPJXycd6PsifTQ955QYlVj5VhUPta1hNZLcgMqsirndPcgYxAl8Zl7o
	m5lXzvlhQgXGJx9Todv63ZKVEJSWH4rxN0JucLvSkBpHp1D66dUDDeUuMe3EEMr0iVfsnej3Jzq7F
	+RIY0f5OvgNeRYhmnIFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0kJ-002ON9-EK; Mon, 24 Oct 2022 16:56:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0k6-002O7i-7y; Mon, 24 Oct 2022 16:56:04 +0000
Received: from jupiter.universe (dyndsl-091-096-059-109.ewe-ip-backbone.de [91.96.59.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7C741660283E;
	Mon, 24 Oct 2022 17:55:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666630558;
	bh=chfXMCDPsmDqagwc2SR6hcO4fr/H4GKIvfjgdqIxziY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SsYQPD7SBP6A2Kx+ofThUVlNZV4RDtQtLXAv63n605hpL87pXE0d1S9oxDg5G/S8R
	 SXBp1rkBM2CZs/0lZBSzmrMLXCOjjM+XLqD3wqQy/7uOhUaJwaJsBwJn4EcWvtSdyJ
	 L4oMDBclhrOwc+6xj5c92wMHh9vRRPiAru6F8wdUkgWbv0M2DqOpGYK8M6pPSQ685g
	 MX2Gnn9WFBOQFewWQdieYFc5QgLF4Ht79gxxi7Qkq9NSrDYhzRIvzGAcHFaKdSV1f4
	 9UzJqbrLej7FU+HBEhEKHCPhDuo4v4jJRFmdVS3NeobDXg65UxdPOdhfcQWDBruItP
	 ulwfTNosIOp5A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 07982480AF1; Mon, 24 Oct 2022 18:55:54 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 5/6] arm64: dts: meson: remove clock-frequency from rtc
Date: Mon, 24 Oct 2022 18:55:48 +0200
Message-Id: <20221024165549.74574-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_095602_473432_81C98A76 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

'clock-frequency' is not part of the DT binding and not supported by the
Linux driver.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts    | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 6ab1cc125b96..202deb4e2d63 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -140,7 +140,6 @@ rtc: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "xin32k";
 	};
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index f43c45daf7eb..b21172ece1fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -270,7 +270,6 @@ rtc: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "xin32k";
 	};
 };
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
index b8ef3bd8b840..1703da3235ea 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-minix-neo-u9h.dts
@@ -89,7 +89,6 @@ rtc: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "xin32k";
 		wakeup-source;
 	};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
