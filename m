Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2A30EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Eu35oS+o2TE0MPHDbYzkhmZm2pxdDHHwlytTivod6M=; b=bYNlnZKMmjwQNY
	Z+1nMrNp+CBFy4cnD25Ar4um8kMID2dfDdxKpGjBLHLkrOeG0XF7UJ7vmJ28DnZ0G3rFmirGZnwMm
	W2aFRTfd33ahImrzLXCuwy1eaKhun91mTa7Wz8d3jBUqReJfIKCncf0IsxlVbFJhBYACqBI9McDLS
	uO6XFQYYAnTRI8kSaBQu+plYa9P+E/7oRyiOsCknG7JK6VipdV4RMgi/ZeWaX8clf5/5Hl+L6F4WD
	pss7PFZukrcZ/1Tr9ClaG5MCoBarJp87Rk9UIntj+CdNJLwXxGJFQzKZnqwonQhvhUoDWynds49Dl
	ilsmTwtLiMtNp5qqLiqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8e-00CFa7-2g;
	Mon, 10 Jul 2023 16:53:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7s-00CEqt-2L;
	Mon, 10 Jul 2023 16:52:42 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A8CCA6607013;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007953;
	bh=Tt7uUAjNgNzRuuG1D8AKfKaibOhh6srEjpIfBkMqmqY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T2rWDUoRmK60Z8jFi0D5hZ2iF9hLhNMlkn86LM8HLig14/WAMprxcy+jUhJnyJ1/j
	 EvxSq0p659Lj9R8DJsdStkW3HTtnc08VRWbG+MaHJNS/UCUdoojwK4XO+PSxT8DQtd
	 Yxmu9MlhBhV4nzThGuFaqqFMkDA/comV8OVV6p35PFPliUn+RrsIMbaGJg5Fab1Wb9
	 SK0U12SeVbBnOSgKRkCcqkUn6naZmGC13PkFXxWAU9syPLrHaCrP4IivpZABIUnDOL
	 bx8aMkmf77YRXGYFekJzSJwvVzy9BNZ4gCPCiWeU7grQOViZ6UVWd/g5qZXQIWgv58
	 7jwlbaUxK/WEQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 28A114807F0; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 11/13] arm64: dts: rockchip: rock-5a: enable I2C interface from DSI and CSI connectors
Date: Mon, 10 Jul 2023 18:52:26 +0200
Message-Id: <20230710165228.105983-12-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095240_913354_04326C33 
X-CRM114-Status: GOOD (  10.25  )
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

I2C3 is routed to the Camera connector and I2C5 is routed to the LCD
connector. On I2C5 additionally there is an unpopulated footprint for
a HYM8563TS RTC.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c4471dfe574f..01822dda0b2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -190,6 +190,16 @@ eeprom: eeprom@50 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+};
+
+&i2c5 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c5m2_xfer>;
+};
+
 &i2c7 {
 	status = "okay";
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
