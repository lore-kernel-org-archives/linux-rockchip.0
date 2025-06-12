Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1801CC71151
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 22:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsU3zO76/rmBo6chZ6aaNu4cijPkm6Zp4F1+gEpGVIY=; b=AM/ynfswvqhTud
	fQhOTkH5SvlBqEbQZrnU33IQGE2ZMlNYhgskXFWAxzWe4hiw4p2tXX/cLHKhW8vMWeeXm5ZGTS0pC
	wPwJ4xywOz/P/+lC1iX8hjCG7qAhF6YAqPNT/49RSg8b2SZTTPUBGeF+u8eZo2VT3lkX9weeZASaN
	7ZwKwxe1HNdxWr+5zMtGlvjv7Rqgui/KJYXXsBDM3wxYEbTfChNzvwv53CjreNqC3adFCU+aVOMtP
	zBAha/eN4mB4Lq+pXqhCAmEPlA9JEFYLeLzesX+MZdGmW6dT6khh57JYOVbP0EUfAImCeTDmu6tCX
	s8XPCqSrg8mvOlHi3NjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPq7Y-0000000EkCb-1XXr;
	Thu, 12 Jun 2025 22:10:04 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnA1-0000000EAcO-0EuB;
	Thu, 12 Jun 2025 19:00:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754782; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LY2gOReHJeUsgEIhNZvz6CydVgFoOGSGwaO3l0ZuE3mp/sZrxu2OlhGrcKw37Wy6BjH/Vz0Xx2Cx4LqVx3qH95vQVxpj44T8IwywaRqUT5D2e2jY4zTaz45iv96yr0RqawLUCWvBE192yfZ/SADPo5KJ/wGK1tPQMz3sje6Zbhw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754782; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LZnMh9VL4aVe9Urf5rkcaSHCLrN/faLOWNkCrDUkPYY=; 
	b=SLgwS9XUP4ok8yl+FESpXJh/OgRlMDd0MpMUdvCG9/xARXYUCNypI158XB/w2K6sb/tvs3Cif53eFlMlRzvVsYksqu/4bStT3g2U6aEdfXbQO0gw3C5xH9czfEZBZtqT02XVLk+IRhSWA2Dp4R+ftZRbPM+41gfvW8yqeNZO7FQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754782;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=LZnMh9VL4aVe9Urf5rkcaSHCLrN/faLOWNkCrDUkPYY=;
	b=iVhHk5MwRVtbtvjqdW6+zcRb66lb63uysOR33hf8Sm+i4XHzOKH0BTORJ99toSze
	5xqvj4XIAUguOAT/+O8bHz3qKxPohh5eGjWxLpFOHYE/TjpEwWOJ/0Q2EZM/HxqhCid
	FptUsuYAnrnu9fBNyreU1j4d+LtsQGPUqWaee9X4=
Received: by mx.zohomail.com with SMTPS id 1749754780873810.5793291533364;
	Thu, 12 Jun 2025 11:59:40 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:17 +0200
Subject: [PATCH 15/20] net: stmmac: dwmac-rk: switch to HWORD_UPDATE macro
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-15-f4afb8f6313f@collabora.com>
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
X-CRM114-CacheID: sfid-20250612_120025_119880_688201FC 
X-CRM114-Status: GOOD (  14.86  )
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

Like many other Rockchip drivers, dwmac-rk has its own HIWORD_UPDATE
macro. Its semantics allow us to redefine it as a wrapper to the shared
bitfield.h HWORD_UPDATE macros though.

Replace the implementation of this driver's very own HIWORD_UPDATE macro
with an instance of HWORD_UPDATE from bitfield.h. This keeps the diff
easily reviewable, while giving us more compile-time error checking.

The related GRF_BIT macro is left alone for now; any attempt to rework
the code to not use its own solution here would likely end up harder to
review and less pretty for the time being.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 700858ff6f7c33fdca08100dd7406aedeff0fc41..38a15aaf7846dc16e5e3f2ff91be0b5e81d29dba 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/stmmac.h>
+#include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/phy.h>
@@ -84,7 +85,7 @@ struct rk_priv_data {
 };
 
 #define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
+		(HWORD_UPDATE((mask) << (shift), (val)))
 
 #define GRF_BIT(nr)	(BIT(nr) | BIT(nr+16))
 #define GRF_CLR_BIT(nr)	(BIT(nr+16))

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
