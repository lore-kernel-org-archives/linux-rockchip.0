Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CACC982C9
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 15:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuuHBoI9ak83UkFSvACUKt4b/ZC1CZwgig+FDtDsZos=; b=QSPZ6y/Sm87vNH
	GTyg6FAXYBUd+BPJ7mKiQGkQtmDi3+/rxsvttj7a0rg5m58EqvH0qxc0nNyUBa0f5FhHJUULRDEhm
	+JXz2Hn4GZ1ZARyk0BlipURJzM2t4p4iRQs3ISCUFr/XohrvZMIjg1SraqzuHHlT/lwjCieOosZQ6
	+hEZ4rIA58kHI56TYKNzgSi0JULOuCOJ8QU80bdwyhlKCY3YjvKbPsDB8zFeWIDpTpufhAmHdDMD6
	BUSACOjEdUPTGfjpDkQDYKyDJR9Dq+s/eeQoiyogsAXGuKJ0EIBPG6WdmYKgZv/h5XfRN8xyR73+2
	9tIAGE72CkQkVMN2K6Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Uke-000000075V4-0okA;
	Tue, 15 Sep 2026 15:07:16 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Ujr-000000074tL-3uN7;
	Tue, 15 Sep 2026 15:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789484779;
	bh=qQRz0pWsFv0v+wwF9XnKP83GCZcDy8m7SEF9Z1JUkWg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IZzFJ41sNIcsD6gDXwKfZIaqsWtGHL892myyr4tp4MT+Q1E1Ew1OovNLW1YMKKdLs
	 Q6dub3RoyJUwfO2E2fh/HLOMF690Dqqlgw/FOvBEJHz/+ulZoXbAYaQXxB0t+iT/xH
	 pci0KaOW7xuDdIBOigd1qbdPOt0cBzaEZyS57qRA1uIOthNWLzLEyZek8s5cOugbb7
	 hGdo7/opjAcUT0Fm2m2lib1H98ArPpehsB+FShBJgZyRZ/cGbmZW6FMRbRZ3sjWFU+
	 nCqYqBAI2nkVjV3+El2SJ8bqCdo+VUndEI8BSxrcb/Dpuh5cj+2BfpwBE20S1KkuU1
	 wFfP3FDkik6Cw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E562717E0936;
	Tue, 15 Sep 2026 17:06:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 662F4480035; Tue, 15 Sep 2026 17:06:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 15 Sep 2026 17:06:08 +0200
Subject: [PATCH v15 05/11] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
MIME-Version: 1.0
Message-Id: <20260915-rockchip-usbdp-cleanup-part2-v15-5-8d507cb1174f@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1828;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=qQRz0pWsFv0v+wwF9XnKP83GCZcDy8m7SEF9Z1JUkWg=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGqpXuopSxSweOFFqi1I5lfgjq6tGiHXzSZQl
 /0iqKNG52xNcokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqqV7qAAoJENju1/PI
 O/qax5IP/08DtM+41mYSjMAB3XlU4teTJfYeLfsxRhzA9f01jke+hdmrU4D4991SSgCILA5V5o+
 ELgR194o4HfX7vkDIycsWkmX4mSaYsjvncsLc/ia4td/OSfjaM7YNHxkTvFWSFSJZqYwVrqPigP
 6u5FiwY54yzieiUauD5jJcpsUa4Z9SVi/BszMAnaZuh4Hti9A8NyS52i9vMXrv9LlXJIZOvWItT
 wnhTJ0N0oLzW1lN9lWxA2HZu3T6wQfKs0wduFZ1QOd5PUkPsmyiH+rq5zZmbmLrrlHnY0eNtK8k
 V3pifuqxrbcu/yapN75wMBHUzJEfCySSYk0Hu6Ifyk0J8kf25sHdmC2ZBXTO3L6typ8F3KuVeZZ
 VkjEHPmsLFAcpDo9F2DG3rAzoZJon6ASNDwsaLyBZTBtN1WK3ECxVc3F7xMsTue0d0C+QY7kJZi
 xrzqpwAaPoTiwuHtgmufQrb5mHZLXua8fYzg3dmqwq3lpzz5w5kPTs7x5kT0QKtueh/vipuWSnG
 NjycsWGRBdwAa1ihMeR+l67N2h1qGeoCzKgxzEE8FSCOoUu20NEaebIYk/e1tCO2mSSWtDcNOZ/
 sRwYCoR1iwqN8qKEHEyqxv8TJ93NfMBhgXudPTYEybFPC95Kbzu5RM9115c0+4NsyR4cX6wHcG7
 ZoGfC6Mfp0kBKviXcqXwxNA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_080628_163133_FA89944D 
X-CRM114-Status: GOOD (  12.82  )
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

Handle TYPEC_STATE_SAFE and TYPEC_STATE_USB Type-C state events,
so that the muxing is properly updated when exiting DP AltMode.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619155020.CC7361F000E9%40smtp.kernel.org
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 4a073301067f..9ba571f7b9bf 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1292,17 +1292,26 @@ static const struct phy_ops rk_udphy_usb3_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static bool rk_udphy_is_supported_mode(struct typec_mux_state *state)
+{
+	/* Handle Safe State and USB State */
+	if (state->mode < TYPEC_STATE_MODAL)
+		return true;
+
+	/* Handle DP AltMode */
+	if (state->alt && state->alt->svid == USB_TYPEC_DP_SID)
+		return true;
+
+	return false;
+}
+
 static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 				  struct typec_mux_state *state)
 {
 	struct rk_udphy *udphy = typec_mux_get_drvdata(mux);
 
-	/*
-	 * Ignore mux events not involving DP AltMode, because
-	 * the mode field is being reused, e.g. state->mode == 4
-	 * could be either TYPEC_MODE_USB4 or TYPEC_DP_STATE_C.
-	 */
-	if (!state->alt || state->alt->svid != USB_TYPEC_DP_SID)
+	/* Ignore mux events not involving USB or DP */
+	if (!rk_udphy_is_supported_mode(state))
 		return 0;
 
 	mutex_lock(&udphy->mutex);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
