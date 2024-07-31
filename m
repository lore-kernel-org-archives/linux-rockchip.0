Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A6B3C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiO1+aETLwn7SAbPVhQhe5LejXBsjAejema+3ttL/MQ=; b=hdaKn4H2T89NEU
	HFgb3lbiDV0WInT4Zobw7KeGbnFw8KSa/MLgAK5umYNGwUvcOg5yhcGFqNhua/qdcFpLlc+AbWJa2
	dgLWnDybidEf8iX8oJ1/NsM9aWUkW+YHQdVMjNYZ1TZXeO23vJxTAC/RaJbY1znKXKz0HB7QgGkTt
	CNw78TUIZRHj1NQBPqbMYLBhLE+eonz2aiqiWTiyyvvPO/ZIEK1e8q88hZeRQCGua/f3RITqTCErn
	mBS37CaE2KbMw74Q3jrRFLuOfQK1yN3Nw6ufJtNpSZBiN2+iOJ1qpvkkW86ndWuu3SzDqbDnrzw8p
	STGzYd96m1a0u1kTR4rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5ng-00000000Xk9-3RxO;
	Wed, 31 Jul 2024 09:39:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mL-00000000XCb-3FAQ
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:37:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mK-0005TR-Dv
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:52 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mJ-003UgP-N7
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:51 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 5E9EC31280F
	for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 09:37:51 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id C5E553127CC;
	Wed, 31 Jul 2024 09:37:47 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 8ecea590;
	Wed, 31 Jul 2024 09:37:42 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 31 Jul 2024 11:37:05 +0200
Subject: [PATCH can-next v2 03/20] arm64: dts: rockchip: mecsbc: add CAN0
 and CAN1 interfaces
MIME-Version: 1.0
Message-Id: <20240731-rockchip-canfd-v2-3-d9604c5b4be8@pengutronix.de>
References: <20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de>
In-Reply-To: <20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=6EUgL/CjJOuGqTkyqYsLA1JOqEcpFRFT9gT8iw/L1o8=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmqgXJF9Cc1ixDSiNozEP7QCK1pHk3So0zPpD6D
 NhOv4wrXB2JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqoFyQAKCRAoOKI+ei28
 bw1zB/9hrWYjRkzwD1EDCLKZXQjjP+t+suvBrweT7nPRgYi41/VDhvNDmesEdTJ5FZ6hd4I8tKx
 KYGBTS3/xTI63WvNqRLG3Dio0B2YA/1bipQ01ioRYuZHP5x/wu0MB4p4rK/c1XzYh9bqPebKjZk
 ZUDHrG9bqBWPJQ6ue5QVfsMkJJEbRnINtWuS4/H9J420XenuSyi2IeH1oM0N8azibdNR+WReHnA
 1aVUUydAeqQF8PC2XU0F7n/OmHE9ROcKhM3fvdNa0L+u46vSGMdf9oDt5HQqW+YRVRR72OsZU+4
 IfD4/W2rQCzIoJ/k5xwcoKRHcN0NYJJX/yNakuWhPrXs9xQm
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_023753_910711_4C675CB2 
X-CRM114-Status: GOOD (  11.76  )
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

From: David Jander <david@protonic.nl>

This patch adds support for the CAN0 and CAN1 interfaces to the board.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index c2dfffc638d1..b518f430da84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -117,6 +117,20 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&can0 {
+	status = "okay";
+	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568-canfd";
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0m0_pins>;
+};
+
+&can1 {
+	status = "okay";
+	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568-canfd";
+	pinctrl-names = "default";
+	pinctrl-0 = <&can1m1_pins>;
+};
+
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
