Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1872C606A880
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=h0/RQVya;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=wc9by7I+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kBanEcpNAgYzyNArZpl5N6J0De+hG2BwugDNID05O+o=; b=h0/RQVya+RZ51ng6dm67FQA8ei
	zwsNoP/nn7/exqbNVEMgTuQolqWU1QtYHLHkba+yf65k9+EGu5ukbArAI0/BsPJWgef8lwuxiVlXU
	a7OD4pR7TJvO8ZDJ6UFnBd27PM2CJm/RlIWl3GBX3DVyBN3pYdt5AL91x78+HH+UV8YsJt4aOVZgj
	sbPBRFR4yn9idFNNOvzLWxzFhC+efyUkQ/N0nwQu0vIvqK8YjsCB5NtAKu8qNhCie3sgH54OGhlC4
	Oi8311r1tK0eR2LxA/LECceKZDpFQCD7z1CSR4m9S6mnz3F9krJaze9nfOUWd4tZ3GUklhUrPUh2v
	DhfM6x5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSb9s-000000002nO-1E5e;
	Sun, 15 Nov 2026 14:24:40 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSb9n-000000002jA-2JwB
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 14:24:39 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 6383260D4F
	for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 15:24:27 +0100 (CET)
Received: (qmail 22121 invoked by uid 990); 15 Nov 2026 14:24:27 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Sun, 15 Nov 2026 15:24:27 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
Date: Sun, 15 Nov 2026 14:23:30 +0000
Message-ID: <20261115142330.359247-4-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261115142330.359247-2-leonard@lausen.nl>
References: <20261115142330.359247-2-leonard@lausen.nl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: -----
X-Rspamd-Report: REPLY(-4) BAYES_HAM(-2.999999) MID_CONTAINS_FROM(1) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -5.599999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=0TRBf06mo4IgPwGwnvbNv30x92205M3V5CcT3zrUl3o=;
	b=wc9by7I+3JGBK/Oc6+bASwD97QqerUv6hamR6+se/F2occAtCIHswHSlIXEpapmfz9lsOW+rf2
	GCZST68Pd0Q2D5sotV2l1bJ2N1HTJN4Sn/u6nxp1pPviQHAWl0baeDBNZJgFycwRRUDXo7IrH+gT
	wTH7UAvbjA9+sM6FbS8qnqjOgkJaUzzfvVwWDX6ag8cX6N/MfeVVeOC2OjGIuGh6ABIyljAw0lSu
	U1sd51T1Z+RcGQ5uLN1rslJoDsM8kWhe4OthejYNsJjIld7da36T2lhpw4qvJ4czLF2i583jFU5d
	ld7EQBDoXTGwBNraF1P0BwyONNkUbe9NqoxzWcWo6L48UOGQJCf5Ve4+CO5Si+yWF9Q1Kxw8Q4K/
	Irhot6hs91bKGV5RpbFpLcvx1S2BO/SYM7S/IMXy5EhvJjZ1Vfh0cO01NXDxTXrtmOk1W09E6pVy
	YCidZt8iTwufehXAjUMkI+Qw2BU9EugERVFBwK0C8hcBxb0/VHrd/yQpntGWgR/XWHWu8CE96f8j
	W8sUlqW42/TnMumIbw3COZgOMbCPtggB65UdtrC/xcmG2jjTMlpm7R17O2fGsHj6cZNNIRX1Wo+d
	QDhVU/FeepyHz6jIIy3ZPzvdcGACHKCocMo/rYhIfzv90NDajnH7amjyfkuA0AmP5/B1SX1S1kY0
	o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_062435_739067_6DFA4607 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RTL8822C forwards every control-frame subtype to the host by default.
ACK, Block Ack, RTS and CTS frames are handled by hardware, but forwarding
them also adds small SDIO transfers to the data path.

Clear these four subtypes from the SDIO default RX filter. Retain BAR,
PS-Poll and the remaining subtypes, and store the default in rxfltmap1
so FIF_CONTROL can still request all control frames.

Limit the new default to SDIO, where profiling identified the overhead
and throughput tests measured a benefit. PCIe and USB use different
receive paths and have not been validated with this filter setting.

FriendlyElec's RTL8822CS driver also filters control frames at startup;
this change retains additional subtypes for mac80211.

On RTL8822CS/NanoPi M5 at 198 MHz SDR104, this patch alone increased
median TCP upload from 170 to 258 Mbit/s (+52%). 

A separate download test (four 30-second samples per configuration)
measured 241 to 263 Mbit/s (+9%).

Link: https://github.com/friendlyarm/rtl8822cs/blob/c8b944a34bba2116fcdb060362bde40242bb87e5/hal/rtl8822c/rtl8822c_halinit.c
---
 drivers/net/wireless/realtek/rtw88/reg.h      | 4 ++++
 drivers/net/wireless/realtek/rtw88/rtw8822c.c | 9 +++++++++
 2 files changed, 13 insertions(+)

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
index 32d9709f2c243..9c9e4f2397282 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
@@ -2096,6 +2096,15 @@ static int rtw8822c_mac_init(struct rtw_dev *rtwdev)
 	rtw_write8(rtwdev, REG_WMAC_TRXPTCL_CTL_H  + 2, WLAN_BAR_ACK_TYPE);
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
+	if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_SDIO) {
+		/* Hardware handles these frames; retain BAR and PS-Poll for
+		 * mac80211. FIF_CONTROL restores all subtypes for monitors.
+		 */
+		rtwdev->hal.rxfltmap1 &= ~(BIT_RXFLTMAP1_BACK |
+						BIT_RXFLTMAP1_RTS |
+						BIT_RXFLTMAP1_CTS |
+						BIT_RXFLTMAP1_ACK);
+	}
 	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
