Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD531C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 12:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMD3VhI9v0GrI9uQusBwTapC/CM7go5uySKWPX1/iX0=; b=FgdgIWBqZ3nIZE
	olrhvHByT3wn5jtRUV4wWzfR6RxorF9GATiujtrL7yAdmtYYq/QiYgKS7uq1imQO1K1WvhJ8C7Mmb
	ntFC3hQZNAfT5VW9Q58Jc1BlG8LhkLr6UFL2x00KgIxP2W5muKx03qmJPJ5/4s3s6ILoU6jH18U2U
	VoIxtd2pIoozqjtXynVhGEPUPtwmaslshyNhTYT+DZ2IRiqZwyVMGibgu5DEF0v1fgXUgfMRHewY4
	ROW3vjCASwn3HwbuepRy7sNHJ8nlm6FL5Kf0cXUsOT4m3Zg84/wie7y15eYexGN0VSVefB/aGNqmf
	vWeptdSlGPxdUTwhN7LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqrxx-0000000H30c-2knd;
	Mon, 03 Aug 2026 12:40:25 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqrxt-0000000H2xv-07u8;
	Mon, 03 Aug 2026 12:40:24 +0000
Received: from Vostro-3710.. (unknown [14.220.232.116])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4895a4bee;
	Mon, 3 Aug 2026 20:40:09 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: zyheihei_123@163.com
Cc: amadeus@jmu.edu.cn,
	andrew@lunn.ch,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: H28K: release RTL8211F reset before MDIO probing
Date: Mon,  3 Aug 2026 20:40:00 +0800
Message-Id: <20260803124000.840861-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260803104646.26836-1-zyheihei_123@163.com>
References: <20260803104646.26836-1-zyheihei_123@163.com>
MIME-Version: 1.0
X-HM-Tid: 0a9fc7a3819d03a2kunm7af09f8f2859a5
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZTE1CVkhLHkxLQkJOGklIH1YeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpKTVlXWRYaDxIVHRRZQVlPS0hVSktIS0
	pMS1VKS0tVS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_054021_254252_997C4EDA 
X-CRM114-Status: UNSURE (   5.79  )
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

Hi,

> Release the reset from the MAC node via snps,reset-gpios so it is
> deasserted before MDIO scanning, and drop the PHY-node reset-gpios (a
> second consumer on the same GPIO is rejected with -EBUSY).

This is incorrect. Has your uboot's DT been synchronized with the kernel?
Normally, U-Boot will reset this GPIO. Another way to solve your problem
is to hardcode the PHY ID here. However, considering that manufacturers
might use either RTL8211F or YT8531, it's best to let U-Boot handle it.

For reference: https://github.com/openwrt/openwrt/commit/384127320e0b

By the way, you sent this patch twice within two hours...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
