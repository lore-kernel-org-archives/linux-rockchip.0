Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3288DC28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 15:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GiCZ2F0EMpbRSDU2mNOqtng87nGABS3o5QN5LdqqtZw=; b=g5wf05IIKD8+ko
	USzSapOM5a/bImsJyfT2uPI7pdW97uS5GhJ3ntXxlYRJpqUcmwspzko87M8RBIxsRbT8nBBW1WI01
	whN1eWDyj0HWuUREgZVekWtzxACTx9efTtfEiRnJ02BDrvurNf/k1AJzOQzyLB+FNjqaTI+oUWoyi
	tQXthdFzZpgXW8g4AVwmhlu6egQO2CDwZNqzYRmpkczLV7qhwfPgMy97rLAXg685guk5EAqLumu+L
	kudUx5L2cznBkZrR8MHSTCH0jDwDNP8TAveReind6XIRbbbwgL12+3cQ4EorGJBBkIccdr/CoBWvu
	vq4QcncWGWq466og19sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCi9-0000000BGL8-38Cy;
	Thu, 06 Mar 2025 15:00:33 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCi6-0000000BGKG-3AK2;
	Thu, 06 Mar 2025 15:00:32 +0000
Received: from localhost.localdomain (unknown [119.122.215.89])
	by smtp.qiye.163.com (Hmail) with ESMTP id d2dcd17b;
	Thu, 6 Mar 2025 23:00:26 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/1]  arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
Date: Thu,  6 Mar 2025 23:00:16 +0800
Message-Id: <20250306150017.488975-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGkgZVhgeGklOGkseT0MaT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVDQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG
X-HM-Tid: 0a956bf8dde403a2kunmd2dcd17b
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBw6Tww4CjJCSTNWDSs#Eg9K
	ITYKCR9VSlVKTE9KSUxISUlMSE1DVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUNCWVdZCAFZQUxDSDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_070030_990952_019C7885 
X-CRM114-Status: UNSURE (   4.51  )
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

Same as RK3568, RK3528 uses SCMI clk instead of standard ARMCLK.
Add SCMI clk for CPU, GPU and RNG will also use it.

dmesg:
[    0.061333] scmi_core: SCMI protocol bus registered
[    0.125780] scmi_protocol scmi_dev.1: Enabled polling mode TX channel - prot_id:16
[    0.126628] arm-scmi firmware:scmi: SCMI Notifications - Core Enabled.
[    0.127233] arm-scmi firmware:scmi: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0

CPU frequency: ~# mhz
count=611657 us50=19994 us250=99945 diff=79951 cpu_MHz=1530.080

Changes in v2:
  Change sram to reserved-memory

Chukun Pan (1):
  arm64: dts: rockchip: enable SCMI clk for RK3528 SoC

 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
