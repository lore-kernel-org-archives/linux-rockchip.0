Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF19C0502A
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 12:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=99xoMEeiXIbA3LlBFcEMgHzzBTmchwxZcKzMKUwvqhI=; b=AXWBS0w6lW6eTv
	jjfL/2tCK2j6zR53ltf13gb4Qx4ggmJOE1btWxllMoq6JfpnEOG6Y/jETobn5oCp5esbI7Plo8Aes
	lvZnuNMVRZYwynMC2BoPCk1IQPTzYb420Uz7JLlP/C9fC758ik1er3PMgj/6NhiWADsDiKGSKzBQv
	vGKcQmQU99+sMcu4RNtRL+8LI7FFU6G05ZHEAoltj1WQlRkizJVsR3ennk5E9RZUzcfAkofh0ZVTV
	yX7AQenZ/zxpDztFxATTB96SBKaoAnLapvbTCirxXfbLHCIIbMFmi0O5mA1FEecaRAUOR0iHdQGx/
	YDeTPnVk42qYDlDXRIMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0cR-00GuKJ-AH; Tue, 30 Aug 2022 12:45:27 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0cL-00GuCo-EI
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 12:45:25 +0000
Received: from jupiter.universe (dyndsl-091-096-062-005.ewe-ip-backbone.de [91.96.62.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6C11D6601E7E;
	Tue, 30 Aug 2022 13:45:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661863501;
	bh=2VRCEincVJjT627e3Nw49HHXJWUdruE/J5OpojuwlDg=;
	h=From:To:Cc:Subject:Date:From;
	b=PY8+M/HLYy844jYchmDmj30gZp1VxCjOid7+REt9WtFD9iaX3XtaI2AmqVgbUTwUz
	 pg0BbTXqbw700etFM2n2n+kx8DXfu8UWWoQD3Dgl0avjGm6CI6zHuAEjEXFAGEHnkr
	 D0KvlB+DAgn7BD572H0kxaqN8bGBJvagVNfGvUvU3t2dHtoJ+3qCeG2lcS6nT532GQ
	 1sRCWfUKSn/TTmmkVx7Gkzpar25GMiI9UR7HKPExn0w0lAGF6VTfPfeqxJGofD/Mk8
	 xiNzbs4ZOmAZFJycbu1uvrGg+H3mOqcxtKtqr22jLZjBjswuTfeqjVOkvxHDZlK/DA
	 l9bUI5y7E+o2w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5BD1E48015C; Tue, 30 Aug 2022 14:44:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] spi: spi-rockchip: Add rk3588-spi compatible
Date: Tue, 30 Aug 2022 14:44:52 +0200
Message-Id: <20220830124452.33561-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_054521_928160_20EC3B11 
X-CRM114-Status: UNSURE (   8.64  )
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

This adds a compatible string for the SPI controller found in
the RK3588 and RK3588s SoCs.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
No driver changes are required for rk3588 SPI support.
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 52a78a2e362e..21f2de785102 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -34,6 +34,7 @@ properties:
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
               - rockchip,rk3568-spi
+              - rockchip,rk3588-spi
               - rockchip,rv1126-spi
           - const: rockchip,rk3066-spi
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
