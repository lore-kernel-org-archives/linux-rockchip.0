Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5E88C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4b4ibpQUTV5Kg0dSKQxuvIIPGaV2QptHfoCNT1iQcQ=; b=lNc/ZxXjqPF7Ka
	bC0tJWf4K7vHScoK776vfhDvzwKqCWQenb0LfJArhjEpWHobz4MaXuopyRi/h1KPcjwL4qK+xpxsI
	7GvNaoXFXZrPqrlsELcKQOpJ1A0n1gJKDQimvBlWVMbBZlsksc+k3GTgwpmy1OuGhJjWIzGyeIOup
	ShUQwxGaHFLCOMSwtalf+3QPVeJ3R7KCkcwiy5ZdiOEzGBQqv3yOVLK2dtsPMLONOwJ/YIbaOcii/
	hNvys6JM3nMdt34QI6tTVaVXEPUGHz33hUs/mgkvlEhVYYmSwyBNpOA3F7YC9KQmVn36+9/1FtYix
	bJkcKDOoXxZ8q+YoFEhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTn3m-00000003poj-3Z6Y;
	Mon, 23 Jun 2025 19:42:30 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjhe-00000003Lth-1rL6;
	Mon, 23 Jun 2025 16:07:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750694804; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=K7Q9tgTPlrIc9XNYWTYRVlRSai0pFbuSJBorOUBNIPY+oau4zgiPxYEPgOj8b2qnkhmolRvPH5enkTvGWEP8CfkkD+e6/mUYipWKby326nfUB8MVqCtaUOhiFSAG88cFax44NSlWZSKguDkiU7u4zzj3uOacH37glMUqADa+oXE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750694804; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=eoA5RXMl12cHfJONoAaxIbWb/2Djy5r2aatx6D/qAxo=; 
	b=HbXlrW8MrBx0rnm8dd4j7pONXrgIvkSg1FnQNPCRmUJVxbOttZJ0LbPfdkrJg19QndoYY8kfmVvTmqF9QldXWFIXdDdWq5xn6CMd62ZmSsRvUZm5fyeQgo5+/9o2zFNZyXNAXZQfn69TKuM31u1yTckVWDB/8R5tV4+xfyM0KE8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750694804;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=eoA5RXMl12cHfJONoAaxIbWb/2Djy5r2aatx6D/qAxo=;
	b=QvgjscK7NnhGzdZiOG35gHcfkGdacKLZFwgfE0aGSYu8uPGwjo+tyhWyXB6xOyne
	lw67O2p25ysKrn2t9PSo7DlJ2VuZwYI/1ByZvm7P9DxxAoCSbeWrylAF0R1nit8F6ft
	If+wtiFp6uGNcF26F450h8UeFojBEtLUJaFM46Ew=
Received: by mx.zohomail.com with SMTPS id 1750694802450300.9211032358951;
	Mon, 23 Jun 2025 09:06:42 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 23 Jun 2025 18:05:32 +0200
Subject: [PATCH v2 04/20] media: synopsys: hdmirx: replace macros with
 bitfield variants
MIME-Version: 1.0
Message-Id: <20250623-byeword-update-v2-4-cf1fc08a2e1f@collabora.com>
References: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
In-Reply-To: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
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
X-CRM114-CacheID: sfid-20250623_090726_539567_E0630481 
X-CRM114-Status: GOOD (  13.48  )
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

Replace the UPDATE macro with bitfield.h's FIELD_PREP, to give us
additional error checking.

Also, replace the HIWORD_UPDATE macro at the same time with the new
FIELD_PREP_WM16 macro in hw_bitfield.h, which also gives us additional
error checking.

The UPDATE/HIWORD_UPDATE macros are left as wrappers around the
replacement macros, in order to not rock the boat too much, and keep the
changes easy to review.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
index 220ab99ca61152b36b0a08b398ddefdb985709a5..b26668a98aafd1682b8342cc11f84666a13f07a3 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
@@ -8,10 +8,12 @@
 #ifndef DW_HDMIRX_H
 #define DW_HDMIRX_H
 
+#include <linux/bitfield.h>
 #include <linux/bitops.h>
+#include <linux/hw_bitfield.h>
 
-#define UPDATE(x, h, l)		(((x) << (l)) & GENMASK((h), (l)))
-#define HIWORD_UPDATE(v, h, l)	(((v) << (l)) | (GENMASK((h), (l)) << 16))
+#define UPDATE(x, h, l)		(FIELD_PREP(GENMASK((h), (l)), (x)))
+#define HIWORD_UPDATE(v, h, l)	(FIELD_PREP_WM16(GENMASK((h), (l)), (v)))
 
 /* SYS_GRF */
 #define SYS_GRF_SOC_CON1			0x0304

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
