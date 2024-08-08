Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F881C52D73
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 03:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B50C1JzMTMRf9sZ9drIHpl9Gyr14o2lPv2XWf5XvWxc=; b=qrE6KwP2698/4o
	q13xRkUy7fzk/LaSqb65/cWcm0qW4hSMOczzrQ5/JTJ3zdTeKbsXnYupF7732GP1HvrlViEl7b/j0
	opOXRfVz8tQzJ+Vre2+be65se3s5UpTix9ipN4pCwuxxSPxOeRB12Li/vVGEfbenQDkt4t7LbNM9J
	nZz4McozyYqZkBkaxEnzCEZjhhMgegcibBx+3fP7yn6ZeEKreUIIqsNPUNROxgy4ZarW5FXeQcR2D
	nqprsOE6TzXyLCUm0AW6eK4KUE/1+31XCRjaV/Jc36IgE2XValpBLmGRypNDxytu9C22CPk9b7Qzz
	gAyqMv0jc5hWOv6j/zCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDg-00000006xqL-29Bb;
	Thu, 08 Aug 2024 03:53:44 +0000
Received: from mail-m3281.qiye.163.com ([220.197.32.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbuDc-00000006xo3-2txq
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 03:53:43 +0000
DKIM-Signature: a=rsa-sha256;
	b=IRmC65bjg0O2MQCEcTZKZ91mzw4TUasMD1V0i5q4J2Q8HdiiQcD+iXrRNAYyfcbLSrTUuMlijmsZzbaugXLo8xRjn94ZwLfZu4KeCo695onKZ3q7Go0mUZu/3UZrhFvV3XaTdt3cK/lBy7tifWw2oCuv075TCpG2NS9ez/gW1OI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=RrX9VkXf3lokm0hBqCnf6pgq8Xxrgk1T4urj3G50BrQ=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 353F0460378;
	Thu,  8 Aug 2024 11:53:05 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/3] Init support for RK3576 UFS controller
Date: Thu,  8 Aug 2024 11:52:40 +0800
Message-Id: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkZSlYdSEkYS05DTBlLHxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91301e6d0503aekunm353f0460378
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mjo6Ngw5TjI1IQsPAQodKDof
	NAEKCjlVSlVKTElIS0NCSkNNTklKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKSU03Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_205341_161739_FAEC34C8 
X-CRM114-Status: GOOD (  11.54  )
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


Changes in v2:
- renmae file name
- fix all errors and pass the dt_binding_check:
  make dt_binding_check DT_SCHEMA_FILES=rockchip,rk3576-ufs.yaml
- use dev_probe_err
- remove ufs-phy-config-mode as it's not used
- drop of_match_ptr

Shawn Lin (3):
  scsi: ufs: core: Export ufshcd_dme_link_startup() helper
  dt-bindings: ufs: Document Rockchip UFS host controller
  scsi: ufs: rockchip: init support for UFS

 .../bindings/ufs/rockchip,rk3576-ufs.yaml          |  96 +++++
 drivers/ufs/core/ufshcd.c                          |   4 +-
 drivers/ufs/host/Kconfig                           |  12 +
 drivers/ufs/host/Makefile                          |   1 +
 drivers/ufs/host/ufs-rockchip.c                    | 438 +++++++++++++++++++++
 drivers/ufs/host/ufs-rockchip.h                    |  51 +++
 include/ufs/ufshcd.h                               |   1 +
 7 files changed, 602 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufs.yaml
 create mode 100644 drivers/ufs/host/ufs-rockchip.c
 create mode 100644 drivers/ufs/host/ufs-rockchip.h

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
