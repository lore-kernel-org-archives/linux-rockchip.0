Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF268C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 13:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/h8Yr0qx61RVekK9j+pPu7RHpiC1sb0Z52EECDM7jo=; b=vfZSnzKScMjAX9
	Yasg3ErdUJ1xrI8zUHcHpgKYvQZ65ln1yVlYmm4j5V7jAoSTseW2EM3vHJw6bMPuykvOjUqQPdGa3
	mN825BogIVefExT49nzFleHghO9yku2RcSN8DzBvfLX+V00wr5n1sQfO+wAmlvWlePXGXgEpzqc9M
	NdUGaTUGvyoYxcpI2sOvVRN+++E9oJYifU7uk1314kZlJMzqY5CNLHPoqcfXs450hzKfNcKjKuYuB
	k/A6c4qwcx8GlK2bovvx1x73fsRjVCFW+Y3u71F5z2BD/mlr8XeQIzjfaRfsibyTh8SrIvaitlHRV
	EiA/X5uUSfR3WVuz+lGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQAR-0000000BNDE-1fr8;
	Mon, 29 Jul 2024 13:11:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYQ5m-0000000BLJo-1PAD
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 13:07:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5l-0000ZC-1h
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:09 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sYQ5k-0033BZ-4V
	for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2024 15:07:08 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id C888E310E47
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 13:07:07 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id A43C5310DE2;
	Mon, 29 Jul 2024 13:06:59 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id f3d53853;
	Mon, 29 Jul 2024 13:06:31 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 29 Jul 2024 15:05:42 +0200
Subject: [PATCH can-next 11/21] can: rockchip_canfd: add functions to check
 if CAN-FD frames are equal
MIME-Version: 1.0
Message-Id: <20240729-rockchip-canfd-v1-11-fa1250fd6be3@pengutronix.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1974; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=pk+HWp61aRbrMc8jao9rsWPH0utzFUIr6luS6CcCfzk=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBmp5PFCHanwgo22d/CXs+k/48vJoczWNABB6IQO
 mY8hHz3lAqJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZqeTxQAKCRAoOKI+ei28
 b2gIB/9adnJSmWuuoCby01FRyUSVp3vwYNmiSBRj3NglwYqq1BMLbVUTDQv8GD8z8zRVn/YOmtq
 NSbOr86kyzQJuFQqr95dGUZ3lTXAQg0m7vw+fzWL5dd7l1I8OkjiZaGvKYp9wek9bFZBMSojWNm
 f0ZJUzDrML07mCcQ6+3c7QKSItIgtDkcEsVLZ6/3WEMZ0KpxoKeL5jNSeUPevcq0NaHWYSN42Qj
 NCpuCjSHdfB10WZs4Gau5yJN/7vpHqUilue5/MzE5BjXatNzqjY0IBYVevQ2IqWA7CN1fWiDz3k
 xEcyf1ud5EzFiFOb9haxQJKAUY82HHUIeDcZQ1oqEaiUhWz5
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_060710_388800_8F0D8F41 
X-CRM114-Status: GOOD (  13.37  )
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

Add a pair new functions to check if 2 struct canfd_frame are equal.
The 1st checks if the header of the CAN frames are equal, the 2nd
checks if the data portion are equal:

- rkcanfd_can_frame_header_equal()
- rkcanfd_can_frame_data_equal()

This functionality is needed in the next patch.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-rx.c | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-rx.c b/drivers/net/can/rockchip/rockchip_canfd-rx.c
index c7b316e52580..df5280375ca9 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-rx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-rx.c
@@ -6,6 +6,48 @@
 
 #include "rockchip_canfd.h"
 
+static bool rkcanfd_can_frame_header_equal(const struct canfd_frame *const cfd1,
+					   const struct canfd_frame *const cfd2,
+					   const bool is_canfd)
+{
+	const u8 mask_flags = CANFD_BRS | CANFD_ESI | CANFD_FDF;
+	canid_t mask = CAN_EFF_FLAG;
+
+	if (canfd_sanitize_len(cfd1->len) != canfd_sanitize_len(cfd2->len))
+		return false;
+
+	if (!is_canfd)
+		mask |= CAN_RTR_FLAG;
+
+	if (cfd1->can_id & CAN_EFF_FLAG)
+		mask |= CAN_EFF_MASK;
+	else
+		mask |= CAN_SFF_MASK;
+
+	if ((cfd1->can_id & mask) != (cfd2->can_id & mask))
+		return false;
+
+	if (is_canfd &&
+	    (cfd1->flags & mask_flags) != (cfd2->flags & mask_flags))
+		return false;
+
+	return true;
+}
+
+static bool rkcanfd_can_frame_data_equal(const struct canfd_frame *cfd1,
+					 const struct canfd_frame *cfd2,
+					 const bool is_canfd)
+{
+	u8 len;
+
+	if (!is_canfd && (cfd1->can_id & CAN_RTR_FLAG))
+		return true;
+
+	len = canfd_sanitize_len(cfd1->len);
+
+	return !memcmp(cfd1->data, cfd2->data, len);
+}
+
 static unsigned int
 rkcanfd_fifo_header_to_cfd_header(const struct rkcanfd_priv *priv,
 				  const struct rkcanfd_fifo_header *header,

-- 
2.43.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
