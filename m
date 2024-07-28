Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FD3C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 08:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SBLu1Nu0eGcII7WTfzENQWfkghMIkZIZo3vBtse5y3U=; b=ddda33ugQtfjWc
	C/4ASSmkcXoVtnumwNuIem4zkIXN0ECTFI+ZD/RZPOPAwKh7eF43r2K+Z/1iqa0xzVPciSmaijlj6
	c8JJLfJshB1AwlsnQR8OgeidKqGUMMsWe4SyAtHnHKB7mKAfXVrG3nug1XsG0IsUNZl0H49pmCmI8
	yWAlb6dIwxj9o4cNFnX5/eqH4rpnZotX+g+FS5Ll1+et8obQ8xluRDz2y7cufdH1kxLz3NEZj1pxM
	O3GB/ZcsWqtbC5lzp7skq002/5PJCfsLDM11piAFLw0y1zQGeVyfdfeKzPJZfSj4ggSro+JbHFS7S
	VklEJkhdPuFMLfUZbhTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXzA4-000000088PZ-1UgC;
	Sun, 28 Jul 2024 08:21:48 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXz8r-0000000885i-3D4s;
	Sun, 28 Jul 2024 08:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=adiGC
	DuL728eGkg+8TRJCfZU+t/cL/RD1/bFz0cBfCM=; b=iyfKsx5w6IVHdwq3IPnCz
	dTpvZXD97qoYx8YNqr+L9yq28GNUd9UuGfGhoySt2cZxPbAfbdh7eMI4GC6uDC8M
	XAag+tAGHet3V/GhmUp/d6GhAJovNdmGEmuv5MnGeFfimdhV1LbvEZarm0G0/Ccp
	x4rVo3M/76DOVeGewgr2J8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g2-4 (Coremail) with SMTP id _____wCnb242_6VmJZF9Bw--.37149S2;
	Sun, 28 Jul 2024 16:20:10 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/2] Add support for Cool Pi GenBook
Date: Sun, 28 Jul 2024 16:20:02 +0800
Message-Id: <20240728082004.36575-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCnb242_6VmJZF9Bw--.37149S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GF1kKFy8Xw13XF1ktryftFb_yoWDJwb_Ka
	y7WrZrJa1FqFn09F9xt3y8JrW3G39Fkr98GF4rZFsxZF9rJ3y8GF1ftw1vvF15AFW29r13
	Aa1FqF1rWwn8CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_NBMPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQYqXmVOBz4pcgAAsS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_012034_280413_2A3EEFB0 
X-CRM114-Status: UNSURE (   9.60  )
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

Cool Pi GenBook is a rk3588 based laptop, it is designed
to consist of a carrier board conntected with a CM5 SoM.

This series add support of eMMC/USB HOST/WiFi/Battery/TouchPad/Keyboard,
with a mainline based u-boot[0], it can boot a third-party distribution
such as Armbian on u-disk.

[0]https://github.com/andyshrk/u-boot/commit/8eedc6700367166bfa63b861d8e7aca486d315fe

Changes in v2:
- Descripte it as Cool Pi CM5 GenBook
- rename dts to rk3588-coolpi-cm5-genbook
- enable touchpad
- enable battery

Andy Yan (2):
  dt-bindings: arm: rockchip: Add Cool Pi CM5 GenBook
  arm64: dts: rockchip: Add support for rk3588 based Cool Pi CM5 GenBook

 .../devicetree/bindings/arm/rockchip.yaml     |   8 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 349 ++++++++++++++++++
 3 files changed, 358 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
