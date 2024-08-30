Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD815CA100C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fW66a47EtbdxisvaYN9flzraDzFpDVKsSBN4aDZ4Jc=; b=PSoUhNyTp11fGF
	sD3F/tJzXUIG8fHwxVJZcTMc76m5KRzfFWCH7ECCxafV1kTZs9D4YAeVumT9tJck4N3K78nvsvMBL
	R48e2TNVt/N9FWeCOWKWpiRg1Cz2RXOgF0oiT6qHvenaiT/Kxu3lAJcIeNlLyh+FRPg1zx5/h3QAZ
	aYEVKMRsUnnLaIFd8qdEqleOtxWuCSAIYASQWOh4NLT9/EZeJU03x5dzmxVp9ndyXabY4vPA/1WQ6
	tDKKBaaGi0395l2sNF4KwZpKDhS/bT97oW3Y8+lerO7NHpeLLDqYKYPYste4BjudQJPf2RaPF8/y7
	XmzfurKwhUvTpPqffXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7X9-00000007W9S-1lKB;
	Fri, 30 Aug 2024 19:43:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7HX-00000007RmE-2WJy
	for linux-rockchip@bombadil.infradead.org;
	Fri, 30 Aug 2024 19:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Ajn95mjztpqdyxZFAAv0n3MypG6/uf4WyrVQ4Yhw5Os=; b=PicOCz7W7Op58AvkS2cdVwnW8w
	eh0YQJ3fB3WZC4Ty1MzN2qrqKKHyp1ZD4I1OBBRROX3KpeDVKxgeoxqHhYZQwTHsU3c6c5b50fcpS
	idvhTYyJMCJxiKaj41J3Z3wYQs+5h4gtO0GKAt/8b0m7W2UCkm83zWJ5GLN7/ey8I0mC0oiboCxXE
	2fCgmFsLAlxt58LjvlIEPdndW1MLuwy+oFXrSq7Hw0LEuAkX6gHaEMNEra7wBsh9bcnQHrxvduRlA
	RHwNZstNbk6D7Oc1tGH14Ya/nqKAKECREmdBRHps0N7TLLhggFd3FrVbyrgplRJEjmeqcSAAlm1od
	q3SSWNZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7H8-0000000Bk9R-0Ek5
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:27:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7H1-0006Mu-QK
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:27:07 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gt-004DsF-3y
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:59 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id BDFC832E286
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:58 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id F1D7232E125;
	Fri, 30 Aug 2024 19:26:47 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 662e71b0;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 30 Aug 2024 21:26:17 +0200
Subject: [PATCH can-next v3 20/20] can: rockchip_canfd: add support for
 CAN_CTRLMODE_BERR_REPORTING
MIME-Version: 1.0
Message-Id: <20240830-rockchip-canfd-v3-20-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=2351; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=LuMx/PlnK3WbirTHya0KJ2kuGTfiCv8jMDhEO9L4kY8=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzzWSZOPJIz9FhQvHlaytA5ca9hKvtWeb2oA
 Fr49Lzww3SJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc8wAKCRAoOKI+ei28
 b8uTB/9NEiPYXbc82AadhaySflhfwVIf5BtMH5bmwGVeSDZC/X8ynol4bfnf5wTWpTLRtzOXz66
 Jbjx227dEo7mAAxhxpBzqRgd77cxSjNuNnfRSJOsJBsiPaAqx0ZTRnLSnuENt5f6JmUtEFJ4WCa
 tvWGu4GlbAroBT9sbSWYebwkDRZJOUjgqU0gyxawT/doIV/fs4NQnJpPz+aActxaj11Wy85eBsi
 4bhC9e35yMzatN6hcpilFlPlUuWPPlr1fA85YlEP9vQVIZaenZt/an/VOFfPzRYeRiyKVOvV8mS
 KO7eDPfk0xrDFyyhPf5MwGGhQEchxEyuB9YnwV4980Vy/txw
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_202722_617013_330FF508 
X-CRM114-Status: GOOD (  16.16  )
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

Add support for Bus Error Reporting.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 8853f6a135da..6883153e8fc1 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -293,6 +293,12 @@ static void rkcanfd_chip_start(struct rkcanfd_priv *priv)
 		RKCANFD_REG_INT_OVERLOAD_INT |
 		RKCANFD_REG_INT_TX_FINISH_INT;
 
+	/* Do not mask the bus error interrupt if the bus error
+	 * reporting is requested.
+	 */
+	if (!(priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING))
+		priv->reg_int_mask_default |= RKCANFD_REG_INT_ERROR_INT;
+
 	memset(&priv->bec, 0x0, sizeof(priv->bec));
 
 	rkcanfd_chip_fifo_setup(priv);
@@ -533,14 +539,16 @@ static int rkcanfd_handle_error_int(struct rkcanfd_priv *priv)
 	if (!reg_ec)
 		return 0;
 
-	skb = rkcanfd_alloc_can_err_skb(priv, &cf, &timestamp);
-	if (cf) {
-		struct can_berr_counter bec;
+	if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING) {
+		skb = rkcanfd_alloc_can_err_skb(priv, &cf, &timestamp);
+		if (cf) {
+			struct can_berr_counter bec;
 
-		rkcanfd_get_berr_counter_corrected(priv, &bec);
-		cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR | CAN_ERR_CNT;
-		cf->data[6] = bec.txerr;
-		cf->data[7] = bec.rxerr;
+			rkcanfd_get_berr_counter_corrected(priv, &bec);
+			cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR | CAN_ERR_CNT;
+			cf->data[6] = bec.txerr;
+			cf->data[7] = bec.rxerr;
+		}
 	}
 
 	rkcanfd_handle_error_int_reg_ec(priv, cf, reg_ec);
@@ -899,7 +907,8 @@ static int rkcanfd_probe(struct platform_device *pdev)
 	priv->can.clock.freq = clk_get_rate(priv->clks[0].clk);
 	priv->can.bittiming_const = &rkcanfd_bittiming_const;
 	priv->can.data_bittiming_const = &rkcanfd_data_bittiming_const;
-	priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK;
+	priv->can.ctrlmode_supported = CAN_CTRLMODE_LOOPBACK |
+		CAN_CTRLMODE_BERR_REPORTING;
 	if (!(priv->devtype_data.quirks & RKCANFD_QUIRK_CANFD_BROKEN))
 		priv->can.ctrlmode_supported |= CAN_CTRLMODE_FD;
 	priv->can.do_set_mode = rkcanfd_set_mode;

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
