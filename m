Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087AACDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cuhyy/xB4JdSKvFkr4NBU6QtlF7LFwmYP1J1td/Sjsk=; b=1p195cR8D2zw78
	oF6dDg6zPy7o8fsmvVTj/zo6Pg9R46nMpU6FeJzj8ydc9JF1VK26cNO3heSUI4kHiJk6a6et1utlk
	B734+o6TUpRVu0FDlXFX9XU56o/CYR7Yaq25DomcZSd+q8VfVTQrx3cTC56zl3mRz4vv8Kz1dZ6j0
	FJ+YZZVWQJkhNUJF3MlytRLhoheqzcWCW47LL2E/1XeN9iVBmxg8B0K9F6ZRjrPX8XM5rEwJ8RT2d
	q7G1UJKfE8/ey1ZKC4eGNcKO7ZQibgk7v7cTiKIj6AlkxNasTKwwanvFKWDE1y3ahdQyuB/Y+rT8K
	E6l+xb8GE14I8+58d3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt33p-00EITv-2e;
	Wed, 18 Oct 2023 09:41:53 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt33l-00EIRr-1H
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 09:41:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=KyufP
	Gb3cqH8zioLS7lrQHPVVPvHYmUqJ25IUFAAyko=; b=OkbIb3hEDFvSzSIqDV5fZ
	G5yd/OUwv/5sBIQUQPcOeLvph4rfgSWCaMjutz3ASfL7HO/VCaqZ/1LkPNx+n69M
	ilR9+1/rv+UaT/dij61h/0xmLTIj0cMTIDmsQf/lQwG6hSoG1LufKIqVzio3tRQa
	V1sHZ77oMWdEMl+yIYTY7Q=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-4 (Coremail) with SMTP id _____wD3P3tEqC9lQkp+Aw--.37510S2;
	Wed, 18 Oct 2023 17:41:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jonas@kwiboo.se
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 0/4] Add more format for vop2 driver
Date: Wed, 18 Oct 2023 17:41:22 +0800
Message-Id: <20231018094122.2475668-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3P3tEqC9lQkp+Aw--.37510S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gry5urW7tr4DZry7Cr1kAFb_yoWDXrcEk3
	yxJ345uFy8AF98Gas2qws7GrZ7tay29Fn0gFyvyF48Jas3Zr1kJ3ykCrZFqa4FvFW3Arn7
	Ja4UXrWIkF9rujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0KiiDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTAoNXmI0bm1VQQAAsU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_024149_850723_945D4373 
X-CRM114-Status: UNSURE (   7.45  )
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

From: Andy Yan <andy.yan@rock-chips.com>


This is a preparation for the upcoming support for rk3588 vop.

Patch 1 make the bpp calculation covery more format
Patch 2 remove formats that are unsupported by cluster windows
Patch 3 add more formats
Patch 4 is a format table rename

And I drop two patches that have applied by Heiko[0]
[0]https://patchwork.kernel.org/project/linux-rockchip/cover/20231013122001.1594009-1-andyshrk@163.com/

Changes in v3:
- add a bpp calculation function
- split patch 
- add format check and convert

Andy Yan (4):
  drm/rockchip: fix vop format bpp calculation
  drm/rockchip: remove the unsupported format of vop2 cluster window
  drm/rockchip: Add more format supported by vop2
  drm/rockchip: rename windows format for vop2

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 71 +++++++++++++++-----
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 55 ++++++++-------
 2 files changed, 85 insertions(+), 41 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
