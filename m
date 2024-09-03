Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5236BCD342C
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 11:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtkEeJ1kxQkdtiOjbfO/LeIDSSXSDMSOUAFTAGNx6E4=; b=gCNk4uojTjMy1m
	iH9ZoPxTq7JXXUstfd5wgZRE7oWO1x5cG9s6CtjJh9gCxDI3a4LRKaEgTg/CNIpSN9kp582CG/JB3
	7S8MuX1AE77M3LN09JPTJpw+ATwvkGjVYJK3B9dvNLhJ0LWLkTtTU4lfyRFPS93Qqt8sZiS27SNAc
	8kiy2GaYrt6qhH9RtyjzQMpDHr/UDztX/w+KUAvRb09zVmp+o2YkrYVIq2smiyO06rN2GBE7vUPhm
	QYsSAzVDutU4xZYbeFK6+RQJUUYcQYXFgwdQvFGw5a7b38SlAmahB6iuavJ5UOpXeSseYMQDpv5tB
	bzkY2FvxtVj46+ATRQ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRIi-0000000HSW1-499p;
	Tue, 03 Sep 2024 11:02:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRDt-0000000HRQW-0Btu
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BwUrh3OEJTRjFnN467OIIFRLN9Mzt3dNQvLn8JSBJpI=; b=hXnLUOP5EWHajoCN7AO+I+93KB
	k4oHjrwK1Y1RnTLGZY8k6ZUcSORXfekIIL2R1i/Q90/8qLHveahKg7O6cfhJ4aZ1vEK4cIgr/pgWR
	FqaDHxwAeRIXrwYFY8Wr4uIgZwLNT1OPPyAsSJ4aOil3njEpOafL1EVZqlTJJhJfGT1eiFEBt9mb+
	wdJT0OHxw0E1UP1r+V3wUh+05DfOyuMoERtADYnHDlqj3vMVS/hBWIrh4s0JEZi02kL60rUOJVBy8
	DJ5I7hLxPWpmg+hwSa94+7sB6HZXRT/HbepQ9s69iEvMsBjYyc6kFgrnKwwGG10ugXsmUIULXbqWV
	QAA3OLlA==;
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slRDp-000000086tq-2HGE
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:57:19 +0000
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id l9Hfs0MrvnNFGlR9qsUNkj; Tue, 03 Sep 2024 10:53:11 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9nsgUJuX56wlR9psZMZA; Tue, 03 Sep 2024 10:53:10 +0000
X-Authority-Analysis: v=2.4 cv=MY6nuI/f c=1 sm=1 tr=0 ts=66d6ea96
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=ARcrkP6DAAAA:8 a=vU9dKmh3AAAA:8
 a=L4MHaItcyTsGJ2lxC4sA:9 a=HWcd8CIpyGgXnveeQW_Z:22 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=BwUrh3OEJTRjFnN467OIIFRLN9Mzt3dNQvLn8JSBJpI=; b=lbo7s2WslKLYXiYgL2f8BxCRqi
	GWmGdzOJbLzKUHjlBZ/UHlSfaP6l17LSoJIAxhU/0OPj8NJS1opKDBHSqZLyG/l0C+6peasbWEuko
	2Nwzs70RDMXEJQZ/Su99J5NItlALuVetlAGEdEdJ+V9TmE3ucYU1Qp9z9hqqs6oPRJISkRWhct0pZ
	EM/im0bYbDNgbtCuchM1UKNTL53hi5E57zj1vrLCeo5klTCiLWvezyFqbuSXmZl76Q2apne7x3khw
	LFnyc1xEWHUuay5hBq0QcdVTGc3as9nMCUZRzZ9WYNIf3qP73/uojyBtJyF6DuQWeMnfC0SAev/OB
	7P/Z+ETA==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9m-000Elu-17;
	Tue, 03 Sep 2024 16:23:06 +0530
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
Subject: [PATCH v2 6/8] dt-bindings: vendor-prefixes: Add Relfor labs
Date: Tue,  3 Sep 2024 16:22:43 +0530
Message-Id: <20240903105245.715899-7-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9m-000Elu-17
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 64
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDJYauc0PX8ATD73m5kpTZyEbrmvGg/FOfelCV+EwTvODj8g8zb/Dn7sKUqBnSEYiErQhRvx8nCGsqlEMspO5dB1B4Su8J0DQlt7kOw3T04NVLdBZJ5H
 JHH7p+2v+x45evQPz0Ct0GxAxVRcqhPuN37yA8yC5qm+EB2TJ7UjzKvNTyXw7LYRlnU689i18KUfM6VDUOWV//dxFIEel/DfhGmyJU1Wh5VrXR8HgBP3bRw1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_115717_670033_7CB1EDB0 
X-CRM114-Status: UNSURE (   4.20  )
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

Notes:
    v2:
    - No change

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
