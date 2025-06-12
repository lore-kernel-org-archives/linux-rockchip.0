Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 940B2C71159
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 22:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zFLhkFkF4wAhSn9/gE9ifRuNF/dPW4fuTabDwHIj9I=; b=X3QIjnNkbTSbVB
	UrdZAepnZY6z5uUUyPlo3ptlbMoQBsgLU56A90UY0zJ+U6abaJlgPiQHKuV7d8lMj+9fqNFgexmhR
	veRePyH+NCJkhRZSysd2wI6BgZjJyevhy8eFNin7RhDcTO2not5ko6sMYgEG0UPNq9bbqwbK0l6in
	lX8KJAOpiV3cE1bnn5uJN6yQZNtDlAsjIpSZgcVJgFplaDxBCD9d6zhKksplp8VAjDwQyyA52VN6P
	VFlqQJ6fMgo972r0gpQj4pvhrlxsZ2cnFP2zCD2IjkEzhWfySN7E9eiRPmA/LuIQI8aJM2/opmYoP
	gDb0fnBp3N4K9wyDU2sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPq7U-0000000Ek1n-13OQ;
	Thu, 12 Jun 2025 22:10:00 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPn82-0000000EA88-1gjo;
	Thu, 12 Jun 2025 18:58:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754663; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VIVSWUHUDhSyIr5VPzQQv7abH/sQyPr4VEfvrq+pf3y6T5ctXdGUOylcpl/6KZuCw9m683oiY0ct+1c/CxDhO+LyoSAbhwwcy5dBnlArU+Qeiu2wH3S7shTBpQIj/EvKWckVkoQHk4TO5+jCms97x5gPlmdDBkBHLrTt1crpXio=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754663; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=JRCZRQ76GcMlJmExs7D12cB0k3smTmlvVSyjx4WGW5s=; 
	b=ntaiHlvBA+A7Xq20rx7nJXFZhB+l92gqFbKwWc6afm304WhD5PHHeD8GKFYJub4iUhUmNilDW41HpWtA1dCq1DkviyiVG59OpEh1ovNOkGGmCJ8SZvYo/Igu12+n98zzfmNqGIlbP5cBWPtxuFuw/XPNuIejOVfbU4fjcz3IlJY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754663;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=JRCZRQ76GcMlJmExs7D12cB0k3smTmlvVSyjx4WGW5s=;
	b=A+wttCJo4137gNw9pr1C972PU7mQ5agBkbjRzFLtDwzcJjdTeN9JI8TBCXZwgtpr
	PwBGFHka5M54F99jMHceL9KyQUu+yao+8mCy1PsU69P1c8eWkm4xZVtTyS9Qye/6R3p
	7Yayt7oUjNH3tT8mrddNiQXazittftRIxkVoiA+s=
Received: by mx.zohomail.com with SMTPS id 17497546627841003.7575879427058;
	Thu, 12 Jun 2025 11:57:42 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:08 +0200
Subject: [PATCH 06/20] phy: rockchip-emmc: switch to HWORD_UPDATE macro
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-6-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_115822_493299_2E7EEAF5 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

Replace the implementation of the rockchip eMMC PHY driver's
HIWORD_UPDATE macro with bitfield.h's HWORD_UPDATE. This makes the
change more easily reviewable.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 20023f6eb9944eaab505101d57e806476ecfac71..42423d4cd1811cd039a701895758050483d1c959 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2016 ROCKCHIP, Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
@@ -21,7 +22,7 @@
  * only if BIT(x + 16) set to 1 the BIT(x) can be written.
  */
 #define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
+		(HWORD_UPDATE((mask) << (shift), (val)))
 
 /* Register definition */
 #define GRF_EMMCPHY_CON0		0x0

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
