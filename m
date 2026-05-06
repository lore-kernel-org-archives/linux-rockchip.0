Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E255CD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 09:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YInnJMo7XSawOD1rRzmwGxl3ul4L5JG3mVbanjKG92w=; b=M2tALkF36/GAah
	4CKW2MlEc3RdEeVCJ/TGp0oIglMK4E16epsrRCGlZupaiQ81+pvs/MwNnF1OFqo2fmruEXzDVdDSR
	qP6DQSIX5AeQzjsKEP3OZZ8FVsjy/4FuRK7MebbN09J4tOsWQ0VBF9Hand2brVXGEnkiS6fFKLpMg
	VHgQ3EXu5Pb/6GBMx7AtV1PMNfdASXGhSvDL999R66pyWlDOYC1yEdfO2ugOq5xzZEnR/g6srgbmZ
	K3VBZioiSeeZp/CQuHqi1+km+g8hjdoCgfxfJt/6SxJBf5iKQ5mkM5F7aSBjCeLi6yAd3II0q2iSt
	xyh+QRFKyrs9XfQxpYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYUw-00000000LGY-12mS;
	Wed, 06 May 2026 09:24:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYUu-00000000LFS-1tcf
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 09:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=Lj0xUKXRifp/RhCmIiTNJQhayVisMI4pFmpAqEssGiA=; b=HFXfYB8QnzIwgGB+I8Y1OVj2wl
	VdM8JrjwSsa/YN/d6JcYcIEl4UKqoBV9Nm05ohVzV9S+F6//tQwbz8v6C928zFgO6IrlEKAtEk+bG
	t+pU8h2vlnwk+wMRMfGrrV2y/rnoNJ4sUhocm50YWQA2jmzTcaicgu8mV9A82bUPjR/D6SEpZN3aj
	UraC3DgnmgmrLE8WdxXMImaXjd7ylLnOF0cZhy81weXyxwHPPPwq8x+sAHdcAscY6Bv9pDHL38INZ
	UG3PFLeZeDS01XYwKuRAYYl4Wc21U/gIEEAQRCC9kbqRDObZlp9Kch8pASPQ+t0MyulX8v2Rt2Jdc
	0FZcp1oQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: wim@linux-watchdog.org,
	linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] dt-bindings: watchdog: Add watchdog compatible for RK3528
Date: Wed,  6 May 2026 11:24:20 +0200
Message-ID: <20260506092420.3320031-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_022452_489708_9D741080 
X-CRM114-Status: UNSURE (   8.48  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The RK3528 uses the same watchdog block as all previous Rockchip SoCs.
So add a compatible for it to the soc-list.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 609e98cdaaff..731794dccd4a 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
               - rockchip,rk3506-wdt
+              - rockchip,rk3528-wdt
               - rockchip,rk3562-wdt
               - rockchip,rk3568-wdt
               - rockchip,rk3576-wdt
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
