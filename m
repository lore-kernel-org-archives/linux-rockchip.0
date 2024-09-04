Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EF4ACD37B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 14:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRVWudONXGs+GEyJYgvVxbbyhrvU6r8Se3qTNemd2Z4=; b=NleAnQ3aKIW9qV
	b4Z134xnWA8Ai9vVVBFlajG4ZHY1RiQhsN8/QfY0AL/Pr1ldjlrN4Z1DbfqnrfQ4424dmp4frv7i4
	rJR3VlV94+PtT4BF0yU+90tuF4LunMKFZeKXl8jb23ClQ7UHc6DZCWv/520/VrTVKUUSBYtAnHUD1
	8Nj8gn2fhb8TELQqkZu9l9YwHNJwPdk3Uy05VNfwV7TRH4b/EUHmlMtvRpHEZvcPQ5kiR6KujBbpe
	O5pOr8tIXS8Mzbtnm+I9bvHOCcypl1uc1ZEOaINkJdwg+oigbvBSpVPBWzfTMHRGehVS06TBwuohD
	CM/93t9ZlE6X+oUsj78w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqhB-00000004hic-2e3t;
	Wed, 04 Sep 2024 14:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqgA-00000004hRs-1She
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 14:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slqg8-00037Q-UZ
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 16:08:12 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slqg8-005TRK-H1
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 16:08:12 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 2E11033296F
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2024 14:08:12 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id A7EA933295D;
	Wed, 04 Sep 2024 14:08:10 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 1e6a27be;
	Wed, 4 Sep 2024 14:08:09 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 04 Sep 2024 16:07:57 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: mecsbc: add CAN0 and CAN1
 interfaces
MIME-Version: 1.0
Message-Id: <20240904-rk3568-canfd-v1-2-73bda5fb4e03@pengutronix.de>
References: <20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutronix.de>
In-Reply-To: <20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de, David Jander <david@protonic.nl>, 
 Alibek Omarov <a1ba.omarov@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1100; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=pMMh1iYT1i7kfPjgyW+cGCg/UsvcCa4MNFYWjKqRFy0=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm2GnIOpnFl/4kfFstVZ3sze7MoUgHwe4CnRxw0
 o8slRuAh9iJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZthpyAAKCRAoOKI+ei28
 b3FyCACT+06yyJN/ZPA+t5k9U1P8uGZO5XH4VYBrwgv0Fc+vzKZxn8dK0J+qVO3HDRGEFMyFv8l
 FQ6YkO/KBmcygFUbnS22rISAzLkpJy3zCWzb6tG+DCuMwlF+Nj5abDxsi0SmaCbpcHWhxWy6Bcd
 2oZi5UZWP+C01cp7Q1VyXFcs8Ps58/FM7+M36UuoqmhJuZp2wrWAV+TyVUwwq/7qGDo0RxMiEVf
 khSmsnQrROqL6WD4O1BbJ6Kwe7G/Y6oUGdo4/PA5fF0O80FeYEC2vaWkwkVfeqOycIQq8aq1T7x
 beu5URWsepa+POeBzu7bt8FszLkGFZDj9EWzIt9jeWrNRKRj
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_070814_466364_4E2A36BB 
X-CRM114-Status: GOOD (  12.06  )
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
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index c2dfffc638d1..c491dc4d4947 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -89,6 +89,20 @@ vdd_npu: regulator-vdd-npu {
 	};
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
 &combphy0 {
 	status = "okay";
 };

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
