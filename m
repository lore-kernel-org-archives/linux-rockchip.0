Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95807606A329
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 21:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oDnkTiWS;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=lausen.nl header.i=@lausen.nl header.a=rsa-sha256 header.s=uberspace header.b=KZ1PmW7f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZxX2+YHNvt1R8a4Mx27h64uw8c3DKEQPe4yAJ7LFeew=; b=oDnkTiWSg0wIBmteAUQUAu45ol
	+tvSb1aL6NGrzJD/TFZbSgyPHRQjmph2AfwMu2pQvUuFJ8n3vrWSr2oyi2hOxkPUAs1R3HHc3dAxn
	+eN+mFN03zrYRuxhu/bra5wfTgxr/s3QTt7DmuIk8+tUvjST9sSgvXyX0HLzeqAE6TVJBcIKumZun
	6TwNJv2i/V8j3xB/N8aFmoHAACk7B6lENDL+/YWnuaCEHoR95UHT+qSXXiyYyD6ZJGQbW5rSEzmOT
	FhlrF3U7g3c4NJjQOUgbLglWcdQfHccS0UW515SqZsDpWW9HKPgD7s0exOqfVZPCIyCckhqZuaC4T
	Sz7L9Sjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT3pu-00000003vPA-2XE6;
	Mon, 16 Nov 2026 21:01:58 +0000
Received: from mailgate01.uberspace.is ([2001:1a50:11:0:c83f:a8ff:fea6:c8da])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT3ps-00000003vNd-0dIH
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 21:01:57 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 954446068E
	for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 22:01:53 +0100 (CET)
Received: (qmail 15164 invoked by uid 990); 16 Nov 2026 21:01:53 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 16 Nov 2026 22:01:53 +0100
From: Leonard Lausen <leonard@lausen.nl>
To: Ping-Ke Shih <pkshih@realtek.com>
Cc: leonard@lausen.nl,
	Luka Gejak <luka.gejak@linux.dev>,
	=?UTF-8?q?David=20H=C3=A4rdeman?= <david@hardeman.nu>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-wireless@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH rtw-next v3 2/2] wifi: rtw88: sdio: combine free TX page register reads
Date: Mon, 16 Nov 2026 20:57:40 +0000
Message-ID: <20261116205739.462458-6-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261116205739.462458-2-leonard@lausen.nl>
References: <20261116205739.462458-2-leonard@lausen.nl>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Bar: -----
X-Rspamd-Report: REPLY(-4) BAYES_HAM(-3) MID_CONTAINS_FROM(1) MIME_GOOD(-0.1) FUZZY_BULK(0.099999) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -5.5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=u9zBG78NfuqjnWbNtLn07MUPutjuv/dSBbMhffUUwS0=;
	b=KZ1PmW7fDHjXhhn4bQ81uyNP9B6k/7SP81W5TgD7gfpkpqhy4ITvCLyYcOKCYFMMrJqewTMm+A
	CfJOVtnzLftAjm++4Umo1glEKFzGBLXWsMIrH8mJzaBvoa5P9p6S4FQbjgX4dY8HpcqnaX3LDx4I
	EUE3e2+DCOVP14/s09Z3m2AamxPHcY5a/VaIZ3QSWEZjfPU90Bk91+B0SzA1/6ngojU4Drc/w1jy
	nJgbUsw6vPEujy84+oo0eUEnYv0O+qXelOejXfjz7x5Wyn4RAeevPRuAOxYaT0JsQssKgK5ZqsoC
	au7DotyJgYdXaend+quo+Zl54V8xf6vKvdYsbQaEperQVWQVtOCAKRZ0IveBXb4dgky9zovQO7Up
	y7diWy2PWXa+erfFnFe3Zdm+mj8vLqezutTbrvU89N6NBWo5lPpE0fwOSYd9DxbALDzmAC0A165u
	FrTZLbt9j/hQ3N8XcTxxjJiYpFCYDrTZIpFVGBtc/x+AxdQ0J34+kuzXt+4b7dfmh+aPnID3lRDc
	ug8jBrgGUZQJ2mNs2IMAGciGpsVmI/CqA9cZFGiexWA/PBHXWhtxFY/nBKZBdcnRtnd+CdV0Jtr1
	8Db9NFNu4fmBs6GNzdOyZsVW/GsyxxVX/XK2bYw6UyoLiDP9OR2C3y+QKCZCemoiuHLobqKiu/Q0
	w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_130156_338094_5E91C03C 
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

TX capacity checks on non-8051 chips read three adjacent 32-bit registers
in separate SDIO requests. Combine them into one 12-byte CMD53 read when
the existing power/alignment check permits it, with the per-register
fallback otherwise. Propagate read errors before checking queue capacity.

Allocate a DMA-safe buffer at probe and copy its little-endian values
into the caller's array before releasing the host. Holding the host
through the read and copy serializes access to the shared buffer.

Signed-off-by: Leonard Lausen <leonard@lausen.nl>
---
 drivers/net/wireless/realtek/rtw88/sdio.c | 64 +++++++++++++++++++++--
 drivers/net/wireless/realtek/rtw88/sdio.h |  1 +
 2 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtw88/sdio.c b/drivers/net/wireless/realtek/rtw88/sdio.c
