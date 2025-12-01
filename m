Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FE0D116F1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 10:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rpKfUl02V/yJBt/j96csOQe5je9ULK7pwdpuA6ewzcI=; b=HTFDus3OZzBKRt
	xHD51HAZcbsfNL4EvulvP5rJ8HMB+x57Zjij1NEauMRnu/29NYrn5yY8kFnuhM1cImYdRxNmiN83u
	6bTtv+MvRkoFp2NB16WmfmHw69/olBqLolllTK9Z9+sKeYmmzTphA9woE4j57aE85easN2Wjb7xhY
	SJpg9LVBJAfeZAWRLnPjf5rXMiZzXyYUmWZeguZGoNVFyxPn9P0fXEfehqE1K28wVH61TXI9byNVZ
	qsOiO30st2O7NM3WlcTLT3LUNsVMEkozpZPyP6+sgVF2ZP5GX/5nshm3C+LHsN4ESt3LNd/oxi/Xr
	V5hwvtBOYBPMAArYC4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0ic-00000003GFS-3dfo;
	Mon, 01 Dec 2025 10:01:18 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0ia-00000003GEc-1BAm;
	Mon, 01 Dec 2025 10:01:18 +0000
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b846f22b;
	Mon, 1 Dec 2025 18:01:05 +0800 (GMT+08:00)
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
Subject: [PATCH 0/4] arm64: dts: rockchip: Add H28K and M28K
Date: Mon,  1 Dec 2025 18:00:04 +0800
Message-Id: <20251201100008.206524-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Tid: 0a9ad95bd53203a2kunm919d19c13679d8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGhpOVh1DTE5KHRgZTE5JGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_020116_486413_9B4C9702 
X-CRM114-Status: UNSURE (   8.92  )
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

Both the HINLINK H28K and MangoPi M28K are development boards based
on the Rockchip RK3528 SoC, and their configurations are similar.

The U-Boot patch will be sent after the kernel device tree is merged.

There is a version that SeeedStudio distributes called LinkStar-H28K.
It's no different from the HINLINK H28K. The schematic can be found here:

https://www.hinlink.cn/wp-content/uploads/2024/03/20240428015024130824.pdf
https://files.seeedstudio.com/wiki/H28K/Open_source/H28K-SCH.zip

Information about the MangoPi M28K is here: https://widora.cn/m28k

MangoPi also has a version called "M28K Pro", which replaces the
RTL8111H with the RTL8125B.

Chukun Pan (4):
  dt-bindings: arm: rockchip: Add HINLINK H28K
  arm64: dts: rockchip: Add HINLINK H28K
  dt-bindings: arm: rockchip: Add MangoPi M28K
  arm64: dts: rockchip: Add MangoPi M28K

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../boot/dts/rockchip/rk3528-hinlink-h28k.dts | 301 ++++++++++++++
 .../boot/dts/rockchip/rk3528-mangopi-m28k.dts | 381 ++++++++++++++++++
 4 files changed, 694 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
