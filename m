Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C353E77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 10:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JTV5EU59+/W7B6C6Uzr57fze0wezzfRXAFmUwaBTpOo=; b=BhNCBI3yHXO6zX
	kskAgNp3rXyzeo4xDShf7nt45pukwZAygfpKGSEMtYHAmyghnmc0dhfBR8X5Qz4y7J9dGHl55b0yd
	RtYqQU32UxvZHxG6y8NZjs0f2P3zYY0Hlnb3LNdZ4kueBIsXOGdB3/AHJRaY4h7YpDbPEx9rx5n17
	mxv/MSqmDxGIQ5oURNXetru/StEY4hxSYJ0BBLc58Qq0JdfGHLUgF6XuPQkWTlpPKtB7vB/+qPgkJ
	UbKTsEBRyzcArdkVixSFmN7cDBz0Z45z4TwhyU3dP3V33WHTSnTsjJ+Ambs2oFUAJqiWVMWQgwoJ3
	GQBn1Lw5gFZNDn4YQoMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN86Q-00000009fCJ-0B2v;
	Mon, 16 Dec 2024 10:13:26 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN81E-00000009dps-2k8L;
	Mon, 16 Dec 2024 10:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=Hu/Hk
	WJsufjsnAhs5V/fCrWR+2p7iuXYpq5tnEE/SaU=; b=Hzyq0Oh5DOBCd7GfrhB6G
	VgQgwbfTRNadhG6UQY+e2GSCAlUx3aQKhsuIoPeznMyPkgI+4sxLngq7OgRsWCR2
	BCgZ05X+zY2vP8k2SrU8HQ1J2vDd1r6ZJmJSWgvQIUOBmkPcHmVzECsdc2eBI//m
	VC3+Hlxzo9OwZ2p0eEslMU=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3NzDs+19nesfFAw--.35836S2;
	Mon, 16 Dec 2024 18:07:43 +0800 (CST)
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
Subject: [PATCH v2] phy: rockchip: phy-rockchip-typec: Fix Copyright description
Date: Mon, 16 Dec 2024 18:07:24 +0800
Message-ID: <20241216100739.3726293-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3NzDs+19nesfFAw--.35836S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1UCrW8uw4rZF1rCw1kGrg_yoWDtFX_K3
	WSvw1UXr4ktFZ5Aw1DJayxW34qya4j9a1kuFsayF98J3WDt34vqrykXr12qF15GF4SkrZ7
	Cas0vFy7AFyaqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1LFxUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwa3Xmdf8wjfLAACsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_020805_008451_FC3B6AC3 
X-CRM114-Status: UNSURE (   8.35  )
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>

---

Changes in v2:
-  Use uppercase (C) part for consistency.

 drivers/phy/rockchip/phy-rockchip-typec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 122ae0fdc785..d9701b6106d5 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (C) Rockchip Electronics Co., Ltd.
  * Author: Chris Zhong <zyw@rock-chips.com>
  *         Kever Yang <kever.yang@rock-chips.com>
  *
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
