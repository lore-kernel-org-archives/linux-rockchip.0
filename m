Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB3FC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8ZkxW21Ka0+KOK5mfhpa2It1ufNccLuzSVFQqgmbzM=; b=FE7fIF2VYk3bm8
	tu0MdG4eR99Mjd7FipqLlDCLuY15XCC8G2JLPV9d+8hUltYjL8rLjS4fm1yzaIw9MxWokyWZijwvj
	ph2mkDNjSf1F5jpCRDEmK8iBfQiJmYlSxnJP+0kDdY9kB0UjXrW8z/sZUWyzkGlgf6VBS/ydvjPVf
	qod/0o74JiGD34OmhnL4E7hBtNK1f3eRkvujRexsOTh7Jy9EPIqzQIaRVViD3bO9mqECbHQ4LQqBO
	o38xxNMk694pAQQILunFuXtETWS1HGApngJ5ps9owjqlsnQzJeCIMopZy7OgrjLs9pgqafua8MpHg
	C6laIP8XSdoPU6nByS9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKL3-0000000CjZ3-0Dbs;
	Mon, 17 Jun 2024 21:56:33 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKKx-0000000CjVr-1zAu;
	Mon, 17 Jun 2024 21:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718661385;
	bh=/Tf0+9ywBhA2xu+ay36C238U4Xe6QDQ8N9Bh//pwcvs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QV0bLGs7qU2pkEZQLaP496J4V1YrlQbHD8hWAmNmhZ3GEkb4VXHglTeN2oCBpy1mu
	 ydj29ucf2/hYmidGOuxRPSCfQ7NzbMjYAlEXqd+/zyd4FMxDx534cIfGAMVjTuJH8E
	 mE50zko6BfRUTdmrSqe37skUuprD51mchRAXbCTfDxUwtqKl4BIe71oyoAeEmHUEP2
	 DUP99T1SzRgWoe5AHeTju+UGT146e4dOIy6XH+GQ3OjmxlkjarI5etGlmE7IFJ+RCE
	 8b1U+EI2vfIb7c1pd3pkCi/EbSoLXKTRt/JB3E5Tr8daLJ/63QVm2QYIS9eHx80fNh
	 kE5BdmsKwXxKQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B49313782167;
	Mon, 17 Jun 2024 21:56:24 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 18 Jun 2024 00:48:09 +0300
Subject: [PATCH 1/4] phy: phy-rockchip-samsung-hdptx: Explicitly include
 pm_runtime.h
MIME-Version: 1.0
Message-Id: <20240618-rk3588-hdmiphy-clkprov-v1-1-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_145627_972394_415CA98E 
X-CRM114-Status: UNSURE (   8.14  )
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

Driver makes use of helpers from pm_runtime.h, but relies on the header
file being implicitly included.

Explicitly pull the header in to avoid potential build failures in some
configurations.

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 946c01210ac8..3bd9b62b23dc 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -15,6 +15,7 @@
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/rational.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
