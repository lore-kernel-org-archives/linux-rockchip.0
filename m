Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523F7C77B6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 09:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PE4ACKoZ/d/09zlF8Shyk5bc6Y92jdtlhVc5+HEYd6Y=; b=06uf3Y9VVKBWZT
	C0mWcnkWkpwitx1yVV7mcJX4dMePGNBTbT+CcgPd/RQWCDJsz5K+jasnm7sBPkeawE3ahw8gTmdGZ
	5oaJzlccZGygQK9U3+sMll/8Yipt5Emgo3Tp0s53wOgbH9W1bI7MtC0gRivbxy06vilJsEnv2RU4l
	47sXcGzaxQaVl48fRmGWKBukq5ginuzyksO3fRLM0hdWLOhzKFGlJM2xIzVlB/7ZhYaq5LSQnqYQK
	NwkkWZRqMgnnmiXqXHHs50QBlHi6HWtklzMbCF4OniY2Yfb6sL9L8DGImGiOlzd41cQpd8m6302u7
	eiJcd7wq70GQwxHnqYOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFp4-008sdQ-1q;
	Fri, 14 Apr 2023 09:34:26 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFoz-008sbn-2Z;
	Fri, 14 Apr 2023 09:34:23 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E3A1A6603208;
	Fri, 14 Apr 2023 10:34:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681464859;
	bh=79Xyn3JweqPQZ+zPYKJbf84qXzEBPD+1ifxyVQSTsFA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bqmko3xwA4v2xultFWwlwnPdQOQMVF/Xb+z/A9DfjU24qRJ+nX4zlAJXdg/kzuo28
	 Ps6VBqu1HlosmJu5ct9VL4AbYVrNmPJjafw0VGCxDnqYY78wsX/UpAhvHscqEJ8keb
	 pATLT5V5XeiYDcHMMNXN6+KwM/M+9G2NvjWn4CJPE1tnBPziDIIKPaGUvUkqbvO3Sz
	 1qpiIkpNiLtP3BVRZPyU+13u+Vk6+7deiml3BEOT5yCycLIIiCPuVyotJRDTdx7zAi
	 G2HIWs4z1LEtRBqqG4Ji96bNst/FH2sw8O5r0RicQfciQIINoRjAN0rLwKFDfjt7dm
	 u8bP9LGtbYzfw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/3] arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
Date: Fri, 14 Apr 2023 12:34:09 +0300
Message-Id: <20230414093411.113787-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_023421_980165_9EC92650 
X-CRM114-Status: GOOD (  10.75  )
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

The hym8563 RTC driver doesn't handle the 'clock-frequency' property,
which is also indicated by the following dtbs_check warning:

  rk3588-rock-5b.dtb: rtc@51: Unevaluated properties are not allowed ('clock-frequency' was unexpected)
  From schema: Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml

Drop the unsupported property.

Fixes: 1e9c2404d887 ("arm64: dts: rockchip: Enable RTC support for Rock 5B")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 88b9f7ddf291..62750beb12aa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -60,7 +60,6 @@ hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "hym8563";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hym8563_int>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
