Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02715CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 12:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GI+J26cvR+XfoCO8fdv264xwFYqRavgwTAvY7OB1Usw=; b=MFoLSBSZB1ffQh
	rexF0d+lK5ElyQyMnEv5Rjwmn0vP7Qe+csPUAO1W7DDf+zk4PPjAO9JD9lBYN7TYipFuds/Gzkrtj
	GmL8xOe3xrCqWL/mFsQAKhih2vcVDm0W0O5C90s2uvY2ET4Jo2jdfkwbctevszC8Gxdl7UrBZMB5q
	nUlBjOQX/3ckIh4hKiIn56ogLj+M4ZBcoaHP2KFB54Coj2r0ghgV22NyWmpi8oPhNezzfThHD1mpe
	YVAr8A2dUTekid+b9606CVqRYRMFdfIE0jZ0P/cuPsra1euRt1Y2e9kXml8i2YGPkHgpXiCt4NRcZ
	osqDLlORDkI77kggIXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upngV-00000004lr3-3c6h;
	Sat, 23 Aug 2025 12:49:27 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upnbH-00000004l3X-06dr;
	Sat, 23 Aug 2025 12:44:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B02F4A58C61;
	Sat, 23 Aug 2025 12:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4745EC4FDFB;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755953034;
	bh=VQ1GUY2EiTPu4SjJoDzd70Xf1RpVnGqds8+QtYq8Q9Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=p7/iZwHO+4c0Qb0P+5QUQ5TA0wgDTP6G2rce5VQdCw/C9BTLr8MbCQv3VmGD2OT7F
	 eF2WVrgS4taBP2KxAdbbDmHT5APfPx8+llqBe2tsMpld+j/MDpTDNLl2ntMFpHbRuY
	 XbTkIZUpFDFYRxDrT5uVoHkV8qsn8k0dX1nF01g+HqAjHxeNdmd9jQhTDy5bT+GkwW
	 GCLtSyOLSFKjrkeY92RkCrXVofhX+14xoRoru6JKw2CIZpK9GeVrZXQax/z/FXl64S
	 goXmyALOWC87O78hJKMIzwGiTSHZ7aQrmy6Av/DX7TbxWtE+7lD1tSEobVKonOP8oy
	 1axpz28O0lhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FB2ACA0EFA;
	Sat, 23 Aug 2025 12:43:54 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 23 Aug 2025 14:43:51 +0200
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable HDMI receiver on orangepi
 5 plus
MIME-Version: 1.0
Message-Id: <20250823-orangepi5-v1-2-ae77dd0e06d7@hotmail.com>
References: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
In-Reply-To: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755953033; l=1303;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=cqF8f43yoVXcmOBW/qzowTAQoqelusXMIpBTqWyFkKQ=;
 b=e5rk5j157Pc110tlG1qPb/JIPQGiDbO9A+GNioTHi5dwaS+OTK54zQBnVy9QTWCrJJXChDbbE
 zB+wprfpaOrDegEQmj7y2Tx7xMASdUtj1wQKs+BD9xCTVGonas1o07P
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_054403_134026_6863570A 
X-CRM114-Status: UNSURE (   9.72  )
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
Reply-To: maud_spierings@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Maud Spierings <maud_spierings@hotmail.com>

Enable support for the HDMI input port found on the orangepi 5 plus.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 8222f1fae8fadc5cbb4ef16b3db5ed975ed43915..9950d1147e129dc866cfde62ddd636b082ae1926 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -160,6 +160,17 @@ &hdmi1_sound {
 	status = "okay";
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -279,6 +290,12 @@ blue_led_pin: blue-led {
 		};
 	};
 
+	hdmirx {
+		hdmirx_hpd: hdmirx-5v-detection {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	ir-receiver {
 		ir_receiver_pin: ir-receiver-pin {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.50.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
