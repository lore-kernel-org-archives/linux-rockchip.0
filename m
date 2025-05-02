Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0525FC3ABAA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 14:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QyZZae0w2oH2Nv8wf67rddeRF0a+fiYMivgZMR4TSBc=; b=mORBJ1u0o4t+cl
	A0PLBPH/iTctj3ZsM0PL62lpnFr4mhPdsu97e96M6/VH/gtsNO13PcmPhqdEsXDO9rZ/8oRlisevL
	yXSAHlr8up5eBmwB1iI8T1WoRch6mT9ftDR/pgHfeIWegP1SmNSLf245Y1zHDS5Y8Hq2+elFTcqK3
	/OzLBj6+AB+iOMaSPzMW2FpOMtJSkZ8G5KD50dTiwP5EHWzZkzVD1BNXk+8bcYZNhVDiY8Ar+8x2R
	2XMdYbi+99Q0JGGsQ0VE15s10+yTZCbh/Jrl6Cr41RcN5reQaQzCdM+pTDF0AYg+Up0KkLiCsF6r5
	gdGSyREWaW1pH88TDNHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uArD3-00000002AQU-1xLh;
	Fri, 02 May 2025 14:17:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAr9O-000000029fQ-0g70
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 14:14:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1uAr9K-0000s1-5M
	for linux-rockchip@lists.infradead.org; Fri, 02 May 2025 16:13:58 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1uAr9J-000lOt-2q
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 16:13:57 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 8CCB24065AA
	for <linux-rockchip@lists.infradead.org>; Fri, 02 May 2025 14:13:57 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 8CF8340659C;
	Fri, 02 May 2025 14:13:56 +0000 (UTC)
Received: from hardanger.blackshift.org (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 1e9aea9b;
	Fri, 2 May 2025 14:13:56 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH 0/3] can: rx-offload: fix order of unregistration calls
Date: Fri, 02 May 2025 16:13:43 +0200
Message-Id: <20250502-can-rx-offload-del-v1-0-59a9b131589d@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABfTFGgC/x3MQQqAIBBA0avErBswJaSuEi2sGWtANBQiCO+et
 HyL/18onIULzN0LmW8pkmLD0Hewny4ejELNoJUe1ag07i5ifjB5H5IjJA7Im52MnawxRNDCK7O
 X558ua60fshOVEmQAAAA=
X-Change-ID: 20250502-can-rx-offload-del-eb79379733dd
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Thomas Kopp <thomas.kopp@microchip.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, kernel@pengutronix.de, 
 Heiko Stuebner <heiko@sntech.de>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
Cc: linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Marc Kleine-Budde <mkl@pengutronix.de>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-048ad
X-Developer-Signature: v=1; a=openpgp-sha256; l=1661; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=wKNEquMMqRCDDxXwq44IRpJvSwnrG9pSA9GxTv2slhE=;
 b=owEBbQGS/pANAwAKAQx0Zd/5kJGcAcsmYgBoFNMZ+DcELaBl0lz4gVEsR+oe731Z3vOvy7b2m
 b2FTbj9YuWJATMEAAEKAB0WIQSf+wzYr2eoX/wVbPMMdGXf+ZCRnAUCaBTTGQAKCRAMdGXf+ZCR
 nMwvB/9BEUC1dtYbDGi5TQBbvaBKY6YrVwI3NEpZhtUZWIIHSiOte6QcTtsFg97q+xbvSge7DqT
 vE/jLpU74PHl1GpDIrvyuzUO2XEAywLHiPPudUsTmWYNuJtYvo3lvHzkbI/ejsCmUM/ZEjB2RpG
 i62671TdSBAp57MN4J2M2H5POJlTqd2uLAfdVliGnOX6O+VSBax0gdtA7QqB+PtL8Bk2coH+b8u
 hyx6ilTkOcCBa0p0GCY5Q/HkibJq8kStPIUnIDgj800Tb3BrmTNG3jDu/LZVBXzsmoqzqAmz62t
 GzmcfQ1ZGb7WR4PwhLiDmUDBG/pAQHSyVcwqpEBnpkzFFvj3
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_071402_211954_7691FD58 
X-CRM114-Status: GOOD (  13.38  )
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

If a driver is removed, the driver framework invokes the driver's
remove callback. A CAN driver's remove function calls
unregister_candev(), which calls net_device_ops::ndo_stop further down
in the call stack for interfaces which are in the "up" state.

With the mcp251xfd driver the removal of the module causes the
following warning:

| WARNING: CPU: 0 PID: 352 at net/core/dev.c:7342 __netif_napi_del_locked+0xc8/0xd8

as can_rx_offload_del() deletes the NAPI, while it is still active,
because the interface is still up.

To fix the warning, first unregister the network interface, which
calls net_device_ops::ndo_stop, which disables the NAPI, and then call
can_rx_offload_del().

All other driver using the rx-offload helper have been checked and the
same issue has been found in the rockchip and m_can driver. These have
been fixed, but only compile time tested. On the mcp251xfd the fix was
tested on hardware.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Marc Kleine-Budde (3):
      can: mcp251xfd: mcp251xfd_remove(): fix order of unregistration calls
      can: rockchip_canfd: m_can_class_unregister: fix order of unregistration calls
      can: mcan: m_can_class_unregister: fix order of unregistration calls

 drivers/net/can/m_can/m_can.c                  | 2 +-
 drivers/net/can/rockchip/rockchip_canfd-core.c | 2 +-
 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)
---
base-commit: ebd297a2affadb6f6f4d2e5d975c1eda18ac762d
change-id: 20250502-can-rx-offload-del-eb79379733dd

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
