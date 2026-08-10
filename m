Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE0FC5AC82
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUaHPR2tiyoUgKnPAJ98uIeMl5CglflvdaCHBoJu0uo=; b=PrQTnVW86f+3vB
	5fbLT+Akme7UTNrTuynos1WlVn1nPbPjWtMrH34NXv3h+b1bLWWSNodDU1vstX1HJh9SNfTOv8rxu
	4CXPn10+lWzaVwrSVCBuppiImJK2MLwFNMWGAThFu7/1qqrRC0FoJK77NkfpnoTQ23renxP7M7jAx
	8NElppd1PTaQ1w2beqcFq5TA19xl1NR80QxGFbQTNOgf3Q0/ngeylrsh4bc4zmHDTkQO//bfJjiQ5
	jZGFkRSz8Zws7GNTLopP/oGBv5e3sfp3/WShX8zyrlvPe9tURnbPAPvvTXiZyvjWQWhiSa56OeNN5
	86ioGCxHS2QMB+h0/zKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOv1-0000000BiUY-30RY;
	Mon, 10 Aug 2026 12:15:51 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOux-0000000BiNc-3m4Q;
	Mon, 10 Aug 2026 12:15:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BB833BFA89;
	Mon, 10 Aug 2026 15:15:42 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364144; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Hf3hq9uUQWUEz8YvFbiRVgRTtJAkRTrXQ6MRYpIYIEw=;
	b=UeIEk5zMajwNW4r8+weqNaNRWkDcX2R+4atx7y05y44m8kQkfK4J0lgfbgNpBSgxIOE/jV
	gDX1GEexBCpwzJ1mllZ9trQnv7mjFLGJ5ArO7FYqnWxcbizrpnUzbZUk3l4/W+JN6pNUHw
	A1dfYLT8jDIf5gCCTsbiP275HG8GFp6rJOEfjTneZqocPnbC49wvnftdmeg2iZiEemi54O
	CwwgmNseusKz7usvNoa7dhbEzLG/lX2EawL5RONj0oViXHKOWq94hFMdHBMqxsaKt8rDaJ
	kK2UbRp3MYteDJoxE6M5iE4S/1fJ9Xedf4jtwwwqxtMLmUy6+wuaHyb0Mv5XNQ==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	David Wu <david.wu@rock-chips.com>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakub Kicinski <kuba@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	netdev@vger.kernel.org
Subject: [PATCH 04/25] dt-bindings: net: rockchip-dwmac: add RV1106 compatible
Date: Mon, 10 Aug 2026 15:10:55 +0300
Message-ID: <20260810121121.210040-5-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051548_152879_7DE57912 
X-CRM114-Status: UNSURE (   8.93  )
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

Add compatible string for RV1106 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349..65eee45f7d7e 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -29,6 +29,7 @@ select:
           - rockchip,rk3568-gmac
           - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
+          - rockchip,rv1106-gmac
           - rockchip,rv1108-gmac
           - rockchip,rv1126-gmac
   required:
@@ -56,6 +57,7 @@ properties:
               - rockchip,rk3568-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
+              - rockchip,rv1106-gmac
               - rockchip,rv1126-gmac
           - const: snps,dwmac-4.20a
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
