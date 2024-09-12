Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BADCEED60F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mU0YXHu+TUgrbUQlEhb5a7FKaXwgX6/5paMnhlzXc8=; b=cEV5FEeFrN07ag
	FOkAspA6cEb5RLs8glbp5JWTYF8RM3kf10Bpxrn5tob0NaXnAYfTlydPJgwVQdDE2Qs2pfpQg92eS
	0wspR8GTgKPixa7GofxQpCIIkt5AxYWcN+R5LDo0vRPfjEb6JVqkzxcBmMFqDOsi51dL/8FENCORL
	LcW2eAOAWJDu9bVoATkf3uFCLDTD0n/2yy5E75uBg1cfeqN64a0WVDlG4G5MxVsXCx5RXTmAShlKm
	e7MpOPzRykkuPUO3X0tmddOc0tvPE7Z60MFAIi5jJabYeDWJLxKHXbodMlCENbP5qVXsVRzzDnqch
	4ZQx03Nhj1k3PbxrSlZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokrx-0000000DMV4-2QvK;
	Thu, 12 Sep 2024 14:32:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soknv-0000000DLea-2zpl
	for linux-rockchip@bombadil.infradead.org;
	Thu, 12 Sep 2024 14:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zkCBkCBKc4ANemT3MV9ght0illnAODmYjMPaR9PDusI=; b=mR/exfaie06pOeu28JP1cCwpdD
	rA7aa6XdP2kdgDqnl/B4I7glYOHzPS4nxPsVCHj+f7mio9fPW/nJQfbfxmly0/zF1BsDjtrUy6ge+
	QaLGcYUy85RLRG5hWm3SPEzqcSiZOBW8PTmXQybSJMky+Pl3iRw4mUXAWIuKgTWZ4yv9ZyiRNGX8P
	Gdy+NAPCQZVkICnr2q2fuzyN8YJOzbYmRa/XDTdz9/v94f6mW9LehweqX6zFuEekH/pdjpR050sPe
	wPzXfbCOXMF9dqGMEEDiouc4A48ze1v0xp6OiFYWKAcbj51CcjcDoRJZ34t7NWSOfSFYQ5NetyGzS
	mL/hXDhQ==;
Received: from omta34.uswest2.a.cloudfilter.net ([35.89.44.33])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sokns-00000000Ujy-2hV9
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 14:28:14 +0000
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
	by cmsmtp with ESMTPS
	id oZ7ssd5PpVpzpokm4sz9wH; Thu, 12 Sep 2024 14:26:20 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id okm1sJhBjeieBokm3s8cuK; Thu, 12 Sep 2024 14:26:20 +0000
X-Authority-Analysis: v=2.4 cv=BoBWwpX5 c=1 sm=1 tr=0 ts=66e2fa0c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=XYAwZIGsAAAA:8 a=vU9dKmh3AAAA:8
 a=lGF4n8RSI6dAxPqq6YkA:9 a=E8ToXWR_bxluHZ7gmE-Z:22 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=zkCBkCBKc4ANemT3MV9ght0illnAODmYjMPaR9PDusI=; b=Tvz3qPHyMLjsC4QDS4Y6cmKPTe
	tPXB6K3P8VGoElDjr9KisIZB3VFurvsDHzBX5rRhKUBFhOc+pDRquzsYSZcE0WhFTFJnniAh9rtcv
	RwOXF+edzDqCWY9msE1ezhZO7AzKeB6L+yLzQPlIp/x57w4qyw2rdYHies5oxh8Av9iYpl0HJwRei
	e6ZnxtKvuJoNCPOWkKrgwlA7gXdIkuGOBtlGnrHldFkSGseMM4gWMDOk/dbHmdKj3KIPJ1gOmnSWG
	DD98jzA+QLvszX9qUuoKAvGILiNUywTw2JA0cdhGlVDEVXuJAd5siVgLcTUoSfAfZFP13xyb2ppTT
	5bl2w3xg==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sokm0-003n4z-0E;
	Thu, 12 Sep 2024 19:56:16 +0530
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
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028: add #clock-cells property
Date: Thu, 12 Sep 2024 19:54:48 +0530
Message-Id: <20240912142451.2952633-4-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240912142451.2952633-1-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sokm0-003n4z-0E
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 37
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBOJlovhn4EMf4hylar1sVFeX9R18wO0VfWBNRgQ2gRhEkKWix5MVrIrNGaAjwcCTstPBnqB+s34hOkqkIonZALPqyoGDcEImt/b9ir8/ldn0NdaQt77
 v6azwYblcRUbxDPiSizLBndlymCLcx3Hr1DVFejMzHdScgMDjkikCwR8Q/UZ12BraQlTA05RYcaCRGPXTtofCcFdKHs8Ukip2PiIMvdUYXzO1Eh9jFi17a5A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_152813_010620_528A994B 
X-CRM114-Status: UNSURE (   3.63  )
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

RV3028 RTC has a clock out features, the clk out can be
controlled using clkout register, to consume the clock out
from rv3028 '#clock-cells' property is added.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v3:
    - fix commit message
    
    v2:
    - fix commit message subject

 Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
index 5ade5dfad048..cda8ad7c1203 100644
--- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
+++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
@@ -22,6 +22,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  "#clock-cells":
+    const: 0
+
   trickle-resistor-ohms:
     enum:
       - 3000
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
