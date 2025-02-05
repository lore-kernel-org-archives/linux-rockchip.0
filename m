Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609EEC02194
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GHD5UJ4U/ZC0KLhp/Btdpq65NMDZliZILksk6+M4UhU=; b=c00s/0tMDFx82N
	ZTUzq+MhcWW2Liznylxp3cgUgO9l2mQ9y1LRGjkhRrh3YjUB57DqtLJI4i1sacdjBbAqtlmzxOpzW
	G+Gyom6R8/sC8w9hcgOemNHLCVqdm2ZQWHdSWcnA+BCuLMB2a5UCmlrpQsoNZCxdwioYntXgjm/Iu
	C5bJaoPjKO6w6shfMASYajVeFeHvktqSUGisD4dnXMULbvGeCKf5rEku5LgXWUi8eedl2lFN+5gRN
	85aufTj7aGl2b7vzLJciyDht+hDmK0ruSlBRR2MnUTaiE4chZ2gcb8hfIB9wIOvlz/9OGOU9kgKIA
	vCAwY51ZqHBQn74SBRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfd2u-00000002xXC-0Cwp;
	Wed, 05 Feb 2025 10:54:16 +0000
Received: from mail-m32104.qiye.163.com ([220.197.32.104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfd1V-00000002xCL-0S1S;
	Wed, 05 Feb 2025 10:52:51 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id a3bebb86;
	Wed, 5 Feb 2025 18:52:37 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de
Cc: dmitry.baryshkov@linaro.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v7 0/4] Add eDP mode support for Rockchip Samsung HDPTX PHY
Date: Wed,  5 Feb 2025 18:51:53 +0800
Message-Id: <20250205105157.580060-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMaS1YdT0waSktMQktNHU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94d5bd8d9303a3kunma3bebb86
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6MDo6OTIcGgooKU0wGVEw
	VjBPFENVSlVKTEhDTE5JTE5DSUNKVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOQ043Bg++
DKIM-Signature: a=rsa-sha256;
	b=RomRGpG+LCJxroNoekk7sxsYuibHOPkb/0htR/AggEX+9cB9Ymz94sHmCVn8R0btf1BHhrPFZVKi1UWFzDExpV15V/dtguD6WzsNRwXOOSy/CDTJP2d2JBdUStYswJgN/GDjM7CNcuKKsjVIqQRT1v0qPJBDulFRtTLMmYlM/Rc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=L+vOatpZt2GVGYajNHMkGxcUV73J/Px0Fed6/vB10gw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_025249_666929_96E0F850 
X-CRM114-Status: UNSURE (   3.69  )
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

Picked from:
https://patchwork.kernel.org/project/linux-rockchip/list/?series=927102

Damon Ding (4):
  phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
    ROPLL_REF
  phy: phy-rockchip-samsung-hdptx: Supplement some register names with
    their full version
  phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
    registers
  phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588

 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
 1 file changed, 915 insertions(+), 56 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
