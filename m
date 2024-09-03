Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963F5CD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEE8GQsLG3JwfzVC5zo5xnCQBfo71zY66Ry9n4f/+Qg=; b=ysalgv5yLYERWY
	EwT1wW4/c+ZA2udORbGrfBghsy6l6PxkZAYqc2jZPQ2W6ZNZlOdEcsTTPlYZLutbbniii0cG7o8i/
	0ciRAyXiqRl60J+79jnHi2NUYvTCDLUslujXpVUBGYny+CFdAlqxYXFPBrdy3uH4i3D8bnLFyxPVS
	SJJs2Ugv1Zx3C0TNnZ8LBL9DVCCaF35/Jzk1kjs9UQmsFEK3Oo5ZwAI2rlCZQDUisfVfESPv2SucB
	7WILRQN3EMfWYqTG0zPbGmNcOb6Fq7Frevy4irsmvHqgQAzqVM3y7AeABq8N9sJsWjK6ZLi9viKle
	DDT0SbU3PYNONvGfu7cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPss-0000000HA86-0wQv;
	Tue, 03 Sep 2024 09:31:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkQ-0000000H7Vb-1wA6
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:22:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vJdkS8YbTHKJZKN2/2iJktSxLBLXRp1c9VTPYPWsSac=; b=dq8c2+K6UZ6VXMMbba1sPHbAnV
	XL3pw92lcwtWZhwPsLZ25zLUBOYRu0jQaNkwo/rp9BH5i4MvDtNKTjYozGZYhYofw+FJkAPivcagS
	p2isT+PMqPihEQaJx8qQvw/o619M3LFd49fSQJOpInplQg15DeDa6XVNrLU6C3Zw4h2EKkkotSuPB
	PHNPERQBERIUFSOa/33eX2ZxDXmgOI2ZAcO1RNFwaXWzrseBK6QBFF70wCRTeXzLaaUVbeET7Lguu
	NfRAuUIgDWoD78BCUsg+mUd1Xwp092tCBdE4w0H4hJDwboaLOvhlsFPhSs+a4GXWfixQKQYJtfOF1
	saUeHbdQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkJ-0000000CIav-2mV2
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:22:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkG-0000oB-Su
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:40 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkB-0059Su-La
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:35 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 294F033110E
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:35 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 30A6D331042;
	Tue, 03 Sep 2024 09:22:28 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 78de5a14;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:55 +0200
Subject: [PATCH can-next v4 13/20] can: rockchip_canfd: implement
 workaround for erratum 12
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-13-1dc3f3f32856@pengutronix.de>
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1911; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=EE4AmGzepXHNHoSI5zv7ndjZkcaM0ScMwEQQxZFgWvQ=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tVG4O9rN3TcDoaqCkbwujIOpBHbYp8BuhwKG
 KEFWeURpMSJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVRgAKCRAoOKI+ei28
 b5iLB/4hHqBboDQlP28C85fAjZR3lcKb1OJ+/5ppqk2HAeQQpHAO5PpAhBwKdfvir7cn6bDijXK
 sf2s8PyrVlf7iiWmqxZbI9HCjDNy5Ud0qRCIC7FmkS8XcMiX0SoNbpqikKMr1T/8bOJd0PPvigS
 nGXITvBKaSd+XcisBLgSUmVEcAppKgod12RTszxRM9SdZctVtzoVgRa0PEjlNAqPwWd+HnD4FMy
 RMA360Qif1XvfeRjE4OBWDEi7c02xGMsLG5Ba6mzan49wCJLUxHYBybY+Mvp27mFgYOr7v/N/Xu
 okSR79AVfC/B/OS1p2gvfdIauXQh5i68tHCtIo5JiyPpB2FZ
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102244_494270_DB482D14 
X-CRM114-Status: GOOD (  14.17  )
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
Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
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
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
