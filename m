Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87FE3C5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 20:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZKfRpCSF3gPDDZFFk4Odin3/LhleE9xV7Ot2eqQZPs=; b=axvf9jGmYfvxZ6
	I4XlF2qjty4rqI8NiiVAHNgt1QhgpfO46up2tDE8jzEdfBBfYb7HiP1J1tT7t5HlOVkVvzy7+TDXm
	N/pCuBfBlLfgPnTuCiJB0EKg34MG3EAVHN7mBj5J41g7qY/5RmNBCR9CiU4v+rZhiI3F14+Yn+QOG
	Z0O9ZuS4c2v/DYjpt9llQ2Cp0676OVOBbqO7ySuZHQLsy2TZBK2Bccb3vtNQ+Y3bSwO1o6mPA6iJu
	1mk1m8EfozwPvsQ5+GMN5PpMkFqzphO9EvLfbxCQp0+zZK+HNfqtU6+weZ0dzh+y8vPhQxEEnDZoq
	+2vKFjayAyID8tz3AKRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wucPX-00000001Xmw-3xGn;
	Thu, 13 Aug 2026 20:52:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wucP8-00000001XDA-3c17;
	Thu, 13 Aug 2026 20:52:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786654310;
	bh=20xVezG/aoq+Y1n26hPOfHEq7PggtuiY4/FZU3WwQuA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WlbfRYpkOaUaoB/ODwtfU06EYD1Mf6uv8mCgm59zTockvqgZ9csdnj7dZ/+G+I3te
	 GIbZuudJmP3hlCmmKFcpYySTUnxz+3ZqQP+7oXpkk6LcJ6k3P/XnF047CeGRR6W5DL
	 5WfxjL2SkjVhrRddG1tgCyP24SLfw5vo9w4/2qCV5z1kM3jROTDE7oJ2jmsYh/DGGV
	 mOIpdninKu4lL+6WrF9YTfu+/eguBUlo8+iNlF9hLpGnDdbEFPJnzwh/w0sXu7rW3R
	 Z3fHx3/juRJtT/9lRwmlotv08lRBdAdOkOTe6VWzBDOvP5QBDKFl7q6S+UTeQvwxP7
	 TE6DECo3o+Vfw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3102F17E0FE2;
	Thu, 13 Aug 2026 22:51:50 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9B075480031; Thu, 13 Aug 2026 22:51:49 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 13 Aug 2026 22:51:48 +0200
Subject: [PATCH v14 05/38] phy: rockchip: usbdp: Handle missing clock-names
 DT property gracefully
MIME-Version: 1.0
Message-Id: <20260813-rockchip-usbdp-cleanup-v14-5-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1371;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=20xVezG/aoq+Y1n26hPOfHEq7PggtuiY4/FZU3WwQuA=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp+LmQV72VH7PDUPxVGtlNI5yvPN3oN8O/N/
 FGZ6kjsw0g4mokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqfi5kAAoJENju1/PI
 O/qaaUEP/iILz7vBaDsawtx/OnM8KgfpPZ3OAvkWlPT31I33k1/OKlJfrQiyQxGlyRcQyWyYrb/
 kUPx6UjKKoaKVvhjaNY5DJttf8Wd2gJMGkNl3bV8Tv3Hvem3qB9Lw0d+LTzTaZQ71Ecb3SS2mmd
 odTxCnyOAOUFEOp1lOX0h2L5YCzAn6/BZ8N47xzVcMOQ7hlxaS7XKJYy/+/ozGM53mz/+q+g4TD
 gVZ5GtKQv/i3NZKTfaneS1JZ1VtH9mbKw6w8ieualH4C5+6cRYsuPRfR22LaOIGyFnFMNna3L1R
 RW4ndySds+EdbcleTHim+B+cAey/73sZ2zGnnuLzPUW1FgLVEvbiUnrmblTho9VTUSRHfV6s6c0
 9BGR8PhsKZQnTzQltyYLy0fd9iAWZ3RraA6oUnpJ44Z3wYZdthEx5t1o6yxmcGXHDnqwj8zM8iO
 vVvEWnVH/PFa0wt7KTLfc3VpGKMpVmvigcUeEeOC0tuPh2wd4RTUXWcPY8TeciSJsBi4CY7KID4
 CrP5EqqwHPbO8NdkmGr5Kvs6FKtFyxuuVTAq9L0m9FN0qwWE2Eesc/bi/T97Hg8a9X/X2IfJBfp
 v1GRY7jUSOdIYlKBgY2dVDzuSf6iTltn3+ZxuCR6jW6BRZYSQmI/N5PpSDgMs1vOy4ixzDqP0sF
 enaK3gR1v2v3KJVA0IuYz3A==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_135159_304993_E9C73EE0 
X-CRM114-Status: GOOD (  12.01  )
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
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
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
