Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37B6CD4849
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 12:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UGBaXq+Vm+BG6+Ad2FKQycytAP2CtBCyLgWBNU8ILG4=; b=YmQ+3+pNHv8qLv
	HkBRL/p+rvE029onf2kenIvKD4frTXWInT1nhKex6f+i2IU6ldbzULfvUx8JfDYlth8D4ODgbRELQ
	76kPv1Uu57e3yM4nW4fIMr4TGtgf/FMDbTNPDoy7jK0cXGybwBYJNKIiAydbf8g3UkPDnMNroh3Hm
	18leWVVuCTDfKc2xXUsZCqL2z3a2/vmTxWRNqKV1DBbNOUwAcDqz3dgg7zz6dB5CnMyThY1M66NxI
	gqVCh8zVNv38l6Hrohy8ZWlXSPftRIsRIHmdQ6SVyjqS89SblxEWdLlrrbm1x9Kdppj0rCyheVjG5
	f2PMNq1dZjc6kKSl4HdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slolF-00000004HFL-224k;
	Wed, 04 Sep 2024 12:05:21 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slojA-00000004GUs-0h7o
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 12:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Pox9q
	DQ86t18rogfI7aGKkiX3ROJpF4gTG4iFYPl5Og=; b=l1FPea8SzzM9Y5ECYKdc/
	fJ8H8bthWBycnKgg1kv94fYoYm2GbgYn4XViTdUXL4bfJkRRD9WVWK9V06rTZFwt
	2dmLSNt691kO97SoPOz+88kuqhmG8WbgHhKUiQyf3VcRczrKQGvw3g+dCp8h12Y9
	sGw4GbRneWfagi1utAHVEc=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S2;
	Wed, 04 Sep 2024 20:02:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH v2 00/11] VOP Support for rk3576
Date: Wed,  4 Sep 2024 20:02:27 +0800
Message-Id: <20240904120238.3856782-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wA3HxFgTNhmiRMZCA--.50872S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFyDArW5Aw18tFy8XF1UWrg_yoW8AF43pw
	s8ua43XrW8CFy2qrn7tws8CrWrtwnayayxKw4fG3W3Jw1IyF9rGr9xuFn8ZrZxtF1xZa1U
	Crs8KayUGF4Ivr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UMHqxUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQdQXmVOCpvzKwAAsC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_050312_654445_810CE5BC 
X-CRM114-Status: UNSURE (   9.53  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, robh@kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>


Thanks for the basic work from Collabora, I can bringup a HDMI
display out on rk3576.

The hdmi depends on WIP patch from Cristian[0]

I test it with a 1080P/4K HDMI output with modetest and weston output.

If there are some one want to have a try, I have a tree here[1]
[0]https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v2

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (11):
  drm/rockchip: vop2: Add debugfs support
  drm/rockchip: vop2: Support for different layer selet configuration
    between VPs
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576
  phy: phy-rockchip-samsung-hdptx: Don't request
    RST_PHY/RST_ROPLL/RST_LCPLL

 .../display/rockchip/rockchip-vop2.yaml       |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1560 ++++---------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  274 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1989 ++++++++++++++++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c |   17 +-
 5 files changed, 2701 insertions(+), 1140 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
