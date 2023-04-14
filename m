Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253BEC77B6F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 09:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/suFLA1SboSuWy+r7W8g/KKgoUuN9ZRcOqMf0r19H4=; b=ayUZ1ShgH5jenY
	pH5DCVPxIYrSw8Q9EfeEZgTfRKdyveYwH82A67V+jb0DpKLMIFkirvEaG+yAnDVWmCbYVizpVzIh5
	FwlBNya3Dpe9NwvsymmTOJkipXmV6V9enwODyhmA4UdPN4/4jaa1hrhWhqQXzOl+G5Zmj4oNEW1h7
	1sIQIlgpA+gAOKCaRBHsVM5TI0bFdNUCr1rt1tYJAR3O2uTBdZr136wvqy/KQDC/2fSy2S+4RBP5b
	Yua19PEtp5qAHdaEXdQoeQGe3yw2zrmOCsvSx66wgFL8pn3502cEUxz1fHiupX+VXWa390l2s6yOK
	sBdBXwjdUf9R1BxV/kDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFpE-008sgk-0d;
	Fri, 14 Apr 2023 09:34:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFp3-008scK-2t;
	Fri, 14 Apr 2023 09:34:27 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DD467660320A;
	Fri, 14 Apr 2023 10:34:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681464862;
	bh=0pJdxIJkVJSQqKBTxSYqm8uKUIxBe37vCYuK7W6XaLo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UofXJW8dvLsF4YLVoEdLhw33+WIoxvTTiUglwVfH0K9csK9WtuiwKT4OoJixDaX3k
	 hv6YZvrK1Ri0ISZ/jReXdX/pfzK2hPStHZBNeNUchHnCedA+YX/EzVLhUvVqWttyi8
	 tNrvYnIuYETJOQSBhx60/s6+By5xrfjaSnXOa1mT2ul+dPxrCV6S6ksASz2lkIl5xF
	 JNJUAhLpw9/XTYjZjoHFw9jDC9cyoHER+9Mv2qOeoLr+yEqjlpxMoucVbQ+7FWPFoP
	 3Wc5b/5Cnghz46JzcgM23LvTy1YAWJBam8tXlAycLAfHwpEF6a8AF9k2Y4+kwygLgP
	 dU+cr9A/V14mA==
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
Subject: [PATCH 2/3] arm64: dts: rockchip: Use generic name for es8316 on rk3588-rock-5b
Date: Fri, 14 Apr 2023 12:34:10 +0300
Message-Id: <20230414093411.113787-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_023426_061368_FAB4B601 
X-CRM114-Status: GOOD (  11.73  )
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

Use generic 'audio-codec' name for es8316 node on Rock 5B board.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 62750beb12aa..8cc97d146a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -72,7 +72,7 @@ hym8563: rtc@51 {
 &i2c7 {
 	status = "okay";
 
-	es8316: es8316@11 {
+	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
