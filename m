Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD5DD31A02
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 01:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C/4C8f9Ld/wjyzXPGrguyUWBGogb6uBl0Mk7/Eid2Xo=; b=rZAml0W7c/zCK4
	DNF6K2yxJ0syJ+4ZMPZzH5xzCOmSu6fV84YZJyt3Ybj8OMbUN7mpRQLCzEfHWqOABFbliz7WdRibx
	hF3WIF6a2qzr6BgetTGWlnLs4jAEd9+etJiBOUzYqMMSgbKpN3zhO73trgpUVskYHB8ADKLSh4fFB
	0LLe0k6lGY9bbc2T4Aj9ilIwxVnvKY/h+vaCuPGM2YX+R/MdU86aNYAoxBYnKKQcDuaYbHbU6Ldhf
	mrMONswDJ7vcBgrM/qnD/H9teXeGW/OMg0aqqJBaR4fLk18HJJhtCRKSThqj03Nmrq49+k2CHw4Ri
	dTa4m89P7tov7YtSRb/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpyn-00000007xfZ-3vLi;
	Wed, 14 Jan 2026 01:47:25 +0000
Received: from mail-m1973184.qiye.163.com ([220.197.31.84])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpyk-00000007xek-2DE4
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 01:47:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3c7;
	Wed, 14 Jan 2026 09:47:18 +0800 (GMT+08:00)
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
Subject: [PATCH v3 0/3] Fix sd card support for RK3576
Date: Wed, 14 Jan 2026 09:46:51 +0800
Message-Id: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bba2f90a109cckunmdcf781114283a4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpLQ1ZMGUsZHR9PTE9KSEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YsB/yTclbhStGVe9wPRCj09ngucI6Ehua3JgYLZsKBDattVtpIl+eyqj8l3eeCI8CNvqUetguau7RqAssFy0K+2TcTbKAZfJxgIHLbjUyt5/3fXpi/SdA6vvElW9LDh5bdkkKRZBAEpatxac5QVsAmeBrYnmMv3AUUH2fT/4GnU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/SwOSO65L2hA9pCZ/ByY9Rw19Jn5x5M07x+YiJuu2J8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_174723_102980_761716A8 
X-CRM114-Status: GOOD (  10.02  )
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
intead of 0x040F

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the board they are using.

Please review and test


Changes in v3:
- remove of_node_put() (Heiko)
- collect tags

Changes in v2:
- use for_each_matching_node_and_match(Heiko)
- add fixes tag

Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 57 ++++++++++++------------
 2 files changed, 29 insertions(+), 29 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
