Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 225D4E7717B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 10:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoLUAVv4jozml8lmMwENZc0zyFI2Q4HEyBHzGUHeaHk=; b=L0zbmW+6Dazswv
	YZuwVUNqVh99GAOo24myinZduIsugJ9P2dCmzEUBkQwhMDhc2H4jFM7OF1L7aJc06OSx0IEcDnEel
	+2lFbpSBv+ZeB0eYFw9bbWXNoM+pE0Gsdz1HtPty65gRIXg1zzXXWbWHXxHtDhPvDrTYHT4ie6YRd
	Gz/pXhuPhdJwlMtgBe3cDs8fr+5lOKbLXY2vJfOtRDN6mOJDU6FcS/yVm90mW8ITyyII5mFEYP50d
	rVw+m4Ze8Gay7Sm8PoN4cfjwX90AvhxSfVauqYzAbOMYEW1V4dIq6YmEtn+2VmUHRFD9Ys5+GvX3K
	iK9heGbU9xygJ4vZVQ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVtU-00000001MCI-31ju;
	Fri, 06 Dec 2024 10:49:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVfL-00000001JTb-2n3d;
	Fri, 06 Dec 2024 10:34:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SO3Xh29xRkdmQmLn6fa6N/djXaj2dmx9KQNMok66AoA=; b=vhB6ht+507ZVQSUB/53u6YxVEU
	kkBQESnINzaHc1MK6vkAs0aYmwVtf6XKW8ezYAx8gR6xYpsigr9GLQEwjKX6aRBOyabg4wRVEnmbX
	ziVvluAie5euLgQmRYlvSAbtuFx/Iq8dVaQG+nS1Hd6wUzPQakaV3Xi5gEZLrIs21SHuWZ1KmTChV
	DzzwqQ2Hr+wU8UhIRB7Y4ZVrxEZe5ADNKv6po5N85a4R5MfwBbeBeK6DlMtN1Mn46LGSyyUF1xF8b
	1fSWBlXHad+EZ0mdZujv/FFcCX3KMwsuMK/5dNF0eyXje0nTX6HRzFtoIZ/iP0zCtwb3MvX6Ffwib
	R3oVHnwA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tJVfI-0007XU-0C; Fri, 06 Dec 2024 11:34:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	kishon@kernel.org
Subject: [PATCH 1/2] phy: phy-rockchip-samsung-hdptx: annotate regmap register-callback
Date: Fri,  6 Dec 2024 11:34:00 +0100
Message-ID: <20241206103401.1780416-2-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241206103401.1780416-1-heiko@sntech.de>
References: <20241206103401.1780416-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_023431_744408_042D3912 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The variant of the driver in the vendor-tree contained those handy
comments in the regmap register callback. Having the different ranges
describe what they are looks helpful.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 4ced1479e2dc..c5c64c209e96 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -766,13 +766,13 @@ static struct tx_drv_ctrl tx_drv_ctrl_hbr2[4][4] = {
 static bool rk_hdptx_phy_is_rw_reg(struct device *dev, unsigned int reg)
 {
 	switch (reg) {
-	case 0x0000 ... 0x029c:
-	case 0x0400 ... 0x04a4:
-	case 0x0800 ... 0x08a4:
-	case 0x0c00 ... 0x0cb4:
-	case 0x1000 ... 0x10b4:
-	case 0x1400 ... 0x14b4:
-	case 0x1800 ... 0x18b4:
+	case 0x0000 ... 0x029c: /* CMN Register */
+	case 0x0400 ... 0x04a4: /* Sideband Register */
+	case 0x0800 ... 0x08a4: /* Lane Top Register */
+	case 0x0c00 ... 0x0cb4: /* Lane 0 Register */
+	case 0x1000 ... 0x10b4: /* Lane 1 Register */
+	case 0x1400 ... 0x14b4: /* Lane 2 Register */
+	case 0x1800 ... 0x18b4: /* Lane 3 Register */
 		return true;
 	}
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
