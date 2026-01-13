Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E588CF45C6
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 01:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u0bLSWBg+SxlsgFbC9W+RvIBRGxADIcoZ2vQ5vOkNuQ=; b=T0ixaJPYVtVdjB
	lrc6/sbBk823aDQAKx3oaO+zE0Jh1qg/qut20ADLrUYr810M4nRQL2CYaRgcf42PoBhP6867Mk6uP
	TXYJTOk7NAtI8UzPd5z5slggqwHj+CV2XwzSR92oYcO9LFjEbKuyPce9ZMsLo7V4Y4rJFUiT5y3xS
	ZybR7gFG4YtyoC742lFxPY1XGll4BIujwd3D2yUNNIAmtWie5foKaSjAV7p60dIsb3y6FgdGKzrWi
	oVaQqBS6GrBftIq1rtuqXlOUsC5+qyOIx4kOJrlZX2Uoibj8QkrYV+/Ewb0izBDzyNBgifxTMZ+kQ
	V3HcJVKjiU00sU5V75dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfT4F-00000006NWl-3ptt;
	Tue, 13 Jan 2026 01:19:31 +0000
Received: from mail-m3297.qiye.163.com ([220.197.32.97])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfT3o-00000006NRU-3vtX
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 01:19:30 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 306510f71;
	Tue, 13 Jan 2026 09:18:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/3] Fix sd card support for RK3576
Date: Tue, 13 Jan 2026 09:18:22 +0800
Message-Id: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bb4ef391209cckunm57b018bc340220
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hDHlZLSxgdTEkaGhoYHhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KQEf2ffZnRrvFpwNirngrxvMSdDLCgfc6stKq4UTOo/J6Lu6SUG2WHOyxEjtSraYoayLVa7ax2Pk5/FMb7wcGj4sJTYGMCMH9cJI77A1qCDNbtAG5sDrtn72a6W7HvOqYM05QAXJH6MBNs2zc9uAcjGLKFz2HZIgBo4bwoGJFCI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8n1NzS9xTN1bH+UPdheh+GG8+ehRLIrJHtfD0qaYU5c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_171905_484509_9C5EB390 
X-CRM114-Status: GOOD (  10.41  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


SD card hot-plug support for RK3576 is totally broken. This is because sd slot
should try to use slot-gpio(cd-gpios) instead of function IO for supporting
runtime PM. In order to support slot-gpio method, we should disable jtag
switching for RK3576.

But the rockchip_grf_init fails to handle this because it couldn't handle
multiple grf nodes. In this case, iocgrf is in behind of sysgrf, so only
sysgrf is handled. We should scan all possible nodes.

Moreover, the offset is wrong as well. Per the TRM, the address of
TOP_IOC_IOC_MISC_CON is 0x260440F0, which means the offset if 0x40F0
instead of 0x040F

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the boards they are using.

Please review and test


Changes in v2:
- use for_each_matching_node_and_match(Heiko)
- add fixes tag

Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 54 ++++++++++++------------
 2 files changed, 28 insertions(+), 27 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
