Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15E6606A323
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 19:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w9qEyt6G;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=DbTVzRn3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ec3F4MVTXZnzkHbrVgw7lk6uGTWqAnNIehPGTHSK9k4=; b=w9qEyt6GPdBhrX6inPNFErqxJ9
	FR088pvePabCZihKhQk+cVCg0g4ASW1jRT+eloB638ghemB8hJRws1LKpQ4H/rBfeIT5CjfpI6djR
	AAJALVxalz5eQMWpsWULifw1DxNB3Ql/JqFxNsaN/wravIuRojAok8iIzsP5NAAod4pbUV9kOvMIO
	F/oLUsKXPCHZYIUy3/5YrwKDYjlmX2xQCCob4vCE5waC4Wv43yjnBxAFW+D4UsVKQa1eJ3e5wrI4X
	ZzAqZz1pJP65VWmf1FB9UZw9LVa5swkoqcPvz+ncFYFB6UsY8fOBMF7C0wWdQ5BwQlzG6+I76fQpE
	BC3OTy9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeor-0000000EDyX-3jal;
	Thu, 26 Nov 2026 19:07:45 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWeoo-0000000EDxJ-3EFS
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 19:07:44 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 5EC4061986
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 20:07:41 +0100 (CET)
Received: (qmail 28566 invoked by uid 990); 26 Nov 2026 19:07:41 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Thu, 26 Nov 2026 20:07:41 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	=?utf-8?q?David_H=C3=A4rdeman?= <david@hardeman.nu>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v5 1/2] wifi: rtw88: 8822c: filter hardware-handled control frames on SDIO
Date: Thu, 26 Nov 2026 19:07:32 +0000
Message-ID: <20261126190734.1151883-2-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261126190734.1151883-1-leonard@lausen.nl>
References: <20261126190734.1151883-1-leonard@lausen.nl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: -----
X-Rspamd-Report: REPLY(-4) BAYES_HAM(-3) MID_CONTAINS_FROM(1) MIME_GOOD(-0.1) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=kLl1y4e1euzJToTrfpuJCblhgzF66HZ0uAKxJO/0m3g=;
	b=DbTVzRn3QsgEP++hzZg5xbvV2bWkPAklPkvpaiHhGItAmCL6BJmpfog6ruM+YeetzHg/4YtiBJ
	8a8txEmvREjpqBgR/fitnSxgNAdwXugyiOTzgmf1qC7RK5nv/+fp2oQbNssnZfOnraM1MGBd/Dcm
	h+P3dPzbseRr9FnxmPiIerZQA5LEH27+sVAfr+msTavnzgtqmbUWzf1lz6ZRg2iQhTIGluBfWrlm
	mDMtrQ/3O3HBAeaKAirgw2/14UAnvDXu/0ubbfmpvkXPxOm5KiMc2XkX6YjFMIrJUE27WGuTf9zu
	Z1IHHQj1Ey1AH6i3v0ELhzId9KAsHxaPJbiAW/kKkqKSUtybUCwfmpzkQH7Kmx9UQISBaio2Wz2J
	qPd4JvbrTREHAqB9uQnw9Vh5p6byK6PVeI87vnYOqSK0PYBK6dN6Ix8cQBICy+2MGW7ODeFR+y16
	EjR5byvqUjDQwu8sgVJ4KVmMO1D66luDLqs4/1mHLSCQFgs7hgQgDPZcyis5hu2X0QSNA9xEFKm3
	pBBeKeeAkcx/58MSuKZnOMBXanb0O4eUwFtmsvsCEGo8r8GrMTj68/yy7EXnT3hEbh90oT+UCgn7
	9UmxnDk/hUISKWjUtG0sFsoGKiOuKbdC2ZjQ4RdJoxsb1VUmWjqwLuIcPyJ6bLoMAswslEFwcsU1
	E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110742_948393_1E6734FA 
X-CRM114-Status: GOOD (  17.12  )
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

