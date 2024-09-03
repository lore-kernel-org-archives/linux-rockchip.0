Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4424ECD342C
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+ya+mDuYCIz47USxlkJa/ZhwepPMGzRjR9JOQamfbM=; b=riZiKXaGU3mh1i
	W3XxJ8aFnwPYwRuN+cRzo+LIEUh9uuWIzsWxAy6GL3Y0EDz2j5igf1/5pJwLnkd105gwSKRpjnrTV
	+9e+owCYQh8FYogG39fzXTderdfH+5E35Ry1vjxM5V1wk2g4pgGznXMZk9kpRHXziPKjrWY6IOy0h
	SYLlXhXCOcvPV0WHEvOikHDik2si7oUC9vbUONeX8j1tUcqiAAiZqKwOqK3CEIT82mxD8rj9wgFfU
	u6B71zQn25tYfldOd9xDwS4E+54hrrVrCabrb63DjbykkJjO21xx1va5/9qs9IwIcSYEViWOlwDlc
	4fU6EKTCYGFYk3R2QCpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPrx-0000000H9eQ-3BK4;
	Tue, 03 Sep 2024 09:30:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkM-0000000H7UJ-42K0
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 09:22:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=i6tppQfxfxdYBvGE601r8Xs9q3FDGSJHqNrH6joF8c4=; b=H8vRb8ezk0aYS2MNRpzp4D4l4R
	ysEx7ieVPFjhuEeSvSwlnui3LYhvmLuceEqxvfS0lC9lCBXabLMRXyQndSr/UJqqmRgg/d2zbPpTi
	DSwbZ0XlFWOVSY3if3jmWNXlAk3TUq85fzQkgDvLD6ppiM7AEKSV3a0aC12AHOHTukuCUWJjwm2El
	qN35vGbgEQaGJmWLkVzoGIwBvwWMPDr/q+SUQ5ftRw7A1tXz6gIfMz3+6cj1rhtzWw4E3ubXwkzDo
	/9MZPLk3L3/bH8765g2jX5Xu2An2anrJqHsbkXTYnjM28f5KFnvud+0y8/F+cNfcxTcJsvrBlddUv
	9dRCM03g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPkI-0000000CIZg-1Nds
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:22:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPk6-0000ZS-3t
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:30 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPk5-0059KL-HG
	for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2024 11:22:29 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 3C58033105F
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 09:22:29 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id B402B33101E;
	Tue, 03 Sep 2024 09:22:26 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id ccd612d9;
	Tue, 3 Sep 2024 09:22:26 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH can-next v4 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Date: Tue, 03 Sep 2024 11:21:42 +0200
Message-Id: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACfV1mYC/3XNQQ6CMBAF0KuYrq1pp6WAK+9hXEA7hcakkBYbD
 OHuVjaaoMufP//NQiIGh5GcDwsJmFx0g89BHg9E943vkDqTMwEGkpVQ0zDou+7dSHXjraEShNA
 lt0xrRfJoDGjdvIFXkk+ox3kit9z0Lk5DeG6fEt/6f2jilFHbcCiYNapFcRnRd48pDN7NJ4Obl
 +DLEHxnQDZMrZjURStbrH4a4mNUgu0M8TYkKFBKFsI2O2Nd1xenqoohQwEAAA==
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=4377; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=kCuY8MmnnW/PQL7ZyUIX6fk5iss9vki4yIQzIHMYVkU=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm1tUzxqM199Jmoc5+mT7otuf8c+jG/+jRDYIdQ
 prxAiNc/AyJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtbVMwAKCRAoOKI+ei28
 bxxKB/9NlP5geWnExhqi7KHf7xoEZmXOewmnlDhsfH1sWlDoVPOBJwtk9iQwDcRmGIAstFT/IAT
 rIA+IDVLUh4J6RA2jc1fEvHbyk7YDnNIADZH+57uU/cksBBumdQos0yhG3+c60oSPNLW/WZBN5V
 hKyb+sdPZ2PnZUDp74qEaxWs4LaYv+ETO7L/ivQpaoqEi1+Kq3qhp015RGSqi0mBUi6ye69ZUtD
 o4Jo+vil4cBOJr2Y+xq5g22XWf5lEchrx+jGBIYTZ9CdhgYjlFy1n0pJVJmSRZf+aJmMlPQ1xsB
 yiN4NAH7AH4Pls+FCmY6UMc8bqD53K6XxXbYcqTZuHO7G6hP
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_102242_614584_40E1870C 
X-CRM114-Status: GOOD (  15.01  )
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

