Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E90CD98CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 10:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=csuNHcX5SHzDHO82Mqg2E6opiNKKrQEDVRevCQEpMG4=; b=0XUpHf6Otkd9h6
	GbgyMX+Cj1FBszzab8/LB5Zpvz7AtYNXVRG2QL2MBMimznqHJlB48L1FZdrRHU0fqXtqPNvYJC4Nj
	oWXcs6MZ0qGRX2N1G/qyvDFStRaxECeSRucc9dfwm5HWDY/0/ZSsEJfTlpZ41USDrWpvlvbH4aDEY
	pc0AY+//J5ZJjDkX4ZegebzxT0wTGeWCLkzgb4+QM1JJJ6YZP0tXMOMm7Ciu/f11qI8TeoPP9Wx6Y
	/9S0DOPrFJpGbHazw3nRjIl58aCIVtVCdyko/9cbiTAvEPr6cPWSHJ16/l0AK71aTtL6i4yxApNFr
	M85+QD76+ybmvkuj/iWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFjX-00000007KNz-3zlD;
	Wed, 10 Jun 2026 10:00:27 +0000
Received: from mail-m12853.netease.com ([103.209.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFjT-00000007KKa-2Tcr;
	Wed, 10 Jun 2026 10:00:26 +0000
Received: from Vostro-3710.. (unknown [113.80.141.92])
	by smtp.qiye.163.com (Hmail) with ESMTP id 41d5b4a75;
	Wed, 10 Jun 2026 18:00:10 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add HINLINK H28K
Date: Wed, 10 Jun 2026 18:00:04 +0800
Message-Id: <20260610100006.366963-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a9eb0f9a2f203a2kunmd062ac7916b4cd
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSh0ZVkkYGB8ZHUlCGB1JT1YeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKSkhVQ0tVSk9KVUJJWVdZFhoPEhUdFFlBWU9LSFVKS0hLSk
	xLVUpLS1VLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_030023_839092_BAC684BD 
X-CRM114-Status: UNSURE (   9.41  )
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

The HINLINK H28K is a dual-gigabit SBC based on the RK3528 SoC.

There is a version that SeeedStudio distributes called LinkStar-H28K.
It's no different from the HINLINK H28K. The schematic can be found here:

https://www.hinlink.cn/wp-content/uploads/2024/03/20240428015024130824.pdf
https://files.seeedstudio.com/wiki/H28K/Open_source/H28K-SCH.zip

The U-Boot patch will be sent after the kernel device tree is merged.

Changes in v2:
- Add USB 2.0 support
- Remove MangoPi patches
- Improve commit messages

Chukun Pan (2):
  dt-bindings: arm: rockchip: Add HINLINK H28K
  arm64: dts: rockchip: Add HINLINK H28K

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3528-hinlink-h28k.dts | 318 ++++++++++++++++++
 3 files changed, 324 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
