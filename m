Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA35EED609
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 14:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r+/H9ATnHebUATMig+OJfILGXgDy4xC4smSgZXk6pQs=; b=lyKoBaRmPy1Bav
	R9p4+uIl+YZL0PIGXGsSH4to0xpuXAxfEcKK1gnYhJbS6t4TX4MDKUbKR6sNCK45geKRO1X3B27QE
	y85HLKtlellKJAPmx13odrBqh3B2LEnekNedwrYLXlRMIbnTJ10L0RG4W9nPkPznwWx6lgvzCrM/4
	YEXQlvrqyQ1UheKeE0YKiBzfJyxlX24JfRxqL9oEDzrW4s91fiocq7pNksIkzl5jPFuyVzfHTciCB
	cGcHEhJyCn8pugE34AUcmbBSLC6diJo6Bzk3lwZge5cBeznQk9f87OOO5Dz8J4KFlLO6/8QSXloIn
	J04Hxa21iTEz4rboX+3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokmZ-0000000DLGb-0wPt;
	Thu, 12 Sep 2024 14:26:51 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokmH-0000000DL7N-3Jiz
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 14:26:36 +0000
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id oSZQs8tzoumtXokm0sTd29; Thu, 12 Sep 2024 14:26:16 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id oklwsWqgc0vWToklysZVs0; Thu, 12 Sep 2024 14:26:14 +0000
X-Authority-Analysis: v=2.4 cv=ffZmyFQF c=1 sm=1 tr=0 ts=66e2fa06
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=VwQbUJbxAAAA:8
 a=rT7NhT99x2eMfdz9cs0A:9 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=7QXESs+8CADDwMHBZ3VYC8ztM/9Ainl2kfcfyQYyWuQ=; b=PnMS2fKWQUhAx4yHxWHjoFae52
	SeWWxPzAluF1D9reXvhcx7lU5SPgYr2znc7T0z12i7uX0fj1vLR3RUJKD6qbQSC3yiGR52p1LaBJe
	NdPq+mqKpO/G2smQaLERjTs2BtdXF45AHSXHpi3+PCs2PpwnFWx51oduYd4UIcV+mrGvFGWKv1a8I
	Ey+O3/xGELxCwhxGupuL0Afr4W5UT85DhQgkduJRGH5+TVyHd1LHnPej+r7CO+x2COW7EU4NLxQC4
	9XM9d9ZciHUBFIUJgD7bsBxV05mgDoOiwWzLNyZVSE6/xI0V+m/NZKaOx9ZcJg2mFjYxFjfCmgFDW
	4YsSux1g==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1soklu-003n4z-2t;
	Thu, 12 Sep 2024 19:56:10 +0530
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
Subject: [PATCH v3 0/6] Add support Relfor Saib board which is based on Rockchip RV1109 SoC
Date: Thu, 12 Sep 2024 19:54:45 +0530
Message-Id: <20240912142451.2952633-1-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1soklu-003n4z-2t
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfNAfs31UWKb51D/YT9xFkwnhURFox/NYt40DpgJ3uFeeGrSemE7swyLMaDi+cuKHRtZO415ZzWTJB2UvJKCmkxtZmZTFxu0p0A4afeZzi5/NcP0omZD8
 Hq2nEsT9i3nX3O2SsfqGZm2aJ940xa4sZg+XoK7iR5HtQ73yA8ipL7Pcw8hqZZZffNI4OObAsGA3oGDzQv3/wvvGlK16VK0r3ldOG6i9iWyKU1owQ0xAJgR1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_072633_900477_EA083BCC 
X-CRM114-Status: UNSURE (   7.33  )
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

Rockchip RV1109 is compatible with Rockchip RV1126.
In this series, adding required missing peripheral in
RV1126 and its pin mux.

Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
ir transmitter and receiver, etc

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
Changes in v3:
- Align to the comments
- Rebased with master
- Drop first 3 commit from v2, since it got applied
- Link to v2: https://lore.kernel.org/all/20240903105245.715899-1-karthikeyan@linumiz.com

Changes in v2:
 - Align to the comments
 - Rebased with master
 - Link to v1: https://lore.kernel.org/all/20240823153528.3863993-1-karthikeyan@linumiz.com

---
Karthikeyan Krishnasamy (6):
  dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt string
  ARM: dts: rockchip: Add watchdog node for RV1126
  dt-bindings: rtc: microcrystal,rv3028: add #clock-cells property
  dt-bindings: vendor-prefixes: Add Relfor labs
  dt-bindings: arm: rockchip: Add Relfor Saib
  ARM: dts: rockchip: Add Relfor Saib board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/rtc/microcrystal,rv3028.yaml     |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |   1 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1109-relfor-saib.dts  | 422 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        |   8 +
 7 files changed, 442 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
