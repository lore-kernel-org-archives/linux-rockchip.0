Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23AFEC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 14:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emhxekSj7+mw35q6X9C4IabZq2MQHCH3mN+BDTBhnn0=; b=DhUWj9pKKv252s
	XEBwAPDeRXpMIws6jQLsdZVusDPTP8xV9L0xhpoUCSgjA1/aL4YXXzdSjvTNTZpP43MmKXmNw/Xgm
	aKLm6+g6Uie5AuwAUfFTwesVsyjAqedHL9IAqpzb9J50jzxUYHgxl2WjWhuR/9jRV0S4E3t0olBX7
	A9kGcBHk5gKcoik/xTqwqbKCGAZbf4mDskzlGtTK96sJZd37WvlALInPs/EoOsFOAabqV+BLDb89I
	mkSi0bjP157BkP0OBp7vzwr0dA2fC5DFH57seXQdo1SlqJv4p3GQ8A1kaPgoOeYE7mBx2Qq8FSl73
	UKDGzB8dbwTMMwNzhgLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shV1h-0000000H2JT-09dH;
	Fri, 23 Aug 2024 14:12:29 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shV1Y-0000000H2Cs-1M3m;
	Fri, 23 Aug 2024 14:12:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724422316; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GHYF4yA9w24+85zblAqwVnxWGe8NXEMWVFykBDlvzPPpyfVOU+Mre9zkGtNM8pEKtRN3qHuOqZIDO7RYT9eXw/KHJLMSTPf5n/qOBcMsEs3vHm/r2NIL/Avj2N+IY/4ZVIPO9nh2meXnKsnM59sdlh4szh6mRDkAolXHntvxGd0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724422316; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Bb0Qp7PvjL/FavJnOuFCckFOcaryUTEY+obrN+nW6zg=; 
	b=GIXTrhp5MWW50IgyqGx+a8SJapzc1UMr+wULQfDn90t7LU0a9tcu0gAvdmAwekR8lWO2kqy8iv2oDBwNiCjk5zMNPU5CE4NpdLZZpMSI4Xr3lG+okyjtob8Td/8YjgrhdUlTwBILUbmDdElDRYDUqeoC5xV2qN8UhfoFdj2BhgE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724422316;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Bb0Qp7PvjL/FavJnOuFCckFOcaryUTEY+obrN+nW6zg=;
	b=IL5L2GJCH9yGovg7QLTZPuYHO9cgCBUa6w7NrzdeXVnTsX8xuCK3yAan1DtzaU9N
	POIfyag4CEt0RMPaCcazQoizaZGwbyDz9Vrb+gaJGL/8I2qeQfAWa2wk+s4JAW71OlU
	XYcpfoTB6ulo+qSrtef1s9RAKfrzQE6CLd3+WovQ=
Received: by mx.zohomail.com with SMTPS id 1724422314570897.378374599523;
	Fri, 23 Aug 2024 07:11:54 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 2/3] dt-bindings: net: Add support for rk3576 dwmac
Date: Fri, 23 Aug 2024 10:11:14 -0400
Message-ID: <20240823141318.51201-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240823141318.51201-1-detlev.casanova@collabora.com>
References: <20240823141318.51201-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_071220_447044_76EC5CEE 
X-CRM114-Status: UNSURE (   9.39  )
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

Add a rockchip,rk3576-gmac compatible for supporting the 2 gmac
devices on the rk3576.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 6bbe96e352509..f8a576611d6c1 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
           - rockchip,rk3568-gmac
+          - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
           - rockchip,rv1126-gmac
@@ -52,6 +53,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3568-gmac
+              - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
               - rockchip,rv1126-gmac
           - const: snps,dwmac-4.20a
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 3eb65e63fdaec..4e2ba1bf788c9 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -80,6 +80,7 @@ properties:
         - rockchip,rk3328-gmac
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
+        - rockchip,rk3576-gmac
         - rockchip,rk3588-gmac
         - rockchip,rk3399-gmac
         - rockchip,rv1108-gmac
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
