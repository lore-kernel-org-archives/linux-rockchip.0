Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1C7FC27C53
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Jun 2024 22:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9jYo3JPNWo6OUBBoEYbLV4PMhP22ZfHNXbVVf16JtY=; b=XPcu9N3fz8ym2v
	iqeOv+Q03r3a4EAXOd9oXXXZbIo4cD12C6VfFQYxH0gUnlwJVyBi09S1QNZjd5lCbYGrvsvEKYMJo
	TbF2gGqJRRmTqZ62H5rbfO/kX8FqwOAtMlIndt06rMgnMmljkW9fKBWHN6wZpCzugPuqnr/OrY8Qe
	uQFtIg+xFPSmIEUE8jV4sBZ+pCv9prPkui7AF8qi/8E1tBgXR6Dw0gH4ImfYnn9LTVBBxmWAkTgxp
	9d9sum1zOHtUS7c9Qshzir6wZ3LS7yT3mnUaWVL5O0uvb5oK3ioT4Owuw9BCrlMPkPPdC+pLqZO51
	VIx4Qj0av6tX8J2xdSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGR0H-00000003LtF-1EGg;
	Sun, 09 Jun 2024 22:27:09 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGR0D-00000003LrO-3bkE;
	Sun, 09 Jun 2024 22:27:07 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id 282C3240A4A;
	Mon, 10 Jun 2024 00:27:00 +0200 (CEST)
Received: from postfix02.mail.de (postfix02.bt.mail.de [10.0.121.126])
	by shout02.mail.de (Postfix) with ESMTP id 05FCE240B55;
	Mon, 10 Jun 2024 00:27:00 +0200 (CEST)
Received: from smtp01.mail.de (smtp02.bt.mail.de [10.0.121.212])
	by postfix02.mail.de (Postfix) with ESMTP id D1571A00E2;
	Mon, 10 Jun 2024 00:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1717972019;
	bh=l2vdRBAbtE/p7Lk44UFPAG0xcSQFQjBbVrpUsAwztsI=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=V+25u3STtZZpuxc81J2Dk3FpXQJG7EmWeAPk0FhvfKf7VdaY/J0YYmZqmgwk1COAj
	 +pYchPvcer0iUkwujMX8qQm8WLxhlml4lyMduKj8R0mxmqWmlgl/WIaXK4DQDPg1cu
	 0+cmfrtyjTxmNyCqgNxyGoES3ULCN1VDflfM9O1S0FD7akAD5mu03vxYCNISUTBBm3
	 fd24CEvBn/fDYD/UdHxMlQIriTkPGlGEBNJsbWR8KvF52ZJuAwogkgHy2ltdtpui5W
	 tESlQ5Bl/ra8wWNzdqTAavKbxtOrvB+eAEgNV3Sn/Ua4NESnEXTaF1/8ieOfuTKaVu
	 a8bzqY2lqp/eQ==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id D4706240A46;
	Mon, 10 Jun 2024 00:26:58 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Space Meyer <me@the-space.agency>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
Date: Mon, 10 Jun 2024 00:20:16 +0200
Message-ID: <20240609222428.134977-2-seb-dev@mail.de>
In-Reply-To: <20240609222428.134977-1-seb-dev@mail.de>
References: <20240609222428.134977-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1146
X-purgate-ID: 154282::1717972019-FED2B878-08DBCF11/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240609_152706_269969_DE26F593 
X-CRM114-Status: UNSURE (   6.91  )
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

Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
