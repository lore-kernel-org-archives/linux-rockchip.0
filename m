Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9984AC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I4OQUCFN65U210yKYxvrgYXMmW+VuHbEB2NULpsN4Og=; b=tWwnEcHumz6sdu
	Pj2AKZQwMFudxt5ex9YPmC3bK4A2OKjoYSkSvGNssAasGl5cYKkevUd6jdtZaiFnq8UtJvF/64iZz
	YKV03IPGXhXw1RA8OLTLT9Y1XXR8Y/GfyfPbQhPWqpiU3ch3EXuOipVeH2hsVHNPHgr4X3DLrETLi
	RwmukNcEBFfB2NfhBtfuHtQXbgIROoA1RTWbhd7L3dXajhA9o63sEumXnYnkJGl9b70rc21FOM5nl
	Zfm2nhQ4brCPlGmvl5G5od0b4mR5gv2fx0rRnuvII1jgPdtLtODYsI/kxcce3YfnK+qXuX0XRUboN
	P/FedhHIvh6XGTSTXUsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQQP-0000000G4C1-3vmz;
	Fri, 23 Aug 2024 09:17:41 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQMJ-0000000G33D-25vP;
	Fri, 23 Aug 2024 09:13:29 +0000
Received: from mail.maildlp.com (unknown [172.19.162.112])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4WqvRJ1BfVz1HGjl;
	Fri, 23 Aug 2024 17:10:04 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 5657714013B;
	Fri, 23 Aug 2024 17:13:18 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 23 Aug
 2024 17:13:17 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next 0/5] drm: Use for_each_child_of_node_scoped()
Date: Fri, 23 Aug 2024 17:20:48 +0800
Message-ID: <20240823092053.3170445-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemh500013.china.huawei.com (7.202.181.146)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_021327_820705_219FD6C8 
X-CRM114-Status: UNSURE (   4.84  )
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

Use for_each_child_of_node_scoped() to simplfy code and fix a bug
by the way.

Jinjie Ruan (5):
  drm/rockchip: Use for_each_child_of_node_scoped()
  drm/mediatek: Fix missing of_node_put() for mtk_drm_get_all_drm_priv()
  drm: of: Use for_each_child_of_node_scoped()
  drm/nouveau: Use for_each_child_of_node_scoped()
  gpu: host1x: Use for_each_available_child_of_node_scoped()

 drivers/gpu/drm/drm_of.c                    | 11 +++--------
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      | 10 +++-------
 drivers/gpu/drm/nouveau/nouveau_connector.c |  5 ++---
 drivers/gpu/drm/rockchip/rockchip_lvds.c    |  8 +++-----
 drivers/gpu/host1x/bus.c                    | 11 +++--------
 5 files changed, 14 insertions(+), 31 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
