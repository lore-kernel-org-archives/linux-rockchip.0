Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66FFCC3ABC0
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 14:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rLmSEOk5DDngQSAMXYtTsoxLdp6Tm0bFxal5IPXb0M=; b=2FWlj4Qk68yIKN
	Q2pQDcgMP7eoLWPzyKs9s8FSog9l6hsWZXd6BmkJdSDccw58EE39AuDGHMujr3hPeWHMUb5sZXC2O
	MRK8bzMJ2fctGt/OTl7Yrdlau2h+y7Gs80vEM1lHSWgV6MBMQGDV+u8JTbxhj5jnDBrUZTw3UCze5
	2VHHHxid9PgbX64VbNPp2y92nigJ4A3+D4+5fEXOIZo4difnAIJgjn1j2UKX4/CJSKKtnkR96BMsO
	vAApFcXLDc9LLdrmb17X5PNQciOep7+xTwdIqYf8eNfRfZfvx8qrJzi2BcpkOyrB+UhluCVjTuhCW
	W3/R8nJYgP6gA0amAKWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2HN-00000000vhD-2Iy6;
	Thu, 08 May 2025 14:31:17 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD1Xw-00000000nNd-00SB;
	Thu, 08 May 2025 13:44:21 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 331D1261A8;
	Thu,  8 May 2025 15:44:17 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r0ftL8vfHQ2h; Thu,  8 May 2025 15:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746711847; bh=Bts29gpmormYMpiiw40dTsk3CPEzuAhREl3fO/a0bhA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hxMsVWH//krLENW0kvD0VXRmaD6pjFu7DQdKBr2VItN8NAhemLQBmCsO95HgCWIkG
	 NJffK94nAyAZHYqwarXoRpgCq764LM4upiyR2yaYJO9061kbTeb4mQD0IzEisDqGat
	 eQ8pqiHFsrWer5GlXjwReNILlRFGA5KKHZTPkaFL9S8lFakQvTLafPCtM33vIMpdC+
	 tU+E2HVFWsbzqyoieLN4++TE4VeSMsTyIe3UMN8620YP7OV/kmdA4vosgaynPpRsSt
	 7pYa7ULEnAkNg5OOcniZ88PCGTtNg9R5wwpagskZ2HnCMKZdn7zf9uHGmiOho9rMDZ
	 WLOX+O957PObw==
From: Yao Zi <ziyao@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
Date: Thu,  8 May 2025 13:43:29 +0000
Message-ID: <20250508134332.14668-3-ziyao@disroot.org>
In-Reply-To: <20250508134332.14668-2-ziyao@disroot.org>
References: <20250508134332.14668-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_064420_168664_7A121662 
X-CRM114-Status: UNSURE (   6.64  )
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

Add compatible string for pipe-phy GRF found on RK3528 SoC, which
controls misc settings for the integrated naneng-combphy.

Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2f61c1b95fea..7e9321999435 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - rockchip,rk3288-sgrf
               - rockchip,rk3528-ioc-grf
+              - rockchip,rk3528-pipe-phy-grf
               - rockchip,rk3528-vo-grf
               - rockchip,rk3528-vpu-grf
               - rockchip,rk3566-pipe-grf
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
