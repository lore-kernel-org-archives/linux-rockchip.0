Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2146AD25034
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 03:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PgKL3RcklYX3FFjX1eYWMY5IrvMH4u0Jb6Vu0nV9PEA=; b=YEbsh2Uhu38h1b
	w5CNUyu1gS03cGVWNfuTZA4EtZh1H5XoRzSqkSmSgBDDFGs09gpt0c+66WJJiet2SGB9jtFvuKIE3
	RL9cDpFQxZEJJXfGrUbNZ0QBR1K7trVuq+gLZR7LKy4Ql6+ijZJfrzAaY2ByTFERfaK+yphs6XEIi
	Opo45f6CK6/7RNomTY46ooRuwwdo+dxsbNF/da/DPFkAIOohTyO47FveKnQHEyAsqQekAYct6Xdud
	z6+uBUBfDZem0jxxEP+lGxAC3dXdsnLt3BeEnxMpozBhID0HZp1Q8g1wn3PJdJQna0yVUX04bOOp0
	gzNV/1gN9ExVHCObejjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wJ-00000004jQp-1ErP;
	Mon, 12 Jan 2026 03:49:59 +0000
Received: from mail-m3294.qiye.163.com ([220.197.32.94])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wF-00000004jPu-0bl0
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 03:49:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd17;
	Mon, 12 Jan 2026 11:49:47 +0800 (GMT+08:00)
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
Subject: [PATCH 0/3] Fix sd card support for RK3576
Date: Mon, 12 Jan 2026 11:49:25 +0800
Message-Id: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bb052faff09cckunm0fb8f84327b6aa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh0YTFZLGUtNTU5DQ0xDQ09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GKnXFGw2jvbdnxpxIuiDw4PwRhA9/K7HrlxeBTmt2lL+fuhr/47cDcgIgL6WJzHz5ub4l2+2VM0I1hTkRIHQ7a4zDQxn9R/7day54yiqYL47GOQSiw16vXY1jMNtiYxKxgxfBfnzmqihIVIm/VH8qReJShX6s6gpGiDCyORb5PI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BvDJSbGVhZtIrpNEm1zPA0SacCMixIBe/XaEgL5wkLw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_194956_255016_5A13ECDA 
X-CRM114-Status: UNSURE (   9.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


SD card support for RK3576 is totally broken. This is because sd cards
should try to use slot-gpio(cd-gpios) instead of function IO for supporting
runtime PM. In order to support slot-gpio method, we should disable jtag
switching for RK3576.

But the rockchip_grf_init fails to handle this because it couldn't handle
multiple grf nodes. In this case, iocgrf is in behind of sysgrf, so only
sysgrf is handled. We should scan all possible nodes.

Moreover, the offset is wrong as well. Per the TRM, the address of
TOP_IOC_IOC_MISC_CON is 0x260440F0, which means the offset if 0x40F0
intead of 0x040F.

This series fixes this mess but only adds slot-gpio support for RK3576-EVB1.
Other boards are also missing slot-gpio support, but folks are all cced for
checking the board they are using.

Please review and test


Shawn Lin (3):
  soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
  soc: rockchip: grf: Support multiple grf to be handled
  arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts |  1 +
 drivers/soc/rockchip/grf.c                       | 61 ++++++++++++------------
 2 files changed, 32 insertions(+), 30 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
