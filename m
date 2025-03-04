Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E4BBC282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 20:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CBjFEGPL6UmoN4rWYxrnFK3Wlx1ShogArhYc92AI+YI=; b=Cm706IQ9jSlSpF
	cqhJ/5y6Ha7UYtS6GSdU7xbMkgBoUDJafvzLETZbIDyuKHXki9HRoC9kO7elVYzAX2xMkQt/5UOLf
	6PbNab4KjwjA//m61yRhIRTHvRME5KjThjPFX3OrHrMWpO6rjxBtXpwM/6eQEg0C6W3FP39YP0Xoq
	6fo0eqq/OOuN+fFN9lHL0JxMdWUqzEXHosbXVMQmu2ya7hdiwgZJJ8JE5jjoJwL6Wbas8Cx5eQJw4
	zA6kUhfYGHodvaT7oqIp4j/YzJaTRVAe58qMY6up5yIvBs02Dh8jNeXvrMv4QVFlEyTFKJeuyrTYM
	z52+ozD3YDfYijbfAW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpZCZ-00000006EEN-1lVU;
	Tue, 04 Mar 2025 20:49:19 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpZCW-00000006ECT-26oU
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 20:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741121355;
 bh=x6BDfPh0O1Xw4+eoI5OG+FYUEnRuz8BZ8BPs7Zf9ilk=;
 b=dus7Yo6O3N52P8htGbl+bHev4aVGZ9piIge2dtDeZvHy7+NcMPsqFm9eb2rVovXn8VHpoAqrE
 n1bww3d0nFY/9aasgMM9KJX6De6scCd4eVE8oP990ykekXqv4vshtIfc2VDdzlGenae56l05q6b
 MdeS37Bzp4hLTQN6rZxlpeXcPNQNiaIgVa5b9coSQK8y3js55sbitjIOy+lxJQV0GrZpIiYIkhf
 4PTxKF1LRTOC0AMx0Jm3VC+uQYaX9Cas64ROWZZYpdbIB658d9KCysBCUSUFH3Sky6BrHI6xHuY
 Bf2FoXP+WQRx3Ag957M6UW7tSZnMa+q5HNJPerwE5z8Q==
X-Forward-Email-ID: 67c75faf66a4509299dbdf39
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/4] rockchip: Add support for leds and buttons on Radxa E20C
Date: Tue,  4 Mar 2025 20:16:33 +0000
Message-ID: <20250304201642.831218-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_124916_927625_B41F147D 
X-CRM114-Status: UNSURE (   8.14  )
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

The Radxa E20C has three GPIO leds, one SARADC maskrom button and one
GPIO user button.

This series add leds, gpio-keys and adc-keys nodes to board DT to
describe the leds and buttons found on Radxa E20C.

Changes in v2:
- Change gpio-leds node name to leds
- Drop patches already applied
- Merge saradc and gpio button series
- Reorder patches

Board schematics for Radxa E20C can be found at [1].

[1] https://dl.radxa.com/e/e20c/v1.10/radxa_e20c_v1100_schematic.pdf

Jonas Karlman (4):
  arm64: dts: rockchip: Add leds node to Radxa E20C
  arm64: dts: rockchip: Add user button to Radxa E20C
  arm64: dts: rockchip: Add SARADC node for RK3528
  arm64: dts: rockchip: Add maskrom button to Radxa E20C

 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 116 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |  13 ++
 2 files changed, 129 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
