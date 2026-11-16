Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D925606A882
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 10:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t3lC5n7u;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=RqDRWir0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1Z7ADk0p7XFYeh1wLBnh/Jy4dmO6NQ/TpqcNH7w6B/w=; b=t3lC5n7uhcZVP374dPtzSwh7CF
	JWLl3oUlb7FihX8/dVwa/exQGsCtWfDMHvR8pWPZoJqkLvZK2RfVI/rjX8Dz9fgT06h6CO10vcRUM
	ylTREBDsb9K3A88gEqbXYoIb5TpkSgQh++jUvpFvyWTofallfSoV4/xP+wc32CQ5MooRFc7KU7q/H
	Ae0E6uN1UsfMtwInZ08QEsF05/axtg4TxAjfljWB3NF6nmBiy/Dg126H1s9lUVSh5BukBVzmZyi7o
	V3ZkY2N38e3g/GFmaWWyfVGY0Is/WwZngOZObh6uUVD6nMLnp0+vtIqO/t0RfjbT2cgMxFm6WOdYN
	WNEoB4/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStfo-00000001u5x-0w9c;
	Mon, 16 Nov 2026 10:10:52 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStfj-00000001u4p-37CB
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 10:10:50 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 3110D60E2E
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 11:10:46 +0100 (CET)
Received: (qmail 28155 invoked by uid 990); 16 Nov 2026 10:10:46 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 16 Nov 2026 11:10:45 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v2 1/2] wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
Date: Mon, 16 Nov 2026 10:08:03 +0000
Message-ID: <20261116100804.425592-4-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261116100804.425592-2-leonard@lausen.nl>
References: <20261116100804.425592-2-leonard@lausen.nl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: -----
X-Rspamd-Report: REPLY(-4) BAYES_HAM(-2.999999) MID_CONTAINS_FROM(1) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -5.599999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=sHlgw8fk8WKCnGQM40/fVqDVr+su7sFDjaRFwuBjyEE=;
	b=RqDRWir0iSSeTbhe72BKJIU+Zmo/9kT+jEJhuXAl7hgJBYSYMbMQgzv333Ycu20ycROxqSwCOx
	DL8ov5h+tUmXzqjPEpGVcririvrTJY1w9hcdzWpZ1KOzpDGpU4E6bVnbuhDJJqc83cngTRr0hUir
	B3G3YoKpOqMgimF6ST1Mw7mFbX17OOycr5LLfFp7Gp9qgYhoUAfOYWstij90Aj0TfiCVXZAwox4z
	UKvflM1TRCzb3ldnMDeo3oqJX/V8IrdNTtH8Pgdf7EE4og36voxbHAEMOFcyqnpR/1INqE/1T8/6
	9/8OxFn7gRKD7tf/2i/bfeBggFfvMEhtnWLQJ70rsxyud6diuS7cI6JU+EjJnT8J0+TGQaltZC2b
	eOXDOveSDHHoaAFQsQsScSPHXPyuTI0xJhDCx3B1N/6j829e7ifcx1/Zu96FqBTkDmkcUCERNC2y
	kmtUp3p8oK7Wf8PsoZJPbh5mAdg1LOvgee77Ctv4re1YDZDuymJaR7cbTcxBO/s1spdotYTSZw9X
	B14ELXRkXwUyNDepjgOw+6zBsM8reesCx1NzmCjxPbuQEnEnwjGBXnYfaC4fJ9/rWXt5PJ+mwmto
	SZ6scOpaXFkXNtO1pgA9HQMC0OpVMI92PxKbJ43TN7RHRw74fQIlmpJAeTpeLp9/2BIi4JH0Ua1O
	Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_021048_348718_DA36DF28 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RTL8822C forwards every control-frame subtype to the host by default.
ACK, Block Ack, RTS and CTS frames are handled by hardware, but forwarding
them also adds small SDIO transfers to the data path.

Clear these four subtypes from the SDIO default RX filter. Retain BAR,
PS-Poll and the remaining subtypes, and store the default in rxfltmap1
so FIF_CONTROL can still request all control frames.

Limit the new default to SDIO, where profiling identified this overhead.
PCIe and USB receive paths have not been tested with this filter setting.

FriendlyElec's RTL8822CS driver also filters control frames at startup;
this change retains additional subtypes for mac80211.

Link: https://github.com/friendlyarm/rtl8822cs/blob/c8b944a34bba2116fcdb060362bde40242bb87e5/hal/rtl8822c/rtl8822c_halinit.c
Signed-off-by: Leonard Lausen <leonard@lausen.nl>
---
 drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++++
 drivers/net/wireless/realtek/rtw88/rtw8822c.c | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/net/wireless/realtek/rtw88/reg.h b/drivers/net/wireless/realtek/rtw88/reg.h
index afcdb66fdb9a1..8e220580be4f8 100644
--- a/drivers/net/wireless/realtek/rtw88/reg.h
+++ b/drivers/net/wireless/realtek/rtw88/reg.h
@@ -587,6 +587,10 @@
 
 #define REG_RXFLTMAP0		0x06A0
 #define REG_RXFLTMAP1		0x06A2
+#define BIT_RXFLTMAP1_BACK	BIT(9)
+#define BIT_RXFLTMAP1_RTS	BIT(11)
+#define BIT_RXFLTMAP1_CTS	BIT(12)
+#define BIT_RXFLTMAP1_ACK	BIT(13)
 #define REG_RXFLTMAP2		0x06A4
 #define REG_RXFLTMAP4		0x068A
 #define REG_BT_COEX_TABLE0	0x06C0
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822c.c b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
index 09315d23e2c40..03e714c3c2e7a 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
@@ -2096,6 +2096,16 @@ static int rtw8822c_mac_init(struct rtw_dev *rtwdev)
 	rtw_write8(rtwdev, REG_WMAC_TRXPTCL_CTL_H  + 2, WLAN_BAR_ACK_TYPE);
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
+	if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_SDIO) {
+		/*
+		 * Hardware handles these frames; retain BAR and PS-Poll for
+		 * mac80211. FIF_CONTROL restores all subtypes for monitors.
+		 */
+		rtwdev->hal.rxfltmap1 &= ~(BIT_RXFLTMAP1_BACK |
+					   BIT_RXFLTMAP1_RTS |
+					   BIT_RXFLTMAP1_CTS |
+					   BIT_RXFLTMAP1_ACK);
+	}
 	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
