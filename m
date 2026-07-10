Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD16C44506
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 16:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K21VFT7LDuLsZQwb2UOBTYcggkO28NK3bfCrhO5HUY=; b=eJyvhyyJwhDC4Q
	9Py0D5gcCSTD2hRXOlAqyfjNzY8VvstQIrwa08Zl/Scs8E4ajp7Dla8u0+2DD9OTepbs4QFH6SXqU
	fnpv7AW5rVOct1KheurpyQoL96n2CxHIlMfhu8aVRKRoapC7sti0IvuQRnuyeW3HTzULKgBm/N4FC
	O5Me35iTS0gPhOCFBpquB59VKLns2E/q2j1RwtLt0VVzQyKVeKI4A+Sd9ABFQ6BpH1lR7jr+8ErAE
	mILV90m6aFtelL+sSWl7rivTfLSny09bCALNpRFdH/47dB3A0d178Q4I5DP4d3vojksMJCvL8lq+A
	wvK4ressqmFQfTjugfVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiENB-00000005Jgi-2W5X;
	Fri, 10 Jul 2026 16:46:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiEMr-00000005J97-0KBn;
	Fri, 10 Jul 2026 16:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701978;
	bh=gjt94yB7OMQ1kbenpTWsg4rbaygeNwSXNZrsMwALuYQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JqyTaoFd+mlc/cn9VMI9Wttow2ObHIHPukiUrsNhkj+BFjFAN5tHj+LjuPhk5m4Va
	 h9JJ+btty6yT8rS2rDkTOcSd4gdVPoty4tAUeWPYSMkUKiZ4Gp5XZa9ozBVsaQfW9r
	 h1vQmEScJdh0m9l0D/qsx0cXRMlHRz9CcCw3kq06I6QPhSheOknZVD5q0M+TGFUV5S
	 1/fg6hvrjRnCYX57vjgQDh3FUeYCKDgVyxdTfgPcjQaU9aZ6xHHseaM2Vv/H/4mQkk
	 YTRlayEBeE82XldkwOsNVzBM8i+ralbYxd2fH3CgU4Q3G0RJS3JSF2tmrQh8Eode5h
	 N0kU+5TBbX47A==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 798C517E0EF3;
	Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E2748480031; Fri, 10 Jul 2026 18:46:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:44:43 +0200
Subject: [PATCH v12 05/36] phy: rockchip: usbdp: Handle missing clock-names
 DT property gracefully
MIME-Version: 1.0
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-5-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1302;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=gjt94yB7OMQ1kbenpTWsg4rbaygeNwSXNZrsMwALuYQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdjsPCaJlc+z5dSBjtjq7bN6bho0S+VeM
 DXYsyxGqpNcB4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHYAAoJENju1/PI
 O/qaEL4P/3dJv/u35phqgsrJeDDE84FYklkPbBWSOAcYSYLvpfO1AMCs1vLnM3l88r8o2dVsbif
 3008tKUuq3uSr25g2d4Des2XD7n5wuS6LO6rgvE4AtxxK2WoaT/GExr32F1lUtvwMQqXSzUlnvZ
 hJGm7szS5+T7qr9LKBD8a00hLKZRJLapomIqCuGJON95u8b9lkgQQP35ONXT2dxYYALDOsA8Lht
 0rip85XoYCu8E/0cQO/8wwVVoEZxMl71uVC8z+/v2eUNaAOSmjljdoAKUcolYfO3ku0H+cAbnml
 8Bvy/TiS+jAGa/VMLGUD1ftrWynmRGhDLqcJH8lTOtWga71rRtgYqsv3sjoJviZlHKrY3wNTqhq
 ZtmBPzjqUtKnB2n3xWBEqk5TH7QVBW7PduYhvuYA4qB0TfPNBfavkqrtHPTocClvVTAMxcLAPb2
 HZKiHja8CWeS9kAki68hWJU5jZFI2kvCoEhIl9dGD6gBhl0xi/OTTD2UljZcme0ejamC2E3VNqr
 dYY5C+be5HbV2CeZj4Z45jiMgvFIy2WSIVWeQgjWW01rjuS5rRdelWhUMswFwOeOMyHj0YilScC
 UIfzt8XnHTU6PLfOD3figYo8ZVgoXv5j4PW+jSdxhlLAuP250LENsWFrYubPSM9jWCWr7xVOV25
 J2DD4iGTNEXpQ5F5tNMkvbg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_094625_284305_FA02F4F0 
X-CRM114-Status: GOOD (  12.54  )
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

The rk_udphy_clk_init() function would currently try to do a strncmp for
a NULL pointer, if DT specifies 'clocks' property, but no 'clock-names'
property. Fix this by making sure the clock has an id string set.

Note that DT binding requires setting clock-names, so this is only a
problem when booting a non-compliant device tree.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619154349.071321F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2845a012eafc..3fc8222fcaec 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -432,6 +432,9 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, struct device *dev)
 
 	/* used for configure phy reference clock frequency */
 	for (i = 0; i < udphy->num_clks; i++) {
+		if (!udphy->clks[i].id)
+			continue;
+
 		if (!strncmp(udphy->clks[i].id, "refclk", 6)) {
 			udphy->refclk = udphy->clks[i].clk;
 			break;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
