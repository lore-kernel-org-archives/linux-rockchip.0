Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6914C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 13:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiO1+aETLwn7SAbPVhQhe5LejXBsjAejema+3ttL/MQ=; b=CSMvlNpq7mSGxA
	oZMTCrYfNd4EFHlYfJYdoHjw4Cgn492ns58Hasto1hgAC8sPsR+GjZWNI/u9xXJqtSyMHve1oqkSl
	IYyeb0hm2tXa45sV8nz0ccI9lIQxCqXaG0+vwC7F+Y4lCJgKmM0lDVa9XMu51KwyEArswW25AQMj7
	sW7mRng0rdw3aV8TPXZmBpi6kugrTcHk87/SXQDDmG7wc6ifzIKUpRHRzHoXvy/nTo7CDWFQbsgGe
	thXD/Pn9WCXMUvd1UbA564QYfLakT+TVBS6hN00LpVeiIvK8F0VK1baKh3kdLsE4SDJnG0NGdzT7R
	x2P1SvAMt0M+7LVR4bZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ7D-0000000BLxc-4AP4;
	Mon, 29 Jul 2024 13:08:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ5W-0000000BL8f-1dGB
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 13:06:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5V-0008Vq-9X
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:06:53 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5U-0032xN-Rq
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:06:52 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 847B1310DA1
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 13:06:52 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 33B36310D5C;
	Mon, 29 Jul 2024 13:06:43 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 6e971322;
	Mon, 29 Jul 2024 13:06:31 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 29 Jul 2024 15:05:34 +0200
Subject: [PATCH can-next 03/21] arm64: dts: rockchip: mecsbc: add CAN0 and
 CAN1 interfaces
MIME-Version: 1.0
Message-Id: <20240729-rockchip-canfd-v1-3-fa1250fd6be3@pengutronix.de>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
In-Reply-To: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 David Jander <david.jander@protonic.nl>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marc Kleine-Budde <mkl@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=6EUgL/CjJOuGqTkyqYsLA1JOqEcpFRFT9gT8iw/L1o8=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmp5O49OAaTZj8/tfriKSzQd7M3Ozdnqgdzt/0v
 o1qqGIPDruJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqeTuAAKCRAoOKI+ei28
 bxS9CACV5Glrmi7N3+JvWtRUSgDoVv5IkPfmtGo1KhBqsSfbGtmrt/L36x0hNmJ3OMxkPJfm7jm
 yBAX4PPfye3Fvepw9mraHlFQOpVcZ/TBrUJ/8HOQO3N/LGHHx+8L+X3OpFFsspcP4r5lTGO9IdV
 B65pHkTu5alXhrBiZRceSLxjD9jUjgASM/igp11KJmkiTfmeYWb8MHv2Lz+JEZe0tS6crd9w2ZB
 0lBIv7VxPp0th5tFxCPbY2GZxB4Kq8O+vy0H6f5N395D2oPbVjK1lxPHc1BluAKOffKUjjUtPz0
 SNyrF4umkwUsm0jtE76TGKG9sSsOOe/jVXILCaIOUaOPXAIx
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_060654_438924_85B59828 
X-CRM114-Status: GOOD (  11.56  )
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
