Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F3AC5321D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 16:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TebjMRmGUoVBFuxdybebKcm+VrI1WN3kI1ef2cBNmrc=; b=Tu5OdLE1RWIFJJ
	HL5bLJ5IlfjYtZ9jTuDeRQWFq1O6M1aoB7CixkhwXtiC3P58Cm5txfc2zFoc7FFcxIjypuibI8nle
	PQvPt0KOGqk1LcNtvouwM9kxNHRduqkfjmNRSxx/M77HehNma+UDuAqHGUsryJOO1N5KCUKJu39su
	KWxLeNelE2OT4U0JoJT+2en6cMKcstEnB0uq+FmMh3R6HBRTGeJziTXK6j0TSXsaT6o4zS7SemLgu
	KWMIsdTveTeJ2XEnWcQflY+Ge9mCfAdWSPLe5vxkFvTyDBgyvcmAvo/q3NvZ+vB5cdIC4E97ygG10
	G7Hf+/82uYQc7lFC5+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shXQQ-000000001Gm-0vYd;
	Fri, 23 Aug 2024 16:46:10 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWKf-0000000HKQS-358a
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:36:11 +0000
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
	by cmsmtp with ESMTPS
	id hRpCsNoGlnNFGhWKOsLVsZ; Fri, 23 Aug 2024 15:35:52 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKKsvyNAeieBhWKLsj9lr; Fri, 23 Aug 2024 15:35:51 +0000
X-Authority-Analysis: v=2.4 cv=BoBWwpX5 c=1 sm=1 tr=0 ts=66c8ac57
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=Hh393OduLPAXkTOZqikA:9 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=FIxz5wswnZxJlIqs+c8ONwSGEnRq3jkU9qJL095u6eM=; b=EISDbXjYOIv1wiSu1BT2TQLH3g
	Ol7kgEF3jRqjk63WyYPKmChdKNR9oqUkCrGPe8Bll0388tPPA9xfEQ5n3NxsM+VnmS8l6VElXeK7J
	fnmWq8MfuAIKdBQ+zZPL1LKU7VUE5ouMs/Dnl2ltnPV5KG9GOZnIGDVh7G9qWO3Ldvv89aWVTqss6
	rsqo75dApH0kiWW9jJ3p0FAtlU1CWkJgPWDGJ1QaiD+AaP1ew65eOjHRLAhDURbTiZXFh9VpqzXf9
	vFE6UNQ5oEsx8lDFloyA9yiHOChTacmbb8wgwOjL0bwlc2nPmzHWPe/+WA2UiUjxS10noiN7eKQF/
	aYqz7uhQ==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKJ-000GB4-0P;
	Fri, 23 Aug 2024 21:05:47 +0530
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
Subject: [PATCH 0/8] Add support Relfor Saib board which is based on Rockchip RV1109 SoC
Date: Fri, 23 Aug 2024 21:05:20 +0530
Message-Id: <20240823153528.3863993-1-karthikeyan@linumiz.com>
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
X-Exim-ID: 1shWKJ-000GB4-0P
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAy6+NU2CjzXePcFtosRJTHOSWGkwEPYHqZLBwa5Fi8XOvCie//JWwRZfRmq+h3xAvydSfeFitUyIPLKd4n8gE5LlJ7zaVl5Z/L4hwYt06tk+Vlv8aCS
 62krWv2l2bsch/xeYx73dHLiG3RccGaB4dBkkCvpG9BIUJYSwHP2GurzL6XceTdCJ4PmNcbragFA9fQNlQ7ui8aBwA1bqfQqBeJ6noCOcmXUSYbKNVEgSC+w
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_083609_855652_8E25CA23 
X-CRM114-Status: UNSURE (   5.06  )
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
Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
ir transmitter and receiver, etc

Karthikeyan Krishnasamy (8):
  ARM: dts: rockchip: Add i2c3 node for RV1126
  ARM: dts: rockchip: Add i2s0 node for RV1126
  ARM: dts: rockchip: Add pwm node for RV1126
  ARM: dts: rockchip: Add watchdog node for RV1126
  Documentation: bindings: rtc: add clock-cells property
  dt-bindings: vendor-prefixes: Add Relfor labs
  dt-bindings: arm: rockchip: Add Relfor Saib
  ARM: dts: rockchip: Add Relfor Saib board

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../bindings/rtc/microcrystal,rv3028.yaml     |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1109-relfor-saib.dts  | 439 ++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 256 ++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 159 +++++++
 7 files changed, 866 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
