Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5620CCF9EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VIpgzwFzvsaJrEi8XlZTehwcUNE4AxBjs468KytwT4=; b=ADmxNuT1C5fzdJ
	V4pASSbfMEmP4O4Wzc9HIhhBA4Wkr2gve7fkTI5/5GXotfIwewcXMBoZUSioxmhA6NXIrzHiMmHRv
	tYYL5/hkv7sKQuTpdASRBWwhZ2OOt93PGWFVuoO0J/0mb4xAlPfu+Gg2RC4ZYmBn79CJCvmPH0QDm
	2LEiJDWKYZ/EeDL31VM1pvHhQdPgq27oGOoqTwcy1bvA2N3Xl77+rxZOMVR1ivpyhZnhG3d4U2EQR
	QkDpAKOVSqIRXdzoX+NN7L6XbSDLGvN27v6J4n9mTSZXx+LCi5sbSOU0EM1mTTAaQp+Zob/4AG6Ak
	SE2Rbs7xkRECp/OLfCOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJk-0000000DtNy-2le9;
	Mon, 27 Oct 2025 12:27:20 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJg-0000000DtKs-1pgq
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:17 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqZ031809;
	Mon, 27 Oct 2025 21:27:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/5] dt-bindings: arm: rockchip: Fix description for Radxa ZERO 3E/3W
Date: Mon, 27 Oct 2025 12:26:38 +0000
Message-ID: <20251027122641.39396-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052716_693708_031C2A6D 
X-CRM114-Status: UNSURE (   7.36  )
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

"3E" precedes "3W" in alphanumeric order. Fix this.

Fixes: ad986e45ada99 ("dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6ef377e66b1fb..15153e08d3881 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1028,7 +1028,7 @@ properties:
           - const: radxa,rock-5t
           - const: rockchip,rk3588
 
-      - description: Radxa ZERO 3W/3E
+      - description: Radxa ZERO 3E/3W
         items:
           - enum:
               - radxa,zero-3e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
