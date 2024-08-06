Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51FF5C52D71
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 07:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dwGjTXfwN2MluFIbfi/YhVSdMqdeUP8O8SEcPtS9p9Y=; b=FNKJDAxNPPNuCD
	zY57gicRfZ63pNX9ZZlDTU5wj37Z2ztJjIzUX2Wfld+pa3sKeoJPiyzED4IhxyM972vHYIpPf36wl
	r2uD/g/tPmcsMbcq6SrGn2jZbB+Ec6FdJqf13TsC+4PWJ6BtVztx+ny288j1AdgdYPeFLUbze9x9O
	gUneDWuQy8SAfKetFqZcfc/kMo8BuTkONWFK7ja8+bPQCYlIUlygHoE06MLJhre/fo6xeIm9HC/E1
	kbmGL5CoyaacTksHV6nWoOY9fytfkHTIRnoXZ9OZ+tjjyRomE38iibBKQfNIYfGBbB8Zee0YG1lSm
	xg0un3OQ0n1fmuugotBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEX4-00000000mAu-2GGU;
	Tue, 06 Aug 2024 07:22:58 +0000
Received: from mail-m49234.qiye.163.com ([45.254.49.234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbEUp-00000000lb3-3AE6
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 07:20:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=QZbE1jduuSrYrNsfD18oHCNymfgk2GS+DiFGz3wQZAB68x1DeLxvEdbpmgqcUyv6ifBt70Dgl+NJLKKt7kMR/uLD1q9Clr8T0tESW/QBwjMn0KeljylyEDc0scEh34uyK6CTDfWu1FBnliX3vXVm6y+jfkTjRUZIF1TjgDHXWDY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=VoEidbWMgEaAD+w4sppjFIkcTnBtA/FRKYDmYz7yR08=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 834F746051B;
	Tue,  6 Aug 2024 15:20:13 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v1 0/3] Init support for RK3576 UFS controller
Date: Tue,  6 Aug 2024 15:19:57 +0800
Message-Id: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5DS1ZMTx8eGk9DGk5ISk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91268f583803aekunm834f746051b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mk06Fjo6DzI6SBI*GjpCShJK
	GCsKFBhVSlVKTElJQklDQ0pPTE1OVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlPS083Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_002040_225310_8BF85645 
X-CRM114-Status: UNSURE (   9.74  )
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


This patchset add initial support UFS controller for RK3576 SoC.
Patch 1 export ufshcd_dme_link_startup function for host drivers, and
patch 2&3 add ufs-rockchip driver.



Shawn Lin (3):
  scsi: ufs: core: Export ufshcd_dme_link_startup() helper
  dt-bindings: ufs: Document Rockchip UFS host controller
  scsi: ufs: rockchip: init support for UFS

 .../devicetree/bindings/ufs/rockchip,ufs.yaml      |  78 ++++
 drivers/ufs/core/ufshcd.c                          |   4 +-
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 477 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  52 +++
 include/ufs/ufshcd.h                               |   1 +
 7 files changed, 624 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