Clear these four subtypes from the normal SDIO RX filter, retaining BAR,
PS-Poll and the remaining subtypes. Cache the current FIF_CONTROL request
separately from that default, using the full requested flags even when
changed_flags does not contain FIF_CONTROL.

Use a shared writer in filter configuration, every chip initializer and
both beamforming paths. This keeps the monitor override across IPS wake,
MAC reinitialization and beamforming, while removing the request restores
the current normal filter.

Limit the reduced default to SDIO, where profiling identified this
overhead. PCIe and USB receive paths have not been tested with it.
FriendlyElec's RTL8822CS driver also filters control frames at startup;
this change retains additional subtypes for mac80211.

Link: https://github.com/friendlyarm/rtl8822cs/blob/c8b944a34bba2116fcdb060362bde40242bb87e5/hal/rtl8822c/rtl8822c_halinit.c
Suggested-by: Luka Gejak <luka.gejak@linux.dev>
Signed-off-by: Leonard Lausen <leonard@lausen.nl>
Reviewed-by: Luka Gejak <luka.gejak@linux.dev>
---
 drivers/net/wireless/realtek/rtw88/bf.c       |  4 ++--
 drivers/net/wireless/realtek/rtw88/mac80211.c | 10 ++++------
 drivers/net/wireless/realtek/rtw88/main.c     | 11 +++++++++++
 drivers/net/wireless/realtek/rtw88/main.h     |  2 ++
 drivers/net/wireless/realtek/rtw88/reg.h      |  4 ++++
 drivers/net/wireless/realtek/rtw88/rtw8723x.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8814a.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8821c.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8822b.c |  2 +-
 drivers/net/wireless/realtek/rtw88/rtw8822c.c | 12 +++++++++++-
 drivers/net/wireless/realtek/rtw88/rtw88xxa.c |  2 +-
 11 files changed, 39 insertions(+), 14 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtw88/bf.c b/drivers/net/wireless/realtek/rtw88/bf.c
index 7313ecc5c82a2..088e4ac88055f 100644
--- a/drivers/net/wireless/realtek/rtw88/bf.c
+++ b/drivers/net/wireless/realtek/rtw88/bf.c
@@ -138,7 +138,7 @@ void rtw_bf_cfg_sounding(struct rtw_dev *rtwdev, struct rtw_vif *vif,
 			RTW_SND_CTRL_SOUNDING);
 	rtw_write8(rtwdev, REG_SND_PTCL_CTRL + 3, 0x26);
 	rtwdev->hal.rxfltmap1 &= ~BIT_RXFLTMAP1_BF_REPORT_POLL;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write8_clr(rtwdev, REG_RXFLTMAP4, BIT_RXFLTMAP4_BF_REPORT_POLL);
 
 	if (vif->net_type == RTW_NET_AP_MODE)
@@ -271,7 +271,7 @@ void rtw_bf_enable_bfee_mu(struct rtw_dev *rtwdev, struct rtw_vif *vif,
 
 	/* accept NDPA and BF report poll */
 	rtwdev->hal.rxfltmap1 |= BIT_RXFLTMAP1_BF;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 }
 EXPORT_SYMBOL(rtw_bf_enable_bfee_mu);
 
