Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AECC3DA7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 13:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/DVUk/EaayGvYY7iwd6lUpTrOzG+v7ZhvKUFwhrBS0=; b=egnNgfgHC2IMhQ
	I8MECMupMAPv7zwUn9IE7Vm8iG6oZYxVbeYNmH+IZihfd5wfrgz5hsojFkqMabmlvTknOaVoqyVZN
	ULjTt7gC7N5RyB0MpQtUzJnN73qTwaYi4Mu3EGugEwbL3jC+hwtjjWVJUOP6xtHpFoS3w8GZOkDa9
	/GBD3ltwyH1x8cB4Vctj+3eFTJfICVYWfO7AkI1sT1GLp1PeLlYabWtBsRaAcJihsO0MVYAR95DK1
	s7YlQ1Iqhe1/DicVcZkffzZx5/3nKCGxSZjoCHU3GXRJSIppLLIxKwlTXXNWQFx3vJg3pv8oELuIh
	hLxKPJRFNBWJjrVcX1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ7E-0000000BLxt-1Uu9;
	Mon, 29 Jul 2024 13:08:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ5Z-0000000BLAo-45ip
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 13:06:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5Y-0000Ak-Qh
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:06:56 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5Y-0032zZ-C4
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:06:56 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 0E102310DC5
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 13:06:56 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 5339B310D77;
	Mon, 29 Jul 2024 13:06:47 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id a587a038;
	Mon, 29 Jul 2024 13:06:31 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 29 Jul 2024 15:05:36 +0200
Subject: [PATCH can-next 05/21] can: rockchip_canfd: add quirks for errata
 workarounds
MIME-Version: 1.0
Message-Id: <20240729-rockchip-canfd-v1-5-fa1250fd6be3@pengutronix.de>
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
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=4201; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=2nhsS0JvejY5QbWfhrC8+PnvPZ5FfFVY9+ObTZ4OE0Q=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmp5O7BnvjvY1TKLsdkmsv5phKdYSgP44hKORRp
 5FNj0j6Rl6JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqeTuwAKCRAoOKI+ei28
 bwBsB/9hQP23XPnaJRoDSDSnvov7vYYYYOa5/z5sGl1+oopGShIWTf557zW/PnITk6dAwVEMmm6
 GbMUEca28goC1h+W10+izTXbIhs/js5TGGg9YqkUmranQ7/IFhSDmieu054njlpqEYnwXpvudAP
 upmI2QbP7YD6uaAvRkdNAwiH6icSLUdlvMnvL/cCxle6EGM0cFB+ZbZNzIzSsJOfmQOqjtwQmGw
 9vtuWPuQD884s9fYOGR9enxZxnuVT3ZafXSnj1WYprFeqDF7dyRpauYpCR2MtMzGBc3yZ1+1XGv
 6IfkYFM85Jeyt6Fdpu9NcHJ8osUrbzPtFbNm0iNglZDgBbF5
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_060658_126151_433ED2B8 
X-CRM114-Status: GOOD (  16.60  )
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

Add a basic infrastructure for quirks for the 12 documented errata.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 11 +++++-
 drivers/net/can/rockchip/rockchip_canfd.h      | 55 ++++++++++++++++++++++++++
 2 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 37183a52682b..961eae352ae4 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -26,6 +26,12 @@
 
 static const struct rkcanfd_devtype_data rkcanfd_devtype_data_rk3568v2 = {
 	.model = RKCANFD_MODEL_RK3568V2,
+	.quirks = RKCANFD_QUIRK_RK3568_ERRATUM_1 | RKCANFD_QUIRK_RK3568_ERRATUM_2 |
+		RKCANFD_QUIRK_RK3568_ERRATUM_3 | RKCANFD_QUIRK_RK3568_ERRATUM_4 |
+		RKCANFD_QUIRK_RK3568_ERRATUM_5 | RKCANFD_QUIRK_RK3568_ERRATUM_6 |
+		RKCANFD_QUIRK_RK3568_ERRATUM_7 | RKCANFD_QUIRK_RK3568_ERRATUM_8 |
+		RKCANFD_QUIRK_RK3568_ERRATUM_9 | RKCANFD_QUIRK_RK3568_ERRATUM_10 |
+		RKCANFD_QUIRK_RK3568_ERRATUM_11 | RKCANFD_QUIRK_RK3568_ERRATUM_12,
 };
 
 static const char *__rkcanfd_get_model_str(enum rkcanfd_model model)
@@ -712,10 +718,11 @@ static void rkcanfd_register_done(const struct rkcanfd_priv *priv)
 	dev_id = rkcanfd_read(priv, RKCANFD_REG_RTL_VERSION);
 
 	netdev_info(priv->ndev,
-		    "Rockchip-CANFD %s rev%lu.%lu found\n",
+		    "Rockchip-CANFD %s rev%lu.%lu (errata 0x%04x) found\n",
 		    rkcanfd_get_model_str(priv),
 		    FIELD_GET(RKCANFD_REG_RTL_VERSION_MAJOR, dev_id),
-		    FIELD_GET(RKCANFD_REG_RTL_VERSION_MINOR, dev_id));
+		    FIELD_GET(RKCANFD_REG_RTL_VERSION_MINOR, dev_id),
+		    priv->devtype_data.quirks);
 }
 
 static int rkcanfd_register(struct rkcanfd_priv *priv)
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index ad068c08a44e..b267df438a82 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -294,12 +294,67 @@
 #define RKCANFD_TIMESTAMP_WORK_MAX_DELAY_SEC 60
 #define RKCANFD_ERRATUM_5_SYSCLOCK_HZ_MIN (300 * MEGA)
 
+/* rk3568 CAN-FD Errata, as of Tue 07 Nov 2023 11:25:31 +08:00 */
+
+/* Erratum 1: The error frame sent by the CAN controller has an
+ * abnormal format.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_1 BIT(0)
+
+/* Erratum 2: The error frame sent after detecting a CRC error has an
+ * abnormal position.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_2 BIT(1)
+
+/* Erratum 3: Intermittent CRC calculation errors. */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_3 BIT(2)
+
+/* Erratum 4: Intermittent occurrence of stuffing errors. */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_4 BIT(3)
+
+/* Erratum 5: Counters related to the TXFIFO and RXFIFO exhibit
+ * abnormal counting behavior.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_5 BIT(4)
+
+/* Erratum 6: The CAN controller's transmission of extended frames may
+ * intermittently change into standard frames
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_6 BIT(5)
+
+/* Erratum 7: In the passive error state, the CAN controller's
+ * interframe space segment counting is inaccurate.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_7 BIT(6)
+
+/* Erratum 8: The Format-Error error flag is transmitted one bit
+ * later.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_8 BIT(7)
+
+/* Erratum 9: In the arbitration segment, the CAN controller will
+ * identify stuffing errors as arbitration failures.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_9 BIT(8)
+
+/* Erratum 10: Does not support the BUSOFF slow recovery mechanism. */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_10 BIT(9)
+
+/* Erratum 11: Arbitration error. */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_11 BIT(10)
+
+/* Erratum 12: A dominant bit at the third bit of the intermission may
+ * cause a transmission error.
+ */
+#define RKCANFD_QUIRK_RK3568_ERRATUM_12 BIT(11)
+
 enum rkcanfd_model {
 	RKCANFD_MODEL_RK3568V2 = 0x35682,
 };
 
 struct rkcanfd_devtype_data {
 	enum rkcanfd_model model;
+	u32 quirks;
 };
 
 struct rkcanfd_fifo_header {

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
