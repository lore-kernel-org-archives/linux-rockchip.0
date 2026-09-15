Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B88BC88E7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 15:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oi+PEJRlER7B/1FIHtFklPRW9b/03dFhnl6GSxDmGzM=; b=WjMAo/jYCwRjX2
	r/Yh1QHEkJ72c9iijLS9cqI2NzvPp6BMz1mA4u+68DMLVHoaJQh4kXnwxDYqY+ih5fk+xIIVCQrJ+
	Kq2JVAx3k2r95UvfJTDBCDqDqesYpFxhQH6RulqTyAY5Nr6iwrBLgVbhdskQC7RAIsSl6P0nydDx9
	cyTdfN1x/pdPf7fWErJhYRszsc7reW/tn95ywrcCxV8OdV1B8EqqSK1iB8g46MIbeFrAFrrHVWL6F
	uKiziuTiqR2FWL+I/xbRDYIN+/WmCFxuG/KKKHaqPf7plABkrMogtpMEerFctzgaGWnkSpqYkVJ2W
	dVwEDR2bbtGAXPgXlemg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VB3-00000007EGn-2djD;
	Tue, 15 Sep 2026 15:34:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6V9d-00000007BO1-1imS;
	Tue, 15 Sep 2026 15:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789486380;
	bh=gCTESeIDJUjWAEYhTqkRMrTB/sg5xcKMCHph/xlPFl8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gMHOGcBTe+3KiF2p8LfYW/7n5jMPBg8HKWFnriCJJ+F5zOUnelLiI6kgoUJtRHWFl
	 snrxRVRXzpdDsWy12rXt5q+DIxMEJfj+4txXRhLLZ0ARENq32dXwWGcHtO8+oEAhue
	 C8t9kg01sv/5rlgGDfgnGThU6vziXeSWdKjFBY04oXdqWQ5ZuayOkgabPRmyXKJUfZ
	 GYvHgl0lsAjAbiEktGFLkbEXPK/WyJ2TSoa0rU5FYb13ECr2QLjwGyZgWSMBuArQAu
	 En4Q6UfTO36RY2f6M0aYlZCTZWuqvmv7Yp8oT7ClnRfQRDEt7nHX9JMQK4fOAx3P/0
	 I3SJHnq6xEAFw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 08FC417E0C7E;
	Tue, 15 Sep 2026 17:33:00 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6F576480035; Tue, 15 Sep 2026 17:32:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 15 Sep 2026 17:32:52 +0200
Subject: [PATCH v15 5/6] phy: rockchip: usbdp: Re-init PHY on mux change
MIME-Version: 1.0
Message-Id: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-5-9ad90a456953@collabora.com>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=gCTESeIDJUjWAEYhTqkRMrTB/sg5xcKMCHph/xlPFl8=;
 b=owJ4nAFsApP9kA0DAAoB2O7X88g7+poByyZiAGqpZStvFDuWqgsEKyzypKm1acU5stY7XHAJi
 6UGs8NdagYcCIkCMgQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqqWUrAAoJENju1/PI
 O/qa2lMP90/6e6Ti2nTfc0+qiub8SSs4ashZT0drMWcqyqBhVKF1iPOeOQ8b6eUVSBNgXvoe6qn
 LmS2FyT8T11thocP+tXJ2irNZVhWCVYBGfZF7SkWMBXHRUf4xvHuqooQ7D8X4JNT5iQ0M8HWn90
 fhSjL+DGTDP5S0e07MYNvl1hC1siDa+xaQY3Ic/eQajw6/V785hrfffRvFKCS5BTqJ8by1zDsJk
 MMyk0IvlZ8h84wmB4BaxWvE6mm6IaNPkf7tZVgFWrwbpLml44QcX1+9SfTIIU9IngF8f0DJ/b4M
 DBhEi1fMLS4kipVohE76tF7woD5mN/iVec6MbBXx0QXaM3+HbSvm0zQFaAJAY12B4nKq1C96cOE
 y/atF+dYeQdeihnu2FtEStlL8OcB0QDHmelSMYunLMTFuAXi9Qevgfea2xaPFG8wU6mboYDEJ2a
 qFhrmfVTVZ7mbN/dQ5QoXuEPra2ju3QRwSjFTdZWai/bCy9H8l3Ji8LERlevKOA0R5bsO9S0YcT
 snau9Dzbo0SVtst33CycMD/LCH/MajJqxjAgvsJMKlJ1bMOgylsmUgmxSx9FSas3LpBtHsndFMm
 OWgwx7MBl+DjUn5dJcL137rs8WEUqBF6h0Y2kWInt2KJOQB75k6rlUG7arLitln6P2wDyi5PYBc
 /+kQIq175iRKtdVgTmCxY
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_083305_631306_A5784AD1 
X-CRM114-Status: GOOD (  12.86  )
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

Ensure that the right part of the PHY are powered up when the
mode changes. This ensures the PHY is re-initialized in the
following two scenarios, which are currently broken:

 - cable orientation changes without DP being involved
 - switching from DP-only into a mode with USB support

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 867f356f394d..ca01c1112c0f 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1391,7 +1391,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 
 	rk_udphy_set_typec_state(udphy, state->mode);
 
-	return 0;
+	return rk_udphy_update_power_state(udphy);
 }
 
 static void rk_udphy_typec_mux_unregister(void *data)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
