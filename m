Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154E0C54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8zaI7sRcMH1pBO7WN5wzvNJeq4OHPx/hboPvx4HG63A=; b=SczXN5MOi9Yzdp
	1SdDFj/pVg/9aaxbfL/fxOTNsKt8TNh9k0uLgXGEJOhBV8mY+Bz+N3gkFYO1ibSnLpItqc65Tu0T2
	pEGTJGea5G+ed65ubbNlSu83D1sI405obXkN1XCNBFM0zlLW/B2m9MdJG4DRZ4Ka5/blQgAwNqsah
	YKHdP5i/wEOcwmshwlyhopJf84wxrI43b0rk1Ml2OBEEdqAKRw53g5Oe9SW6gctnw32syNVKIFbxZ
	h2Hdfs4PGQe9o3N8dIagi5goQlyknRNxIUUgpzf1tw5D8o5LH/9btpvz5dCTYCLzdTXnkc/CVznQ1
	f9zq04byvvfF1X5WFTKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitVH-0000000ApQi-13fJ;
	Tue, 27 Aug 2024 10:32:47 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitV6-0000000ApIF-08Mq
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=PbAse
	z926aWX5EEvH64mmBi/hqSZg5nPVcDOzRBxFyU=; b=AZKXg80IVpHoJUE6QNRGJ
	dV5F0+3OJEsogisGdRtoiVXM8OcGcfhSS6kr63IvHzQ/XlapBly+Sos2yzoaQUJx
	JKcPNmTPu5SSKvqtdVvlRjibW1n5y7YQ/okd9jytsyeCdkQJuSJBxzZOVgaX9wV2
	xaID/ZlP2rZru6TFqNNous=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp4 (Coremail) with SMTP id sygvCgBHnBwtq81mBkshAA--.8204S2;
	Tue, 27 Aug 2024 18:32:16 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH 0/5] VOP Support for rk3576
Date: Tue, 27 Aug 2024 18:32:06 +0800
Message-Id: <20240827103211.3132728-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: sygvCgBHnBwtq81mBkshAA--.8204S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFyDCrWkKFyftr1xAFyxZrb_yoW8XFWUpw
	s8CryYqrWkGFy2qrZxuwnxCr4rtwn3Aayagw4fGasxAayxKFn7Gr98uFn0vr9Iqr17ZF1U
	Crs8Ja4UGF4IvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UEkskUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxFIXmXAnc2LnQAAsX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033236_501365_00C06DE6 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: heiko@sntech.de, s.hauer@pengutronix.de, hjc@rock-chips.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>


Thanks for the basic work from Collabora, I can bringup a HDMI
display out on rk3576.

This patch series are still in a very early stage, some architectural
adjustments and more self test are needed,  I plan to add some SOC
specific callbacks in next version.
I'm sending it out at this moment just want to facilitate some people
who are looking forward to doing early try.

The hdmi depends on WIP patch from Cristian[0]

I only test it with a 1080P HDMI output with linux kernel boot logo
and a weston output.

If there are some one want to have a try, I have a tree here[0]
[0]https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v1-0827


Andy Yan (5):
  drm/rockchip: vop2: Add debugfs support
  drm/rockchip: vop2: Support for different layer selet configuration
    between VPs
  drm/rockchip: vop2: Add support for rk3576
  phy: phy-rockchip-samsung-hdptx: Don't request
    RST_PHY/RST_ROPLL/RST_LCPLL
  drm/rockchip: Add basic RK3576 HDMI output support

 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 174 ++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 656 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  99 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 496 ++++++++++++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c |  17 +-
 5 files changed, 1341 insertions(+), 101 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
