Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A88C54FC6
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 11:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Siy/6WDt+MPlX0H54Y4e1Dzo+SRYb5q/gOibavtt9SU=; b=BU0HC9v2S3zj7h
	lpcbcZC3VksfkCTIEDcuc/X4DzyBKd63Eat9efQUSXIww7JCVN9fr1527FXxZGEowfT5Xj6FAAsQN
	eyBHxpMPy4bP177dbnpsBERhnGruhfNweRrLbU7/iOp5j3eZInXBJSB6NXiBTd6FCsVdTz/evNhee
	QnWTUr8xuWcBNlxd3H+aXgcpJf3jLXDquMbRXtUAYHPvYwK6kgTyQAXUFWXJJOCUcsWSVSn3lmnhI
	Tfe7YSTXCEJ1pj4OpYcwRRqMwADDToMjJKbj+FJ6ZSvJow11i45ucES02ZMIKhOY8FvPTeBYgiT9X
	3qcy7zkMIWaIUCCsh8dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skidN-0000000BO26-20zB;
	Sun, 01 Sep 2024 11:20:41 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skidJ-0000000BO0Z-1uF3
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Sep 2024 11:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1725189628;
 bh=Z89W5F2t063lBkCLEwxf85Xb/ma4isw7uhvOFuWSdqo=;
 b=pXRBCHA93OvgpublXaezeiHguPr+yYPV6mnYN1vPf2/UuVM7UNyoFzkBPldyxdjHMumVbFZPA
 G7jzOalbVYobbmTivxWzAH8sWFyXH6BO8lq8rk8VP9PBPbXhDjCm9OchDvSjPTIOzVLHBzhVnwi
 iAq08pG6y5GxbC0/d1VgmFAeBfcmwdXAJ7nd4bTU1zI0lijENLUiuwEq0PF9RAzMeHixrP1U3z6
 ki9ZKLLgY9N1DAAsQCOfjUKh7gzs6vgNSSvLG+xjytRQiH0Fo7zalhtMjVKDbiCThor8tauTJIJ
 Xs30XiJVhM3OWQZG9ey9bbXDRVFlLtDG38Njk0DdUKBA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Hardkernel ODROID-M2
Date: Sun,  1 Sep 2024 11:20:13 +0000
Message-ID: <20240901112020.3224704-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66d44dfb556ab34bbda73d05
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_042037_854049_5FC7AA17 
X-CRM114-Status: UNSURE (   9.88  )
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

This series add initial support for the Hardkernel ODROID-M2 board.

The Hardkernel ODROID-M2 is a single-board computer based on Rockchip
RK3588S2 SoC. It features e.g. 8/16 GB LPDDR5 RAM, 64 GB eMMC, SD-card,
GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0/Type-C.

Schematics for ODROID-M2 can be found at:
https://wiki.odroid.com/_media/odroid-m2/hardware/m2_main_rev1.0_240611.pdf

The device tree was created based on the schematics with regulator
voltage values adjusted to closer match vendor downstream device tree.

Testing was done booting into Linux using mainline U-Boot from [1],
a test build of mainline U-Boot for ODROID-M2 can be found at [2].

U-Boot patches will be sent once DT reach the devicetree-rebasing tree.

[1] https://github.com/Kwiboo/u-boot-rockchip/commits/rk3xxx-2024.10/
[2] https://github.com/Kwiboo/u-boot-build/actions/runs/10653436524

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Hardkernel ODROID-M2
  arm64: dts: rockchip: Add Hardkernel ODROID-M2

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   | 903 ++++++++++++++++++
 3 files changed, 909 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
