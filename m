Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77040CA1005
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 21:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBPcbSlpOKQDN77SnPg92tvpM8zmKLwd6RTcls11Q+c=; b=22wDCRbXslF9FG
	NzhUf+d2nuPa0rRihNXfHkS75Sh+ytn7ltyS9qLICZ2bwYr2quXGDJmRPJp/5wh8elxXCaNTstC0P
	QzbJ8Q/8oHvxKcvL4MgHKzVP3OUyJgYKEq1ukxvUWGjTHoL55m9lRaPbjdLLWi0g+AzuvblC9tge6
	AP8p3d5mQRFbfeA56+GNrb6VwlhOGMnXO7vGVx/5uDI2xhLoPQY4bdzS1fLnjOP4wYfciCXRDfqLz
	jUtYOE23YqcCqEihUl5a15ySRenBTQHHUFp4GVBqf3a4mmOsbUjPwtF2o4f/imWG8rdj8oO+xunJp
	13wnJ//IjzDqFryk8oKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYoS-00000002Djb-3mwa;
	Tue, 02 Sep 2025 21:45:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utUTZ-000000017H1-2AjZ;
	Tue, 02 Sep 2025 17:07:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756832840;
	bh=VhMnfoq8bwK8cM8+3j7VrRnj6sRYkBSA9qTfJP4hKsU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nhgLRGiieUY2LSOayVt7FWDq5wiL4sZKYIbH2BiqRJKQwfbAp2aXKAB/I0RA7MyFq
	 ARTft1vShxMPbaO8qBTBTrraIqriAy2yXl62gQuoyoy8YBzkDB8KfzBA0f9HuEg0Ek
	 s8nE0NWFHnMI4fFnybmSZzSZTQuJrmcipEzATGTi3nurr7TNnjuxKu7Vm86rrTkgmn
	 TFZGz4YQyUdyKRYWzcUS89D2nTVdTybBnnArwg1QkJkLhigWlWAKyQ59OyrLFpoGuc
	 EXsQfDhbu4hvSdsLZrcOEN9y1goIGGorN1Qnk6H9N3Myo4PctSk9TjBAMTMpA8062A
	 wVHsmPFN52+zg==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id EA5CE17E1356;
	Tue,  2 Sep 2025 19:07:19 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Sep 2025 20:07:01 +0300
Subject: [PATCH 3/3] phy: rockchip: samsung-hdptx: Prevent Inter-Pair Skew
 from exceeding the limits
MIME-Version: 1.0
Message-Id: <20250902-phy-hdptx-fixes-v1-3-e8d9ef9748d6@collabora.com>
References: <20250902-phy-hdptx-fixes-v1-0-e8d9ef9748d6@collabora.com>
In-Reply-To: <20250902-phy-hdptx-fixes-v1-0-e8d9ef9748d6@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_100721_743273_5259F596 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

Fixup PHY deskew FIFO to prevent the phase of D2 lane going ahead of
other lanes.  It's worth noting this might only happen when dealing with
HDMI 2.0 rates.

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 8ba9b53c2309b22a496574b7731377049f50068f..29de2f7bdae8a31958e31b0a64281532fd76e64d 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -668,13 +668,9 @@ static const struct reg_sequence rk_hdtpx_common_lane_init_seq[] = {
 
 static const struct reg_sequence rk_hdtpx_tmds_lane_init_seq[] = {
 	REG_SEQ0(LANE_REG(0312), 0x00),
-	REG_SEQ0(LANE_REG(031e), 0x00),
 	REG_SEQ0(LANE_REG(0412), 0x00),
-	REG_SEQ0(LANE_REG(041e), 0x00),
 	REG_SEQ0(LANE_REG(0512), 0x00),
-	REG_SEQ0(LANE_REG(051e), 0x00),
 	REG_SEQ0(LANE_REG(0612), 0x00),
-	REG_SEQ0(LANE_REG(061e), 0x08),
 	REG_SEQ0(LANE_REG(0303), 0x2f),
 	REG_SEQ0(LANE_REG(0403), 0x2f),
 	REG_SEQ0(LANE_REG(0503), 0x2f),
@@ -687,6 +683,11 @@ static const struct reg_sequence rk_hdtpx_tmds_lane_init_seq[] = {
 	REG_SEQ0(LANE_REG(0406), 0x1c),
 	REG_SEQ0(LANE_REG(0506), 0x1c),
 	REG_SEQ0(LANE_REG(0606), 0x1c),
+	/* Keep Inter-Pair Skew in the limits */
+	REG_SEQ0(LANE_REG(031e), 0x02),
+	REG_SEQ0(LANE_REG(041e), 0x02),
+	REG_SEQ0(LANE_REG(051e), 0x02),
+	REG_SEQ0(LANE_REG(061e), 0x0a),
 };
 
 static struct tx_drv_ctrl tx_drv_ctrl_rbr[4][4] = {

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