index ecd4d751c05a5..09337acb76749 100644
--- a/drivers/net/wireless/realtek/rtw88/sdio.c
+++ b/drivers/net/wireless/realtek/rtw88/sdio.c
@@ -26,6 +26,7 @@
 #define RTW_SDIO_TX_FIFO_HIWATER			16
 #define RTW_SDIO_TX_FIFO_LOWATER			8
 #define RTW_SDIO_TX_RETRY_DELAY			msecs_to_jiffies(1)
+#define RTW_SDIO_FREE_TXPG_COUNT			3
 
 static bool rtw_sdio_is_bus_addr(u32 addr)
 {
@@ -675,6 +676,43 @@ static atomic_t *rtw_sdio_8723bs_free_txpg(struct rtw_dev *rtwdev, u8 queue)
 	}
 }
 
+static int rtw_sdio_read_free_txpg(struct rtw_dev *rtwdev, u32 *free_txpg)
+{
+	u32 addr = rtw_sdio_to_bus_offset(rtwdev, REG_SDIO_FREE_TXPG);
+	struct rtw_sdio *rtwsdio = (struct rtw_sdio *)rtwdev->priv;
+	bool bus_claim = rtw_sdio_bus_claim_needed(rtwsdio);
+	int i, ret;
+
+	if (bus_claim)
+		sdio_claim_host(rtwsdio->sdio_func);
+
+	if (!rtw_sdio_use_memcpy_io(rtwdev, addr, sizeof(u32))) {
+		for (i = 0; i < RTW_SDIO_FREE_TXPG_COUNT; i++) {
+			free_txpg[i] = rtw_sdio_readl(rtwdev,
+						      addr + i * sizeof(u32),
+						      &ret);
+			if (ret)
+				break;
+		}
+		goto out;
+	}
+
+	ret = sdio_memcpy_fromio(rtwsdio->sdio_func,
+				 rtwsdio->free_txpg_buf, addr,
+				 RTW_SDIO_FREE_TXPG_COUNT * sizeof(__le32));
+	if (!ret) {
+		/* Copy the shared DMA buffer before releasing the host. */
+		for (i = 0; i < RTW_SDIO_FREE_TXPG_COUNT; i++)
+			free_txpg[i] = le32_to_cpu(rtwsdio->free_txpg_buf[i]);
+	}
+
+out:
+	if (bus_claim)
+		sdio_release_host(rtwsdio->sdio_func);
+
+	return ret;
+}
+
 static int rtw_sdio_check_free_txpg(struct rtw_dev *rtwdev, u8 queue,
 				    size_t count)
 {
@@ -727,11 +765,15 @@ static int rtw_sdio_check_free_txpg(struct rtw_dev *rtwdev, u8 queue,
 		/* add the pages from the public queue */
 		pages_free += (free_txpg >> 24) & 0xff;
 	} else {
-		u32 free_txpg[3];
+		u32 free_txpg[RTW_SDIO_FREE_TXPG_COUNT];
+		int ret;
 
-		free_txpg[0] = rtw_sdio_read32(rtwdev, REG_SDIO_FREE_TXPG);
-		free_txpg[1] = rtw_sdio_read32(rtwdev, REG_SDIO_FREE_TXPG + 4);
-		free_txpg[2] = rtw_sdio_read32(rtwdev, REG_SDIO_FREE_TXPG + 8);
+		ret = rtw_sdio_read_free_txpg(rtwdev, free_txpg);
+		if (ret) {
+			rtw_warn(rtwdev, "Failed to read free TX pages: %d\n",
+				 ret);
+			return ret;
+		}
 
 		switch (queue) {
 		case RTW_TX_QUEUE_BCN:
@@ -1782,6 +1824,7 @@ static void rtw_sdio_deinit_tx(struct rtw_dev *rtwdev)
 int rtw_sdio_probe(struct sdio_func *sdio_func,
 		   const struct sdio_device_id *id)
 {
+	struct rtw_sdio *rtwsdio;
 	struct ieee80211_hw *hw;
 	struct rtw_dev *rtwdev;
 	int drv_data_size;
@@ -1805,6 +1848,19 @@ int rtw_sdio_probe(struct sdio_func *sdio_func,
 	if (ret)
 		goto err_release_hw;
 
+	rtwsdio = (struct rtw_sdio *)rtwdev->priv;
+	if (!rtw_chip_wcpu_8051(rtwdev)) {
+		rtwsdio->free_txpg_buf =
+			devm_kmalloc_array(rtwdev->dev,
+					   RTW_SDIO_FREE_TXPG_COUNT,
+					   sizeof(*rtwsdio->free_txpg_buf),
+					   GFP_KERNEL);
+		if (!rtwsdio->free_txpg_buf) {
+			ret = -ENOMEM;
+			goto err_deinit_core;
+		}
+	}
+
 	rtw_dbg(rtwdev, RTW_DBG_SDIO,
 		"rtw88 SDIO probe: vendor=0x%04x device=%04x class=%02x",
 		id->vendor, id->device, id->class);
diff --git a/drivers/net/wireless/realtek/rtw88/sdio.h b/drivers/net/wireless/realtek/rtw88/sdio.h
index 6e7e6009744b0..5c2337ccffb2a 100644
--- a/drivers/net/wireless/realtek/rtw88/sdio.h
+++ b/drivers/net/wireless/realtek/rtw88/sdio.h
@@ -181,6 +181,7 @@ struct rtw_sdio {
 	atomic_t tx_oqt_free;
 	/* one writer at a time between the credit check and the accounting */
 	struct mutex tx_credit_lock;
+	__le32 *free_txpg_buf;
 };
 
 extern const struct dev_pm_ops rtw_sdio_pm_ops;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
