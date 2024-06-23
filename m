Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A2D5C2BA18
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 20:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9fMQAt4Y68avEYmokPzh6Ii9q7rypXgkMasPasI/v4=; b=vfIa3coufSpyae
	+Km5Bqy53QDGHzLtBmE1vcTCqgwqJA8k9FfLiOxxzdDbL2Lz1e/fB/sb9nymYMvP2lZ9pOwzDOOfF
	bsPD1RVK3wEiZrhZBHHgsmsVdWI9o4r8S1f+brcT++zBrEVYwBLWj26MJBJzAcIrVS95Sgou4jtHz
	nAf0sPBHpQA985k1tYpu7JhqP9ukq7W7F8wvsao7HP/hcW8WkbYmmIW3gqJYKnrCUH3IXzKGiiEZw
	M9/LZAGbGZazHQlZyYzsPrMfSzL/9Uuu/Y0NBdh0+IA9c5/X7lr2cVCSt5BjZLtWy4axxndWNLwmG
	czqX4KzNbXyVFniV4S9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTcB-0000000Ej1x-3PWL;
	Sun, 23 Jun 2024 20:15:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTc6-0000000Ej0G-0F47
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 20:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=9TEuYXlJRdxJQjb4J5q8sALk6y2zLweMAOE5VMZNdQM=; b=Zuxz6n9Rby5y/aFRcqaaSx1tdr
	hDWwd32jlC+fUvc4GjQC5KQS+Nh4CrjkYH527HtdJHHwf5HWPOgxvb5R/8Whcr+g6Z4rgzZ1eAEyK
	nUCkqqSqr+o3p2wQqps3woZPQDZ0nmWBN6j4tFuIgHIi+UBROjYs3ejAmqFpcjxhXis4rGgG/bEzB
	V/hs0ROPhGKX//UjcBQpki1lYWzXdiq9YSs8vj3Pl9k7l+J7pRhbGJ0GFuz/xLPd+BNsyyv/BW3Ww
	gif/BOwc6Kcg6Qtyz1IOxoqsdRwgMpw0aL4WFAo/C+Y5cIQXw3oGWPL76stBbMZLiwnTDF6tbx/sz
	wjmJQL+A==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLTc0-00000009NUV-10nD
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 20:15:00 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NKEMob007026;
	Mon, 24 Jun 2024 05:14:22 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
Date: Mon, 24 Jun 2024 05:14:13 +0900
Message-ID: <20240623201415.3205-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_211456_733304_DF0DC2FC 
X-CRM114-Status: UNSURE (   6.04  )
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

Add devicetree binding for the Radxa ROCK Pi E v3.0 board.

Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
RK3328 SoC with a compact form factor.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- none
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..53ca61c47b76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -779,6 +779,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
