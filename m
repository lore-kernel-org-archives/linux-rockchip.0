Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8434CC5321D
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 13:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HghR9f9LpU16iUpbvqZqbBGDi4AN218/+Lmrioz99tA=; b=VMk7uJc4QBc5XT
	GWg266xTcUT5NwBcVYY9T6RiCM5qH/ziFyM7Up0F6VmQXYgKI8ixqbHUCDRlgwZtn4oZKZ5m1BkiK
	voyC6PfGdEtGop+HUICdF5A1B55V56Ts/sSj7Qa72X7M8RG+PdvbNRMVpIlRVd6eL9CvgJ70hTtKp
	8Q1Zd3XtlwM3L4Vaj7brrPHk0jWx7vRfOdgLKBTDQu61iaBG2ncRbzbV2Tys1gfat6lZMpUhv6rKo
	F+rLUV+0wUr+24Z6lvsY2T/IXH8cYSL6whbHcj7vgZjUvhVvpW/eWZQon9uYtj2qw5irm7KkjpnXp
	PoOFHM0hsPRp7IpveRyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh7xu-0000000CyNI-2zii;
	Thu, 22 Aug 2024 13:35:02 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh7vP-0000000CxbB-3Ps5
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 13:32:29 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 82C662619A0;
	Thu, 22 Aug 2024 15:32:25 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id 99iiU4s38fIu; Thu, 22 Aug 2024 15:32:23 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 17CBD26059A;
	Thu, 22 Aug 2024 15:32:21 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Thu, 22 Aug 2024 15:32:06 +0200
Subject: [PATCH v4 2/8] dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
MIME-Version: 1.0
Message-Id: <20240822-friendlyelec-nanopc-t6-lts-v4-2-892aebcec0c6@linaro.org>
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_063228_044005_C29A012A 
X-CRM114-Status: UNSURE (   8.18  )
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

Add devicetree binding for the NanoPC-T6 LTS board.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..f45c7d055a6a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -243,9 +243,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
-      - description: FriendlyElec NanoPC T6
+      - description: FriendlyElec NanoPC T6 series boards
         items:
-          - const: friendlyarm,nanopc-t6
+          - enum:
+              - friendlyarm,nanopc-t6
+              - friendlyarm,nanopc-t6-lts
           - const: rockchip,rk3588
 
       - description: FriendlyElec CM3588-based boards

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
