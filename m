Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FCF3C87FCB
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Aug 2025 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSHeh2+JK4+6JYldNWMg4B09W+oE+U/SnlkxF4fyrSM=; b=ANGvz4n4SOLMEA
	sD+XCpIC3HqJDi3WSwudkoknyIi3KWCWyq7O+7Z4n2Xk6xtP9XlF9L4ESTIIE7rM3HVHwsxzTe6mf
	irTgCNyTUEK4Ii9qpnBlGh/QuiMcaDx4vvH/DgafjalFGok1knO6kyutZxsjNRVhZMJ5aGymQRNOC
	d6M5mZxWTDcShkU0noS+a77gTJp/Jse6ujkV5WndbOCW5LO/6TKvYCj43BcBoZr62clf4NTYsJJUw
	aTLNt8NCZwQZ4BPdtazupFrXt0pq1IXw3ebEB0+kaGK5ZwiKc12id6uJLut19RHL4Shon1mEHLO80
	aSlhR3oCieHURyAVHE8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkrs-00000005DZo-1xXY;
	Fri, 01 Aug 2025 08:11:56 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkgz-00000005CQu-1zIy;
	Fri, 01 Aug 2025 08:00:43 +0000
Received: from localhost.localdomain (unknown [119.122.213.139])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1dfa26360;
	Fri, 1 Aug 2025 16:00:30 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>,
	Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/1] arm64: dts: rockchip: rk3528: Add CPU frequency scaling support
Date: Fri,  1 Aug 2025 16:00:24 +0800
Message-Id: <20250801080025.558935-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Tid: 0a9864a5987503a2kunm02af6e1563574
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ05NVklMGB5OH0hPSkMfGlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKSEJZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250801_010041_702197_6EBDA608 
X-CRM114-Status: UNSURE (   8.64  )
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

By default, the CPUs on RK3528 operates at 1.5GHz. Add CPU frequency and
voltage mapping to the device tree to enable dynamic scaling via cpufreq.

The OPP values come from downstream 5.10 kernel, using a voltage close to
the actual frequency. Frequencies below 1200MHz have been removed as they
currently use the same voltage.

If we want the actual frequency to reach 2016MHz, the voltage
needs to reach 1.13V (+0.03V), not sure if it is safe.
The maximum opp-table voltage of downstream kernel is 1.1V.

Here are the test results using mhz [1] on Radxa E20C:

--------------------------------------
display frequency |  actual frequency
     1200MHz      |      1286MHz
     1416MHz      |      1430MHz
     1608MHz      |      1640MHz
     1800MHz      |      1804MHz
     2016MHz      |      1946MHz
--------------------------------------

[1] https://github.com/wtarreau/mhz.git

Changed from v3:
  Remove frequencies below 1200MHz

Changed from v2:
  Rename label opp-table-0 to opp-table-cpu
  Adjust the voltage used for 408MHz to 1200MHz

Chukun Pan (1):
  arm64: dts: rockchip: rk3528: Add CPU frequency scaling support

 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 39 ++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
