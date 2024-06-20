Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C878C27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 00:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1894Yu4/sLCGIEwg8sTvkTpjfJmi6+hAuLecgurIVYU=; b=oAad9gAU1sbaq8
	FQoJYnWHKvZ94UgDPjvSRKUfVhJ9+YS8PBU0t8SOb1rnMYva8lOaLLdmy8gKsLrrGMzFyR80lek98
	2iOyOyHMiW4cLOTdyuES9vAMoFz/YxG4I7810mT0eiuww4hLycWP0mmuUak9QdtYNyMQE/UQY79Fc
	S0oCvoPal5HRFCu8N+wLu36++1QXsvuCDIMLSg978HR6E5AmcRmAwzABvBATjNTiaUJSVgvsYBofA
	ZxlF9nnA8bEHPaKJA5Z6W/1qym+kUuP+UV6et0oKBrcTsyI3YAqBOLn14k2ERmHiXAbaYpEZpgcfR
	++O8bNnri9lt2xpaH2sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5ow-000000039ca-2e79;
	Thu, 20 Jun 2024 00:38:34 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5or-000000039Zl-2BzX;
	Thu, 20 Jun 2024 00:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718843906;
	bh=nH8hDgwrgvwMrmw5KJxAlXFHpeaiw/NSzLl5T+P+KN8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=mOFf1mybJae9J2R1t/gwEZuTbbh0Vk1+OX1xvomk8PW/LisTxR+tsVbglQoG41obx
	 zVkShSAQ3mZJS19g39gnNH+Jvk6kkY2B9bYWTVuYGgEtaUr9R4Exk1q9HQe0myIY08
	 SwFzUBifltbFgVGsWA84HN1N9MWEtmi0oitc+szafT8QmKDGTwGrplcArUt/7CkxG5
	 2m7ztoXTVFJ2TXwvu3Qypi1gg/Z1GrF1vGu+TOE/Lxd8wUZDXwzHZZtGisCXR5tuRg
	 hFX9M07JjRFfEE35Ai7i+S11iWXVewgkvImQGbu2KWg5TpKdA1155dvvsAIGr0F3mt
	 ETdNEn+0RHiyA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 37FE037821A5;
	Thu, 20 Jun 2024 00:38:26 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 20 Jun 2024 03:36:22 +0300
Subject: [PATCH v2 1/4] phy: phy-rockchip-samsung-hdptx: Explicitly include
 pm_runtime.h
MIME-Version: 1.0
Message-Id: <20240620-rk3588-hdmiphy-clkprov-v2-1-6a2d2164e508@collabora.com>
References: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
In-Reply-To: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_173829_820646_C53BF123 
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

Driver makes use of helpers from pm_runtime.h, but relies on the header
file being implicitly included.

Explicitly pull the header in to avoid potential build failures in some
configurations.

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
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
