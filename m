Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A971CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DVe+lGEp262QI28wAj2OBMwNXhtxrVWkvx6+cuuWUxY=; b=qSMkg9PPPzeotr
	Kshe2MUffSF1C/M3zP10EfDXtyeFAh9/NngLJyXyhTpVEiBL+24YA7moAZVrKrnKS4tWxAnZipLof
	tM248WDTo1AKWw5E6Jkn8uVp1yx1WkGzaGaoOXebYV2H7rKov6WUu1OZu3HCR3fGsypYRlyiWTm1X
	jzM5nA8Ojh34H3/aQqYew4Nxqxw+sWdO/cKY5dbfRcByvXS8oClLL0EaktG/uruiBvARNRi6agpY4
	t6UEThYY3ym7ejqqBqd1jIaSdsJe+K3ClNJYivProVbcSrzVKIMDL2lqG8VLdtWvKOW1ZDgjrm8gE
	wrh4eflnZEyUdg/VAf5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRAZ-0000000HQIu-468B;
	Tue, 03 Sep 2024 10:53:55 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slR9z-0000000HQ7u-0djf
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:53:21 +0000
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id lJcusY1ZsumtXlR9isHTys; Tue, 03 Sep 2024 10:53:02 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9esiejG37DYlR9gsXmm5; Tue, 03 Sep 2024 10:53:01 +0000
X-Authority-Analysis: v=2.4 cv=dNqgmvZb c=1 sm=1 tr=0 ts=66d6ea8d
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=VwQbUJbxAAAA:8
 a=rT7NhT99x2eMfdz9cs0A:9 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=UppZcDWe1uFAJ+bvasF5er5A9xgV/I9BZ+SAKDSsjpM=; b=AOnmScQFEyQEi8MZEiPr8iondE
	FltM80ZG0elT5XHBVsklYzWtsA/cF7y5n7qds476Vjvb4GOGGIZ7CuakK4q6IM07bM3pqsvgW2stH
	g053R1U2d9Pi/bd410RNCBVxd1l12Td3A2muyhWvOsFwDv1Bz1JqEgsYrKkyqlaz9TGSOlgIGboIO
	LDKzzeg6ABnbgokk4ZfuOe0RzzRdQsg6OAiEGeqZkTOMhhkFcA+32nbwa6K1LNSJJoCK7a19aArXt
	tA9XuawYa6emQMHar3wnm/yM+Qg02FEly2b4l1i/kPD+dw9QP6WGqVFUdeui2Em6Y5BYT5Zh/V8ri
	s2LlJZBQ==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9d-000Elu-0i;
	Tue, 03 Sep 2024 16:22:57 +0530
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
Subject: [PATCH v2 0/8] Add support Relfor Saib board which is based on Rockchip RV1109 SoC 
Date: Tue,  3 Sep 2024 16:22:37 +0530
Message-Id: <20240903105245.715899-1-karthikeyan@linumiz.com>
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
X-Exim-ID: 1slR9d-000Elu-0i
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfFJkKJqb4t4g881EpHu6U/ZICN+qwY+ytWDhkrLYUjRKAw9IDMsYnQ78ji+NeC5iScG/dOpaksfDSxuGpeMqaRnTwFJ+QaJF636tm28+Lm4ppJh3xqUU
 4QN6bkjEYllAkovxqYHSQAKeEV/ih42s+vYs2FnY1d3IpviDQ5wN2SS+Pxplj54+ZnSACrGWZptosl1ZJ0rb1PZT9se6UK2RZQGRI/1XFfVkbbViyc1vr/s6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_035319_220076_7064403F 
X-CRM114-Status: UNSURE (   7.08  )
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
Changes in v2:
 - Align to the comments
 - Rebased with master
 - Link to v1: https://lore.kernel.org/all/20240823153528.3863993-1-karthikeyan@linumiz.com

---

Karthikeyan Krishnasamy (8):
  ARM: dts: rockchip: Add i2c3 node for RV1126
  ARM: dts: rockchip: Add i2s0 node for RV1126
  ARM: dts: rockchip: Add pwm node for RV1126
  ARM: dts: rockchip: Add watchdog node for RV1126
  dt-bindings: rtc: microcrystal,rv3028: add clock-cells property
  dt-bindings: vendor-prefixes: Add Relfor labs
  dt-bindings: arm: rockchip: Add Relfor Saib
  ARM: dts: rockchip: Add Relfor Saib board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/rtc/microcrystal,rv3028.yaml     |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1109-relfor-saib.dts  | 429 ++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 256 +++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 159 +++++++
 7 files changed, 855 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts


base-commit: 67784a74e258a467225f0e68335df77acd67b7ab
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
