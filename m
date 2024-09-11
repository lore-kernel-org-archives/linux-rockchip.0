Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E66AEE0219
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 08:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hNzTTt6rJkLOTl5dKbMMyuGvKQtaAhrR2Iwn9dQZPTY=; b=NU6Daaeld8Sgel
	kaiZvRXKV1f94wHLNzbmYb9QJFKgRwPmiUDI2BVTxXA/7Ka1aFUXjEj+rzIXqxeFTiZh7khBQBs8X
	yp3C1DcxqxMU1WjEHs/gslNCd9sCk2bTE/Y31uJDfgK2sXjNBJJPI7LX9UvkNojt8kZBEZ8XdcU5v
	QwopTSpyDFvCpvHDayQbkXa06KzGkLX21N1mLk4Vw4Ux2REV8oRqjc5EmKwSE5CfcoqE4HF19Thd7
	uMf35DNI7rrjXUq6xDR3RMILhGJUmH00ZlBZ4XlS4+2KKMaWMr97nZywub2wkJJjVkSB5mZLwGG04
	s21qpgotLKSP02bixRfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soJ0r-00000008kVi-0SBD;
	Wed, 11 Sep 2024 08:47:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIyk-00000008ju0-2yCK
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 08:45:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyj-0002bw-Hw
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:33 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyj-0075zI-3w
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:33 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id CAB2B33814C
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 08:45:32 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id EAA84338136;
	Wed, 11 Sep 2024 08:45:30 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 1821535a;
	Wed, 11 Sep 2024 08:45:30 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH can-next 0/2] can: rockchip_canfd: rework delay calculation
 and decoding of error code register
Date: Wed, 11 Sep 2024 10:45:24 +0200
Message-Id: <20240911-can-rockchip_canfd-fixes-v1-0-5ce385b5ab10@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKRY4WYC/x3LSwqFMAxA0a1IxgasP9StiEhJUw1ClfbxEMS9G
 x0eLveCxFE4wZBdEPkvSfagMHkGtNqwMIpTQ1mUddEbg2QDxp02WuWYFd6hl5MTVtSYhuu2s86
 D7kfkL+g9wnsFPn8w3fcDZrbRQHQAAAA=
X-Change-ID: 20240911-can-rockchip_canfd-fixes-3c515e468adf
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.15-dev-88a27
X-Developer-Signature: v=1; a=openpgp-sha256; l=774; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=z1Sls2n11L+NyqRyx21XaMNYbilJHnl4mnyykHR+kB4=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm4VilI0P9TBDe89yRWf6HL3KJAgbMZjw8r7kTS
 DuF7qx7jVGJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZuFYpQAKCRAoOKI+ei28
 b3sxB/9K+4jwWrSFXsxaF9hmc0HDQI2tlaPXFcnWO26UFF6XTq5QHVukznE9iHMTKApMsRStFag
 hcO83Z959iDeFd72z49okZRCyYTm4pXHdD1+tLllaBdc3MwtqAV+TO0WUQ/mA614QhZXzrTAmBi
 wCsobUxr2x75uD8AccRRrhuPBHB6OwyZVqAs+w3UCVcefpTr7y2WZ3SPkfQQthzlNRyytjsrOp6
 8aTTUrI+cTbFRn1sYHKfyn4eaaAQ5IrNvFhj8vwD0Bq/bQu30TE5+EYeDYI7+xL7Xhb5oQyyg8R
 3fBtyk609PyTmnwQ6a5ZV5oCNxUnLF0Fsa/aTkSL7gMG6px7
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_014534_867358_6F8EFF29 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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

This series updates the delay calculation for the timekeeping delayed
work and fixes the decoding of the error code register.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Arnd Bergmann (1):
      can: rockchip_canfd: rkcanfd_timestamp_init(): rework delay calculation

Marc Kleine-Budde (1):
      can: rockchip_canfd: rkcanfd_handle_error_int_reg_ec(): fix decoding of error code register

 drivers/net/can/rockchip/rockchip_canfd-core.c      | 4 +---
 drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 4 ++--
 2 files changed, 3 insertions(+), 5 deletions(-)
---
base-commit: f3b6129b7d252b2fbdcac2e0005abc6804dc287c
change-id: 20240911-can-rockchip_canfd-fixes-3c515e468adf

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