diff --git a/drivers/net/wireless/realtek/rtw88/mac80211.c b/drivers/net/wireless/realtek/rtw88/mac80211.c
index 5e40cf06a9e32..11ffafa051ddc 100644
--- a/drivers/net/wireless/realtek/rtw88/mac80211.c
+++ b/drivers/net/wireless/realtek/rtw88/mac80211.c
@@ -285,14 +285,12 @@ static void rtw_ops_configure_filter(struct ieee80211_hw *hw,
 
 	mutex_lock(&rtwdev->mutex);
 
+	rtwdev->hal.rx_control = *new_flags & FIF_CONTROL;
+
 	rtw_leave_lps_deep(rtwdev);
 
-	if (changed_flags & FIF_CONTROL) {
-		if (*new_flags & FIF_CONTROL)
-			rtw_write16(rtwdev, REG_RXFLTMAP1, 0xffff);
-		else
-			rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
-	}
+	rtw_update_rx_filter(rtwdev);
+
 	if (changed_flags & FIF_ALLMULTI) {
 		if (*new_flags & FIF_ALLMULTI)
 			rtwdev->hal.rcr |= BIT_AM;
diff --git a/drivers/net/wireless/realtek/rtw88/main.c b/drivers/net/wireless/realtek/rtw88/main.c
index f7708ad17b6f5..f857273417137 100644
--- a/drivers/net/wireless/realtek/rtw88/main.c
+++ b/drivers/net/wireless/realtek/rtw88/main.c
@@ -728,6 +728,17 @@ void rtw_set_rx_freq_band(struct rtw_rx_pkt_stat *pkt_stat, u8 channel)
 }
 EXPORT_SYMBOL(rtw_set_rx_freq_band);
 
+void rtw_update_rx_filter(struct rtw_dev *rtwdev)
+{
+	u16 rxfltmap1 = rtwdev->hal.rxfltmap1;
+
+	if (rtwdev->hal.rx_control)
+		rxfltmap1 = 0xffff;
+
+	rtw_write16(rtwdev, REG_RXFLTMAP1, rxfltmap1);
+}
+EXPORT_SYMBOL(rtw_update_rx_filter);
+
 void rtw_set_dtim_period(struct rtw_dev *rtwdev, u8 dtim_period)
 {
 	rtw_write32_set(rtwdev, REG_TCR, BIT_TCR_UPDATE_TIMIE);
diff --git a/drivers/net/wireless/realtek/rtw88/main.h b/drivers/net/wireless/realtek/rtw88/main.h
index 6ecbeb4ffe4be..b2df77098723a 100644
--- a/drivers/net/wireless/realtek/rtw88/main.h
+++ b/drivers/net/wireless/realtek/rtw88/main.h
@@ -1966,6 +1966,7 @@ struct rtw_sar {
 struct rtw_hal {
 	u32 rcr;
 	u16 rxfltmap1;
+	bool rx_control;
 
 	u32 chip_version;
 	u8 cut_version;
@@ -2241,6 +2242,7 @@ enum nl80211_band rtw_hw_to_nl80211_band(enum rtw_supported_band hw_band)
 }
 
 void rtw_set_rx_freq_band(struct rtw_rx_pkt_stat *pkt_stat, u8 channel);
+void rtw_update_rx_filter(struct rtw_dev *rtwdev);
 void rtw_set_dtim_period(struct rtw_dev *rtwdev, u8 dtim_period);
 void rtw_get_channel_params(struct cfg80211_chan_def *chandef,
 			    struct rtw_channel_params *ch_param);
diff --git a/drivers/net/wireless/realtek/rtw88/reg.h b/drivers/net/wireless/realtek/rtw88/reg.h
index afcdb66fdb9a1..d7bdb3b146008 100644
--- a/drivers/net/wireless/realtek/rtw88/reg.h
+++ b/drivers/net/wireless/realtek/rtw88/reg.h
@@ -587,6 +587,10 @@
 
 #define REG_RXFLTMAP0		0x06A0
 #define REG_RXFLTMAP1		0x06A2
+#define BIT_RXFLTMAP1_ACK	BIT(13)
+#define BIT_RXFLTMAP1_CTS	BIT(12)
+#define BIT_RXFLTMAP1_RTS	BIT(11)
+#define BIT_RXFLTMAP1_BACK	BIT(9)
 #define REG_RXFLTMAP2		0x06A4
 #define REG_RXFLTMAP4		0x068A
 #define REG_BT_COEX_TABLE0	0x06C0
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8723x.c b/drivers/net/wireless/realtek/rtw88/rtw8723x.c
index 5dd306cb058ea..66d37b61dc9db 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8723x.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8723x.c
@@ -357,7 +357,7 @@ static int __rtw8723x_mac_init(struct rtw_dev *rtwdev)
 
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);
 
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8814a.c b/drivers/net/wireless/realtek/rtw88/rtw8814a.c
index b6916d3dc6d33..b401a4581d078 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8814a.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8814a.c
@@ -401,7 +401,7 @@ static int rtw8814a_mac_init(struct rtw_dev *rtwdev)
 
 	rtw_write16(rtwdev, REG_RXFLTMAP0, 0xffff);
 	rtwdev->hal.rxfltmap1 = 0x0400;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, 0xffff);
 
 	rtw_write8(rtwdev, REG_MAX_AGGR_NUM, 0x36);
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8821c.c b/drivers/net/wireless/realtek/rtw88/rtw8821c.c
index 83ac6b732e800..ea97c9658979f 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8821c.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8821c.c
@@ -250,7 +250,7 @@ static int rtw8821c_mac_init(struct rtw_dev *rtwdev)
 	/* WMAC configuration */
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);
 	rtw_write8(rtwdev, REG_RX_PKT_LIMIT, WLAN_RXPKT_MAX_SZ_512);
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822b.c b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
index cb05891c16274..f87a6ae567ee8 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8822b.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
@@ -276,7 +276,7 @@ static int rtw8822b_mac_init(struct rtw_dev *rtwdev)
 	/* WMAC configuration */
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);
 	rtw_write8(rtwdev, REG_RX_PKT_LIMIT, WLAN_RXPKT_MAX_SZ_512);
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822c.c b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
index 09315d23e2c40..8c4046cf65652 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw8822c.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
@@ -2096,7 +2096,17 @@ static int rtw8822c_mac_init(struct rtw_dev *rtwdev)
 	rtw_write8(rtwdev, REG_WMAC_TRXPTCL_CTL_H  + 2, WLAN_BAR_ACK_TYPE);
 	rtw_write16(rtwdev, REG_RXFLTMAP0, WLAN_RX_FILTER0);
 	rtwdev->hal.rxfltmap1 = WLAN_RX_FILTER1;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	if (rtw_hci_type(rtwdev) == RTW_HCI_TYPE_SDIO) {
+		/*
+		 * Do not forward these control frames to mac80211; retain BAR
+		 * and PS-Poll. The common writer preserves FIF_CONTROL requests.
+		 */
+		rtwdev->hal.rxfltmap1 &= ~(BIT_RXFLTMAP1_ACK |
+					   BIT_RXFLTMAP1_CTS |
+					   BIT_RXFLTMAP1_RTS |
+					   BIT_RXFLTMAP1_BACK);
+	}
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, WLAN_RX_FILTER2);
 	rtw_write32(rtwdev, REG_RCR, WLAN_RCR_CFG);
 	rtw_write8(rtwdev, REG_RX_PKT_LIMIT, WLAN_RXPKT_MAX_SZ_512);
diff --git a/drivers/net/wireless/realtek/rtw88/rtw88xxa.c b/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
index 5ffa29d18168e..7aacdb64c6e3c 100644
--- a/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
+++ b/drivers/net/wireless/realtek/rtw88/rtw88xxa.c
@@ -513,7 +513,7 @@ static void rtw88xxa_init_wmac_setting(struct rtw_dev *rtwdev)
 {
 	rtw_write16(rtwdev, REG_RXFLTMAP0, 0xffff);
 	rtwdev->hal.rxfltmap1 = 0x0400;
-	rtw_write16(rtwdev, REG_RXFLTMAP1, rtwdev->hal.rxfltmap1);
+	rtw_update_rx_filter(rtwdev);
 	rtw_write16(rtwdev, REG_RXFLTMAP2, 0xffff);
 
 	rtw_write32(rtwdev, REG_MAR, 0xffffffff);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
