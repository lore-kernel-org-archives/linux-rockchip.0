Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66104C44500
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 23:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpIs20XdYZAF6odkGiwj9oNrhojHu1udkmP19McZXIQ=; b=CXQmulBiyLLrOo
	lVIfgp8XZomuwa7zgbHcxf7Z3JRzl56twvDP+Kbgt6AVH1KHdnBT0bFFx8D2JPsK8JwCfsdZLM4mh
	7k7qaDnsE4VexN1mCaN3hntIfbDwQz0V4dUby2A0K8YJ+5A+MCo+kYUCCwmI/8uUcYyeeJ7dGa8eL
	IpQwh0DxnNxk1ASZNMneeBY1XNb9eVeHZf2IQ6LbgKx+BnRf4XIgmnTEgwP8RJZYuecUEGfgJFzJz
	G0PSTQL4sB7cR1KbJzV0RPFTysPnHEy5KfG6DWAtv7gQxF8Ooye0WbSx7Pushe0MZ9omAc6svXfTU
	SIHEGoEYmopnlKIqdmMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4Tb-00000003Ahy-0aol;
	Wed, 01 Jul 2026 23:36:19 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4TF-000000039nP-3Z1v;
	Wed, 01 Jul 2026 23:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782948949;
	bh=pTOPEXaMpt1n4tYAVZIoeAJ2ZB+6WNJrO3nK27Dxf8E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=P6GwtnNn/H2WmIp0s0daN8F/3Muw3C5T1bSl/utNQG9goXKG1+xmOCnorOjkgZzVN
	 djZs+F09UQJ4MySv0Lbu/LfIHGIgiKlst8JygDWe23lbgE20d9vopjkzYRXNbNXVfW
	 RpMlhhnF/AHkggeehfRVw+6iafDzeIcHY3OlTRcD7+XGGr+ENDBDfJyvI084APlpuT
	 +F3yYK8nFjey5sdyKkTqh/A8WxqvZgsSjOoeLx8g/oDs6SAhj7H4ZzARW+zEnoz8bA
	 kHtMrZYHw6oglQiPovL6Jeyr8MNgWZB65v+RX8GM3k2d/kWC+xJh9BNFlPyTPV3Mtz
	 IhtqIi4CCHt7g==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 80D6417E35C8;
	Thu,  2 Jul 2026 01:35:49 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id BFA9348004E; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:35:51 +0200
Subject: [PATCH v9 13/38] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
MIME-Version: 1.0
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-13-e31efbb62d2e@collabora.com>
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
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1284;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=pTOPEXaMpt1n4tYAVZIoeAJ2ZB+6WNJrO3nK27Dxf8E=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFMuvNJF5FcgEbmr2QBWxRNLuDAT7JKvc
 tcflmA3fUo7eIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRTAAoJENju1/PI
 O/qaQg4P/jJGezU/j04M299CwtpoNNYJn1kSEdk6wSCLOV3PF1cLK2p0Xopj5yVvlgCyIkrxDh3
 GlhQOA6qw+0nh2ulnjj/ik824RwDRzMG+Wt+1Sx2mgLvZYPxwx8nmyio0nIwRoEilVR3N3UpqUo
 mi1N8l2ZKnkpeWVtfgDWzWXDx0oC+2tZoectfhuNgW08ExJpY9IwR3l5xmOEoJZGW6BjtKsm1In
 S4QSvYidfQ31hEltQVtqQTXR6pBvO1CUdg7+I1tiM74k59FROvFlf8PIOueL7WCBrWMaA9PW51A
 XMnfVfC/SFFD3jhVXdKDxvV1l59xmzAhoK250ZYfGllm2EQUEuUzumV/npWI1MA0hhOF2Lyv26X
 MylMYuOIkS+07+WKWp3GSHUDFFBwb1cmW/ba9svA1Gp/1C2SRzC4I9ZGD01PtXHBK/ouM/M4JNy
 ixImaViVVvz2hK47EWPAZw4z+HRwiKN3WfTpCi+2CH+I9yWu1e38ZRyVcNmsWQm6aJcXifKGfaN
 42zn00HXY/0kQGsQLUXic6hbFt7N/kXaeBeZshqJea+YZ7Zehm32AV1z9ZnK7kiy2dbfkUCCg+t
 6go5+CYUS6qCSG4onsfdXOHiZhxL1r1e9Pvr61rxsoOnAybGcgmtTkv7WOxNRQb+WFqOUm0vSUk
 nFUpB7VHao35JJeygG7Qpkw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_163558_056229_49695679 
X-CRM114-Status: GOOD (  12.58  )
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
index da15178d7f16..0cfd23a405cb 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1134,6 +1134,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct rk_udphy *udphy,
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
