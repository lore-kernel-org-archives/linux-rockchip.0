Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD1EE7718F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kTTwDirILZAZNfgvffjyz7vCYHssa2CEhpUI83m78YM=; b=GzDRymymEVnW0f
	n3iRynBuBmPQBCIrA6rjeDGJ8RGxs9MW52r3QHW164ChtmM2+C73/IYi/e/y1VImQgo4eHk/Zm++Q
	5bvacJn+G1jwC/q4/+jXO5I2jVFHGFQIaxgHFcwUt22w8mf4p8DtMSOtC7/8Rx0sYLXWodhEXALnL
	cwjPLOG8jGiC3o08qWHzj8hlQxCs14oUidjX3G63KwNLa4A+BjuRU7a+PKloMj1jOJnFdRmNB4TJ1
	Uzw8IY7Y/abdVQLO3DHEcYJNWdaoOfobB7A8XuknqG9hWnXnfmDzcsU6MIUZ7/WdV2Nq1TX5NuLEy
	DXL300OvhKGJbo6Lit2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXQC-000000095el-2MsL;
	Mon, 23 Dec 2024 01:39:48 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXQ7-000000095as-0c6x
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 01:39:46 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW6x024519;
	Mon, 23 Dec 2024 10:39:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/7] arm64: dts: rockchip: Refine dts for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:19 +0000
Message-ID: <20241223013926.1134-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_173943_453430_63DB521E 
X-CRM114-Status: UNSURE (   5.26  )
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

This patch series includes fixes for improvements, trivial changes,
etc for Radxa ROCK 5C.

FUKAUMI Naoki (7):
  arm64: dts: rockchip: Change the function of the blue LED for Radxa
    ROCK 5C
  arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
    ROCK 5C
  arm64: dts: rockchip: Remove the RTC and related nodes for Radxa ROCK
    5C
  arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
  arm64: dts: rockchip: Fix the properties of the PMIC regulators for
    Radxa ROCK 5C
  arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
  arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C

 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 239 ++++++++----------
 1 file changed, 107 insertions(+), 132 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
