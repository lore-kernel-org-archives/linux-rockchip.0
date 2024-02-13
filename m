Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FC3C48BC4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aG/IZP0ooaeGJglzdA9ddJ8iKVPnlvwg/EnFgWqfQc=; b=j92vJ+D57Q8UcN
	Q+u7wz5zhmz3fscxTwC3cakScB2rHmGw2JpwnatvXtIS9sw1mNfosuqbJoKml2BKm9QiU5AbhcJ0e
	RXU/SVoWYJMLuBuvolHazpzV/HFGxTnQt1+k5irycBOmrICbni11j6qf8aCQI/gBr5C5LfSqnNxzk
	1JrCMQlMLLXiE6TxfWxy7qpz0EVcK/S8p1WYZtvcUNS2BmBZKkahQtlCW0sBbHhXhs5onDe/VjTgA
	K/wXyiJ8gf+Egnu179LMF2CoTNY6g2oLCtPFzx0Ns8uqlvhTbXEdGzWHKclP6SBQoTXCmG6HYf/yf
	fpa+O/yTduz/w2chOswQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvla-00000009yGh-21GP;
	Tue, 13 Feb 2024 16:36:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlW-00000009yDi-3CR1;
	Tue, 13 Feb 2024 16:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842171;
	bh=Stme3NHXDHiNzytVLTnIW18XS/qOabrFsQeujcPp0/k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oaok93SSV42mhGnPpjPmDUOuM7Kjh3aDN72Nff7oMEwyRuvLiwPOwjnLg6d8W9xUW
	 YsrHNhp/7nVlyVfzrcDoqTbXFro0ZvJBc8hGCn/9gKylRmnom4URA0vbx7bbGowFBt
	 8bzu5W/U/RLJS2j+96E7FFkZI8n5OldMxp/mnByBojsNe2sQzRQSxDQWx9PQR6sMy7
	 vNMDcq9FmrlqNy7+L4AWXagC4q0KSG8axT/yaHti0+acZvSjkJWcgHyyqJvNy5KPzi
	 8YuW+wWibcIyJ7FOt8bFTNC9SKC0I9ILA/xVg3zk+attjoCStLqZEL/E82y55JdsP9
	 FYpDvPD5YoTbQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5C3803782074;
	Tue, 13 Feb 2024 16:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id F19684800D0; Tue, 13 Feb 2024 17:36:10 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 02/12] dt-bindings: soc: rockchip: add rk3588 USB3 syscon
Date: Tue, 13 Feb 2024 17:32:36 +0100
Message-ID: <20240213163609.44930-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083614_962201_AAE8744F 
X-CRM114-Status: UNSURE (   8.72  )
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

RK3588 USB3 support requires the GRF for USB and USBDP PHY.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 20bc1f46384c..12e7a78f7f6b 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -28,6 +28,8 @@ properties:
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
+              - rockchip,rk3588-usb-grf
+              - rockchip,rk3588-usbdpphy-grf
               - rockchip,rk3588-vo-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
