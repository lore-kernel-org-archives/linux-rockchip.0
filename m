Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA0EEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 12:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NVksaHPBgcdUCNpKlrnwe2cp/Tqvo0+ctzEA32ML64=; b=1AhYE8PZvtSm0s
	MnidLhoa1lXpvtBNzOgq/jYusvBpxWgPFeApzVWK1gL2z8Gv6DJ3AM75SdQd+iutX3FWAhwMmNbwu
	rfqGdOpXg2ydt3jMuFQ7i7nRxO218Hnp114UUb5z61w0NsruU/cIcSVmngFGyU9JeCId842n1jlFf
	fj2ZU8b2MU6ZMzn9jU731umtuptSk7i7ZKzsN8ToyBhfAWvYKhNHjfyivlLzDY1xDi6o8K3OmgwNu
	6Z4tTuRJPKWiS8N+JrJoOlnBcgUHKQnIHpaYiv/FDP0gXmk2j+toz475W6lLJ02ThoHiT0funUlfl
	+FDfBVWCEWlPoLbQF/CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEKZ-0000000BR4d-1nzZ;
	Sat, 03 Aug 2024 12:57:55 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEJG-0000000BQeM-2E85;
	Sat, 03 Aug 2024 12:56:36 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 514F441A0D;
	Sat,  3 Aug 2024 14:56:33 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzr0saSDU6r1; Sat,  3 Aug 2024 14:56:32 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722689792; bh=DQf1sqtkhnnoEtaNtUfawANX30n8YC0bJL8j07Mx9wA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=b8eIk+giDW7iuJoEBFdOPHS4cttQ2Sguj2rkjXFo4KxTRq9PqpkWUkfowqiz1mAAm
	 MsL2WMBemvXDOs3JfnsZXdIVIgo5dffGmASBwUEWAS5RceJJz2d6BeKuzpZCStJM7u
	 71TZaLbRlrKyD6aP07/ePnBH1Sdby62WlyqPE11K1D+SDLGkFd4lHUsMffP0F3RN3E
	 PWcrwaGDfmetonZJ9j7DVDbOwLaef1VrBugW+XprYZL3jkJbshTPzl0pvR5+Xm+H6O
	 wnKNamctm0gXRN7p9348DTc7vNtt1C+fyoncGemDbFSzUvUo0FfwfvLPlz6NBf2zna
	 2fz1uTrWlph7g==
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Radxa E20C board
Date: Sat,  3 Aug 2024 12:55:09 +0000
Message-ID: <20240803125510.4699-4-ziyao@disroot.org>
In-Reply-To: <20240803125510.4699-2-ziyao@disroot.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_055635_395444_5F0BF5F9 
X-CRM114-Status: UNSURE (   8.34  )
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

Add device tree documentation for Radxa E20C board.

Link: https://docs.radxa.com/en/e/e20c
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..2b8bfc7892cb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -753,6 +753,11 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa E20C
+        items:
+          - const: radxa,e20c
+          - const: rockchip,rk3528
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
