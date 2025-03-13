Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB940C35FF3
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 18:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ue1q27N6eLyTuwRxOMox/M31Ukwt9Jzln8RCFv9tOaI=; b=1nd96b5Ytz3bKJ
	i4WdKYxOcAdx2M0lgNYL/gKuKyLEURh0R+GoT2709D/CuyrK6nx19vwe8xpa10eS4rJL1UHZATrw9
	Dx2xjq+5rqWWp7/iZitjYcpcAR2/0gDiySx6bOaKP6pjyVpJCvggmKZPP9YK3uwYnRzm1/9d4yAMZ
	xbLxDO+yTr8+dg5A9LJw5xWsq40gHR3uC3qiHhzZL0IsAyxVaJih0FtmkrswS99zPkWpMVV3DZOFs
	694GYLOPvFtU4FbcJchRcyPi6SgCMFv4pzwmZ/gjRcd1+MthbDwm5yC5erioIHJTLaMQzUEJtnig7
	tkyAUan+tu56MPqkiE4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsmu3-0000000C6TD-2BJM;
	Thu, 13 Mar 2025 18:03:31 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsmOn-0000000C31c-2k19;
	Thu, 13 Mar 2025 17:31:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F37021477;
	Thu, 13 Mar 2025 10:31:22 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A3F973F673;
	Thu, 13 Mar 2025 10:31:11 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org,
	will@kernel.org
Cc: iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de
Subject: [PATCH 0/3] Rockchip IOMMU fixes
Date: Thu, 13 Mar 2025 17:31:03 +0000
Message-Id: <cover.1741886382.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_103113_733236_02593D1F 
X-CRM114-Status: UNSURE (   6.08  )
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

Hi all,

I was expecting my DT probing change to flush out issues, and it seems
some weaknesses in rockchip-iommu were the first to show. The first two
patches here get things working again for me on my RK3399 NanoPC-T4
(with a console on HDMI exercising the VOP MMU), the 3rd patch just
finishes the cleanup since I was there and could test it.

Thanks,
Robin.

Robin Murphy (3):
  iommu/rockchip: Allocate per-device data sensibly
  iommu/rockchip: Register in a sensible order
  iommu/rockchip: Retire global dma_dev workaround

 drivers/iommu/rockchip-iommu.c | 61 +++++++++++++++-------------------
 1 file changed, 26 insertions(+), 35 deletions(-)

-- 
2.39.2.101.g768bb238c484.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
