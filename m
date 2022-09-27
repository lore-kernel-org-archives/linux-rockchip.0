Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC73C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 18:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puyTvYdZeJalUr8yj4RLIvz6u1WDozLk9ZYrMvtk2O8=; b=ayrdhtSTUE+RuH
	hHRygJSPut7nuG+A+cvvYoYznoUj8AGJwOr++ciV9x8vovQMkw/j9fnjXa8GxO+oLXppfPF4M6fp9
	UskBrryc7dznh8P+952msWBXs8pq8jdySSHBF+mwjSbgyEGE4DwfpLUxMTqzTm8IWKsRULzbPBOan
	gkLZ1K/Cnxn3JDckNmY/WF3QBSIf+c/RfYooJmCz2K+sbJBc5qxDEy+uIfqRLD18PxfM6Apf3uQm9
	XAGC2AsJdxANAahyuh7RMguKQ9UmJi3Jyn1KjBKZIXspJ8B9Vr4wgnik+QYyCpPi9Xos8f6BXIc+Q
	+HRO6ZnHL4eaOlQdNyvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odF7p-00C7th-V8; Tue, 27 Sep 2022 18:16:09 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odF7V-00C7ph-HL; Tue, 27 Sep 2022 18:15:52 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.195])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 935608000A3;
	Wed, 28 Sep 2022 02:15:37 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: heiko@sntech.de,
	robh+dt@kernel.org,
	michael.riesch@wolfvision.net,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe controller on rock3a
Date: Wed, 28 Sep 2022 02:15:30 +0800
Message-Id: <20220927181531.5546-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
References: <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGklPVhhDGEJLSUNOH0oaS1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJOWVdZFhoPEhUdFFlBWU9LSFVKSUtDTk1VSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nj46FDo4Lz0hPg44FxM5PBY8
	SB0aCyJVSlVKTU1PSEtJTkhDSkxOVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJOWVdZCAFZQUlOSEg3Bg++
X-HM-Tid: 0a8380295c56b03akuuu935608000a3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_111550_023235_C32E2C76 
X-CRM114-Status: GOOD (  11.16  )
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

Hi Anand,

On 27-09-22, 19:16, Anand Moon wrote:

> As per the schematic below pice support with 2 regulators
>
> VCC3V3_PCIE        (SCT2250FPA)
> VCC3V3_PI6C_03  (PI6C557-03 is a spread spectrum clock generator
> supporting PCI Express and Ethernet requirements)

> [0] https://dl.radxa.com/rock3/docs/hw/3a/rock3a_v1.3_sch.pdf

Thanks for sharing, I rewrote this patch, can you try again?

> No, it did not work on my board, see bool logs.
> [0] https://pastebin.com/Lk93VFxg

From the boot log, looks like ethernet is broken:
  mdio_bus stmmac-0: MDIO device at address 0 is missing.
  rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1

Actually I had this problem too, and reusing the "snps, reset"
property solved it. What confuses me is am I doing something
wrong or there is something wrong with the device tree now?

Thanks,
Chukun

---
Chukun Pan (1):
  arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 52 ++++++++++++++++++-
 1 file changed, 51 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
