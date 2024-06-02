Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61F9DC25B74
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jun 2024 22:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IMFzuZ5tU7eD7fymnwO1tzq6bcbCpTZKXlaXkAp1mA=; b=Zuo+BeJMWwoBVK
	SrurQt3n9pMN2ATT/dxPPmbSNHqtdefIGOpFs+J6QUEIg++rtPwGUd8ujiJ7Z0aFnRl+BROeRG/BS
	wN0vp6NQX+9O2xdrIC3bQbGF06zx84+oO6ALXRkzh+w37CilMniQgiz3AlN+pBBOInB59HimxtDlY
	qjATE+sMVM61xVvpikHv0fMo+Qvku6qHj8VyC7qC2WiODvURXVwfmMa5dRE/8VQJilC2Vp49rzWn2
	FBoxHWNUHY1/bWSdp1gjuObHRL6IbT8CnQBvq5zJBpuxDgqA9vomW5duCFL0UmyeHKDCMNlAESTxO
	+I22XxLnoMtMHsjKgwrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDtZ5-0000000F0mz-32e1;
	Sun, 02 Jun 2024 22:20:35 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDtYv-0000000F0lb-3vmD;
	Sun, 02 Jun 2024 22:20:27 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout12.mail.de (Postfix) with ESMTPS id 3DAFE240AD8;
	Mon,  3 Jun 2024 00:20:23 +0200 (CEST)
Received: from postfix02.mail.de (postfix02.bt.mail.de [10.0.121.126])
	by shout01.mail.de (Postfix) with ESMTP id 131B1240B53;
	Mon,  3 Jun 2024 00:20:23 +0200 (CEST)
Received: from smtp01.mail.de (smtp04.bt.mail.de [10.0.121.214])
	by postfix02.mail.de (Postfix) with ESMTP id DF7CDA03C4;
	Mon,  3 Jun 2024 00:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1717366822;
	bh=0PpPfOnAV9dATDb1aHsLlHM/c47rHUIRIb9Xva8BQM8=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=Wgv3/K+N2SJ/BixD9oLK5+SRzYFf1/rkJEIfUmAQawIVwbiBBsTPdcT5bVsTFDBFF
	 uIC06QYIBfnYHrOXQGNEEE0jDSA6E37GfsaJ1Gjie589N/ammTgsSX+32phwfNRvTi
	 sGqBx/1BHvdlRElXujJyMW1bBO2Gfxu66/CXHb8xw/zm+hday76083ihUBxeEbkHKd
	 sfBrkiJWjn4tfYVexGDybyT+YVWVEy7d129wmVM+V5FkUH/THaWLkmYs7Xiao1sNDp
	 ocJxe+Ed35ArE+Et6Cr/fKnD6zYoaCyHnyT4XjGA0Gnc7H98BJHPQ+gdzfVuCrVJJ0
	 1o1WylOpdzQeQ==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id C579B240099;
	Mon,  3 Jun 2024 00:20:21 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Kropatsch <seb-dev@web.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
Date: Sun,  2 Jun 2024 22:20:40 +0200
Message-ID: <20240602202132.2012-1-seb-dev@mail.de>
In-Reply-To: <20240602211901.237769-1-seb-dev@mail.de>
References: <20240602211901.237769-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1422
X-purgate-ID: 154282::1717366822-B4FEA338-D6DC935A/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_152026_147345_C4745D5D 
X-CRM114-Status: UNSURE (   7.30  )
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

From: Sebastian Kropatsch <seb-dev@web.de>

Add devicetree bindings for the FriendlyElec CM3588 NAS board.

The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.

Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
---

The format (const for the SoM + enum with one entry with the baseboard)
was suggested by Heiko.
I did not collect "Acked-by: Krzysztof" since the diff changed. Please
have a look at this new change.


Changes in v2 (this patch):
- split devicetree into two (SoM and baseboard)

---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e04c213a0dee..2b8aff11fc73 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -248,6 +248,13 @@ properties:
           - const: friendlyarm,nanopc-t6
           - const: rockchip,rk3588
 
+      - description: FriendlyElec CM3588-based boards
+        items:
+          - enum:
+              - friendlyarm,cm3588-nas
+          - const: friendlyarm,cm3588
+          - const: rockchip,rk3588
+
       - description: GameForce Chi
         items:
           - const: gameforce,chi
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
