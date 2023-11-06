Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86BACC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Nov 2023 16:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4zz/OY4+i90hAo/fMqnh/HZZiiJoMGoZHMG4u93YQC4=; b=YUe51TveG7eK3D
	6oxo/z5zVZQZ66176sAsHzasDRclx1qtvT4WbKo/ZlPGETTSKpATVuPCs/2NYcOmK/pzqJ+GhjnXh
	EHN/0EKi36iunySGFvBh0R8RfA1lniVyFhsrexofT0bs4IWoQpusxL9wVgQBlGU5U6W6UTW7ZSwnK
	1RFBK62uFk6+ga9tus07lqSzalzwwTPEwfVQAD3zL99x5z7By73q9k5R3Qf8w2UlcDoXcvMxq2gIi
	4UDkNfwrlNSZrSgPDmG+38hyo1yus/fPcyZv2V4N6e0hfrCU7Qz7RuMjUlSWC8p4aMXbBTYQsCGp7
	civiyOxB2FAj4VaYXCpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r020z-00H3FZ-2y;
	Mon, 06 Nov 2023 15:59:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r020t-00H3Cd-2P;
	Mon, 06 Nov 2023 15:59:45 +0000
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A40796607480;
	Mon,  6 Nov 2023 15:59:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699286380;
	bh=gejreQ+R9N2hJNUtlzdmP6zPO2yp/PwNztMCU8VlSv8=;
	h=From:To:Cc:Subject:Date:From;
	b=TQrVvo8FtPx4X+auY9pRUHOY8SmbEDkVy/Hln6yrSqgNGGmLm8PnqlPwC+psKg/83
	 irPrR5WsSe8u7THcvK06CU36U6dGE2IH97ugNTwpdDwckTB1Aqe/WdVVKUrIhMifps
	 t4SwNc7GNURa4sUJ0zdprH6HELb9YUVBNo/SLaACpjQFSTDzC5W2JDRsRtxT+TYKWb
	 KLCOkkjaBDR2V2Jqhihh2uNXZ7TGnY4J9v+WBmy0HLSnQnvnCMhjcUCSmOmZ8uFl1G
	 O5uNMYeh/UuOtNjuJHe1A0+k9MHMNE0GxhkNcIW4PE1gRb3PwYV2KFg2HR6dUVa4fM
	 bauQJxG5wDflA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 96BF348011C; Mon,  6 Nov 2023 16:59:37 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/2] arm64: dts: rockchip: add USB3 host to rock-5b
Date: Mon,  6 Nov 2023 16:54:31 +0100
Message-ID: <20231106155934.80838-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_075943_968202_AE8C7C5A 
X-CRM114-Status: UNSURE (   9.75  )
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

Enable USB3 host controller for the Radxa ROCK 5 Model B. This adds
USB3 for the upper USB3 port (the one further away from the PCB).

The lower USB3 and the USB-C ports use the RK3588 USB TypeC host
controller, which use a different PHY without upstream support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 741f631db345..61b937beca7f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -138,6 +138,10 @@ &combphy1_ps {
 	status = "okay";
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -765,3 +769,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
