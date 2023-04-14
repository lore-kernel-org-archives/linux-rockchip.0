Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C865C77B72
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 12:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PE4ACKoZ/d/09zlF8Shyk5bc6Y92jdtlhVc5+HEYd6Y=; b=VMDt7jV0dUt+3I
	XCTzYx2W5KKGB4QuLCmrdXBChFL6RopsPFGktxaz4UHLOGjWsNwc/bSxta2cxHX2wO9pOPHNKRnnX
	oZiRKm9QsAre9eWetDX7Lz/PlfQbm1xcsusB8kVPIV8LT/lDm8Hn2yV3CgSDWIW0flV/Kblf/IWoX
	gC5QnQOX6o5w5AhBeamt1dA2OfKeptih0PT827KZ+pt23gUE1XU+xSFbCpc6NOb5K1qLbgLdtTcpB
	Jgw0aF4QT+wMGE8XCg3dGN6wViyyknVhXLVpllZYYwuBZ5hwcRdhgdUUl6DkxqXZtUy7wSWrNO9i9
	h1pvT1N7zduvqu9Ww+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwt-009ZbL-0K;
	Fri, 14 Apr 2023 12:54:43 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwl-009ZXz-2R;
	Fri, 14 Apr 2023 12:54:37 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 50C4D6603224;
	Fri, 14 Apr 2023 13:54:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681476873;
	bh=79Xyn3JweqPQZ+zPYKJbf84qXzEBPD+1ifxyVQSTsFA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z7hYJfFwBiXHrm9ACTA0C437cyw527Jbo9CMfe4DcZeZGACYQwQLNLhXvBtN/Dpqv
	 e+Ps9NVa3S0DIdT5ZtXA0FnbvuCRsE/M/MPQIa1ZnM6z++ZeNpamvslVB+hHQvl1hu
	 zU9J2F/FCm9Dju5FYvZw2ZOqxlCETweZg00LpSXxqvGKn0enQ2oJsAVqJ2Yn94M9a4
	 bEdUCXgXhIREYpf2PZb+JSlZipeu7Aw17LhJYrDPQiAUpzggHf4x+gHsG5dsHpgJCZ
	 oITKOIJO9AZMarvxHX0p3rdlns0tcxDxEpebHHbXFF9M+gNRPB0iwFsft0uf+UxQZj
	 Ab0Ofjp8Qrjnw==
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
Subject: [PATCH v2 1/3] arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
Date: Fri, 14 Apr 2023 15:54:23 +0300
Message-Id: <20230414125425.124994-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
References: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_055435_925910_FBD3D679 
X-CRM114-Status: GOOD (  10.70  )
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
