Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C620C52D1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFjfrf9j2lW891r+Amj4+MstaMQwaeRnI0nSWTASy+o=; b=oFxmNUORiEBJDB
	Fnrf6dJnSjywb8hlSYB2RpKHEu2m8UluONQCLdZV9s2NfwuUMkJvVjegWRIaYyEMjE5j2ppPHREZP
	g3gWtLFt9tPtsZTL18w46nLAgjjuY0GKw57nq3KidpXpsqxkE78iqMiA1MCNKNUWSh+o20+v0dHrk
	w1BmX/imMdyzsAyH5Gc/YQt3n7KdOhzus2seB7Wm+PLYXn23Dzcbzh/vPoEpeIvCP6L/9WHSA01rm
	Fc20Tlq80vc/TjRsZnUJgWpRcj3aei3BFS3pPXS7KgYwBiGFskzG5tuMFrHu1niOsaewUw2+P+zLV
	4prizqspDfH7n9igCZZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5p5-00000000YLB-2d97;
	Wed, 31 Jul 2024 09:40:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mR-00000000XFm-2WUL
	for linux-rockchip@bombadil.infradead.org;
	Wed, 31 Jul 2024 09:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+MWx+eugUl3eJY/GFHgW9wWxa2Jy+KlCGTMRAcVsVsY=; b=ZqkVsI9qzeVEMV/4SYv1cBXPvE
	Nahy8QmOAVQkn00nFNP0SmHmYyr2XtHXfqckIJ7kWuYV5K2x5UMpByRWurzOqFRgxe7A0ZG9EGgAc
	lLXoGZBjmdybRCRodLpJSWXIf4YwjqmIWDnXhcMjX/sU8S+qT8S8CBkaefeoDibkwDzQGLhcbQMj/
	BLSi7TdWnp/qHCYoyB55nAIN629zjHrkQY3bZKFDO83KVSWDPLhxiDk9R7xTk/IRNRheIX4/tWQgO
	UqBEb2WGvcZ4oGfHNrwh1nRQa0xF7EjwQFOcrgNtdJsXOECwO/HF65vG/mKnvSMfRKTT2BvzsYaqD
	Gg0f7/jA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mO-00000005BNB-1TEH
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:37:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mN-0005ZC-JC
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:55 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mL-003UjB-HD
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:53 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 371D031283E
	for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 09:37:53 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id A68EF3127EA;
	Wed, 31 Jul 2024 09:37:49 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 02e0460c;
	Wed, 31 Jul 2024 09:37:42 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 31 Jul 2024 11:37:08 +0200
Subject: [PATCH can-next v2 06/20] can: rockchip_canfd: add quirk for
 broken CAN-FD support
MIME-Version: 1.0
Message-Id: <20240731-rockchip-canfd-v2-6-d9604c5b4be8@pengutronix.de>
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-37811
X-Developer-Signature: v=1; a=openpgp-sha256; l=2840; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=mKoxOQzQLkeZYomIhRbPKwzQLa0k13BGcghKhxoxh1M=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmqgXONWls6UBwbBjaMIaBOaThO4Ric6nTVZxe4
 Jw4jAblmPiJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqoFzgAKCRAoOKI+ei28
 b2tzCACUg/i3PittWMmkkr1k6c35EmexZm5O9ULgapO7FiEQhr/gaBPXabwMOqSUr8VSkXKqR3B
 sBKHSAkcrYxIzlphuW1ADFeF/nUbFPd8gmIQjbdnzeVoU88kkw3oT2Ej29diCTfiRgEzub3dX8w
 QacLW7BEYMjChES8Uc01xK7N2yb42FMISNw3B4XS6z/2jSajvkg+dovFr/IShoZsfxuAAsdOhtS
 Urt7O9/sloI8KcCRtwJD+FKcJ8rblW0O6Obn3ounahEzbzTp9XSjJiBAWc2bucL3MW+WyQz/wii
 7FNneGcqaid2khtjB6VAK78Rf49tushOqzfPMN1K088/me2K
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_103756_736810_C6BBB272 
X-CRM114-Status: GOOD (  16.04  )
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

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c |  5 ++++-
 drivers/net/can/rockchip/rockchip_canfd.h      | 21 +++++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 6329ad1fe154..0887164b0db3 100644
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
@@ -820,6 +821,8 @@ static int rkcanfd_probe(struct platform_device *pdev)
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
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
