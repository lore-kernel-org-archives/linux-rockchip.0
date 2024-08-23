Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46843C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUnFvCi/+X4urHUeiH8CD8m6nHz61hUdW20d+raJfxY=; b=G119tEkRUHvKdy
	adQocxTtz6VdyTjqNzoHt/GX1rtQfxCXbGvphiPPGIF/bSrShmG4hf1e0IYgIaqQ6SV7LxXsB0QD3
	pq2sRtWJhawHLOTipXUhe5GdA5bf97jnPXP4/0ne675cHU2rCZKww6rqPaDDcVTT8wzesET4+u2fr
	6JLBA9USMGT2GDPVqxUe16jwPaLOJs0CK8bIh/qzN51R5q1M9x1CnavYzelmyvaoCkd+7/s4459iF
	IYfaKmNJXe8nz+eLDRVK9wvPuHuAex9QVWFOyg2JxiFhgVDO5TrLWo2sAlv96GpnG93DyYmJ+aXg9
	cP0NzHaMkpBIdj7UiXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWTm-0000000HN4G-3AXw;
	Fri, 23 Aug 2024 15:45:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWOb-0000000HLLZ-2bvJ
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GFh4qRuUJB0rrMs4T9RVkJerrRO8OYO4En9jGqxlD3Y=; b=fgzVAb29m7Nve+cBfhIBkx+a14
	j1OHbKfymIu5BjfunleJO5upf+8oWBX9vJXjkMoSuSdTLnjv4xaA75RtoLxymoKIYv3afu+b9TBry
	ssLc1NhqO+anKv9W7e4+ZDCuhxRPCSLnar3B9zsEzHEOSAVsVQCmYBOQHW/7KMcd9h0nEMu0WCU2g
	50L0/gR9OFamnioD54psZ+TyqUTfzH4teZzxyHNxVylLkYudEgr3O7N9+eWj2KPq0HJtC5FaocliP
	TkFsP6zG5NqMZN+Xg7Qyhjl4zsyjCR+ICCxzMYMn82/yoAdhe1pUraIu6mIIphmN8Yn5dC9TRQpsF
	fBh5WeOQ==;
Received: from omta34.uswest2.a.cloudfilter.net ([35.89.44.33])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWOW-0000000BsTB-1DIH
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:40:12 +0000
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id hIepsLYXaVpzphWKXseDP1; Fri, 23 Aug 2024 15:36:01 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKUsPtdzIbI2hWKWsQVo1; Fri, 23 Aug 2024 15:36:00 +0000
X-Authority-Analysis: v=2.4 cv=IeyBW3qa c=1 sm=1 tr=0 ts=66c8ac60
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=4uBLznlVahHWhnoGBvoA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=GFh4qRuUJB0rrMs4T9RVkJerrRO8OYO4En9jGqxlD3Y=; b=h58cQZqWgaqWJE2GIGhYjwwR8B
	wDTc4ZTzz+PMaPqUrJbGHtVMbfXdWqcv6dnoZdcD1um3PjeBVjV6N76bHopmZiQ9dItC9KXVvov2y
	Khg6Rme5M2xenJM+VmlM6Rzv4/DS6lP5wDLaUp7sb9M1su22AyEODNBBCAt87D6rmvi/KA43R+i5K
	q9THMY4EdyTCgGCRgyDC53j8wN8QlgTzv57OJSC4UBjHe6Aj7vrEce2HH6FIFjkUZP3p0MrZ9ZPgQ
	vYAhPsow0dMui7/nWglpBgL8J6bBB0nT9hjy3TqrjnDNrLJHkl1Tk+ttgBozx7ePI9cpoPaIXTMvR
	qX7/uGlQ==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKT-000GB4-0J;
	Fri, 23 Aug 2024 21:05:57 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
Date: Fri, 23 Aug 2024 21:05:27 +0530
Message-Id: <20240823153528.3863993-8-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKT-000GB4-0J
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 73
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOcBNdJVfirVXqYIZNNDbAiXvDdW7lYwPyl8T7Xqas+ldsyGH4/p9ulUJVyf33n3M5acXbvcHnXVB6xzGv4gdAWgwCreUb9sz5E/H3YP+Jy9FLPJX49+
 KZ4MCQ4PZAoGqt7zicoNVWnoprHTkeRykAKjkXWgVouV3GqnHMQh9xdQQjKKoQc/UBkGCV0yJ8SMVvW2klE75dzjJoigjhGtTwqD2v3m3GfJUnbBhdW5BdKH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_164008_499072_B47C783C 
X-CRM114-Status: UNSURE (   4.10  )
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

Add devicetree binding documentation for Relfor Saib
board which uses Rockchip RV1109 SoC

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..29f7e09ae443 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -848,6 +848,12 @@ properties:
               - radxa,zero-3w
           - const: rockchip,rk3566
 
+      - description: Relfor SAIB board
+        items:
+          - const: relfor,saib
+          - enum:
+              - rockchip,rv1109
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
