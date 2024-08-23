Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCC3C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBOl5xpSzBjl0rTtYmjlQ5G/9XnOGG2VjcUcCIjLw0Y=; b=GmrYcignh5v9TM
	5NrkJ+CJLzQ4cCqrLCW7nr4vMEMaAn2zaZZS6SqOUnvjr9va72nExVGBC+K+27TTA90E+iMcrMRy1
	6UZHNFlenRJfubWW2h5GIKZcYXY87ckuJoCXUA382HXbtffB//9OY9j3IT0vdJ7hXIIkju7bWtYSQ
	nqcdst6D3LuPG2225xyGB39AiePrMd/14qStHtvbkDQgkP199BghWyN0DxeOHKtW3/5ajVlSvmy+s
	/6iWE3Jx/d0EzWbsLBT6dgCrDL0G8C71QXJeRWJXAdPIqD3dJb4K75W0VL4fRlXDfDRQQ814rjdef
	Y6N5NI0W5xK4g4Ykc7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWP6-0000000HLTS-2qOd;
	Fri, 23 Aug 2024 15:40:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMI-0000000HKlD-3fWZ
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QVMH6+AQBoL0WKzlVIw6S0+n9yYlQNc8yrm7EGRR5DU=; b=lDLsf6oqX1HKzBfV9/NF66lJou
	7V9zPwblHEWBa/zQwt0MlFj4qIfMPANKCk/NcIB71jmLn2J+buoShbfxTYZeZJ7Zb8zS4TCdEijzf
	6WV6I4uus4Ej7gTDbhhOX4RfN10UN+7cUPPKWTWxJtf2Ob3+Aoe1XS5qzyOZz2qTV2w5XghHhckim
	7mrQqpZDvNVn6WIfK28eSoJnltNgtAvSzKGI5Yq2annhuK0fDxU2LsLZ8JNWik9PGn3i+4c3s9PRf
	iHO12DEcmtlqSZ7eWGgk8ShBCWTBhvi2usiGoJNT5C1+uzlBBD/GolGfQwJKLHf5cfFc+uLUdS1zo
	ZM2RoTyg==;
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMD-0000000AAOf-3pMl
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:37:49 +0000
Received: from eig-obgw-5003a.ext.cloudfilter.net ([10.0.29.159])
	by cmsmtp with ESMTPS
	id hIEbsEAM5qvuohWKVs6cOs; Fri, 23 Aug 2024 15:36:00 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKTsmEPqO7CrhWKUsKYw5; Fri, 23 Aug 2024 15:35:59 +0000
X-Authority-Analysis: v=2.4 cv=Pco0hThd c=1 sm=1 tr=0 ts=66c8ac5f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=ARcrkP6DAAAA:8 a=vU9dKmh3AAAA:8 a=L4MHaItcyTsGJ2lxC4sA:9
 a=HWcd8CIpyGgXnveeQW_Z:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QVMH6+AQBoL0WKzlVIw6S0+n9yYlQNc8yrm7EGRR5DU=; b=TL5x0lf3UV3Md8RKG8rOeKrkSC
	HUE2BMk3vni1Yg+IeOBy7PIDAOP6cMvpTgWa37CcKfX2syyLTzGIhCf7XC8fbOwsQ4dho2os57gbN
	Y0bkR+cQM7sFIaxEZSu0TSWYGxgQSLEZZt38qBNRPPyUw0hz8m/81oEByy46xbLBgB0GqRHNPduyS
	ZVLIxwIWKZKjm73EFPpWxY/c5WvzHij/dB2LJR40Ngvt8l+/ln5NkJvSqQW1FuVJZ0MFmKQ6rOJRT
	i5IcYovxtKM5EPdQ6Pu+waKingQpS0FMiwqP/VI/tNSY440LL0Dd7tE9Sem143ZRSsodRVOO08FUp
	F/EUtKGA==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKR-000GB4-2H;
	Fri, 23 Aug 2024 21:05:55 +0530
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
Subject: [PATCH 6/8] dt-bindings: vendor-prefixes: Add Relfor labs
Date: Fri, 23 Aug 2024 21:05:26 +0530
Message-Id: <20240823153528.3863993-7-karthikeyan@linumiz.com>
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
X-Exim-ID: 1shWKR-000GB4-2H
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 63
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGLnofC8v6o9ACpmrp82ANbDpjZpGjF/JSDqs4yjtidRtR6qnU4WdWLq3jxRP8jy0ZAz8Yp+WBksa4FJxqR+2ecvC4cWeIjSRVlwfQucy8c5s4JMRjlf
 mnQgn3RBHXJMr1pxSO8PLPCOLOrvVRwe7mAsOfPucCaw/ePni5/8+mtBDfMy3azftpiUtvijC20mM5CM7fjKn9IvMRj+H5XQ4VQWma15BumEH/WtkQFWl4tD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_163746_210372_DEF7B2E6 
X-CRM114-Status: UNSURE (   3.42  )
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

Add Relfor Labs Pvt. Ltd. vendor prefixes
https://www.relfor.com/

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a70ce43b3dc0..7d10ac7d6800 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1220,6 +1220,8 @@ patternProperties:
     description: Unisoc Communications, Inc.
   "^realtek,.*":
     description: Realtek Semiconductor Corp.
+  "^relfor,.*":
+    description: Relfor Labs Pvt. Ltd.
   "^remarkable,.*":
     description: reMarkable AS
   "^renesas,.*":
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
