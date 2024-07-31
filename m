Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2582CC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQA90uGGvTc3Vt83UiHF80DSWjAXOsgCCUcnj0NtpRg=; b=SrYDd97GqXdjvV
	FSZufRUFMB6qzLKd2sx8wCl7PlVR6d8IOMuhXdpQVYPa64jAU+8ySK5yRWCvaLWzqA50rZ2NYRvOR
	FRgWjCdSEsWAZzPulRsW0gnk1OKHWTWvnvYCXZGzADISjnZakLHOThrQEblHe+33QYvNJ+q/LuDUC
	6dz7MwTzUPMkahPB+d1seJO3HwDWu+7IXMgRkGHUkSSYkv8LCFN/r/sWJUHI+9FLPPaA9kMGqXv6a
	7B+Y+6D2AjO/gEqjHHwYz0YPH6w5MMaWyJJFaVD/UP0twG9zFqBkDzsbCHsTyzAtYc922pUzku0zE
	dA1b4Nn9E8/S0ENu5PvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5t4-00000000a35-1CXQ;
	Wed, 31 Jul 2024 09:44:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mf-00000000XLP-0O2H
	for linux-rockchip@bombadil.infradead.org;
	Wed, 31 Jul 2024 09:38:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=PmcubwwUK5gdaPJcVcqlWVd59M0ykDsSaLN+/KGLfpU=; b=p687W6bJrUPV18CWY0YYhc0Vxp
	IV2ZTNzOxx/i6gEqySruALgkAQA99bYyteds/neGCVyKkWgYEZW+1SBRRiU+HGbKxUw67wmh3kvIG
	6/LZtf8j31rg8NDJX58Cux7KAgDLYT1JnAB1z1r6t1wPgvHZgCFa5O5jqhVrPXayZgH5fHfLu1Pxx
	nQy6FKUv5aI1qFHYRxIPn3gmQEnJOzNM/+iXFZHw2JGfrLF4/JCRChM5f/Vue4CMh35XPOYHoBOfA
	+F+E5HJLIctiQ625k5ZcUk00HTn2cqd+BoE7P1lOZiWZ0flkXiT9koIyDxPQtE9Wsww59yCiKbPsS
	levK9ajg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5mb-00000005BQA-1EvS
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:38:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mY-0005iQ-UR
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:38:06 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ5mQ-003Ur9-44
	for linux-rockchip@lists.infradead.org; Wed, 31 Jul 2024 11:37:58 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id C3B6E3128DD
	for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 09:37:57 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 5B257312860;
	Wed, 31 Jul 2024 09:37:54 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 48719550;
	Wed, 31 Jul 2024 09:37:42 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 31 Jul 2024 11:37:15 +0200
Subject: [PATCH can-next v2 13/20] can: rockchip_canfd: implement
 workaround for erratum 12
MIME-Version: 1.0
Message-Id: <20240731-rockchip-canfd-v2-13-d9604c5b4be8@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1861; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=0fQxig7gDaZbE8nWIiLavEYV63pJFyEPC6WX7ivRp0I=;
 b=owGbwMvMwMWoYbHIrkp3Tz7jabUkhrRVrDe33Szp7Pi3wO5i9Cc/jx+NjP8fmdyY7Ha/seF0k
 lPWxX3TOxmNWRgYuRhkxRRZAhx2tT3YxnJXc49dPMwgViaQKQxcnAIwkc3fOBj6C1nvmE9Kuz+L
 /7mWQ+A0vbBOudN7U67M+i5ocK3epKVx8Z4NBuv09i9nbp7BGVvi+6LK5/6X5D41tSr2v58P9Ea
 quzoGL21/wzCRzdTagvnbVKmE9gzdC+VKaoxT7zQJsPcKKu/Sk/trGLJaVyCzgcmqrsJ2WWGBqm
 692Yrkfx9Pt3jI39tmfavqhsr1QwVl4VbH3Tscky1vGOlVzbpYumXVDyV5blWW3I8h+4vki7etF
 Ywqn5H7b7LpU8Hv1g9267Gdn/1dIdbtIe8C/ewjKnxnb559mu+a8VT5um6sdX64i+Df0tTr5Xy/
 Sx5fnry8XEvAV3Gpb8/cygWyDYx7Pqyt23HnULe6lWoIAA==
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_103809_911835_3DEC4DE4 
X-CRM114-Status: GOOD (  13.52  )
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

The rk3568 CAN-FD errata sheet as of Tue 07 Nov 2023 11:25:31 +08:00
says:

| A dominant bit at the third bit of the intermission may cause a
| transmission error.
|
| When sampling the third bit of the intermission as a dominant bit, if
| tx_req is configured to transmit extended frames at this time, the
| extended frame may be sent to the bus in the format of a standard
| frame. The extended frame will be sent as a standard frame and will not
| result in error frames

Turn on "Interframe Spaceing RX Mode" only during TX to work around
erratum 12, according to rock-chip:

| Spaceing RX Mode = 1, the third Bit between frames cannot receive
| and send, and the fourth Bit begins to receive and send.
|
| Spaceing RX Mode = 0, allowing the third Bit between frames to
| receive and send.

Message-ID: <be72939f-0a9e-0608-dfff-7b0096a26eba@rock-chips.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-tx.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index e98e7a836b83..9db6d90a4e7f 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -11,7 +11,14 @@
 static void rkcanfd_start_xmit_write_cmd(const struct rkcanfd_priv *priv,
 					 const u32 reg_cmd)
 {
+	if (priv->devtype_data.quirks & RKCANFD_QUIRK_RK3568_ERRATUM_12)
+		rkcanfd_write(priv, RKCANFD_REG_MODE, priv->reg_mode_default |
+			      RKCANFD_REG_MODE_SPACE_RX_MODE);
+
 	rkcanfd_write(priv, RKCANFD_REG_CMD, reg_cmd);
+
+	if (priv->devtype_data.quirks & RKCANFD_QUIRK_RK3568_ERRATUM_12)
+		rkcanfd_write(priv, RKCANFD_REG_MODE, priv->reg_mode_default);
 }
 
 void rkcanfd_xmit_retry(struct rkcanfd_priv *priv)

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
