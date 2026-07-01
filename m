Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4845C43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 07:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWRNJ/KHt3hdKj6mKUobMkNVQDc1dl/6nnz10t77BAY=; b=OMOisoq1haifYR
	JTD2aJURFLuycHQVSDHN1K/q6Eu+E8OfYzERj15d0x8YEtkBPZAf4EJbULouJnnx3eM9xqHtNS3El
	VHLFrYWlc2oaGYoODl9TNJWmefuUVrcqal/yTBiVY2akb9V2wqlzk3rIczLG3tAJ/eKua06TbOiGc
	Hy0z1JejoMvyJr2Fei+afekQqaFAgwQgk+7oS0+yKt21M/HiUcl55kafdn4AaEBJvbHfp+eM3gwH1
	5YX5aEWwvU24qG1VdeisQnMuGSKnnJQyVp6Ib2X+NPoieynClCFFzR+ztfmJw0oDQmjx9YmvG8tlh
	EjxFBFPAtx7mGzh+bwuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weoxV-00000000r84-452P;
	Wed, 01 Jul 2026 07:02:09 +0000
Received: from out203-205-221-191.mail.qq.com ([203.205.221.191])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weoxP-00000000r3M-3UJ5
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 07:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782889320; bh=iTNCFFEs2iGrZea7nEKA00hMwnPy96cYNAUqB/qqLg4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=tw5+h5jLMj4FlnVA3WQsliDBM0Ka6TOw4Ew3WMieIomx1Ya6o08Cs/RTC6OhlMYxp
	 sSD4MXT5TbPe0DrtfM7InjzFhIina7dRam3lSu/hYFn0t6FyC0DwM1gap3j0lemfgB
	 QdqON3P+6G4RHV13O7CK7gPDF9ECnWoRahs6rgDk=
Received: from localhost.localdomain ([2409:8d20:2a:1b57:9e54:40ff:fe02:3f0f])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 71832C3; Wed, 01 Jul 2026 15:01:49 +0800
X-QQ-mid: xmsmtpt1782889315t0ovgzw9f
Message-ID: <tencent_124D6134EB32480979234201E688087E5408@qq.com>
X-QQ-XMAILINFO: NMSHCeFjyxDuJyOcEZyRIEj8z1sx5U1ZetymqAG5YHWbiV5LeUywewE9i1OrBU
	 5oBAg/d1T8HJPUmew87jmkl4KYj4qB1tWUQxLqlOjA5Oa3mHckkTBxYbSkRN4r2FcgOpTMUU39ME
	 9R0OFeWxXQinEdqFbcoWqr83Xqptzrn2Et11Kbb5RVgDJvFD+r7OPdzc/QzE3DyNKRlmAcSNxTHM
	 nAJP2xXylhNGGFooKgjCyHyGlzx3iGBQ8oJhZ3dVEqQ0V8msdJvu/UujuJIaD21s5Y7fWMHCZuut
	 MHYwdyakE/hAAhFCvSF5QDCudua1oRm8st299/PlN7JoavwjJNQbmaSHYIRFs5OVqOgR6K/TT5+E
	 V5xWlsUFeFoV4zwpHR6J0adgYV79isOhV3l1n8MJKqlU/kahT7URE0QLxST+3zGmh/IQ36evaUQj
	 D/6tYg+qF/Pn5e1i/2YEBVk6wJEsqGiCD/d4vi7pWD68z8rhDnvlJ635o96ikgCkBxznWgeHCJyN
	 PK1UScr8uI7AoHFDaavxDOzcrUNxwFf/ZTtpw0aZ367H4Zm5O4PZEHaNG2ZtIF2L2AMON/YzCytF
	 zw+2Vj/Muyi6Ymbr8xlWBa6OfMP2iA8cNPCJxtfEIREA4HzF/YA1Zo2xddjlNTP09CncuQJVWJPB
	 trjLZ4RfXX0CRfbgmU52gK7MqsxsuYecNhEb7m8M2TUBAl/VodxzBWj4j3caSN/XTZLXCTNIIdd+
	 587F3GIbqVvV04CIwPtRVrAKwN+G7QTRCRIc3hlx9XxTSSYm8rpedvA3c2sjO1WHKXC6c6mLVN4U
	 9uOgXvv6mP/ruGhHGCuFNOb++Gz/GCsVE5DmeyjiRgeSwNO2zek57hiVO3Mop9bsrDv0FME/OYtf
	 RLHrspHvHiKB89cONO0rFBaCf/LTwIDyJdDjldg7IxozFYY9J+7QLwkmlVRmM5HQyvdaK878hRAS
	 lzzUp4+vD0MHmAq3S3s6hEfQAFr2DQg0KGkedwMsFGHW4LnuBruIThwpOgRzhenJuu0A9JceRkZX
	 2Neld3MDV7LCiZQovXnUuckz73+aq65A3yvoW0LglNJLT9LnlpIqqRsGUgfRGeMu2zwuFjevFkXl
	 DE8cyDKLPibdHIQNp73yVdD/hQEsNrUKvyyCFCJuHzN6oQ02Y=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: 1579567540@qq.com
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	linux-can@vger.kernel.org
Cc: Vincent Mailhol <mailhol@kernel.org>,
	kernel@pengutronix.de,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	luch00 <1579567540@qq.com>
