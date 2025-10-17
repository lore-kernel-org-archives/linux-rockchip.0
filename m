Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDE4CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 06:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0SQQ/K4S+oX+Rexzn2BOPZUvTTFiUcFLL5or4mcXMMc=; b=JJpL9ctyzRikJN
	YL8Mi6Dc2D/pIsr4aRyS5TDXjJYgA4bBDJ7tVvcOIJisGwMnCsnR4OBqD3gFZKaFocyJuALCA3EIy
	cCLmnV6stGkMre7mWNt/bGnlqeW2s/1JFv3ZY/Gz26ZgjOyFTh8LL7pxYR3BteLjtTZPbwKnE+kB6
	8EPmpZ2lMZcGaliBjw/lEBwIrtZUtLJpBo/jpu2A98EP136GZpCehN7MzrMy5Ii02xdkBnx4eOVaM
	q+lfVqUaFo7rw8DTDckes+GQ53pVYO0EpvMSJ505J/cKOoc81zNdBB9BjXB+tfYfeaLAFtoRB3MFj
	hOaayxA9zgTl+jYVMR9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ePW-00000006ty7-0T6C;
	Fri, 17 Oct 2025 06:57:58 +0000
Received: from mail-m15592.qiye.163.com ([101.71.155.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ePS-00000006twY-3ZLH;
	Fri, 17 Oct 2025 06:57:56 +0000
Received: from xf.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 263eafc9e;
	Fri, 17 Oct 2025 14:57:49 +0800 (GMT+08:00)
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	zhangqing@rock-chips.com,
	sugar.zhang@rock-chips.com,
	Finley Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH v3 0/2] Add power-controller support for RV1126B
Date: Fri, 17 Oct 2025 14:56:44 +0800
Message-ID: <20251017065646.320643-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-HM-Tid: 0a99f0f5e0c403a9kunmca707a4712410e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxLGVYfGh4fGEseGk1MGBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MstmStnG9l7xyfdHX/QBRsxJefvwW5nA+1Z0eT+8ea+Y1QJueXtEPuC+92bavGGjQh5GQMQymOQ0kQkPCb7mKKwBZaF68XGrqWFoXwoXMQ9F0HsUymcBHiTos5JGrlorPbEB2VCkgGEromfG940G3oVAH3F20sbXD/PkD22McvI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Rq+uvw5+i90RRBLsQFz7WN6PFQUjhoT0ECz9wYD+Q3I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_235755_405272_2C2F98F4 
X-CRM114-Status: UNSURE (   6.57  )
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

Add support for the power domain controller on the RV1126B SoC.

Finley Xiao (2):
  dt-bindings: power: rockchip: Add support for RV1126B
  pmdomain: rockchip: Add support for RV1126B

 .../power/rockchip,power-controller.yaml      |  2 +
 drivers/pmdomain/rockchip/pm-domains.c        | 41 +++++++++++++++++++
 .../power/rockchip,rv1126b-power.h            | 17 ++++++++
 3 files changed, 60 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rv1126b-power.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
