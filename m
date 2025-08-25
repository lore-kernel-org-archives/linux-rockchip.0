Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6EACA0FEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 08:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWDjVzBiXkPZySbp8cBYUKiHKSMJw3KnauTpmHE/NlQ=; b=MioeQ0gXmuLkEd
	TJe/k+YBjNkcHD4otkt8paNPE7/7QtgeD1phYODh1ce39NBHTd+B5mE7grdSB3W+gspRaS+si+uZM
	kdTUKttk4IFcOM2eEUQbGyQziKz3ytVYgMWlDoaL9Y7ItXeER+RLPkea0h6mCi0aWxNVZiv4itiZZ
	MsaQquOT1r4w0VsxXycFtVh21X6gozA+lp9t+gELcf7VnaZfLDx4ZqP1OXwoWBGrueU74PcObOaVI
	UXf9aoyYrumik+IYy247Bs0ay8rvH5VIosPRtiAq9O2HmoT/8zQzUe9oOEb7UGPcWivDgJMfznEz3
	iem04DMoTGMYJ0Z1R8NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSuX-00000007O5e-47Kb;
	Mon, 25 Aug 2025 08:50:42 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSbc-00000007JHm-1x8u;
	Mon, 25 Aug 2025 08:31:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756110621; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=N4o+tajm0SwPl/34dezaXRK4ci0j2WfehOVzunWVqK8gs5f4dHm7KU35tPKwrobXtiqeyyLCWp5s5YWF9ytHLBFgXS4QzHjv0kQsE4SMTAr0iZE5TTUeDqjlYfzmxs7hLLuDv7MrHDPcDxL4AW8tX8jx3FRMuNbP97DKsdKMeUo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756110621; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=SZ8Ll2BtvAKyjioX3uAKtoiBp8d7NaHLutQ9mdvbmNs=; 
	b=nSzYTMd9sk/kxJ6eE8MRfgyAG0QHypyEH32U5qpBqslZlrJUMEkD9jSWBePhcC5P4PNHrUiMQ5wjHgKgwiHIs/49I4ZMeZKAYphMXjGqjjKZn9o830CY3szDUeOrewkiphDAPsvrBqxnuJlOrfPVPtATKnueTx5FhsPmsGq6+yE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756110621;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=SZ8Ll2BtvAKyjioX3uAKtoiBp8d7NaHLutQ9mdvbmNs=;
	b=HbJWq/TUSm2xMmd4mSk6BRTXIZSQAdV9TWVK/FerqxwO2i7Jejb2ivhLU58Nt0EB
	wklZIZKI4hT2QXJatGKm8Qt8nM/UhUYsypArKKmCGcZ6W2iIVTLRSWJLKV6AL/H7ueS
	hvq5TE9S9mL2XS4NSy3Ob4bchRfZdmXDCR1KrQfE=
Received: by mx.zohomail.com with SMTPS id 1756110619942242.23716817600075;
	Mon, 25 Aug 2025 01:30:19 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 25 Aug 2025 10:28:26 +0200
Subject: [PATCH v3 06/20] phy: rockchip-emmc: switch to FIELD_PREP_WM16
 macro
MIME-Version: 1.0
Message-Id: <20250825-byeword-update-v3-6-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
In-Reply-To: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
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
X-CRM114-CacheID: sfid-20250825_013108_557200_F647BF19 
X-CRM114-Status: GOOD (  14.12  )
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
HIWORD_UPDATE macro with hw_bitfield.h's FIELD_PREP_WM16. This makes the
change more easily reviewable.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 20023f6eb9944eaab505101d57e806476ecfac71..5187983c58e5e9bc56e65c208122a3be7be00427 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -8,6 +8,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/hw_bitfield.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -21,7 +22,7 @@
  * only if BIT(x + 16) set to 1 the BIT(x) can be written.
  */
 #define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
+		(FIELD_PREP_WM16((mask) << (shift), (val)))
 
 /* Register definition */
 #define GRF_EMMCPHY_CON0		0x0

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
