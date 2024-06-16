Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C334C27C53
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 21:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoANju5ct4BEscdwaI/ucn5y/dgxYc8NJ2XzXT1HGgY=; b=vRGZi3h2DNrCEx
	gVk2sx2jsrRxI2p8ix4Em5NwQcyNIls7wSEG3nO/azaxmh4dSBfRpr23BmK4EYYA7SXCH9pwbs2lJ
	eNDgcdaVqtcrfW/l3z4Mbhpgc8vvha3F3BG5CSWxH5SPEiwANwM/SbSWGD2Ka7rSgvxz5pV5vlYk3
	ZU6Qxmp1W+qBBBlQ7NIM3NXQ8v0jOiRo72MF7fmZCS1I9vgqdDJDxmB6n9flJAd5mLljV+EEWE18t
	46KzNaM65mq4bQgMtINd2NTJMn8NPpJ1poJe1gzK84+ui9IO7QbygF1ObLd/1S8/KOn4wPCxDXW3Z
	BlIV+XjSzyshvmXlyznw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIxsi-00000008Np6-1mk4;
	Sun, 16 Jun 2024 21:57:48 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIxsd-00000008Nm8-1GTq;
	Sun, 16 Jun 2024 21:57:44 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout12.mail.de (Postfix) with ESMTPS id 30DC2240D87;
	Sun, 16 Jun 2024 23:57:39 +0200 (CEST)
Received: from postfix03.mail.de (postfix03.bt.mail.de [10.0.121.127])
	by shout01.mail.de (Postfix) with ESMTP id 13DF3240D0B;
	Sun, 16 Jun 2024 23:57:39 +0200 (CEST)
Received: from smtp01.mail.de (smtp04.bt.mail.de [10.0.121.214])
	by postfix03.mail.de (Postfix) with ESMTP id E425380226;
	Sun, 16 Jun 2024 23:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718575058;
	bh=NDnVqJ9FGkPHAO/ppUMb+sjr00adaPZXyCz1aJvmI6M=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=PpCGpp4UGqorTKnkY+cShBYgLD0uQxzwV4pxkCMQg9eS3cqWaEfjvGct5j9YH8mzY
	 7zjWODdv9684HXJ9yfpLG5boatbehBqK4c79zx25+5Topz6xaNb7/2VCS6HYDdz3sZ
	 xhBi9V2tXlvML+dmC7tgy6tifjmNcEGgF9H8dzlgs/z7dZip8Fo5kMd/Shxy/PCOr4
	 PzeIc2Z3AnW161ogSIaH4YRbrV+xZdFqJVAtxg5hXDAPRKW1I60d4elfDZ0M1F2+XC
	 qHdlb1ADmN5gO/kXlDJw/1wL3IBw4MdsWBdz9jWdHV4mJJSxdo7PAIBiuG4KqDVblI
	 5fqlIKWirXFBg==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id CAF5C240A95;
	Sun, 16 Jun 2024 23:57:37 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
Date: Sun, 16 Jun 2024 23:48:29 +0200
Message-ID: <20240616215354.40999-2-seb-dev@mail.de>
In-Reply-To: <20240616215354.40999-1-seb-dev@mail.de>
References: <20240616215354.40999-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1146
X-purgate-ID: 154282::1718575058-057EB338-2B2D7613/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_145743_581832_24F79AB9 
X-CRM114-Status: UNSURE (   7.04  )
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

Add devicetree bindings for the FriendlyElec CM3588 NAS board.

The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 77469270b271..eca0a42eb384 100644
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
