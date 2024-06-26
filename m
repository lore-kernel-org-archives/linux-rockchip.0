Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBBD0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 23:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QI2XDvOQfU1ocFpBxdkv2W5hZSDQQsRVKzGEpUO931Y=; b=n4S9+0cWTqUwVI
	vh+4sV9QxsQZkeaN0NP84oI516wh/JbnQjLA7vzmCWh5yC+xySnSRZfkRmA4vZxtrNDYkyztFilPr
	mIIZnTL3ompBjz3WPRNfvezD2sJWPNeoqh9f+0/tbKmn7ejHSDj/E0RPmmy4NZprdMVyCvqNEaCwC
	mapEnzu/3hroATTmMGXKAb+2YnPz38O9H+Zw3NuVkXciCovOcEyavUHs8rbVac8pH6YHLUZOyFQQt
	oPzxA8sY4NKZ9PCu/Dp5lg22Hx0sUHn2mjh0KUpCKWlrzSw5I+Xhf1NPVUOy7zKsFQc66IGXDwKTk
	K2Pm8BteGN8YMhh62uqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMbgN-00000008ZgH-3QPt;
	Wed, 26 Jun 2024 23:04:07 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMbgB-00000008ZaT-2sFs
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 23:03:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1719443011;
 bh=Ns5MRvRqNf6D/zytSCYrgSid41h9o+UGCT0zdmgcVTk=;
 b=AKURvvPlKet4HcO+StBN2auO6lDBReL8aeGUaZ4gybg0ee8Ck5KDYaVwNbJWB2K8yMZlyHn2m
 FesxppwhRsfm9ew/y8fgisjdD9Ulc3jBJOXSzpv7Jxuc+A5TjBTrZ055YfNIQa3nR2rtDl3OxG3
 72v0un292B0VptwS83DwD1baUowqMOND5TYxVSDnY5dGgHLb00uNCKp24xiYLdmez63rHruIvWP
 iHx5+d7x05Wq9BN8ie7xsWMMkzbQy5qxEkXaS74J12mPhJpyjRzZGRkr7Vi2l65hAYUeTfKBhao
 TVvBFHN5BWw56zMps20K0hmK0QOhRSqIK5oPUSTvXJ1A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
Date: Wed, 26 Jun 2024 23:03:10 +0000
Message-ID: <20240626230319.1425316-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 667c9e3dc59a3ae6af4b1610
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_160356_042338_621E7530 
X-CRM114-Status: UNSURE (   8.46  )
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

This series adds initial support for the Xunlong Orange Pi 3B board.

The Xunlong Orange Pi 3B is a single-board computer based on the
Rockchip RK3566 SoC.

Schematic for Orange Pi 3B can be downloaded from:
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html

Changes in v2:
- Add DT for v2.1 hw revision, rename initial DT to v1.1:
  - Ethernet phy io voltage: 3v3 (v1.1) / 1v8 (v2.1)
  - Etherent reset gpios: GPIO3_C2 (v1.1) / GPIO4_C4 (v2.1)
  - WiFi/BT: CDW-20U5622 (v1.1) / AP6256 (v2.1)
- Rename led node and move led pinctrl props
- Use regulator-.* nodename for fixed regulators
- Drop rockchip,mic-in-differential prop
- Add cap-mmc-highspeed to sdhci node
- Add no-mmc and no-sd to sdmmc1 node

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
  arm64: dts: rockchip: Add Xunlong Orange Pi 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   8 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-orangepi-3b-v1.1.dts  |  29 +
 .../dts/rockchip/rk3566-orangepi-3b-v2.1.dts  |  70 ++
 .../boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 678 ++++++++++++++++++
 5 files changed, 787 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
