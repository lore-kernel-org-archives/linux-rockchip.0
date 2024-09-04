Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D80D8CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 08:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Dwh9L03rNXxnhozXW0Y7W/SnozNywurm+qzYHAi1bc=; b=FLZ4/Eqv5PxDfD
	ZzkzCzb6nFQVGO3CXRFLwoH8kVLyh7GcyngHaeij+k6Jw63fRhDM9ApzLKgm6d4qUZTbBQbx3hnfY
	WWny82W8GiiT0NMzT0WRdsH62FmXzU0j9Qrw9ayhT36VC10rKz653rPSeKd6Nh1cPEV/h22pubUHf
	muR01re14+bWe2Dsiujg1x8PEgv8+6wvz7I259JmpiFdj2S7ltHDJ5lzKP0D+aoPBDfJGTzwR8sZ1
	XwdPdVWKlJYtpeyPCwqFEgdKC9sFufDajfPwk5q8/8m3PwvuFHbqNeHfRxLZYANFGDINmL/9GR2qB
	ho9oJhgfjnkcxLxkatzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllJD-00000003OCL-3YsA;
	Wed, 04 Sep 2024 08:24:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sll92-00000003KhR-3m3B
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 08:13:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8y-0007dO-92
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:36 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sll8s-005Os8-HP
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 10:13:30 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id E7E8A332029
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2024 08:13:29 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 3CC0E331F57;
	Wed, 04 Sep 2024 08:13:22 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 9f610238;
	Wed, 4 Sep 2024 08:13:20 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 04 Sep 2024 10:12:50 +0200
Subject: [PATCH can-next v5 06/20] can: rockchip_canfd: add quirk for
 broken CAN-FD support
MIME-Version: 1.0
Message-Id: <20240904-rockchip-canfd-v5-6-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
In-Reply-To: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=2890; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=VsrOVKC9K+LaQQiIiOXdBosBiVeGWiTlyRm7fr3N7vw=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm2BaK2XW6FiClAItEB9bj1QgeFuzLjpuf+1dss
 sdnPV66AnmJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtgWigAKCRAoOKI+ei28
 b8u4CACYfiZBxZZCJylLKgqkSjipo+sjWKZ495MaqNcy5f9EzUIaOCBBhhehw8pcIvnFkQAH4i/
 HRpEZ4Cz+YdAd53t2qk8wT4vFecfEzulsLqpgdu8YvxK94toRN2XUFflPysmE2j9w7jXVALc6vw
 MF+0M/xJOV6jGhB/yVej40P9dfuIa8J0HXnAP3DEERDtRRt8+R9eUn1ckcE6GJ/7+qG8YpPULEq
 tGq8xrRfiiRD4w+aIa7MBA3QthmDpYlwKOPdqA40E4njx9EEbUx2gXHMxljX+Fcu40DW6YnvFnD
 c6kgOVsp/Cmrk92CHdFXU2bKuAKpkxpbIZPqGZPUl8x+fh4U
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_011341_016331_1C18E807 
X-CRM114-Status: GOOD (  16.37  )
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

The errata sheets doesn't say anything about CAN-FD, but tests on the
rk3568v2 and rk3568v3 show that receiving certain CAN-FD frames
triggers an Error Interrupt.

Mark the CAN-FD support as broken.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c |  5 ++++-
 drivers/net/can/rockchip/rockchip_canfd.h      | 21 +++++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 18957769b3d3..61de6f89cf16 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -31,7 +31,8 @@ static const struct rkcanfd_devtype_data rkcanfd_devtype_data_rk3568v2 = {
 		RKCANFD_QUIRK_RK3568_ERRATUM_5 | RKCANFD_QUIRK_RK3568_ERRATUM_6 |
 		RKCANFD_QUIRK_RK3568_ERRATUM_7 | RKCANFD_QUIRK_RK3568_ERRATUM_8 |
 		RKCANFD_QUIRK_RK3568_ERRATUM_9 | RKCANFD_QUIRK_RK3568_ERRATUM_10 |
-		RKCANFD_QUIRK_RK3568_ERRATUM_11 | RKCANFD_QUIRK_RK3568_ERRATUM_12,
+		RKCANFD_QUIRK_RK3568_ERRATUM_11 | RKCANFD_QUIRK_RK3568_ERRATUM_12 |
+		RKCANFD_QUIRK_CANFD_BROKEN,
 };
 
 static const char *__rkcanfd_get_model_str(enum rkcanfd_model model)
@@ -817,6 +818,8 @@ static int rkcanfd_probe(struct platform_device *pdev)
 	priv->can.bittiming_const = &rkcanfd_bittiming_const;
 	priv->can.data_bittiming_const = &rkcanfd_data_bittiming_const;
 	priv->can.ctrlmode_supported = 0;
+	if (!(priv->devtype_data.quirks & RKCANFD_QUIRK_CANFD_BROKEN))
+		priv->can.ctrlmode_supported |= CAN_CTRLMODE_FD;
 	priv->can.do_set_mode = rkcanfd_set_mode;
 	priv->can.do_get_berr_counter = rkcanfd_get_berr_counter;
 	priv->ndev = ndev;
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 09626ca174a8..7321027534fb 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -349,6 +349,27 @@
  */
 #define RKCANFD_QUIRK_RK3568_ERRATUM_12 BIT(11)
 
+/* Tests on the rk3568v2 and rk3568v3 show that receiving certain
+ * CAN-FD frames trigger an Error Interrupt.
+ *
+ * - Form Error in RX Arbitration Phase: TX_IDLE RX_STUFF_COUNT (0x0a010100) CMD=0 RX=0 TX=0
+ *   Error-Warning=1 Bus-Off=0
+ *   To reproduce:
+ *   host:
+ *     cansend can0 002##01f
+ *   DUT:
+ *     candump any,0:0,#FFFFFFFF -cexdHtA
+ *
+ * - Form Error in RX Arbitration Phase: TX_IDLE RX_CRC (0x0a010200) CMD=0 RX=0 TX=0
+ *   Error-Warning=1 Bus-Off=0
+ *   To reproduce:
+ *   host:
+ *     cansend can0 002##07217010000000000
+ *   DUT:
+ *     candump any,0:0,#FFFFFFFF -cexdHtA
+ */
+#define RKCANFD_QUIRK_CANFD_BROKEN BIT(12)
+
 enum rkcanfd_model {
 	RKCANFD_MODEL_RK3568V2 = 0x35682,
 };

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
