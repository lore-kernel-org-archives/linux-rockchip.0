Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D26C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Dec 2022 07:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z661AhHze8e7to+CL/9ac79oDhJ/AOGKFv0hp/8Ww/I=; b=IqO4IYTaxSQBAk
	m/vf0yQe208Kbdw+VjaLhd7qed9gUxlN4IUylH/6KaskLlwZB4Q0khzt094ib3br7asXDT8xidUwd
	wz4WvM8AjLl5Wect7VSqGK82jZ0VCtla+L0p3Hz5x04hV17PMsXug/O/JxKxS7Eh6THc9iKa/qFcG
	og4GCiK7+ztZDEZjJFKxma+NZrIcaDTNWCIIAbwWlblJf3vCo9Se4jeigedXvKaiQLu7bfgUKlter
	v+e/RTOCAHOz075BzITirE/ZganM+dINVfElX8adw/tTC4jsOgAuh7c99zPzS8a/Bf0R1M5FB5Buw
	f4PUR9YYZKBOqTvS3SPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1NAG-002lPB-5E; Sat, 03 Dec 2022 07:42:24 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1NA4-002lNa-7m; Sat, 03 Dec 2022 07:42:13 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.194])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 60E89800082;
	Sat,  3 Dec 2022 15:42:07 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus
Date: Sat,  3 Dec 2022 15:41:47 +0800
Message-Id: <20221203074149.11543-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZS09KVk5ISB1MTRkeGkhOSVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OQg6Gio5Ez0eMAohVjYCAyxO
	Fy8KCyNVSlVKTUxLS05ISElMQk1MVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJPWVdZCAFZQUpOS003Bg++
X-HM-Tid: 0a84d6ef72d2b03akuuu60e89800082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_234212_429552_AAF4BD1E 
X-CRM114-Status: UNSURE (   5.60  )
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

> Changes from v2:
> * Add regulator suffix.
> * Collected acked-by.

Chukun Pan (2):
  dt-bindings: arm: rockchip: Add Orange Pi R1 Plus
  arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3328-orangepi-r1-plus.dts  | 373 ++++++++++++++++++
 3 files changed, 379 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
