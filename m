Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 552F3CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2x8U0TE+obnaO3+wLeDdT3hN4A1MCJv6WlXHehcZUE=; b=UWENfACqtrl80z
	g8viOFrJkL0IcV/bsbqcjGOiGkLjosOZ5njiFasttX+cZt5HE/ccdubW6vHn551AOaMEXS7XDaYIB
	fX43pRIR9QvEgPwbVZQEZhc6rwCc4Ld+O7HH3AkCkxNioA0+xE21ZZphEd5F4kaoKFLpHMs7M3fr0
	JBDism8EuHph+vlc39PEwnBGJiAMVSdZasphUDNLybY92PdwdXo6RNOmgajTWRuF4/uwSkf5V2w4F
	1kMx6jvhdddYp1amBnKHwi7xSA4b5oktP21+Z6oU+4TUt5+7J+vCQnu1o3vvrO7IUd2KC9Bxr7Ltf
	hEMGTegenPB+qNxAwQBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPqk-0000000H9J5-4BIk;
	Tue, 03 Sep 2024 09:29:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkL-0000000H7Sn-26Ot
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=tgz7ilhTa52YlPbhL5domH9Vep0WpA8CgXZWy9Ev/Uc=; b=dqO9CkMbHqyAHg7KhVtz/CfSKo
	CpWk/kv7v1oCqcOdonldjIV9OzNLzxEhw9GZFqgT2nefKeLwLV6kTfZ9xy1/7+PHVnyVgcGBygZoH
	Ft67RFOY2m52OS2Rv4kv0TzLlIcuqPCjQjNbgFsMDz15SJ6H8vc8KYxn4hIxdBE8/PfjOSljnokbB
	AUEReKEoQBCZ1kD1doraIMAIr8moN4tdFAGk2YKdfD95pnxk8eozBMjVeP92i8arssVwkJVzbhM8j
	lRzIoZmgFhnp4IbRHpFRSwbb9nfqNIOgh95CsxtkBKH+mLtTAZMQ29WYqxttKWSPiabl7kbp4YFpa
	glaNo16Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkH-0000000CIZf-2d4n
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:22:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPk6-0000Zi-C9
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:30 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPk5-0059Kg-P5
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:29 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 75BE1331063
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:29 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 119FB331022;
	Tue, 03 Sep 2024 09:22:27 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 99ae6b10;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:45 +0200
Subject: [PATCH can-next v4 03/20] arm64: dts: rockchip: mecsbc: add CAN0
 and CAN1 interfaces
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-3-1dc3f3f32856@pengutronix.de>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
In-Reply-To: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
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
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=oqtunIuWGzWiEBXGU/TUMhbQRsGYADhyhnYLszmJqHs=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tU4QQ3KRa6tBKOU5FbpY7Q97Q3ZJZOoktviO
 c7t+cuxdSCJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVOAAKCRAoOKI+ei28
 b1IsB/wOlXp4Wo0bZ0QU8LnpygvNbHgmLYiTihxfhWSufAmaxaZgjCoisZD4Z7L/pTnqgvOGiy4
 ToScSwkVqqhkG7Iecxr/RDqMHxUCqrI+IGv6xWUfTJmVzKZJsZp7ZyhqewRf+flrxI5EU4kD4Nj
 lxoN0kxO8LJROJ/LZhDrPjl5sksAc/OCtRho8c/uCntT5+tYTPh+ahIBfp61UB+tSTvv7Ke5rih
 DYgqlPbH5AilbBUyDQUgnn4vagk2+Gx/gCy55L6UfVWKitUuyLmeQhCX6VmtViihuZS1g6mxJXF
 AzHei5f0uzHGBl9LHVsfXU9Ou1cGzJFMeq5hUBLY9lTsH0qU
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102242_036110_817438AB 
X-CRM114-Status: GOOD (  12.53  )
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
Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index c2dfffc638d1..052ef03694cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -117,6 +117,20 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&can0 {
+	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0m0_pins>;
+	status = "okay";
+};
+
+&can1 {
+	compatible = "rockchip,rk3568v3-canfd", "rockchip,rk3568v2-canfd";
+	pinctrl-names = "default";
+	pinctrl-0 = <&can1m1_pins>;
+	status = "okay";
+};
+
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
