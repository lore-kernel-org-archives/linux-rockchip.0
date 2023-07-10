Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC95EEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0ksXssBVE/6gXvsqyi2vgwvpDRwe5BCNi+BIMys+8M=; b=BEI6OGPGRKpPqG
	3m0V02yH7JKhWe0PZ4L+1vevzO7v/gjxLtVGEB2r0C73jGRsqOK3kCIZWAXza0VO3e1JmLpcHl8iM
	AgeX3A7Dtdv8sToR6nAGLsZnZ+cg1bul5m+pmhHOdxEWd5mlu7lTtdVKobsgyrjV+/ePcdP605C5m
	q2qDxTchBSZdr9dCHo3C7FR72lHj8tL2c/vaMIBWiIiQtp4MRoawqM8fezSda/Z6Fdp82BkHJdaxX
	+d97mvHsc7c4OZksQnbSbNVZPoLb7d4Sdt7PHwVDCTyuMrI797LC71jz7vasZS75HmNyNrfhNGT/M
	m7Nj47d+pMwqDIWnLn/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8A-00CF6k-0v;
	Mon, 10 Jul 2023 16:52:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7r-00CEp5-0a;
	Mon, 10 Jul 2023 16:52:40 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7C52B660700D;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=3T6R53iEwpPY/kj6xBN/ggft/CaTR55t0Gd3VFcgnDg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GjPae7hvup5PHsZBHp3QERTx6JTI2bZiVgQZD9n+qj9YenY4nQeAdo88dT9vprK7L
	 I8i8IFc1WsKgtrsDsrPLeRFvWcqSAksNI+z2CRzUjPWKIxon3sYk5g1MOVJDGiaCfU
	 uGdehEVobkeI/XZFuAcM4bJE8Yrn9gVJVQr1j1QJI28Yd8SuAyGuPR9XttWN3seY7n
	 I7VInvfCVtENDxFBmspF+P+K70X9WPt9n8A7MpbsZVxhFzBoDZuon10zNTDKIlmnV8
	 kz9roRF3hSvx/7tR+iKGazIftnxsJWYQvTQ3k+5+2lXxpUctSi+j7B5f9xmS4tQP8B
	 plVqMyjMd4Rkg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 225BA4805CC; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v1 06/13] arm64: dts: rockchip: rock-5a: add SD card support
Date: Mon, 10 Jul 2023 18:52:21 +0200
Message-Id: <20230710165228.105983-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095239_366352_C2353B20 
X-CRM114-Status: GOOD (  10.11  )
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

From: Lucas Tanure <lucas.tanure@collabora.com>

Add sdmmc support for Rock Pi 5A board.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 87864a991b50..19e05dba2794 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -188,6 +188,20 @@ &sdhci {
 	status = "okay";
 };
 
+&sdmmc {
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s0>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
