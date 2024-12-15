Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07454E7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 09:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1BkEVjOd/hGXSpAgISN8naJuVZg6085A/fpj+whBupo=; b=gbETZX/v+QOwYS
	DRDTE0UkoA7KPp3a8BqCquMIkvgYJgWqVJEigaZI1Af1teJ3OA1U+d0x2FloVXSADrbCLsHSRWU1R
	/GjjNmDQQKHEbZa55jgSc/00zSP4akbDcjO+GfahGJw3j5u7R+Kw/tj3ItUjtU2UfQtV4zoXnhQRJ
	DIN6iDpGtyEpBdk22oeFS6mfhRqnjA7969Llg2UDSP/Sq09WSIJ8QjF/H2Jx/gLxRKft9kQHu+GiZ
	LQdgkA0IA2jKf6D/oD7cRv2JKtCR6fpAgi7hKPOLUxg9Gt0HDeJXe96ZGHiRt1uIZrQrjWZqoGnbx
	a/70iZ2xYbUh5njbHsSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMksA-00000007gZX-3kNd;
	Sun, 15 Dec 2024 09:25:10 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMks6-00000007gYT-3Uyd;
	Sun, 15 Dec 2024 09:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=45LQY
	2ea5U3KK7KhJhTWTw1zr3MzGiWN++5h6tRZ1mU=; b=bT+tKCqeZRo5HDW1HyKw2
	Gl+cWLScRIJzvoh4tgA9Fp8xW1gRarYDW1gBnFVKuliQj5mRlBhYG+8G4/yiZnKK
	h/sstLTlx32k4Jyb+1engQZ9zfC/iPiK6e9s24X+FkkOoEi7ExPyCHVWydVHj9ep
	qM4p9KoyxY7YDCiGKMMBvM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wCXjkZaoF5nGQvMAg--.20181S2;
	Sun, 15 Dec 2024 17:24:45 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: kishon@kernel.org,
	linux-phy@lists.infradead.org,
	vkoul@kernel.org
Cc: heiko@sntech.de,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] phy: rockchip: phy-rockchip-typec: Fix Copyright description
Date: Sun, 15 Dec 2024 17:24:40 +0800
Message-ID: <20241215092441.3447155-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wCXjkZaoF5nGQvMAg--.20181S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1UCrW8uw4rZF1rCw1kGrg_yoWfCrXEkw
	1Sqw1UXw4vqFn5Jw1DJa47W34qyw1jga1kuFsakF98J3WDtwnYqryrZr17XF15Gr4SkrZ7
	Cas0vFy7AFyaqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbhZ2DUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQu2XmdemAWFmgAAsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_012507_260407_8D069F96 
X-CRM114-Status: UNSURE (   7.77  )
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

The company name has update to Rockchip Electronics Co., Ltd.
since 2021.
And change Co.Ltd to Co., Ltd. to fix mail server warning:
DBL_SPAM(6.50)[co.ltd:url];

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-typec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 122ae0fdc785..7b1dba252ce9 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Chris Zhong <zyw@rock-chips.com>
  *         Kever Yang <kever.yang@rock-chips.com>
  *
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
