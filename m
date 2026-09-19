Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF23CC982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 00:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ib/hj5Vo4JZpVE0hBUr99utYlMBmaqI9vgNxvNRe+XY=; b=Iwm6WLzIHjs9cx
	4qC5iNVZ9AnJL60vawpXcDmlf7/ytkdD68hMksTTcuYM7GpnoVndfm68UMyAbhLUiMGO+luL+7FMA
	CtSo/WvbIImPffQ8TuAZlUcEslNAGb1W91NCz3ZBYH3dasVj5mKWzIzUOBZHA+Eqh3n2idmqPoyEC
	YRAHy1VR6VhSMCe7frdGqO465AXPgyYdmFjlh5lP+/sAyOGN/K7GIqMImpmoWz5g+xLKfVakJ9RFo
	vodkVJqiYRuKJOLuf/8Ew5qnEtCs5PtfeHjBbrp7quwSAW2K703Sy5hKMBntQ3gdD0l/kKlYUwCSH
	voXDJYc6QsNCePEjInXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3X-0000000FmH5-1lxl;
	Sat, 19 Sep 2026 00:35:51 +0000
Received: from mail-m128250.netease.com ([103.209.128.250])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3R-0000000FmD8-3OgE
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 00:35:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e57cbc51;
	Sat, 19 Sep 2026 08:35:41 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 4/4] pmdomain: rockchip: drop duplicated errno from supply failure message
Date: Sat, 19 Sep 2026 08:35:11 +0800
Message-Id: <1789778111-173149-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0b717217a03a4kunm44a9997f1a8f94
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQk9JS1YfHx9PGE9MGk
	tNGEtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KBNlEdH1vNSQoJ+lkfUxO1BYXqPYsaMwgkFA+DndFhc9+dK56NIi7J6CcGl76sKmW8MC7jkGWHNpLdkMePb5qpXmVYHLF0CqSIPXvgc5pyoC0pTvcXxsbDcmLX3uzC8REojqorxfvzD3BD4YBs3on/lmXO07K3D8uGZOIo6v1Hk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PmtTMG7rosUEwaAKUVvSUzCJQZVC7qYUH0ykAT8dIp8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_173546_056490_7BD208AB 
X-CRM114-Status: GOOD (  10.28  )
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

dev_err_probe() already appends the error code.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v2: None

 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 9917ebf..1f236e1 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -721,7 +721,7 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 	ret = rockchip_pd_regulator_enable(pd);
 	if (ret)
 		return dev_err_probe(pd->pmu->dev, ret,
-				     "Failed to enable supply: %d\n", ret);
+				     "Failed to enable supply\n");
 
 	ret = rockchip_pd_power(pd, true);
 	if (ret)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
