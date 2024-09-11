Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C9EEE0219
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32WZe2C9bqoK391BudNKBEyXcJRBWI4gdVA0yzcM+As=; b=R2SFx+40VKc0ut
	WU4P/hpT1PEGrNvAe66CNNaDsl2BMSTDQz+HFcyu8ArHMMwvLt15ukqyHH7mXCvLKbN17sncFoB/t
	uv1k8Bt16To+kIb1ZVCj3JuozUJ//rgSCQX96qYi3PZueaOSmJ/+hmTdfA7W2sGGnH+LywANerA3D
	GqQ3xVxfdP0p8kN7I6ilCdLo/eMEoB/kDOp2zEnoWpIn6cOXE2Rd9REWZWBF0YWQbQXN0Ss9zIAp5
	q4DGEve17HojAak3Ud2Wm77pDJTo9Ic6zrqeVkN3FjiWNUg5/kU3mf7x+Yb61hgMyJ+vDR/Q9HbUa
	iKOl4xOpHDtlMVdbPhcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soJ1s-00000008kq0-25vL;
	Wed, 11 Sep 2024 08:48:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIyk-00000008jtz-2KpP
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 08:45:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyj-0002bj-Fq
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:33 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyj-0075zB-2X
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:33 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id C304133814A
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 08:45:32 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 29182338139;
	Wed, 11 Sep 2024 08:45:31 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id debe3747;
	Wed, 11 Sep 2024 08:45:30 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 11 Sep 2024 10:45:26 +0200
Subject: [PATCH can-next 2/2] can: rockchip_canfd:
 rkcanfd_handle_error_int_reg_ec(): fix decoding of error code register
MIME-Version: 1.0
Message-Id: <20240911-can-rockchip_canfd-fixes-v1-2-5ce385b5ab10@pengutronix.de>
References: <20240911-can-rockchip_canfd-fixes-v1-0-5ce385b5ab10@pengutronix.de>
In-Reply-To: <20240911-can-rockchip_canfd-fixes-v1-0-5ce385b5ab10@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.15-dev-88a27
X-Developer-Signature: v=1; a=openpgp-sha256; l=1660; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=FYsbjJVzwxPaRyPqACbgrzhpJ2D/uLoe7SJ0dYP09Js=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm4VioSw/JfPWRyX7TNulq+OD3P1if17X5AXUkc
 eelM/LXK+mJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZuFYqAAKCRAoOKI+ei28
 b3TBB/4tpzx27rhQMW8/qzL1OyS2I+lGF0hA0iAcYabRDbNQgvJc1eD2bwvuuXxGXgBBLIDSCrb
 mSRCs8Z0Tw0qWZJsbKCfjJq7+DgVi1vCjzQ2qFeDnhAPo4sMB5UTXrX1uf94WXVWPUfNapKPEMP
 mfb3zMgj/EPVH56I+aEmOPUqQtMnn/GORbtGgcOZx2bm/EsJ22trts64MkLFpIHE2U3I+95+0dL
 8m2gAvI4noaXh2v9ntqEIfrS1OQFWptO46NKmHXWbmcUFkacbH6TrKCJ4abBKrF88Tuiv7sR6rw
 +6YiakHcHj2+T4aZpqHar3krvFG6Mvj7nOohp9OHkIJz5YKh
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_014534_607871_1D8DDB59 
X-CRM114-Status: GOOD (  12.63  )
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

Probably due to a copy/paste error rkcanfd_handle_error_int_reg_ec()
checks twice if the RKCANFD_REG_ERROR_CODE_TX_ACK_EOF bit is set in
reg_ec.

Keep the correct check for RKCANFD_REG_ERROR_CODE_TX_ACK_EOF and
remove the superfluous one.

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://patch.msgid.link/9a46d10d-e4e3-40a5-8fb6-f4637959f124@stanley.mountain
Fixes: ff60bfbaf67f ("can: rockchip_canfd: add driver for Rockchip CAN-FD controller")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-core.c b/drivers/net/can/rockchip/rockchip_canfd-core.c
index 6883153e8fc15e82684d4f06447de3e88168b9ae..df18c85fc0784148d55d7a0086713555fb48c008 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-core.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-core.c
@@ -491,11 +491,9 @@ rkcanfd_handle_error_int_reg_ec(struct rkcanfd_priv *priv, struct can_frame *cf,
 		else if (reg_ec & RKCANFD_REG_ERROR_CODE_TX_CRC)
 			cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
 		else if (reg_ec & RKCANFD_REG_ERROR_CODE_TX_ACK_EOF)
-			cf->data[3] = CAN_ERR_PROT_LOC_ACK;
+			cf->data[3] = CAN_ERR_PROT_LOC_ACK_DEL;
 		else if (reg_ec & RKCANFD_REG_ERROR_CODE_TX_ACK)
 			cf->data[3] = CAN_ERR_PROT_LOC_ACK;
-		else if (reg_ec & RKCANFD_REG_ERROR_CODE_TX_ACK_EOF)
-			cf->data[3] = CAN_ERR_PROT_LOC_ACK_DEL;
 		/* RKCANFD_REG_ERROR_CODE_TX_ERROR */
 		else if (reg_ec & RKCANFD_REG_ERROR_CODE_TX_OVERLOAD)
 			cf->data[2] |= CAN_ERR_PROT_OVERLOAD;

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
