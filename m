Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771C8CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLcSFlmNLB8bkS6XwLFzySZIB7LzYO4qoYJr4LSZxoU=; b=QLMkhBfu8stkJJ
	ZXelh//HuVNlCZvDeJghqpVS5dqztuB9npEDrLfCsHXf1Awmy/1Ow/SZdy6nAfS15WibRXdb7k2KC
	Xu5PyTo62oeqUtfa1DpjgDny2p8d+opa1lrrepzU6rCq692i1GT2wRxocvASkUVxqE1OtnZyJUqQK
	x2P6wUYHS2e+c5An14OMRjHfyPyhbeVe4I3ApDqJsditVjURExNUOF8BYUoU8gsgrmdhQ6mkE7gRs
	eOCztBX2QtlhWybEk1ynES6WbC4+2zM67dVG2hLzRtFcnItouWlT+q8yPziSIRpkJUIe49qskKp6+
	O5F26BnLorFU0PV6Rpmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQ06-0000000HCZI-0Zf8;
	Tue, 03 Sep 2024 09:39:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkU-0000000H7Ys-1Bs1
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=nrq8OSQh3CJrIG39da9gZGo1yc4vfcZdxlheYyStSxM=; b=NuYa/MVBAnQtXigtA9Cy+ubPmM
	GNc/Hs+E4dSRxUIesVyMbY3CvwkBi5FgxLbf4tFX+Gl5h8SR35InYm+evNN/Evd9NKxkv7BO7NBVV
	OXjwuuADCSG+lsVUcNq/QHEzMigqWhiVIaIYUvWinDuuq1ss65Mx3QXDBJPr79sYB8UvVlhsKHj8y
	lfnskRBD8iccUHlH8/AAefRPZd+F9W6XPO5bFZRjImJaVXrglZzTchLjALoKqgd/+gm7XphBZ2Onl
	c9JE4avWrli/Fp8wpIBq2rmOEP9xV6xVCwh4peK92o6UimO91XZ6mCWZObwb/DvDShWNuhgYNBfDK
	y9ILGzOw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkP-0000000CIe0-1XTv
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:22:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkM-0000xR-GP
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:46 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPkG-0059aR-KK
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:40 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 43ECE3311F4
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:40 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 910AB33104E;
	Tue, 03 Sep 2024 09:22:28 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 05c965a7;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 03 Sep 2024 11:21:59 +0200
Subject: [PATCH can-next v4 17/20] can: rockchip_canfd: enable full TX-FIFO
 depth of 2
MIME-Version: 1.0
Message-Id: <20240903-rockchip-canfd-v4-17-1dc3f3f32856@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=879; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=Rb+DPh6I1pIZR5OwMWvyyqc8QfjnlVzZzpFMC3B2FWI=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tVMBeFSFmOa6zI4gd+z+CgPmODOkUkNzsxbx
 wWia+lv1ImJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVTAAKCRAoOKI+ei28
 b3h4B/wMzCZveqIFUd3Ln0diZ+eV2pI3Ak5fKS4j5/eaeMiQSbS4fDLMxl+HdEDoXA0mqf1CGXI
 5byvf8TafkEKEBMBH2kYDrgRc6OlQRxFcQVeTLlsAkp3g6GIlBKTtC9J6RtrKjyPsVxxOrZ0BeH
 2u1uuDhwwjeJLbq8BkmmsS50QgUg9remfMhLOscPp0ABokHPu8P8RTB7MQaGDwb1roIW0PsE3eb
 LRAbtO+3djse9CHqDEN0sOwzWGcHgB1mbTE/FPGdY5tNYkQn0s6IoWZCCtHGy/H2CjLG8ybTfSF
 hFmq/OvIRiEVypRP8tMP3VAMLMohm3H5faHhob3TyIj0+L7Z
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102249_930171_4A2B1319 
X-CRM114-Status: GOOD (  12.96  )
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

The previous commit prepared the TX path to make use of the full
TX-FIFO depth as much as possible. Increase the available TX-FIFO
depth to the hardware maximum of 2.

Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd.h b/drivers/net/can/rockchip/rockchip_canfd.h
index 37d90400429f..6be2865ec95a 100644
--- a/drivers/net/can/rockchip/rockchip_canfd.h
+++ b/drivers/net/can/rockchip/rockchip_canfd.h
@@ -288,7 +288,7 @@
 
 #define DEVICE_NAME "rockchip_canfd"
 #define RKCANFD_NAPI_WEIGHT 32
-#define RKCANFD_TXFIFO_DEPTH 1
+#define RKCANFD_TXFIFO_DEPTH 2
 #define RKCANFD_TX_STOP_THRESHOLD 1
 #define RKCANFD_TX_START_THRESHOLD 1
 

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