This series adds support for the CAN-FD IP core found on the Rockchip
RK3568.

The IP core is a bit complicated and has several documented errata.
The driver is added in several stages, first the base driver including
the RX-path. Then several workarounds for errata and the TX-path, and
finally features like hardware time stamping, loop-back mode and
bus error reporting.

regards,
Marc

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Changes in v4:
- dt-bindings: renamed to rockchip,rk3568v2-canfd.yaml to match the
  first compatible
- dt-bindings: fix "$id" in yaml (thanks Rob's bot)
- all: add Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
- Link to v3: https://patch.msgid.link/20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de

Changes in v3:
- dt-bindings: renamed file to rockchip,rk3568-canfd.yaml (thanks Rob)
- dt-bindings: reworked compatibles (thanks Rob)
- Link to v2: https://lore.kernel.org/all/20240731-rockchip-canfd-v2-0-d9604c5b4be8@pengutronix.de

Changes in v2:
- dt-bindings: remove redundant words from subject and patch
  description (thanks Rob)
- dt-bindings: clean up clock- and reset-names (thanks Rob)
- base driver: add missing bitfield.h header
- base driver: rkcanfd_handle_rx_int_one(): initialize header to avoid
  uninitialzied variable warning on m68k
- base driver: rkcanfd_get_berr_counter_raw(): don't add assigned only
  variable (bec_raw), move to 14/20 (thanks Simon)
- CAN-FD frame equal check + TX-path: squash, to avoid unused
  functions (thanks Simon)
- TX-path: rkcanfd_handle_tx_done_one(): don't add assigned only
  variable (skb), move to 18/20 (thanks Simon)
- HW-timetamping: add missing timecounter.h header (thanks Simon)
- Link to v1: https://lore.kernel.org/all/20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de

---
David Jander (2):
      arm64: dts: rockchip: add CAN-FD controller nodes to rk3568
      arm64: dts: rockchip: mecsbc: add CAN0 and CAN1 interfaces

Marc Kleine-Budde (18):
      dt-bindings: can: rockchip_canfd: add rockchip CAN-FD controller
      can: rockchip_canfd: add driver for Rockchip CAN-FD controller
      can: rockchip_canfd: add quirks for errata workarounds
      can: rockchip_canfd: add quirk for broken CAN-FD support
      can: rockchip_canfd: add support for rk3568v3
      can: rockchip_canfd: add notes about known issues
      can: rockchip_canfd: rkcanfd_handle_rx_int_one(): implement workaround for erratum 5: check for empty FIFO
      can: rockchip_canfd: rkcanfd_register_done(): add warning for erratum 5
      can: rockchip_canfd: add TX PATH
      can: rockchip_canfd: implement workaround for erratum 6
      can: rockchip_canfd: implement workaround for erratum 12
      can: rockchip_canfd: rkcanfd_get_berr_counter_corrected(): work around broken {RX,TX}ERRORCNT register
      can: rockchip_canfd: add stats support for errata workarounds
      can: rockchip_canfd: prepare to use full TX-FIFO depth
      can: rockchip_canfd: enable full TX-FIFO depth of 2
      can: rockchip_canfd: add hardware timestamping support
      can: rockchip_canfd: add support for CAN_CTRLMODE_LOOPBACK
      can: rockchip_canfd: add support for CAN_CTRLMODE_BERR_REPORTING

 .../bindings/net/can/rockchip,rk3568v2-canfd.yaml  |  74 ++
 MAINTAINERS                                        |   8 +
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     |  14 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           |  39 +
 drivers/net/can/Kconfig                            |   1 +
 drivers/net/can/Makefile                           |   1 +
 drivers/net/can/rockchip/Kconfig                   |   9 +
 drivers/net/can/rockchip/Makefile                  |  10 +
 drivers/net/can/rockchip/rockchip_canfd-core.c     | 969 +++++++++++++++++++++
 drivers/net/can/rockchip/rockchip_canfd-ethtool.c  |  73 ++
 drivers/net/can/rockchip/rockchip_canfd-rx.c       | 299 +++++++
 .../net/can/rockchip/rockchip_canfd-timestamp.c    | 105 +++
 drivers/net/can/rockchip/rockchip_canfd-tx.c       | 167 ++++
 drivers/net/can/rockchip/rockchip_canfd.h          | 553 ++++++++++++
 14 files changed, 2322 insertions(+)
---
base-commit: da4f3b72c8831975a06eca7e1c27392726f54d20
change-id: 20240729-rockchip-canfd-4233c71f0cc6

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