Subject: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Date: Wed,  1 Jul 2026 15:01:27 +0800
X-OQ-MSGID: <20260701070128.2096267-3-1579567540@qq.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701070128.2096267-1-1579567540@qq.com>
References: <20260701070128.2096267-1-1579567540@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_000204_175518_25526F40 
X-CRM114-Status: GOOD (  18.01  )
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

From: luch00 <1579567540@qq.com>

Add support for the RK3588v2 CAN-FD controller by introducing a
dedicated model ID and OF match entry.

The block is closely related to the existing RK3568 variants, but it
cannot reuse their match data unchanged. In particular, RK3588v2
encodes RX_FIFO_CNT in bits 7:5 instead of 6:4, so the RX path needs
SoC-specific handling.

Validation on RK3588v2 also shows that its observed errata profile does
not fully match rk3568v2/rk3568v3, so keep a dedicated devtype for this
variant instead of relying on an rk3568 fallback.

Signed-off-by: luch00 <1579567540@qq.com>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 14 ++++++++++++++
 drivers/net/can/rockchip/rockchip_canfd-rx.c   |  5 ++++-
 drivers/net/can/rockchip/rockchip_canfd.h      | 12 +++++++++++-
 3 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 29de0c01e..3c2480785 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -50,6 +50,15 @@ static const struct rkcanfd_devtype_data rkcanfd_devtype_data_rk3568v3 = {
 		RKCANFD_QUIRK_CANFD_BROKEN,
 };
 
+/* Tests on the rk3588v2 reproduce Erratum 5, but not
+ * Erratum 6 or the special CAN-FD frames that trigger Error Interrupts
+ * on rk3568v2/rk3568v3.
+ */
+static const struct rkcanfd_devtype_data rkcanfd_devtype_data_rk3588v2 = {
+	.model = RKCANFD_MODEL_RK3588V2,
+	.quirks = RKCANFD_QUIRK_RK3568_ERRATUM_5,
+};
+
 static const char *__rkcanfd_get_model_str(enum rkcanfd_model model)
 {
 	switch (model) {
@@ -57,6 +66,8 @@ static const char *__rkcanfd_get_model_str(enum rkcanfd_model model)
 		return "rk3568v2";
 	case RKCANFD_MODEL_RK3568V3:
 		return "rk3568v3";
+	case RKCANFD_MODEL_RK3588V2:
+		return "rk3588v2";
 	}
 
 	return "<unknown>";
@@ -846,6 +857,9 @@ static const struct of_device_id rkcanfd_of_match[] = {
 	}, {
 		.compatible = "rockchip,rk3568v3-canfd",
 		.data = &rkcanfd_devtype_data_rk3568v3,
+	}, {
+		.compatible = "rockchip,rk3588v2-canfd",
+		.data = &rkcanfd_devtype_data_rk3588v2,
 	}, {
 		/* sentinel */
 	},
diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index 475c0409e..fe64db373 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -281,7 +281,10 @@ rkcanfd_rx_fifo_get_len(const struct rkcanfd_priv *priv)
 {
 	const u32 reg = rkcanfd_read(priv, RKCANFD_REG_RX_FIFO_CTRL);
 
-	return FIELD_GET(RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT, reg);
+	if (priv->devtype_data.model == RKCANFD_MODEL_RK3588V2)
+		return FIELD_GET(RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT_RK3588, reg);
+
+	return FIELD_GET(RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT_RK3568, reg);
 }
 
 int rkcanfd_handle_rx_int(struct rkcanfd_priv *priv)
diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 93131c7d7..f6105b904 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -214,7 +214,8 @@
 #define RKCANFD_REG_TXEVENT_FIFO_CTRL_TXE_FIFO_ENABLE BIT(0)
 
 #define RKCANFD_REG_RX_FIFO_CTRL 0x118
-#define RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT GENMASK(6, 4)
+#define RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT_RK3568 GENMASK(6, 4)
+#define RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_CNT_RK3588 GENMASK(7, 5)
 #define RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_FULL_WATERMARK GENMASK(3, 1)
 #define RKCANFD_REG_RX_FIFO_CTRL_RX_FIFO_ENABLE BIT(0)
 
@@ -331,6 +332,11 @@
  * rarely with the standard clock of 300 MHz, but almost immediately
  * at 80 MHz.
  *
+ * Test on the rk3588v2 shows the same empty FIFO condition.
+ * In that setup rx_fifo_empty_errors increments when the bus
+ * transitions from idle to high CAN-FD load and stops growing once
+ * the bus reaches a steady state.
+ *
  * To workaround this problem, check for empty FIFO with
  * rkcanfd_fifo_header_empty() in rkcanfd_handle_rx_int_one() and exit
  * early.
@@ -424,6 +430,9 @@
  *     cansequence -rv -i 1
  *
  * - TX starvation after repeated Bus-Off
+ *   Tests on the rk3588v2 show the same problem. In a
+ *   10-cycle Bus-Off recovery test, 9 cycles failed to send after the
+ *   controller restarted.
  *   To reproduce:
  *   host:
  *     sleep 3 && cangen can0 -I2 -Li -Di -p10 -g 0.0
@@ -434,6 +443,7 @@
 enum rkcanfd_model {
 	RKCANFD_MODEL_RK3568V2 = 0x35682,
 	RKCANFD_MODEL_RK3568V3 = 0x35683,
+	RKCANFD_MODEL_RK3588V2 = 0x35882,
 };
 
 struct rkcanfd_devtype_data {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
