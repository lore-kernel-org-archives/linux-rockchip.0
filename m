Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04166C282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 12:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/yMsMUZXZgi6LYOSbA97Ly+ZkfORWfT4Xzl2AJw4Mg=; b=3XfnNceg/qylue
	s4KdU2GQsVt7u3Ck9iCPVBEgSDwNo4OMeDlnLFTNwmHCiZGIFK2FyQL2IuiabDu9GmusQwXa57qzV
	uUEWromXKhf0uAPXksgiy8Yc1j0GpAuf1vw4ImCstn5loPkHKfHWGhlOj7bsqHkBuLj0NdWdUuySh
	ix1DnzjLBaKpEKGMFwMacc/IHKQV/u2M5FF/+y32g9Kh9BAuKXFSb0yT2raRx/dILDrIgh9pDHJ1c
	u1tOg57Een+2iLnt6s6fciN18aHN6o1a8Bb6WbKjPD8lhe5J478ISZx4F2SdTEkBvpjGMkQjONeJy
	VJL75eJnwVlLXW0CJGEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqtL1-0000000Gau2-0ia7;
	Sat, 08 Mar 2025 12:31:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqtBS-0000000GZcp-0Yd9;
	Sat, 08 Mar 2025 12:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741436496;
	bh=H52on9OF9VHErJX/F0Xzfni4+/Tw4ZDeMorcaCchiac=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SOvEmMEzdGebwFc16IIOF7TLRuQrKIXOyFI4XCFUq9ILoGX5xnclFfnJUqbRg/wlz
	 J/mytWMTciApUh6NBb6sJxAkrCHJ20sCo8B2iFH53k+wvl899ETBJBw1hJSf5G0wDa
	 +TZ2NVhZPJjRFM3OALa0/ITJNJE0UDq4fYwcGZGDKpTknTfxnFE0gSEk62xMjufqKv
	 o9ZANCeFDrgByV4FUQP10TW9LaBtw0bxljDwfjdlZMNUDjK5FyaTXFE6JFsvc6FEFs
	 4poyHaMvelGIjbpJF2hX/gUT9OIhpVnvpcE84ZMVu5Op6eMuIEKIeSxzQAsalwyZ/s
	 KrGk4iC5Cpjvw==
Received: from localhost (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 4804017E0B12;
	Sat,  8 Mar 2025 13:21:36 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 08 Mar 2025 14:21:14 +0200
Subject: [PATCH v5 05/12] phy: rockchip: samsung-hdptx: Drop unused phy_cfg
 driver data
MIME-Version: 1.0
Message-Id: <20250308-phy-sam-hdptx-bpc-v5-5-35087287f9d1@collabora.com>
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_042138_346447_63FA7BD8 
X-CRM114-Status: UNSURE (   8.30  )
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

There is no usage of phy_cfg in the upstream driver data, nor in the
downstream one, hence remove it.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index f9b5c96d6c789e435657e224032d35b5a6950945..06644c3d98d3f8b697fc704704df5acdd3c85bad 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -397,7 +397,6 @@ struct rk_hdptx_phy {
 	int phy_id;
 
 	struct phy *phy;
-	struct phy_config *phy_cfg;
 	struct clk_bulk_data *clks;
 	int nr_clks;
 	struct reset_control_bulk_data rsts[RST_MAX];

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
