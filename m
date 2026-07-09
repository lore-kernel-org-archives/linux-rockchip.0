Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC11C44508
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 19:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JafBCmBIeJSJuy2c78NIH1K2vG9jcJB3h86O4kdXRY=; b=ECX2y1YMkV44NR
	M/6vFkt135h8VGAOqP7IQp4+oIoKk9TdLCKdy8ebg7lsc7Ho9WXuEqhdRyNrUXEj9iTcYYf68Vpw1
	qzYOHsbVFn2QfU4Mgvn3W1/B63BcJWCYBa5mFHEoFPdO0Q9h53XZWpVsNtN8KNksboWhQj//moLWO
	nfN7e8ijTUagP2uGRkna1wcHGHLSaBEMTpLPWLk6ViSJeoD7kL/XmNAAg5Zzcligm6eN8ym8aMdXM
	RWRkLq6ZQAEuPqiGc+zOVgHRtrXoSW34FmlhIuB/AdEkAySPe20bcZo1+bSMLQP4ktSnSkIZPGklN
	w28tfzxJmJQshYwor87Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whu1T-00000003M6V-29hM;
	Thu, 09 Jul 2026 19:02:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whu19-00000003LKb-0hGc;
	Thu, 09 Jul 2026 19:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783623750;
	bh=p/Hx7Dq61GhbEna9UzxVrHfH1lhodjbwQzayZC0Idd8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YC/NcoEbct78V+3LPyznbl3lh1wftkMy6TqkoFVlzjMTlW9vnX/rmCmO9RYISIibB
	 joVD4vQ9tlPHUQ1i1cliTmod/jD9+Af76VePpN4U4PU0tPXIi7OKfG4PzDIMW3sUn1
	 thPY84rz5fBIhZd+00cVYgSAHtUwZ63O8SfujjDZICttICTWJs2z0Kb1XAk9Xe7OGF
	 fJhZ+H8Ju/tLXbLu1CyW04QaRPSf7BSzhyicj96GemiF+vNh4RoKhVL663H8Tv10Ve
	 JgmVJmUsRCMFujw8K3V494u4xUFaoFhdVJSbsT4KA9o1mpb+c1csW1Q48dqbnDVapx
	 cRPJrlX20QGQQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 696D517E0FAC;
	Thu, 09 Jul 2026 21:02:30 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id B391E48004C; Thu, 09 Jul 2026 21:02:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 09 Jul 2026 21:02:35 +0200
Subject: [PATCH v11 12/36] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
MIME-Version: 1.0
Message-Id: <20260709-rockchip-usbdp-cleanup-v11-12-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1284;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=p/Hx7Dq61GhbEna9UzxVrHfH1lhodjbwQzayZC0Idd8=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpP8ESKPj/XV+2Z88+Bn6UM6iI/oRd89mqfw
 RtlEO8DTX1HLokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqT/BEAAoJENju1/PI
 O/qalmYP/RmL9IV30dIBbir8J5h8gte9N3vzdgLGUlAMRqmOLHoaHN/xzlRQdWJqdrxtLp1vwLz
 Q3hUvlB7AFbYM1S0Sx0a+Q+evmKepipjqIZb/9Wv8puiHIFpooFIpV9MFtcCqV4qrXwPcrnB+mB
 RRJuLlBkKktY+Y1LMncf1Vj7O+zhbKG+Z5WclRcThOH6t9qeuyvAOY7Kk6tsdmHy4GukwW+pvI2
 LdlKdkpK/8U0nxwwqZfA4Pz486Y/Q5G0jfVx+xblZDGKC8kGntw/eu/ZJO7L+8bgebnaucqR/ES
 23f01sx1z4cfRx52s8adtMXZy/Ma149hGr+mFUxqfr7U+pvbHhR41bOgYWmRSgeKdK9QqliR/mr
 M6dHOPQojJs36rsRlOueBwOkxPsW8gTWnUlGS0ycKWbqj3Y7pwAi9hUlXVhBsiLaE0+ruQSl8ql
 eWO0bAXEHYphazfOFEEwn1zpDs3bzAkXnI+L3AJFSaKKtXtg2UGdE4UupNi+fNohwnjVl1Ma9ra
 g6psV+ViyTGhbnthTFtWHAKPcP1va+nW+4tqO7jRokHkm/LPL2sqfsVyzDoqr1jRL7hFc7otkH6
 ZVyForCwbMFxISg/lcLU0xnN2GEPy9Wjy3mUDpBDTsKoWrC0Jq/gG4VrrJf9iVKT0zzIyydnaHK
 mGKFHAvfsnW2C5NCtUfo9+A==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_120239_384070_0FEAED7A 
X-CRM114-Status: GOOD (  12.04  )
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

In theory the DP controller could request 4 lanes when the PHY is
restricted to 2 lanes as the other half is used by USB3.

With the current user (DW-DP) this cannot happen, but as the check is
cheap and users might change in the future protect things accordingly.
Not doing so would corrupt USB3 usage by the following code configuring
the voltages.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.kernel.org/
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index c4d62b234ea8..b172ce6a722e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1099,6 +1099,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct rk_udphy *udphy,
 static int rk_udphy_dp_phy_verify_lanes(struct rk_udphy *udphy,
 					struct phy_configure_opts_dp *dp)
 {
+	if (dp->lanes > udphy->dp_lanes)
+		return -EINVAL;
+
 	switch (dp->lanes) {
 	case 1:
 	case 2:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
