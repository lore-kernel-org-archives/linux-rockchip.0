Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCBFC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 12:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qPMIqme/3D4a0u0jiwOksM+mZM6XqjSVPOfSkuBUcQk=; b=oi7n2jT3UK71zn
	NttuOzLhrp7rcBT1yfJIqKX/JweX7F3POsCz9WaoYlXwCJdVuQ4L1BAhe8TltPWYvq4MWFCstKjSI
	EgQzjgvx6q0vgVLjFaj/xTm3HwjQHp0sfH1z1NsHKYwEtqHpvhYr3B7LCXlXQWRTz1sei0e5tswkz
	IQ5NHmHohogtIpnHVfY4yOMOEsTPEkpdj0t9KWxbPnZqa7oFUmjDuTsG/pktGUDoOK1111ewWkeIp
	CBhjS+vehVJTp/7Tij5rP/Qa46G7GEu0Z+FKWHZKFRxWUIVdUI+yNjny36pH9wNyk7fvyAOn/dxDo
	8CzeRqg6COGmUXuMQKfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvyfg-00000005Plc-1QXP;
	Sun, 14 Apr 2024 12:09:20 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvyfb-00000005Pgh-30aB;
	Sun, 14 Apr 2024 12:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=HNiS1
	KMxrrJC1nczoSnnrRUJUsfXNR6TsxaQz8HCQsY=; b=cR5Oet6S0/nyjW/jd9cSl
	Rl4NYL6vCrDFVGIBRN9+95M19ppZFYYI88fgtE+3DFbeIfWpOWEWS5tQvrbXBbKN
	kCx26AO7Bcb8wmuCe13C1/1PG4wUpQX3/3jm87BKIRcH9/WjeUxlTczI3MFeZstY
	zE9dTqFtzJcXZ6u3fzKyTU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-5 (Coremail) with SMTP id _____wDn7yFKxxtmItV9BA--.26437S2;
	Sun, 14 Apr 2024 20:08:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: tzimmermann@suse.de,
	mripard@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: lvds: Remove include of drm_dp_helper.h
Date: Sun, 14 Apr 2024 20:08:41 +0800
Message-Id: <20240414120841.837661-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDn7yFKxxtmItV9BA--.26437S2
X-Coremail-Antispam: 1Uf129KBjvkXoW8ZrW5Jryxtw1kKr4kAw1Dp5X_Zr45panxCr
	yUJrWfGFWjq3WqkFnayrZ0ya1kAa97Kr97W3ZrZ3W7tFy7Gwn5uwn5XrnxXr47Za1Y9rZr
	Ja45AF47Zw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy29KBj
	DUYxBIdaVFxhVjvjDU0xZFpf9x07jV89tUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h3AXmWXxJbtmgABsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_050916_290985_64B50CC3 
X-CRM114-Status: UNSURE (   7.56  )
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

drm_dp_helper.h is not used by lvds driver

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_lvds.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 77b76cff1adb..9a01aa450741 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -17,7 +17,6 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
-#include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_bridge_connector.h>
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
