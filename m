Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C885ACD3427
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 11:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN518+J263PoVRb8z477TmDkQUqLBm/RrXtzvYaqeKk=; b=WkDNkczGBv07U/
	SNn2Vbr//eDR7MefS6cfyxf235lZ83wp3voWi+rohvuPnryRv0JYFArDKSU2nDKhXGs1HyLD1aDkL
	bNz/b4F4Icjz4wRpJ6sFLtxtO220chY4GCSQIl3GvJfpjCHqo7Y9FOw//JRK3WG6GXKzfEfpedcMC
	FGw7aprHa6k3C317xoPzaQ72qD31oNECDR/hYZjoU8QOaC4kPtGWMpxok21dJwxLSWMjF+Qb3693E
	bRYnw62Utp7Ra7SibW9LkkxBTArJ7YKh3hu+HEm1zgolmFsDEN7FrtUf9jh/6EKwSGev8z02p+RnX
	jo06WSt/aHVR+ZeirT5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skidN-0000000BO1s-00E7;
	Sun, 01 Sep 2024 11:20:41 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skidJ-0000000BO0a-1urL
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Sep 2024 11:20:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725189633; bh=QRMQHn0PZt4Cg7zwDP1ucgJnlnivck4MuK7e8FtsTjg=;
 b=P8j46QGBso+OYf6lNV5qxXOhaUoGXp+k7GfghVDM4AV08StyuI8TSOWOp8lBifnrQOgUTqcTn
 ggKgT9qdFCK/fJJn8FW6iEEfFiJFjk173Lrmx7zqj5kmgTFvFjl34drRo39kDz+lNcGg5igAFDT
 WJqAkYnwHmYBWkZZ1f7ZUKgZzwkdPCSeF+heUjQFch7WA2dKwzNKLE+tnNP43LE4dpjsqQtpAKq
 FTj+HnKDRHcBG5V2wwtbieI3Fa+AjoUywwHn4ViO3C+x6892vMWPrbQuBEERhGYE5KpO3fNwc6R
 4+JTLPa8zWwAyk0TCeX9jWpEnosAecoEIXdro4frX2rw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M2
Date: Sun,  1 Sep 2024 11:20:14 +0000
Message-ID: <20240901112020.3224704-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240901112020.3224704-1-jonas@kwiboo.se>
References: <20240901112020.3224704-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66d44e00556ab34bbda73d2b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_042037_854136_8A5A58C7 
X-CRM114-Status: UNSURE (   7.96  )
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

The Hardkernel ODROID-M2 is a single-board computer based on Rockchip
RK3588S2 SoC. It features e.g. 8/16 GB LPDDR5 RAM, 64 GB eMMC, SD-card,
GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0/Type-C.

Add devicetree binding documentation for the Hardkernel ODROID-M2 board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 0c810037200d..ff9f2f529beb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -605,6 +605,11 @@ properties:
           - const: hardkernel,odroid-m1s
           - const: rockchip,rk3566
 
+      - description: Hardkernel Odroid M2
+        items:
+          - const: hardkernel,odroid-m2
+          - const: rockchip,rk3588s
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
