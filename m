Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C603C44502
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 23:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkazxizOSRNs3rY3iUV3aNQosE+oneSk+WwpjOP0GDg=; b=dfReuGOCr3GurJ
	EG3RSUBskqRmPRo5V6m3Ap3JN//Mydzl+LdU5sx60ubjNU4UAvKE8UfFuLBKnRAfuBmyvM5eQ73D9
	KnytSYuKdffEYZhVE0tlPP1kUZi1bCfThFCqQQjsjzqjBLuW/FA6VNKVhRkewnZ6+tKNu6xAU/w4i
	+NawsFwWVTFv7lRNWzRj7LVB9tGqzc/frwp+XryXig1WFJ44472W7ibVL1SW1MbGOezLTZk+6J0cS
	vxTfLdiD6w2oHoBPoCC0036zKSARxKM8o/RiP58OqEXubTkonkoHuD2M0a3JllMoEnG7Un4lDnMVw
	nl2JvWFw1rsPs8zZhlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4TL-00000003A2x-33Zw;
	Wed, 01 Jul 2026 23:36:03 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4TE-000000039lj-1FCG;
	Wed, 01 Jul 2026 23:35:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782948949;
	bh=zEH+uUm8bgc5It+KvVL/LtXKTYllMdlDpxOaj7Ri5tU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bgRf1mSOQbatqltA5reWhlkgv4fV9swCad1BIePQlv/SO7/vOb1FMAJsuLYlfD9HC
	 wqQwEz98RXde8qAbfp3MEf8cBfs64Dt8BueKFg6C+qSjfpWiaogLtuwZU8jkxhKBk8
	 BpT3Omb8uD8dkN1ZAhk677H1KIlwUoq9KHNLz+46Qs/YqNPYIi5gsXsaw/wnmU1kn5
	 33Y2eom7YTh8mKXiE5lrmMM2FxbTpPbq9KGJJMV6ADvzZcA8mOGGsEUFiuHtKrw6IJ
	 P1JbgrDPct+MbXZ1MsohWJSRBm9277/6ooXDNukuJfwq2bCL+jF42yJwGPNWNQnkLX
	 sM62FJFcxHLgA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5D92F17E1583;
	Thu,  2 Jul 2026 01:35:49 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id B827548003A; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:35:46 +0200
Subject: [PATCH v9 08/38] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
MIME-Version: 1.0
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-8-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1163;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=zEH+uUm8bgc5It+KvVL/LtXKTYllMdlDpxOaj7Ri5tU=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFNhmOTZhvZSE6owDsWEKFbSxQSQfq9Nk
 fH0mz/QivcX1YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRTAAoJENju1/PI
 O/qaqpkP/1734hkjUhH27HxXQedk8ywW2otIuO3pyz4OnZsFXFyhMcmewbb2JnZoxKrO9ilGo03
 ElnAGggGpLbTfG824YhxW7/Vd3LNBm9bDdazFO4IBvzeyQhmjr77RVWFRyMgqxsPPl23og18OnL
 OImZ3FTBsaQPopwMNhQ5o0cc4hq3EvuRDoLIwgRXDYaPxvDhuFv3E6YtSyMX7pUzPRqQkjZRcx8
 UuKKQlYUjMnfHYyzLOICr4dxkwpbkFPuoYgc48HVNsYvoMb3ooF/bmurzCCf02r9Xob6Hqm83Ty
 3Ji0yrl3jIuolb4Vsc9iTns7lfD8v4JBaz87EOJV/cmtI11IX4w73YTyu8ZgwmMrY1Yo8JhZFh7
 Sgqm/aV6v0pxSpX4z9XLdcUumK+I3A1fsGaT/5JPKksP3sMI9MV8Xbo+7orEQqy6H0DT4j6aLcB
 r3nZaXyoRai0ckDgc1Xn8YLvT6ty8H4KdT7aJjreojkQ8STA9vstS1LTo8+fnFIU3HoZUkFza3R
 eHnNIx3HcxUVqYMRoRgPv8B86RgC/nEZXJ5Vo5FMED2pRhzGjGGZ/CWp5nNsFumlEPvrtPcNUOZ
 6qZDPVI0CtbPbFXYCDR/nHPzK3r6S6M2L+Rhj+n8zNtkdREHaRq+YUSa9icoMhad/Op1mRugLM6
 m949+BpaKAuMqCz+EzJYvoQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_163557_208626_965B2244 
X-CRM114-Status: GOOD (  11.15  )
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

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 5d0e4f82de2f..2b27fd1c15d8 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1022,8 +1022,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
-		rk_udphy_disable(udphy);
-		ret = rk_udphy_setup(udphy);
+		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
 		udphy->mode_change = false;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
