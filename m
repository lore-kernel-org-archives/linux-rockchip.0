Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 287A4C04A6A
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFk+aP54s1/itUl43j+V0WJN+ASL0sNoDKGca0GVjtc=; b=fE/u+0ADA5cuOH
	IjcevplqfdhtoSq1qHNn6uEcsAKwAF1hRSt2SBvOuOG5rm3hGJjwTubE1RN2bBcjaAFXV6WKHWY43
	yVYQjncat1+jS95LNhiuP757/iFkGjTQZragLy3qH4gGRDoYFp+7zhkJny9AIjbHXqAK2jJt0khi1
	62z9/0lRxYQTdaOGdq98kJl1lqRobNtyht1F1OnmYk0pmq4H5TCr3XJGfH4jeMHAAjkeTE9c7dDSO
	CMYm+HRq/YCtKWr0XCZwf70un3Rb6Cl8aC3uQ/bORDhJRWDJ55sWsgB5zqDYFwetbQWjvItaedCv8
	WkcYq+s4dWBvDD2uMsxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR4F1-0042Rg-1e;
	Wed, 02 Aug 2023 05:17:47 +0000
Received: from gproxy4-pub.mail.unifiedlayer.com ([69.89.23.142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR4Ey-0042NE-2g
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Aug 2023 05:17:46 +0000
Received: from cmgw12.mail.unifiedlayer.com (unknown [10.0.90.127])
	by progateway6.mail.pro1.eigbox.com (Postfix) with ESMTP id 2F7F810047FC5
	for <linux-rockchip@lists.infradead.org>; Wed,  2 Aug 2023 05:17:33 +0000 (UTC)
Received: from just2025.justhost.com ([173.254.28.237])
	by cmsmtp with ESMTP
	id R4EmqZtiMmRvpR4EmqCdU0; Wed, 02 Aug 2023 05:17:33 +0000
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.4 cv=F/qSyotN c=1 sm=1 tr=0 ts=64c9e6ed
 a=Jt2RHIFfQig1ELqEZVeWfA==:117 a=Jt2RHIFfQig1ELqEZVeWfA==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=UttIx32zK-AA:10:nop_rcvd_month_year
 a=5SfhNeb3QxAA:10:endurance_base64_authed_username_1 a=DgXrqYuCAAAA:8
 a=eSCCvEbRnsAFwu8X_C0A:9 a=NFkmT8Fa3oR8cXbSjPxL:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6GLBXSnMCa64ncjUK715f/djLaOjkGdOOQ837Kd10UQ=; b=ZK9hCv+DZp+G++t/37AXvdgCN1
	1GkZ6tzydrAaugzJD5mZvco88ag++Bdbw0C/KEh+i8Z6lI4xFtMNFlS43qGRfcldaEOHBnUuDumfI
	VBPwalhU8kO8Z7o7o6hdiLHwMWs2hEtU0IA0+LsvuA/erkfoaahhbq490qRqLQHB3rjJWArlXYCD7
	kw732GGGo23YhAiIXvMTrlSdGnS7NScSPnqzhtVnpgp+GO2EuGdXMHY/UHzsr6j3yL5o4rbcLzO8g
	fripNeSykmKSK5ecSysfJVI4Pgi883BGKBodQPqqkW9v+rfRpCjgfWi9AClLRgXU9fwp8QGpAu4lW
	hWMik41g==;
Received: from 097-084-242-070.res.spectrum.com ([97.84.242.70]:50744 helo=localhost.localdomain)
	by just2025.justhost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <tmckahan@singleboardsolutions.com>)
	id 1qR4Em-001wRt-16;
	Tue, 01 Aug 2023 23:17:32 -0600
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add NanoPC T6
Date: Wed,  2 Aug 2023 01:14:06 -0400
Message-Id: <20230802051441.3106-2-tmckahan@singleboardsolutions.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2025.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 97.84.242.70
X-Source-L: No
X-Exim-ID: 1qR4Em-001wRt-16
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 097-084-242-070.res.spectrum.com (localhost.localdomain) [97.84.242.70]:50744
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 12
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7anVzdDIwMjUuanVzdGhvc3QuY29t
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_221744_919506_C6D0B025 
X-CRM114-Status: UNSURE (   5.10  )
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

Add the NanoPC T6, a single board computer from FriendlyElec

Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115ca986e20f..ca5389862887 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -227,6 +227,11 @@ properties:
               - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
+      - description: FriendlyElec NanoPC T6
+        items:
+          - const: friendlyarm,nanopc-t6
+          - const: rockchip,rk3588
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
