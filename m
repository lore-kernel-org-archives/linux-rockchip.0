Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFBFCA100E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w8U+a7AS+EGAsDG70h1gHWr0K0Gq3d18EhXADaePuP0=; b=elQUSd/PH09gQF
	9AL7MFzMbLDImaLbSoXqRtFSaMoQKgjSq83FEfMm9REmTLynXg4udNlXodqOoFLBmz4/VXl0Ruixo
	lpUY8OP2qDz1vicVgvVdHrh0JsqJNYR407TXnud1BUc2LvvGYxvY5udPBCMu4N7Wc58DRRCFkRI/G
	zGQbruy8rNAjpXdt8ru8AmWeB3PUSN8WY8lxZtfuzE5BQEcCwDkHeLny9Vl/ypyP7s2FsjV5hQYkN
	UebQrljjg69tFp984gEL9en28+KuUODDlxG3cE5k3nQNLp3geCkN+vK4kFklVGqWR+Wvp1AOgKW00
	trolnqIlALODr+9Z7DFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7Hm-00000007RsT-14nQ;
	Fri, 30 Aug 2024 19:27:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7Gn-00000007RLr-2Kt3
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 19:26:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gj-00063u-4S
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:49 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sk7Gi-004Dbk-DN
	for linux-rockchip@lists.infradead.org; Fri, 30 Aug 2024 21:26:48 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 1229732E128
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Aug 2024 19:26:48 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id D41AF32E0ED;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 3f107de8;
	Fri, 30 Aug 2024 19:26:45 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH can-next v3 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Date: Fri, 30 Aug 2024 21:25:57 +0200
Message-Id: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMYc0mYC/3XNTQqDMBAF4KvIrJuSP7XtqvcoXWgy0aEQJbHBI
 t69IauCdPl4877ZIGIgjHCrNgiYKNLkc1CnCszY+QEZ2ZxBcql5K68sTOZlRpqZ6byzTEulTCs
 cN6aBPJoDOloL+IB8wjyuCzxzM1JcpvApn5Io/T80CcaZ64SsubNNj+o+ox/eS5g8rWeLxUvyx
 1DiYMhs2GvDtal73ePlYOz7/gVt4Rve/wAAAA==
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
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=4059; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=H+PYOR8/pV6bhxws++RaYVUTR55YYubqw7tU6wNDWQM=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm0hzVl2FusVAXajEAut0yssqC7y0Gu1zy4gIQO
 J7dkX4BM+uJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZtIc1QAKCRAoOKI+ei28
 b4nFB/oDFFbNrBZNRWM68rKM9Dx6p3rXrYlTHGVFsb04k4tFOiUc0LHTcbv8PlA31BKSPfRi5xX
 r77ZZJ0JmW9OB3U3spouu31qQ0gMg9TwOkdHB8+YKJ9k3Uf36nxaSzCFWmka636qRENwZNhMKI8
 hk/1rb/9leFMzD2zHTaAsDI2C8ZJ6E58A3yh2+H6vZgLjYuI7nc1n2GZcjcvZtRg0usiconKlLA
 XCm3+y+6vjPk2KpKiN8YlLungWVA9otU9ygnSxYEl/gA8S5I0Q9P4oTYdFOFtRl6aOFkVeG1p+u
 kLSXuwmQnoELPsixa3/z+O7X9wP6nK8Jo6kthCn3hDC9JXBR
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_122653_632774_D8E451DB 
X-CRM114-Status: GOOD (  13.25  )
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

 .../bindings/net/can/rockchip,rk3568-canfd.yaml    |  74 ++
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
base-commit: cff69f72d33318f4ccfe7d5ff6c5616d00dd45a7
change-id: 20240729-rockchip-canfd-4233c71f0cc6

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
