Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955FA606A335
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 14:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=s/tUh4ad;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=nTECe/ak
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CwWbn7PCOeaaE66aPqzfDXAx8JjYrJ/Ie95MvjCe4gU=; b=s/tUh4adIVkTb4EZyW1ogTNQh+
	HfiY5a1asI6sCGhxMukN4YgRAEypEyfZCoHH+M3ed/cqi//mq6/6LBre3O64TUPRQKQmaDIR4e8dQ
	vEQ/XwzPSJr8HdWYfUHzkNhlJyqAXhxBMm/miyRr/TG3l6wiMXAtnciajL1HNHSlPucSk0naTNPev
	5w0kE0siYlL7fktB32i2HBrJnRpCVlYGUTFGWyuzGB1Lmd90nAJo0z11Il6QQfN5qh1BtpW4zL6Sd
	p81bJpAiG97Q72o+Cm114F6/BrHgE2aD5xJKFXe7TY/pLaLaSOhTfSf21s9zkLEemaFapyIYqM4/b
	tySYWl9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSbET-000000003r3-0Mpw;
	Sun, 15 Nov 2026 14:29:25 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSbEQ-000000003p7-2dp3
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 14:29:24 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 0690E60D76
	for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 15:29:20 +0100 (CET)
Received: (qmail 28843 invoked by uid 990); 15 Nov 2026 14:29:19 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Sun, 15 Nov 2026 15:29:19 +0100
Message-ID: <3813f20a-7e0a-436e-b8f6-a29756280a74@lausen.nl>
Date: Sun, 15 Nov 2026 15:29:18 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] wifi: rtw88: 8822c: filter hardware-handled control
 frames on SDIO
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-wireless@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261115142330.359247-2-leonard@lausen.nl>
 <20261115142330.359247-4-leonard@lausen.nl>
Content-Language: en-US
From: Leonard Lausen <leonard@lausen.nl>
In-Reply-To: <20261115142330.359247-4-leonard@lausen.nl>
X-Rspamd-Bar: ---
X-Rspamd-Report: BAYES_HAM(-2.999999) XM_UA_NO_VERSION(0.01) MIME_GOOD(-0.1)
X-Rspamd-Score: -3.089999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=gsaC/4/UTX3ni3aFcTq1jM1TUloizS3Ttt12uTCL2X8=;
	b=nTECe/akQIMrRRC7vGgLQIr15P+dQ8YGAnKp6ZSGFNYv/SAVL9Woa/qdftW8WEXdsXTWosXtU+
	AQnlYogzaS5Ef5nDIBf9M6n303MbJMcjd1oQVHUlNUHRPM/wwWvpsH3Pjg3IvbQIaze3XywBX0ZG
	SPnCRjnX5aT91d5bOp/hqgP/JM2OhKP4zbgdfYV/sWVM98+wyLlJ5NTJ8IoQrxWbud1SLyr/tBWj
	TjV+67w/8fdOKFhFg464yjmEUNWXBJRX1ScOeUQ9Gu/avSP9hVo1TlMV50kZT1tIRUpY/vgWBYoV
	YdzxJ95FtwypaTEANZB8+O5v6PaG1Mre5KZSzkqThMG/lV+f4X4kE3PHiTBCEPMA/TDk92gx3fzV
	Hyux0gqWlINC4cCNhf37gOtPdY0YloUy89b7YN/uGKE/7ioE9PO9968DjLVNhX/HQubSaDoyNvml
	yIW638ttdNbMkixyKdGfmuoY8T4MPPw1s75JXMvZJP48YT3pj47WtTrF4eVz2T1h6HGtA6jf9RHL
	5Fyw4XhghBlEaV1vDssCg2xvysq9FuTHuGE9YXoXI5AIBJ8uCL9zfTknhlE+EHFOfKLhGkmmfFwl
	8TYTO+C4g3iX63e12t0d9q6bb8ApbRZ6T/RM9O4V1+S9ciy3NOux3CMDE7jdrMT9opX5Njwixsy9
	s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_062922_813004_3CC34A82 
X-CRM114-Status: GOOD (  10.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
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

Link: 
https://github.com/friendlyarm/rtl8822cs/blob/c8b944a34bba2116fcdb060362bde40242bb87e5/hal/rtl8822c/rtl8822c_halinit.c
Assisted-by: LLM
Signed-off-by: Leonard Lausen <leonard@lausen.nl>
---
Resending with the Signed-off-by and Assisted-by tags.

  drivers/net/wireless/realtek/rtw88/reg.h      | 4 ++++
  drivers/net/wireless/realtek/rtw88/rtw8822c.c | 9 +++++++++
  2 files changed, 13 insertions(+)

diff --git a/drivers/net/wireless/realtek/rtw88/reg.h 
b/drivers/net/wireless/realtek/rtw88/reg.h
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
diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822c.c 
b/drivers/net/wireless/realtek/rtw88/rtw8822c.c
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
